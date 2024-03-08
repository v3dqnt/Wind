document.addEventListener("DOMContentLoaded", function() {
    // Get references to the buttons
    const downloadBtn = document.querySelector('.btn1');
    const githubBtn = document.querySelector('.btn2');
    const discordBtn = document.querySelector('.btn3');

    // Function to handle button clicks
    function handleButtonClick(event) {
        // Prevent default form submission behavior
        event.preventDefault();
        
        // Get the target button
        const targetBtn = event.target;

        // Check which button was clicked and redirect accordingly
        if (targetBtn === downloadBtn) {
            window.location.href = "https://www.mediafire.com/file/6s5j2n5q3pxe8qv/Wind-CLI-0.0.7.bat/file"; // Replace "download-link" with your actual download link
        } else if (targetBtn === githubBtn) {
            window.location.href = "https://github.com/v3dqnt/Wind"; // Replace "github-link" with your actual GitHub link
        } else if (targetBtn === discordBtn) {
            window.location.href = "https://discord.gg/AKKwzv9NKW"; // Replace "discord-link" with your actual Discord link
        }
    }

    // Add click event listeners to the buttons
    downloadBtn.addEventListener("click", handleButtonClick);
    githubBtn.addEventListener("click", handleButtonClick);
    discordBtn.addEventListener("click", handleButtonClick);
});