console.log(store.getState());

// TEST STARTS HERE

let unsubscribe = store.subscribe(() =>
  console.log(store.getState())
)

store.dispatch(_addBlock('Mirren', 'lol.png', 'This is the first element'));
store.dispatch(_addBlock('Gareth', 'lmao.png', 'This is the second element'));
store.dispatch(_addBlock('Christina', 'hehe.png', 'This is the third element'));
store.dispatch(_addBlock('XXX', 'rofl.png', 'This is the fourth element'));
store.dispatch(_removeBlock(2));
store.dispatch(_editBlock(2, 'EDIT_DESCRIPTION', 'This is the third element'));

unsubscribe();
