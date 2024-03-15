# flutter-2024-proj

# Digital-Restaurant

## Group Members

| No  | Name          | ID No       |
| --- | ------------- | ----------- |
| 1   | Lemi Dinku    | UGR/3860/14 |
| 2   | Eba Adisu     | UGR/2749/14 |
| 3   | Gedion Mekbeb | UGR/2160/14 |
| 4   | Nardos Daniel | UGR/1442/14 |

1. **Owner Management Panel:**
    - **Meal Management:**
        - _Add:_ Owner can easily add new meals to the menu, providing details such as name, price, description, origin, type, and whether it is suitable for fasting or non-fasting periods.
        - _Edit:_ Owners have the flexibility to modify existing meal information, adjusting details or updating descriptions as needed.
        - _Delete:_ Owners can remove items from the menu, ensuring the content is always current and reflective of the restaurant's offerings.
2. **User-Friendly Interface:**
    - **Menu Browsing:**
        - Users can browse through a visually appealing and well-organized menu that showcases enticing images and detailed descriptions for each meal.
        - The interface is designed to be user-friendly, allowing customers to easily navigate and explore the diverse range of dishes.
3. **Filtering Options:**

    - Users have access to a range of filters for a personalized experience:
        - **\*Fasting/Non-fasting**:\* Users can filter meals based on whether they are suitable for fasting or non-fasting periods.
        - **\*Origin**:\* Users can explore meals based on their country of origin, providing a diverse and culturally rich dining experience.
        - **\*Type**:\* Meals can be categorized by type (e.g., breakfast, lunch, dinner, desserts), allowing users to quickly find what they desire.
        - **\*Allergies**:\* Users can filter meals based on common allergens, ensuring a safe dining experience for those with specific dietary restrictions.
    - A search feature enables users to find specific meals quickly.

4. **Database Management System:**

-   **MongoDB:** MongoDB is chosen as the database management system for several reasons:
    -   **Document-Oriented Model:** MongoDB's document-oriented database structure is well-suited for this project. Each meal, with its detailed information, can be stored as a document. This flexibility allows for easy updates and modifications to meal data without restructuring the entire database.
    -   **JSON-Like Documents:** MongoDB stores data in BSON (Binary JSON) format, which aligns well with the JSON-like structure often used nest js. This makes data retrieval and manipulation straightforward, enhancing the development process.
    -   **Scalability:** MongoDB's horizontal scalability is advantageous for handling potential growth in data and user activity. MongoDB can efficiently scale to meet increased demands.
    -   **Flexibility with Schema:** Unlike traditional relational databases, MongoDB does not enforce a rigid schema. This flexibility is beneficial as it accommodates changes in the meal structure or the addition of new features without requiring extensive database modifications.

5. **Authentication and Authorization:**

JSON Web Tokens (JWT): JWTs are employed for secure user authentication and authorization.

6. **Role Management:**
   We will have mainly two types of roles namely customers and the restaurant owner.

7. **Feature 1:**
   Order Placement and Management: - Ordering Meals: - Users can browse through the menu and add desired items to their cart for ordering. - The ordering process includes selecting quantities, specifying special requests, and confirming the order. - Order History: - Users have access to their order history, allowing them to review past orders, reorder favorite items, or leave feedback.

8. **Feature 2:**
   Feedback and Rating System: - Rating Meals: - After receiving their orders, users can rate and provide feedback on the meals they've purchased, helping other users make informed decisions. - Ratings and reviews are displayed alongside menu items, allowing users to gauge the popularity and quality of dishes. - Feedback Submission: - Users can submit general feedback or suggestions regarding the app's functionality, menu offerings, or service quality. - Feedback is reviewed by the restaurant owner/administrator for continuous improvement and enhancement of the app.
