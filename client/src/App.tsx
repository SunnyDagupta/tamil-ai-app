import { Toaster } from "@/components/ui/sonner";
import { TooltipProvider } from "@/components/ui/tooltip";
import NotFound from "@/pages/NotFound";
import { Route, Switch } from "wouter";
import ErrorBoundary from "./components/ErrorBoundary";
import { ThemeProvider } from "./contexts/ThemeContext";
import Home from "./pages/Home";
import FAQ from "./pages/FAQ";
import Testimonials from "./pages/Testimonials";
import Pricing from "./pages/Pricing";
import SISPathway from "./pages/pathways/SIS";
import ThirukkuralPathway from "./pages/pathways/Thirukkural";
import SiddhiPathway from "./pages/pathways/Siddhi";

function Router() {
  return (
    <Switch>
      <Route path={"/"} component={Home} />
      <Route path={"/faq"} component={FAQ} />
      <Route path={"/testimonials"} component={Testimonials} />
      <Route path={"/pricing"} component={Pricing} />
      <Route path={"/pathways/sis"} component={SISPathway} />
      <Route path={"/pathways/thirukkural"} component={ThirukkuralPathway} />
      <Route path={"/pathways/siddhi"} component={SiddhiPathway} />
      <Route path={"/404"} component={NotFound} />
      <Route component={NotFound} />
    </Switch>
  );
}

function App() {
  return (
    <ErrorBoundary>
      <ThemeProvider defaultTheme="light">
        <TooltipProvider>
          <Toaster />
          <Router />
        </TooltipProvider>
      </ThemeProvider>
    </ErrorBoundary>
  );
}

export default App;
