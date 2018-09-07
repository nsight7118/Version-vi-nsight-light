//
//  SampleDiscussions.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 9/5/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation



class SampleDiscussions
{
    var discusions = [Discussion]()
    
    var items = [DiscussionViewModelItem]()
    
    var com = [Comment]()
    
    init()
    {
    
        addDiscussions()
        
    com.append(Comment(id:0,content:"Hi"))
    com.append(Comment(id:1,content:"Hey"))

    let item1 = DiscussionViewModelEmailItem(email:"Eureka");
    let item2 =  DiscussionVIewModelTitleItem(image:#imageLiteral(resourceName: "English"))
    let item3 = DiscussionViewModelCommentsItem(comments: com)

    items.append(item2);
    items.append(item1);
    items.append(item1);
    items.append(item3);
    items.append(item1);
    }
    
    func addDiscussions()
    {
       let Discussion1 = Discussion(
        _title: "Better decisions, better leaders",
        _content: "The only thing that might be harder than embracing change is making tough decisions. A hallmark of great leadership is creating the conditions to arrive at consensus when major decisions will impact the entire school or district. Giving others a say and allowing for critical conversation is a sign of strength, not weakness.  As change is a process, not an event, discussions, feedback, and reflection can and should take time in order to make the best decision possible. This helps to ensure successful implementation and sustainability. ",
        _email: "jayanthi@enlighten.com",
        _about: "this is it!",
        _audience: "Principals",
        _classification: "Goals"
        )
        
       discusions.append(Discussion1)
        
        let Discussion2 = Discussion(
            _title: "Teacher Talk: small rural schools",
            _content: "This week I interviewed Ms. Marl who is an early career teacher working in a rural NSW public school. She has been teaching for 5 years, and all of her career has been in rural small schools. Ms Marl’s current school has approximately 30 students whose learning nurtured by three teachers, one School Learning Support Officer and one School Administrative Manager. Her class has 8 children across years K and 1.",
            _email: "jayanthi@enlighten.com",
            _about: "this is it!",
            _audience: "Teachers",
            _classification: "Challenges"
        )
        var Discussion3 = Discussion(
            _title: "Is assessment unfair?",
            _content: "How do teachers assess, and are they thinking of student needs when they design tasks to deduct progression in learning and gaps in curriculum design?      In a recent article in The Conversation as part of its Educating Australia series, Geoff Masters (CEO, Australian Council for Educational Research) called for an alternative approach to assessment that he called monitoring learning. In this model ‘is a belief that every learner is capable of further progress if they can be engaged, motivated to make the appropriate effort and provided with targeted learning opportunities’.Masters argued that the current approach to assessment dooms young people to always perform the same; that an A grade student will always achieve A grades, and a D grade student will always achieve a D grade.",
            _email: "jayanthi@enlighten.com",
            _about: "this is it!",
            _audience: "Educators",
            _classification: "Challenges"
        )
        var Discussion4 = Discussion(
            _title: "Thinking back to move our English language learners forward",
            _content: "Module 5 concludes our course Teaching students from a refugee background (c) State of NSW (Dept 0f Education) 2016. Looking at the module outline I have been pondering why it bears the simple title, Teaching Writing – but more of that later.To be able to write well is definitely ‘hard work’. Stephen King says that, the scariest moment is always just before you start. John O’Hara is of the opinion that becoming a reader is the essence of becoming a writer and Doris Lessing insists that you only learn to be a better writer by actually writing. Our goal as teachers of English Language (EL) learners is to scaffold our lessons through activities that involve substantive conversations and immersion in rich texts so that our students are not afraid to put pen to paper.How can we as teachers help our students to progress from being able to write and copy simple texts at level 1 of the ESL Scales through to communicating effectively to fulfil the literacy and learning requirements of most written tasks",
            _email: "jayanthi@enlighten.com",
            _about: "this is it!",
            _audience: "Parents and Teachers",
            _classification: "Challenges"
        )
        var Discussion5 = Discussion(
            _title: "Your Future",
            _content: "Education is extremely important nowadays. We live in a world where educated and skilled individuals have better conditions and more successful lives. The job marketplace is also focused on hiring millennials that have knowledge in specific fields.If you choose to educate yourself while you’re still in college, you’ll improve your chances of reaching your long-term goals. The value that you can provide to the marketplace will dictate your revenue and social status. If you’re educated enough and well trained in a specific field, you can be successful. Nowadays, there are a lot of educational blogs on the web. From math to painting, you can find blogs for almost any type of domain of activity, niche, hobby, and profession. With the modern search engines, you just type in a key phrase and you’ll find whatever you want.Following a professional educational blog is productive in many ways. First, you can consume content from a professional who dedicates his entire time to master that specific field of activity. Learning and applying his tips and strategies is ten times more constructive than listening to a professor that’s presenting a lecture.",
            _email: "jayanthi@enlighten.com",
            _about: "this is it!",
            _audience: "Students",
            _classification: "Goals"
        )
        
        discusions.append(Discussion2)
        discusions.append(Discussion3)
        discusions.append(Discussion4)
        discusions.append(Discussion5)
    
    }
}
