#define NUM_DISCS  13
#define NUM_MOVES  ((1<<NUM_DISCS)-1)
void main() __attribute__((section(".text.main")));
char result[2*NUM_MOVES];
struct Node{
  int val;
  struct Node* next;
};
struct List{
  int size;
  char name;
  struct Node* head;
};
struct List g_nodeFreeList;
struct Node g_nodePool[NUM_DISCS];
int list_getSize(struct List* list){
  return list->size;
}
void list_init(struct List* list, char name){
  list->size = 0;
  list->name = name;
  list->head = 0;
}
void list_push(struct List* list, int val){
  struct Node* newNode;
  // Pop the next free node off the free list
  newNode = g_nodeFreeList.head;
  g_nodeFreeList.head = g_nodeFreeList.head->next;
  // Push the new node onto the given list
  newNode->next = list->head;
  list->head = newNode;
  // Assign the value
  list->head->val = val;
  // Increment size
  list->size++;
}
int list_pop(struct List* list){
  struct Node* freedNode;
  int val;
  // Get the value from the->head of given list
  val = list->head->val;
  // Pop the head node off the given list
  freedNode = list->head;
  list->head = list->head->next;
  // Push the freed node onto the free list
  freedNode->next = g_nodeFreeList.head;
  g_nodeFreeList.head = freedNode;
  // Decrement size
  list->size--;
  return val;
}
void list_clear(struct List* list){
  while (list_getSize(list) > 0)
    list_pop(list);
}
struct Towers{
  int numDiscs;
  int numMoves;
  struct List pegA;
  struct List pegB;
  struct List pegC;
};
void towers_init(struct Towers* this, int n){
  int i;
  this->numDiscs = n;
  this->numMoves = 0;
  list_init(&(this->pegA), 'A');
  list_init(&(this->pegB), 'B');
  list_init(&(this->pegC), 'C');
  for (i = 0; i < n; i++)
    list_push(&(this->pegA), n-i);
}
void towers_clear(struct Towers* this){
  list_clear(&(this->pegA));
  list_clear(&(this->pegB));
  list_clear(&(this->pegC));
  towers_init(this, this->numDiscs);
}
void towers_solve_h(struct Towers* this, int n,
                    struct List* startPeg,
                    struct List* tempPeg,
                    struct List* destPeg){
  int val;
  if (n == 1){
    val = list_pop(startPeg);
    list_push(destPeg,val);
    result[2*this->numMoves  ]=startPeg->name;
    result[2*this->numMoves+1]= destPeg->name;
    this->numMoves++;
  }
  else{
    towers_solve_h(this, n-1, startPeg, destPeg,  tempPeg);
    towers_solve_h(this, 1,   startPeg, tempPeg,  destPeg);
    towers_solve_h(this, n-1, tempPeg,  startPeg, destPeg);
  }
}
void towers_solve(struct Towers* this){
  towers_solve_h(this, this->numDiscs, &(this->pegA), &(this->pegB), &(this->pegC));
}
void main(){
  struct Towers towers;
  int i;
  list_init(&g_nodeFreeList, 'F');
  g_nodeFreeList.head = &(g_nodePool[0]);
  g_nodeFreeList.size = NUM_DISCS;
  g_nodePool[NUM_DISCS-1].next = 0;
  g_nodePool[NUM_DISCS-1].val = 99;
  for (i = 0; i < (NUM_DISCS-1); i++) {
    g_nodePool[i].next = &(g_nodePool[i+1]);
    g_nodePool[i].val = i;
  }
  towers_init(&towers, NUM_DISCS);
  towers_clear(&towers);
  towers_solve(&towers);
}
