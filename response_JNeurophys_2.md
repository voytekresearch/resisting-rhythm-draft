# Reviewer #1 (Comments to the Author):

In the revised version of this manuscript, the authors addressed my previous concerns and explained well the details that I asked. By adding the new frequency range to their model, their original claims are more strongly supported. Several clarification troughout the text make the points more clear, specially when comes to the simulation of an artificial oscillation in nature to test their predictions. The discussion makes it more clear now to interpret their results in the context of previous bibliography. Some minor points that I noticed in the text are:

x 1)	Line 144: "Physiological theta is a GABAergic"
x 2)	Line 187: "This means our Ca2+ set point (of 0.003 mM) depends on the gL in practice but our choice of of 0.003 mM was arbitrary
x 3)	Figure 5: Control experiments. A. Change in population hippocampal population rate for different levels of target... B. Change in population synchrony for different levels of target [Ca] (colors) as a function of oscillation...

> We corrected these.

As I previously stated, I find the data in this manuscript very interesting and believe that will be of the general interest of the readers of the journal.

> Again, thank you!


# Reviewer #2 (Comments to the Author):

The manuscript is quite clear now and the results are of interest. Showing that the results can generalize in a number of ways adds to the general importance. I just have a few comments that could be fixed with writing, with no need for new data.

Some confusion could be avoided by for example, omitting all mention of 1000 Poisson neurons and Poisson population (l.67, l. 73) when at the end of the day these neurons are not simulated. Instead an inhomogeneous Poisson spike train is sent to the single neuron being simulated since the sum of 1000 Poisson processes is a single process with 1000 times the rate. I think it is OK to say that you provide such inhomogeneous Poisson input to the single cell and that such input could "represent" the output of 1000 neurons but it is misleading and confusing to suggest that a population of 1000 neurons is included in your model.

e.g. line 77 "instantiation of a randomly generated population" suggests a network with random connections or something. All you did though was instantiated a Poisson process.

> This is not quite right, but your misunderstandings is entirely our fault! We did simulate 1000 independent Poisson cells, but then connected a randomly chosen 10 percent of these to each cell in the HH population. The text around line 77 now reads:

> Specifically, we study Ca\textsuperscript{2+}-mediated homeostasis in a feed-forward population of 100 Hodgkin-Huxley neurons. By feedforward we mean neurons in the population are driven only by the inputs to the model. Cells have no lateral or recurrent connections. We modulate this population with neural oscillations. Oscillatory input for each cell in Hodgkin-Huxley population was modelled as a set of about $N=100$ Poisson neurons. These were randomly drawn from a pool of 1000 Poisson neurons, each of which was independently simulated. To change the level of oscillatory modulation strength, we alter the firing rate of the entire Poisson population. Average synaptic strengths were fixed, but drawn from a uniform distribution for each simulation (see \textit{Methods}). An oscillation's temporal duration was simulated as either tonic, which lasted for the entire experiment, or as a 4-cycle burst. Bursts were delivered only at the end of a trial, where they overlap with the input stimulus (Figure~\ref{fig:f1}\textbf{a}). The stimulus input was taken from an independent set of $N=100$ Poisson cells, that were also drawn from a 1000 cell Poisson population. Though of course stimulus and oscillation populations were independently simulated. The stimulus lasted 0.5 seconds, and had an average firing rate of 6 Hz. The stimulus was fixed for all experiments, and was delivered only once homeostatic equilibrium was reached \cite{Barth2012} (Figure~\ref{fig:f1}). During the stimulus window we measured the population's firing rate and synchrony. It is these numbers we report throughout.


l.94-96 & Fig. 1: Calcium dynamics arise of 100s of milliseconds so there is confusion here. What you mean is the homeostatic response (via signaling pathways including activation of kinases, transcriptional changes, translation of new proteins, movement of mRNA or proteins in the cell and insertion of receptors) to the changes in calcium dynamics which fluctuate on a timescale of a fraction of a second.

> Quite right of course. The text around line 94 now reads:

> Note that in real systems intrinsic homeostasis is thought to happen over minutes or days. However, simulation times that are hours or days long are not computationally feasible. So we follow the field and study a model where Ca\textsuperscript{2+} homeostasis dynamics happen with a 4-second half-life, denoted by $\tau_h$. This might seem like a huge difference. But all that matters mathematically is that homeostasis dynamics happen much slower than all the other synaptic/membrane dynamics. A timescale of $\tau_h > 4$ seconds is a reasonable choice for ensure this. The other major dynamics in the model are synapses with $< 30 ms$ half-lives. This leads to a 133 fold difference between synaptic and homeostatic dynamics \cite{Golowasch1999,Marder2014,Marder2015,Gutierrez2013,Marder2014,OLeary2014,LeMasson1993,Abbott1993}.

l.135 "inversion of kappa": I don't think kappa has been defined before this sentence.

> Corrected. The text around line135 now reads:

> Note that the inversion in population synchrony, seen in Figure~\ref{fig:f2}\textbf{d} as well as in \ref{fig:f5}\textbf{b}, is a low $N$ effect. As population spiking is suppressed, the total number of spikes declines to the point where the bins used to calculate the Kappa correlation often contain no spikes. This leads to a somewhat misleading increase in synchrony.

l. 156-7 "changes due to K ... can't alter baseline". This is unclear or wrong I think. Any change in K-conductance in a Hodgkin-Huxley like model (like changing the leak conductance) alters both mean firing rate and mean membrane potential depending what is meant by baseline. (A simple simulation reveals this).

> Recovery and initiation are entangled, of course. The text around line 156 now reads:

> The excitability changes we see with homeostasis must be due to the decreases in Na conductance (which initiates spikes) and increases in K conductance (which recovers the voltage following a spike).

Overall I think some more intuition could be provided into why the main result arises, again, more is needed than a simulation demonstrating an effect. Rather *a clear explanation*.

> TODO - I have no idea how to state it more clearly... Write more random text?

Typos:
x l.23 missing "is"
x l.61 "suppresses" is wrong
x l.105 "the oscillation's"
x l.144 extra "a"
x l.158 missing "of"
x l. 177 missing "long" after "how"

> Thank you.

# Reviewer #3 (Comments to the Author):

Thank you for the improvement over the original submitted manuscript, which has helped me fill in some of the blanks that were previously missing. This is an interesting exploration to consider how homeostatic mechanisms would differently affect AMPAergic versus GABAergic oscillatory inputs. However, there is still room for improvement and clarification to help the reader appreciate and understand details of the work done. 

1) Please help the reader by specifying all aspects clearly in the model set-up, equation parameters and interpretation used. Specifically:

(i) I_S referred to only as excitatory in methods (eq 3), but both AMPA and GABA -ergic were examined? It is not clear, largely because parameters are not fully described I think. For example, does g_o, V_o refer to either excitatory or inhibitory and so V_o=V_i or V_e? what is g_x refer to, presumably either but there seem to be too many parameters introduced? I'm guessing the tau_b etc. are excitatory or inhibitory time constants? Could the authors simply fully write out the equations for excitatory or inhibitory oscillatory modulation separately to be clear. Also, parameter values for I_bias (eq 5) are missing - was it varied in the 100 HH models? I'm guessing not as it would add to the variability and synchrony of output to complicate interpretation?

> Point (i) made a few points. Point by point:

> We now better explain all synaptic dynamics.
> The text "I_S referred to only as excitatory in methods" was corrected. It now reads, "Overall membrane dynamics were governed by these internal ion conductances, and the synaptic input term $I_s$, which contains both stimulus and oscillatory terms."
> I_bias was set to zero in all simulations. So we removed it from the paper.

(ii) Could the authors expand/improve Fig 1 to help the reader please. In particular, the 'model input' is a bit confusing to me - as I understand it, there are 2 different types of input added at the last 0.5 sec - tonic or bursting oscillation. As presented, one might think this is the top and bottom rows, but it is the 2nd and 3rd rows as given in the caption. So, for the tonic input, there is nothing specifically changed during the last 0.5 sec? That is, it is just an ongoing oscillatory input? I wonder if the depiction is due to different I_bias values? I hope the authors can make this clear to the reader by fully describing these model input depictions. Model input is a raster plot, right? Expansions are to show that there are no population bursts (top) but there are in 2nd and 3rd panels (?) etc. For the model output in Fig.1c, it would be helpful to also see an expansion of the last 0.5 sec too for the HH cell, perhaps showing an example for the tonic and bursting output.

(iii) With the above point clear, the authors can now provide the reader with a clear description of Fig. 2 and onward regarding oscillation modulation (values of 0-3). As they specify in the revision, this is due to the altering the firing rate of the Poisson population (fixed rate of 6 Hz was changed in the modulation there, to what? etc.?). Perhaps this can be illustrated (akin to revised Fig 1a aspects). I assume that these modulation values are arbitrary values? The authors could specify this clearly in the Methods and/or expanded caption. That is, please 'map' what parameter values in equations to what is specifically plotted. As I understand it from the methods, half of the 1000 Poisson cells have oscillatory aspects (N_o) and the others don't, and presumably they are not connected themselves, right? Is the amplitude A meant to be r_o/2? Not sure why parameter 'A' needs to be introduced?

> TODO parameters for example plots in Fig 1? Because, sigh, seriously lady oh my god. 

> 'A' was an arifact from a previous draft. We removed it. It should be, as you say, r_0/2.

2) Fig 4 shows average - what was the variance like? Presumably if this was done with inhibitory oscillatory input, it would not change much from the 'no homeostasis' FI curve? It would be helpful to show this to make their paradoxical result clear.

3) It might be interesting to note rodent and human theta hippocampal oscillation differences (e.g., see J.Jacobs Phil Transc. 2014 where intermittent human oscillations described)

Minor:
x 1) line 52 - "Given that chemical..."
x 2) line 61 - "suppress..."2) line 61 - "suppress..."
x 3) lines 133-134 - "...so most probably incomplete at best. Experimental testing is needed". As the authors state, model is 'very simple', one can simply say that it "is" incomplete. What sort of experimental testing do the authors envision?

> We updated the text to both fix the typo, and we provided a sketch for testing our work in vivo. It now reads,

> The general effect we would expect for some other selection of channels, chosen by some other theorists, or by evolution itself, depends on those selected channels. O'Leary's \cite{OLeary2014} has made is clear how complex the relationship is between homeostasis, channel conductance, and firing patterns. It's so complex that we believe general statements are probably impossible. On the one hand then, our simple model has been shown by others to recapitulate hippocampal pyramidal cell's activity in laboratory settings \cite{LeMasson1993}. On the other, it is \textit{very simple} and validating our work requires experimental testing. As an example, by using prolonged excitatory gamma oscillations--arising from direct stimulation of either the dentate gyrus or select areas in CA1 \cite{Csicsvari2003}--to drive a possible homeostatic response in CA3. 


x 4) lines 144-5 - not a sentence "Physiological theta....". 

Please add some references for this, e.g., Colgin. In their simple model, the authors are presumably assuming that the theta rhythm is primarily due to external oscillatory input (medial septum), but it is of course now clear that there are intra-hippocampal theta rhythms (Williams group, and as notes in Colgin reviews).

> We specified the generator of interest in our work, including the requested citation. The text now read:

> In Figure~\ref{fig:f2} we compared AMPA and GABAergic models of the theta rhythm (8 Hz). This was done to illuminate their different effects, but was not a biologically realistic model. Hippocampal theta is solely a GABAergic rhythm, at least when driven by medial septum \cite{Colgin2016a}. In hippocampus AMPAergic oscillations are, however, seen in the high gamma range (60-90 Hz). In Figure~\ref{fig:f3} we confirm AMPAergic oscillations in the gamma range follow the same pattern as theta. And they do. For both 60 and 90 Hz gamma, tonic oscillations suppress excitability and desynchronize firing. 

x 5) line 250 - " ...evidence that intrinsic..."
x 6) lines 263-4 - STG and acronym used and then not on these 2 lines - please fix.
x 7) line 299 - "... by a sinusoidal..."

As I would prefer reviews to not be anonymous, I would like to identify myself (Frances Skinner).
