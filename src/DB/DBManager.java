package DB;

import models.Task;

import java.util.ArrayList;

  public class DBManager {
  private static final ArrayList<Task> tasks=new ArrayList<>();

  private static Long id=3L;
  static{
    tasks.add(new Task(1L,"Создать приложение для JAVAEE","23.10.2023","YES","Для BITLAB  academy"));
    tasks.add(new Task(2L,"Убраться дома и закупиться продуктами","24.10.2023","NO","Дом долен юыть чистым"));
  }

  public static Task getTask(Long id){
   return tasks.stream()
       .filter(task -> task.getId()==id)
       .findFirst()
       .orElse(null);//detailsServlet
  }

    public static ArrayList<Task> getAllTask() {  //возвращает списко всех задач
        return tasks;
    }
    public static void addTask(Task task){
    task.setId(id);
    tasks.add(task);
    id++;
    }
    public static void deleteTask(int id){
      for(int i=0;i< tasks.size();i++){
      if(tasks.get(i).getId()==id){
        tasks.remove(i);
        break;
      }
      }
    }
  }
