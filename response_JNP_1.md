# Response 1

# Reviewer #1 (Comments to the Author):
# ------------------------------------

In this manuscript, the authors developed a simplified computational model able to explore basic interactions between neural oscillations and homeostasis. They found that oscillations that differ in the time domain (tonic or burst of oscillations) also affect differently to the homeostasis of the system, in a non trivial way, what could be directly related to some of the proposed underlying mechanisms of neural information processing during cognitive functions. I find the idea of the manuscript very interesting and novel, the proposed questions are properly addressed and limitations are clarified. The main finding that tonic excitatory oscillations desynchronize firing under homeostatic changes is of great interest and open new interesting interpretations of several experimental phenomena available in the field. I would recommend to clarify a few minor points before publication: 

1) The authors adressed the impact of homeostasis in tonic and burst-like oscillations, both of them considered at 8Hz. What would be the impact of their model when considering oscillations in different ranges of the frequency domain? The model is based in a feed-forward population of hippocampal pyramidal cells and it is known that in the hippocampus both types of oscillations (tonic and burst-like) are present. An example of tonic would be theta oscillations (8 Hz), which underlying inhibitory drive the authors interpreted as possibly related with their results. On the other hand, burst-like oscillations exist in the hippocampus such as different gamma band oscillations (60 Hz, 90 Hz) and ripples (150 Hz). In addition to cortical oscillations, if the authors could interpret their findings in terms of these different burst-like hippocampal oscillations, it would enhance the message of the paper since it would be easier to relate to empirical data. 

> This is very nice point. We did three things in response. Most important we added simulations of both 60 and 90 Hz gamma, and included these in a new Figure 3. As expected, suppression happens in gamma as well. We also, for the sake of completeness, studied small variations in theta. Real theta frequencies/speeds drift during behavior. Again and as expected small drifts don't seem to have any effect on suppression (Figure 5d-e). We also clarified again that real theta is GABAergic, and AMPA simulations were done only to show the suppression effect in controlled and consistent way. 

> The new text reads,

> Of course theta oscillations in hippocampus are GABAergic, not AMPAergic as we model here. Exploring this artificial oscillation lets us show the central principle we want to highlight in our simple model. It seems that tonic oscillations--when joined with homeostasis--can profoundly alter the coding properties of what one would expect from oscillatory modulation. The degree of effect depends on the degree to which the oscillation changes the cell's tonic Ca$^{2+}$. It also shows that because of homeostasis, bursts are \textit{qualitatively distinct} from their tonic counterparts.  

> The specific effect we observed (suppression of excitability) is seen because the homeostatic equations that \textit{we chose} respond to changes in Ca\textsuperscript{2+} by decreasing the conductance of the Na and Ca channels, and increasing the conductance of K and KCa channels (Eq~\ref{eq:dgdt}). The net effect of these dynamics is to decrease the sodium channel conductance, and increase the potassium. This makes firing an action potential less likely, for any given input. These channel dynamics are visualized in Figure~\ref{fig:f1}\textbf{c} and the corresponding FI curve is shown in Figure~\ref{fig:f4}. 

> The general effect we would expect for some other selection of channels, chosen by some other theorists or by evolution itself, depends on those channels. O'Leary \cite{OLeary2014} has shown how complex the relationship is between homeostasis, channel conductance, and neuronal firing patterns. It's complex enough that general statements are probably impossible. One one hand, our simple model has been shown by others to recapitulate hippocampal pyramidal cell's activity in laboratory settings \cite{LeMasson1993}. On the other, it is \textit{very simple} and so most probably incomplete at best. Experimental testing is needed. 


2) In Figure 2 c.d, the model predicts a decrease of both synchrony and excitability for AMPA driven tonic oscillations with increasing oscillation strength. However, due to the low excitability that the system reaches around half of the strength of the oscillation, an inflection point and succesive discontinuity appears for the syncrhony. The authors explain this in the paper as a result of the mathematical limitations of the model. However, physiologically, it is mostly not feasible that the system reaches an excitability point where the population rate is constant zero for long periods of time. Do the authors think that modifying the implementation of the background level noise in their model this could be corrected? 

> In response we halved the oscillation strength in all simulations. It now peaks at firing rate of 3 Hz. It was 6 Hz before. This largely removed this unrealistic model artifact. It also (mostly) prevented an unrealistic inversion of synchrony seen in some of the control experiments.

After these points have been addressed, I highly recommend the publication of this very interesting study this Journal. 

> Thank you!


# Reviewer #2 (Comments to the Author):
# ------------------------------------

This paper assesses the impact of homeostasis on simulated model neurons receiving inputs that are either oscillatory, transiently bursting, or tonic. The authors find that increasing excitatory oscillatory input results in a homeostatic response that, when reaching an appropriate level of mean calcium, overcompensates the postsynaptic neuron's spiking response. That is, paradoxically, an increase in drive when combined with homeostasis results in a decreased response. 

I think the main effect-which according to the authors does not occur with inhibitory oscillatory drive-is of interest and worth exploring more thoroughly. Under what conditions does it occur? What types of calcium channels are essential, what are inessential? Does spiking threshold or leak conductance matter? As it stands though, the paper provides one example of the effect without enough corresponding examples to allow the reader to understand precisely how the effect arises and why. I think I know the reason, but even a statement such as the one in the opening paragraph of this review is not present in the text. I suspect some simple controls, perhaps comparing high-threshold calcium channels versus low-threshold calcium channels as the main conveyors of calcium entry in the soma, would help provide some insight into the nature of the observed phenomenon. 

> The reviewer's summary of our work was quite apt and covered the key mechanism nicely. (Better than we had, in truth). We added a similar summary to the opening of the Results section. It now reads,

> "We assessed the impact of homeostasis in a simple model that received oscillatory inputs that are either transiently bursting, or tonic. We found that increasing the strength of AMPAergic oscillatory inputs resulted in a homeostatic response that, when reaching an appropriate level of average calcium, overcompensates to actually suppresses the postsynaptic neuron's spiking. That is, paradoxically, an increase in drive when combined with homeostasis results in a decreased response."

Some of the ways the authors discuss the effect are a little counterintuitive - as though the behavior of the network is in place so as to become compatible with homeostasis, rather than the generally understood notion that homeostasis is present to ensure the network is stable. If it really is the general case that excitatory-input oscillations are incompatible with homeostasis then it is fine to generalize in this way, but a single example is insufficient-I can imagine other ways in which oscillations arising from excitatory input remain stable in the presence of homeostasis (I imagine it is all channel-type-dependent and parameter-dependent). It may be worth demonstrating that the homeostatic rhythmic model of O'Leary and Marder also fails with rhythmic excitatory input. 

> We added a paragraph to the discussion to try and address the role of homeostasis, and its interaction with oscillations. It tries to make clear a key point: homeostasis and oscillations might often be destabilizing but this is because oscillations **share** synapses/dendrites with stimulus drives. Other modulators, ACh, DA, etc, use separate synapses and so have some degrees of independent freedom.

> "Homeostasis is generally viewed as a stabilizing force. This is the goal of homeostasis in our model as well. However oscillatory modulation is a unique form of modulation; it shares neurotransmitters, and even synapses, with non-modulatory stimuli. As a result, intrinsic homeostatic corrections for modulation must affect both the modulator and the driver \cite{Sherman1998}. Our work suggests this trade-off can be quite strong. To avoid this trade-off, sometimes anyway, we speculate the long-time scale of evolution may favor different types of oscillation for different functional roles. "

> To argue again for generality, we also added this explanation to beginning of the results section. It reads,

> "The homeostatic response in our simple model decreases the Sodium conductance and increases the Potassium conductance (Figure~\ref{fig:f1}\textbf{c}, \textit{bottom panel}). Combined these make it harder for the model cell to generate action potentials. This basic mechanism explains the loss of excitability in some conditions of our model and, in turn, the desynchronization of population activity."

> And to make the limitations of our, or any other, simple model clear we added a much stronger set of caveats to the existing limitations section in the discussion. It reads,

> "The nature of our model--that fact we use point neurons with only 6 currents--or the fact that our model is strictly feed-forward--without lateral or recurrent connections--means we don't know with confidence to what degree our model's effects will appear in more complex models, or in real neural systems. O'Leary \cite{OLeary2014} and others have shown how the homeostatic response can be exceptionally complex, and even unpredictable. It is therefore likely some neurons will have a homeostatic response that is nothing like that in our model. There may be many such examples."

> "We do know, however, that oscillations are a ubiquitous feature of cortical activity, as is Ca\textsuperscript{2+}-mediated intrinsic homeostasis. This means the ingredients for oscillation and homeostasis to interact are omnipresent in both sub-cortical and cortical areas. This response might be again very different than what our models show, but that there could be a broad range of possible effects, making our initial results in a simple model all the more intriguing."

> We also added the below text to our results about the artificiality of AMPA-theta in hippocampus, and more on its limits and generality.

> Of course theta oscillations in hippocampus are GABAergic, not AMPAergic as we model here. Exploring this artificial oscillation lets us show the central principle we want to highlight in our simple model. It seems that tonic oscillations--when joined with homeostasis--can profoundly alter the coding properties of what one would expect from oscillatory modulation. The degree of effect depends on the degree to which the oscillation changes the cell's tonic Ca$^{2+}$. It also shows that because of homeostasis, bursts are \textit{qualitatively distinct} from their tonic counterparts.  

> The specific effect we observed (suppression of excitability) is seen because the homeostatic equations that \textit{we chose} respond to changes in Ca\textsuperscript{2+} by decreasing the conductance of the Na and Ca channels, and increasing the conductance of K and KCa channels (Eq~\ref{eq:dgdt}). The net effect of these dynamics is to decrease the sodium channel conductance, and increase the potassium. This makes firing an action potential less likely, for any given input. These channel dynamics are visualized in Figure~\ref{fig:f1}\textbf{c} and the corresponding FI curve is shown in Figure~\ref{fig:f4}. 

> The we general effect we would expect for some other selection of channels, chosen by some other theorists or by evolution itself, depends on those channels. O'Leary \cite{OLeary2014} has shown how complex the relationship is between homeostasis, channel conductance, and neuronal firing patterns. It's complex enough that general statements are probably impossible. One one hand though our simple model has been shown by others to recapitulate hippocampal pyramidal cell's activity in laboratory settings \cite{LeMasson1993}. On the other, it is \textit{very simple} and so most probably incomplete at best. Experimental testing is needed. 

A final general point - I find the writing rather unpolished in places, with non-grammatical sentences, and recommend careful editing in any future version. 

> Noted.


Specific comments: 

l.48 "kinetics of ion channels": I have not seen evidence of channel kinetics changing, only expression levels, so please cite the appropriate evidence. 

l.58 An increase in threshold is not paradoxical, but, rather, the standard, expected homeostatic response. 

> Correct. We updated the draft to reflect this.

l.82 On the "radical difference between real and simulated timescales": there is no clear justification for simulating a timescale that is radically different from the real one. In the absence of such justification, I recommend using the correct timescale. 

> Unfortunately, computationally it is impractical to use the real one. The simulations would take many months to complete. We have added a more complete justification for this (necessary) choice. It includes a quantification of the differences. 

> "In real systems, intrinsic homeostasis is thought to happen over minutes or days. However, simulation times that are hours or days long are not computationally feasible. So we follow the field and study a model where Ca\textsuperscript{2+} dynamics happen with a 4-second half-life, denoted by $\tau_h$. This might seem like a huge difference. But all that matters mathematically is that Ca\textsuperscript{2+} dynamics happen much slower than all the other synaptic/membrane dynamics. A timescale of $\tau_h > 4$ seconds is a reasonable choice to ensure this. The other major dynamics in the model are synapses with $< 30 ms$ half-lives. This leads to a 133 fold difference \cite{Golowasch1999,Marder2014,Marder2015,Gutierrez2013,Marder2014,OLeary2014,LeMasson1993,Abbott1993}."

l. 232 the background rate, r_b is not used in any equations so hard to tell which conditions and under what circumstances it is ever used. Also I don't see r_s used in the equations in the methods. 

> The background rate was removed from the model prior to publication. Its inclusion in the paper was a mistake.

Minor points: 

l. 27 "this quench" (invert) 
l.114 "change in Ca..." 
l.118 "effect" written twice 
l.129 "increase or decrease" 
l. 148 comma after oscillations. 
l. 167 "that" is wrong 
l. 170 "For example .." this is not a complete sentence. 

> Thank you.

l.227 you have not specified which cells in the model comprise the hippocampal population 

> Thank you. This is was ambiguous several places in the main text, and we have corrected it throughout.

l.230 The math equation looks like you are dividing by the parentheses instead of multiplying. I would put parentheses around r_0/2 to be clear. 

> Thank you.


Reviewer #3 (Comments to the Author):
# ------------------------------------

In this paper, the authors add calcium-dependent homeostatic mechanisms to a feedforward network and find a paradoxical effect for tonic oscillations that are synaptically excitatory. This seems interesting, but after some effort, I found that I was unable to parse and evaluate and kept trying to ‘fill in the blanks’. In essence, my main comments are that I am unclear about various details (sorry if I missed them somewhere). For example:

> To clarify the larger questions the reviewer raised about the methods were moved and centralized in a short description of the model at the start of the results. It answers these questions:

1) what is the connectivity (if any) of the 100 HH neurons? (and how does it affect results?) 2) how does the connectivity and synaptic weights (from N to M as given in methods) affect results?
4) confusing/incomplete descriptions – e.g., they say that the ‘stimulus population is modeled by a fixed rate of 6 Hz’, but is this the rate that is changing in the figures? I am not sure what (parameters) are being changed (and how) when they say (line 77) the oscillatory strength, duration... The methods refer to a uniform distribution.
5) line 95/96: they say that “...increasing the strength of the excitatory oscillation increases excitability leading to an increase in the population firing rate”. I am confused – I thought they said that they are using ‘population firing rate’ as a measure of ‘excitability’ (bottom of p.2). Also, as per comments above, I am not sure exactly what is being done when they say that they are ‘increasing the strength of the excitatory oscillation’

> It reads,
> "We study Ca\textsuperscript{2+}-mediated homeostasis in a feed-forward population of 100 Hodgkin-Huxley neurons. By feedforward we mean neurons in the population are driven only by the inputs to the model. Cells have no lateral or recurrent connections. We modulate this population with neural oscillations. Oscillations are modelled as a set of 1000 Poisson neurons. To change the level of modulation strength, we changed the firing rate of the Poisson population. Average synaptic strengths were fixed, but drawn from a uniform distribution for each simulation (see \textit{Methods}). An oscillation's temporal duration was simulated as either tonic, which lasted for the entire experiment, or as a 4-cycle burst. Bursts were delivered only at the end of a trial, where they overlap with the input stimulus (Figure~\ref{fig:f1}\textbf{a}). The stimulus input was also drawn from a 1000 cell Poisson population. It lasted 0.5 seconds, and had an average firing rate of 6 Hz. The stimulus was fixed for all experiments, and was delivered only once homeostatic equilibrium is reached \cite{Barth2012} (Figure~\ref{fig:f1}). During the stimulus window we measure the population's firing rate and synchrony. It is these number we report throughout."

3) incomplete/inconsistent parameters – e.g., what inhibitory reversal potential used? Is V_e in aq1 `*-Table same as E_s in eqn 3?

> We corrected the inconsistencies between the parameter table and equations in the methods. How embarrassing!

6) what is meant by the ‘firing threshold’ (line 59). That is, please define/specify what is intended to avoid confusion/circularity.

> The firing threshold is, it turns out, not well defined in the literature. Especially for modelling and theory. Sidestepping this, we now refer just to excitability in the paper. We can measure excitability directly using classic FI-curves, and link it directly to biophysical changes via Na/K conductances.

Once this is clarified, it seems to me that the authors should provide some insight to their paradoxical result (or at least explanation by doing enough numerical explorations) E.g., are the differences a matter of different driving forces with excitatory and inhibitory?

> FI-curves also provide clear a way to demonstrate the driving force for AMPAergic suppression of firing. We show this in the new Figure 4, wherein small square waves of current are injected into each cell's ``soma''. The number of action potentials which follow are collected and averaged. The more excitable the cells, the higher this Pop. rate will be.

Minor: line 88 – not a sentence – “Both of which...”

> Thank you.
