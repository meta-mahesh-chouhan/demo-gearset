public class StackImpl {
    List<Object> stack;
    Integer top;
    Integer size;

    public StackImpl(Integer size){
        this.size = size;
        stack = new List<Object>(size);
        top = -1;
    }

    public void push(Object element){
        if(top == size -1){
            throw new FullStackException('No elements can be pushed: Stack is Full');
        }
        top++;
        stack.add(top, element);
    }

    public Object pop(){

        if(isEmpty()){
            throw new EmptyStackException('No elements to pop: Stack is Empty');
        }
        Object result = stack.get(top);
        top--;
        return result;  
    }

    public Object peek(){
        if(isEmpty()){
            throw new EmptyStackException('No elements to pop: Stack is Empty');
        }
        return stack.get(top);
    }

    public boolean isEmpty(){
        return top == -1;
    }    

    public class EmptyStackException extends Exception {
	}

    public class FullStackException extends Exception {
	}

}