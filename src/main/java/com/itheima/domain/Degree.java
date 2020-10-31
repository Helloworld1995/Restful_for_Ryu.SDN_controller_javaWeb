package com.itheima.domain;

public class Degree {
    private int id;
    private String degree;
    private String priorityQueue;
    private String routingAlgorithm;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getPriorityQueue() {
        if(degree.equals("银牌")){
            priorityQueue="HTB-Low-Priority";
        }else if(degree.equals("金牌")){
            priorityQueue="HTB-Medium-Priority";
        }else if(degree.equals("铂金")){
            priorityQueue="HTB-High-Priority";
        }
        return priorityQueue;
    }

    public void setPriorityQueue(String priorityQueue) {
        this.priorityQueue = priorityQueue;
    }

    public String getRoutingAlgorithm() {
        if(degree.equals("银牌")){
            routingAlgorithm="Dijkstra-跳数";
        }else if(degree.equals("金牌")){
            routingAlgorithm="Dijkstra-带宽";
        }else if(degree.equals("铂金")){
            routingAlgorithm="带宽保证";
        }
        return routingAlgorithm;
    }

    public void setRoutingAlgorithm(String routingAlgorithm) {
        this.routingAlgorithm = routingAlgorithm;
    }

    @Override
    public String toString() {
        return "degree{" +
                "id=" + id +
                ", degree='" + degree + '\'' +
                '}';
    }
}
