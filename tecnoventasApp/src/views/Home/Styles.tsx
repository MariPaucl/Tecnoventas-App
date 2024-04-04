import { StyleSheet, Dimensions } from "react-native";

const screenWidth = Dimensions.get("window").width;

const HomeStyles = StyleSheet.create({
  background: {
    flex: 1,
    resizeMode: "cover",
    justifyContent: "center",
  },
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  logo: {
    width: 150,
    height: 150,
    marginBottom: 15,
  },
  logopage: {
    width: 190,
    height: 150,
    marginRight: 20,
  },

  header: {
    fontSize: 22,
    fontWeight: "bold",
    marginBottom: 15,
    marginTop: 20,
    color: "white",
    justifyContent: "center",
    alignItems: "center",
    textAlign: "center",
  },
  scrollViewContent: {
    flexGrow: 1,
    alignItems: "center",
  },
  page: {
    height: 290,
    width: screenWidth - 20,
    flexDirection: "row",
    backgroundColor: "rgba(255, 255, 255, 0.3)",
    borderRadius: 8,
    marginHorizontal: 10,
    alignItems: "center",
  },
  pageText: {
    fontSize: 16,
    flex: 1,
    textAlign: "left",
    marginRight: 10,
  },
  textContainer: {
    flexDirection: "row",
    alignItems: "center",
    marginTop: 10,
  },
  button: {
    backgroundColor: "#DDDDDD",
    padding: 10,
    borderRadius: 5,
    marginBottom: 20,
  },
  text: {
    textAlign: "center",
    color: "black",
  },
});

export default HomeStyles;
