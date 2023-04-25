package models;

public class Task {
  Long id;
  String name;
  String deadlineDate;
  String done;
  String description;

  public String getDone() {
    return done;
  }

  public void setDone(String done) {
    this.done = done;
  }

  public Task(Long id, String name, String deadlineDate, String done, String description) {
    this.id = id;
    this.name = name;
    this.deadlineDate = deadlineDate;
    this.done = done;
    this.description = description;
  }



  public Task() {

  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getDeadlineDate() {
    return deadlineDate;
  }

  public void setDeadlineDate(String deadlineDate) {
    this.deadlineDate = deadlineDate;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }
}
