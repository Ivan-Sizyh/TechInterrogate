Vacancy.create!([
                  { title: '1C Developer',
                    description: '1C Developers specialize in creating solutions using the 1C:Enterprise platform. They design, develop, and implement applications for business automation.' },
                  { title: 'Android Developer',
                    description: 'Android Developers create mobile applications for the Android operating system. They work with Java or Kotlin to build user-friendly and feature-rich apps.' },
                  { title: 'Business Analyst',
                    description: 'Business Analysts analyze and evaluate business processes, gather requirements, and recommend improvements. They bridge the gap between business needs and IT solutions.' },
                  { title: 'C/C++ Developer',
                    description: 'C/C++ Developers work with the C and C++ programming languages to develop system-level software, high-performance applications, and embedded systems.' },
                  { title: 'C# Developer',
                    description: 'C# Developers use the C# programming language to build desktop, web, and mobile applications on the .NET framework. They create scalable and efficient software solutions.' },
                  { title: 'Data Scientist',
                    description: 'Data Scientists analyze and interpret complex data sets to inform business decision-making. They use statistical techniques, machine learning, and programming skills to extract insights from data.' },
                  { title: 'DevOps',
                    description: 'DevOps Engineers focus on collaboration and communication between software development and IT operations. They automate processes, enhance efficiency, and ensure smooth software delivery.' },
                  { title: 'Flutter Developer',
                    description: 'Flutter Developers use the Flutter framework to create cross-platform mobile applications. They build expressive and interactive user interfaces for iOS and Android.' },
                  { title: 'Frontend Developer',
                    description: 'Frontend Developers specialize in creating the user interface and user experience of web applications. They work with HTML, CSS, and JavaScript to design interactive and visually appealing websites.' },
                  { title: 'Golang Developer',
                    description: 'Golang Developers use the Go programming language to build scalable and efficient software applications. They focus on simplicity, concurrency, and performance.' },
                  { title: 'iOS Developer',
                    description: 'iOS Developers create applications for Apple devices using Swift or Objective-C. They design and implement features for iPhones, iPads, and other iOS devices.' },
                  { title: 'Java Developer',
                    description: 'Java Developers use the Java programming language to build robust and scalable applications. They work on a variety of projects, from web development to enterprise-level systems.' },
                  { title: 'Machine Learning Engineer',
                    description: 'Machine Learning Engineers design and implement algorithms that allow machines to learn and make predictions based on data. They work at the intersection of data science and software engineering.' },
                  { title: 'Node.js Developer',
                    description: 'Node.js Developers build server-side applications using the Node.js runtime. They specialize in creating scalable and high-performance applications with JavaScript.' },
                  { title: 'PHP Developer',
                    description: 'PHP Developers are professionals specializing in creating web applications using the PHP programming language. PHP (Hypertext Preprocessor) is a powerful and widely-used programming language known for its role in developing dynamic websites and applications.' },
                  { title: 'Product Manager',
                    description: 'Product Managers oversee the development and launch of products. They define the product vision, prioritize features, and collaborate with cross-functional teams to ensure successful product delivery.' },
                  { title: 'Project Manager',
                    description: 'Project Managers lead and coordinate projects from initiation to completion. They manage resources, timelines, and budgets to ensure successful project delivery.' },
                  { title: 'Python Developer',
                    description: 'Python Developers use the Python programming language to develop a wide range of applications, from web development to data analysis and machine learning.' },
                  { title: 'QA Engineer',
                    description: 'QA Engineers, or Quality Assurance Engineers, focus on testing software applications to identify and fix defects. They ensure the quality and reliability of software products.' },
                  { title: 'Ruby Developer',
                    description: 'Ruby Developers use the Ruby programming language to build web applications and services. They focus on simplicity and developer-friendly syntax.' }
                ])

Tag.create!([
              { title: 'Большая вероятность' },
              { title: 'Средняя вероятность' },
              { title: 'Малая вероятность' },
              { title: 'Нет' }
            ])

default_tag = Tag.find_by(title: 'Нет')
vacancy_1c_developer = Vacancy.find_by(title: '1C Developer')

Question.create!([
                   { text: 'Почему вы выбрали именно 1C?', tag: default_tag,
                     vacancy: vacancy_1c_developer },
                   { text: 'Ваш опыт работы с 1C?', tag: default_tag, vacancy: vacancy_1c_developer }
                 ])

Grade.create!([
                { title: 'Junior' },
                { title: 'Middle' },
                { title: 'Senior' }
              ])

video = Video.create!(title: "Собеседование 1С", video_id: "fiX5aYJa5pc")
question = Question.find_by(text: "Почему вы выбрали именно 1C?")

VideoLink.create!(question: question, video: video)
