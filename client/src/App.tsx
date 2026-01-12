import { Toaster } from "@/components/ui/sonner";
import { TooltipProvider } from "@/components/ui/tooltip";
import NotFound from "@/pages/NotFound";
import { Route, Switch } from "wouter";
import ErrorBoundary from "./components/ErrorBoundary";
import { ThemeProvider } from "./contexts/ThemeContext";
import MobileLayout from "./components/MobileLayout";
import HomeApp from "./pages/HomeApp";
import Learn from "./pages/Learn";
import SearchPage from "./pages/SearchPage";
import Profile from "./pages/Profile";
import FAQ from "./pages/FAQ";
import Testimonials from "./pages/Testimonials";
import Pricing from "./pages/Pricing";

// Pathway pages
import SIS from "./pages/pathways/SIS";
import Thirukkural from "./pages/pathways/Thirukkural";
import TCGNPT from "./pages/pathways/TCGNPT";
import SiddhiPowers from "./pages/pathways/SiddhiPowers";
import TCGNPTCreative from "./pages/pathways/TCGNPTCreative";
import TamilScienceFusion from "./pages/pathways/TamilScienceFusion";
import GlobalTamilInfluence from "./pages/pathways/GlobalTamilInfluence";
import DrPillaiWisdom from "./pages/DrPillaiWisdom";

function Router() {
  return (
    <MobileLayout>
      <Switch>
        <Route path="/" component={HomeApp} />
        <Route path="/learn" component={Learn} />
        <Route path="/search" component={SearchPage} />
        <Route path="/profile" component={Profile} />
        <Route path="/faq" component={FAQ} />
        <Route path="/testimonials" component={Testimonials} />
        <Route path="/pricing" component={Pricing} />
        
        {/* Pathway routes */}
        <Route path="/pathways/sis" component={SIS} />
        <Route path="/pathways/thirukkural" component={Thirukkural} />
        <Route path="/pathways/tcgnpt" component={TCGNPTCreative} />
        <Route path="/pathways/siddhi" component={SiddhiPowers} />
        <Route path="/pathways/fusion" component={TamilScienceFusion} />
        <Route path="/pathways/global" component={GlobalTamilInfluence} />
        <Route path="/wisdom" component={DrPillaiWisdom} />
        
        <Route path="/404" component={NotFound} />
        <Route component={NotFound} />
      </Switch>
    </MobileLayout>
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
