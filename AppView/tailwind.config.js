module.exports = {
  content: [
    './**/*.html',
    './**/*.cshtml',
    './src/**/*.{js,jsx,ts,tsx}',
  ],
  theme: {
    extend: {
      colors: {
        primary: '#1D4ED8', // Màu chủ đạo tùy chỉnh
        secondary: '#9333EA',
      },
      fontFamily: {
        sans: ['Open Sans', 'sans-serif'], // Font mặc định
        poppins: ['Poppins', 'sans-serif'],
      },
      spacing: {
        '72': '18rem',
        '84': '21rem',
        '96': '24rem',
      },
      borderRadius: {
        '4xl': '2rem',
      },
    },
  },
  plugins: [],
}
