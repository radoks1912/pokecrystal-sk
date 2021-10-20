BattleText:: ; used only for BANK(BattleText)

BattleText_PlayerPickedUpPayDayMoney:
	text "<PLAYER> zdvihol" ; text "<PLAYER> picked up"
	line "¥@"
	text_decimal wPayDayMoney, 3, 6
	text "!"
	prompt

WildPokemonAppearedText:
	text "Divoky @" ; text "Wild @"
	text_ram wEnemyMonNickname
	text_start
	line "sa objavil!" ; line "appeared!"
	prompt

HookedPokemonAttackedText:
	text "Uloveny" ; text "The hooked"
	line "@"
	text_ram wEnemyMonNickname
	text_start
	cont "utoci!" ; cont "attacked!"
	prompt

PokemonFellFromTreeText:
	text_ram wEnemyMonNickname
	text " spadol" ; text " fell"
	line "zo stromu!" ; line "out of the tree!"
	prompt

WildCelebiAppearedText:
	text "Divoky @" ; text "Wild @"
	text_ram wEnemyMonNickname
	text_start
	line "sa objavil!" ; line "appeared!"
	prompt

WantsToBattleText::
	text "<ENEMY>"
	line "chce bojovat!" ; line "wants to battle!"
	prompt

BattleText_WildFled:
	text "Divoky @" ; text "Wild @"
	text_ram wEnemyMonNickname
	text_start
	line "utiekol!" ; line "fled!"
	prompt

BattleText_EnemyFled:
	text "Nepriatel @" ; text "Enemy @"
	text_ram wEnemyMonNickname
	text_start
	line "utiekol!" ; line "fled!"
	prompt

HurtByPoisonText:
	text "<USER>"
	line "je zraneny jedom!" ; line "is hurt by poison!"
	prompt

HurtByBurnText:
	text "<USER>'s"
	line "je zraneny ohnom!" ; line "hurt by its burn!"
	prompt

LeechSeedSapsText:
	text "LEECH SEED saje" ; text "LEECH SEED saps"
	line "<USER>!"
	prompt

HasANightmareText:
	text "<USER>"
	line "ma NIGHTMARE!" ; line "has a NIGHTMARE!"
	prompt

HurtByCurseText:
	text "<USER>'s"
	line "je zraneny CURSE!" ; line "hurt by the CURSE!"
	prompt

SandstormHitsText:
	text "SANDSTORM zasahuje" ; text "The SANDSTORM hits"
	line "<USER>!"
	prompt

PerishCountText:
	text "<USER>'s"
	line "PERISH pocet je @" ; line "PERISH count is @"
	text_decimal wTextDecimalByte, 1, 1
	text "!"
	prompt

BattleText_TargetRecoveredWithItem:
	text "<TARGET>"
	line "je uzdraveny s" ; line "recovered with"
	cont "@"
	text_ram wStringBuffer1
	text "."
	prompt

BattleText_UserRecoveredPPUsing:
	text "<USER>"
	line "doplnil PP pomocou" ; line "recovered PP using"
	cont "@"
	text_ram wStringBuffer1
	text "."
	prompt

BattleText_TargetWasHitByFutureSight:
	text "<TARGET>"
	line "bol zasiahnuty" ; line "was hit by FUTURE"
	cont "FUTURE SIGHT!" ; cont "SIGHT!"
	prompt

BattleText_SafeguardFaded:
	text "<USER>'s"
	line "SAFEGUARD vyprchal!" ; line "SAFEGUARD faded!"
	prompt

BattleText_MonsLightScreenFell:
	text_ram wStringBuffer1
	text " #MON's"
	line "LIGHT SCREEN ustupil!" ; line "LIGHT SCREEN fell!"
	prompt

BattleText_MonsReflectFaded:
	text_ram wStringBuffer1
	text " #MON's"
	line "REFLECT vyprchal!" ; line "REFLECT faded!"
	prompt

BattleText_RainContinuesToFall:
	text "Dazd pada" ; text "Rain continues to"
	line "dalej." ; line "fall."
	prompt

BattleText_TheSunlightIsStrong:
	text "Slnko svieti" ; text "The sunlight is"
	line "silno." ; line "strong."
	prompt

BattleText_TheSandstormRages:
	text "SANDSTORM" ; text "The SANDSTORM"
	line "zuri." ; line "rages."
	prompt

BattleText_TheRainStopped:
	text "Prestalo prsat." ; text "The rain stopped."
	prompt

BattleText_TheSunlightFaded:
	text "Slnko prestalo" ; text "The sunlight"
	line "svietit." ; line "faded."
	prompt

BattleText_TheSandstormSubsided:
	text "SANDSTORM" ; text "The SANDSTORM"
	line "ustupil." ; line "subsided."
	prompt

BattleText_EnemyMonFainted:
	text "Nepriatel @" ; text "Enemy @"
	text_ram wEnemyMonNickname
	text_start
	line "odpadol!" ; line "fainted!"
	prompt

GotMoneyForWinningText:
	text "<PLAYER> dostal ¥@" ; text "<PLAYER> got ¥@"
	text_decimal wBattleReward, 3, 6
	text_start
	line "za vyhru!" ; line "for winning!"
	prompt

BattleText_EnemyWasDefeated:
	text "<ENEMY>"
	line "bol porazeny!" ; line "was defeated!"
	prompt

TiedAgainstText:
	text "Remiza proti" ; text "Tied against"
	line "<ENEMY>!"
	prompt

SentSomeToMomText:
	text "<PLAYER> dostal ¥@" ; text "<PLAYER> got ¥@"
	text_decimal wBattleReward, 3, 6
	text_start
	line "za vyhru!" ; line "for winning!"
	cont "Poslal nieco mame!" ; cont "Sent some to MOM!"
	prompt

SentHalfToMomText:
	text "Poslal polku mame!" ; text "Sent half to MOM!"
	prompt

SentAllToMomText:
	text "Poslal vsetko mame!" ; text "Sent all to MOM!"
	prompt

UnusedRivalLossText: ; unreferenced
	text "<RIVAL>: Huh? I"
	line "should've chosen"
	cont "your #MON!"
	prompt

BattleText_MonFainted:
	text_ram wBattleMonNickname
	text_start
	line "odpadol!" ; line "fainted!"
	prompt

BattleText_UseNextMon:
	text "Pouzit dalsieho #MON?" ; text "Use next #MON?"
	done

UnusedRivalWinText: ; unreferenced
	text "<RIVAL>: Yes!"
	line "I guess I chose a"
	cont "good #MON!"
	prompt

LostAgainstText:
	text "Prehra proti" ; text "Lost against"
	line "<ENEMY>!"
	prompt

BattleText_EnemyIsAboutToUseWillPlayerChangeMon:
	text "<ENEMY>"
	line "chce pouzit" ; line "is about to use"
	cont "@"
	text_ram wEnemyMonNickname
	text "."

	para "Chce <PLAYER>" ; para "Will <PLAYER>"
	line "zmenit #MON?" ; line "change #MON?"
	done

BattleText_EnemySentOut:
	text "<ENEMY>"
	line "zvolil" ; line "sent out"
	cont "@"
	text_ram wEnemyMonNickname
	text "!"
	done

BattleText_TheresNoWillToBattle:
	text "Nie je chut" ; text "There's no will to"
	line "bojovat!" ; line "battle!"
	prompt

BattleText_AnEGGCantBattle:
	text "VAJICKO nemoze" ; text "An EGG can't"
	line "zapasit!" ; line "battle!"
	prompt

BattleText_CantEscape2:
	text "Neda sa ujst!" ; text "Can't escape!"
	prompt

BattleText_TheresNoEscapeFromTrainerBattle:
	text "Nie! Z" ; text "No! There's no"
	line "trenerskeho zapasu" ; line "running from a"
	cont "sa neuteka!" ; cont "trainer battle!"
	prompt

BattleText_GotAwaySafely:
	text "Bezpecne si" ; text "Got away safely!"
	line "unikol!"
	prompt

BattleText_UserFledUsingAStringBuffer1:
	text "<USER>"
	line "unikol pomocou" ; line "fled using a"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

BattleText_CantEscape:
	text "Neda sa ujst!" ; text "Can't escape!"
	prompt

BattleText_UserHurtBySpikes:
	text "<USER>"
	line "zraneny SPIKES!" ; line "hurt by SPIKES!"
	prompt

RecoveredUsingText:
	text "<TARGET>"
	line "uzdraveny pomocou" ; line "recovered using a"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

BattleText_UsersStringBuffer1Activated:
	text "<USER>"
	line "@"
	text_ram wStringBuffer1
	text_start
	cont "aktivovany!" ; cont "activated!"
	prompt

BattleText_ItemsCantBeUsedHere:
	text "Tu nemozes" ; text "Items can't be"
	line "pouzivat veci." ; line "used here."
	prompt

BattleText_MonIsAlreadyOut:
	text_ram wBattleMonNickname
	text_start
	line "uz je vonku." ; line "is already out."
	prompt

BattleText_MonCantBeRecalled:
	text_ram wBattleMonNickname
	text_start
	line "nemoze byt odvolany!" ; line "can't be recalled!"
	prompt

BattleText_TheresNoPPLeftForThisMove:
	text "Nie je dost PP" ; text "There's no PP left"
	line "pre tento utok!" ; line "for this move!"
	prompt

BattleText_TheMoveIsDisabled:
	text "Utok je" ; text "The move is"
	line "VYPNUTY!" ; line "DISABLED!"
	prompt

BattleText_MonHasNoMovesLeft:
	text_ram wBattleMonNickname
	text_start
	line "nema ziadne utoky!" ; line "has no moves left!"
	done

BattleText_TargetsEncoreEnded:
	text "<TARGET>'s"
	line "ENCORE skoncil!" ; line "ENCORE ended!"
	prompt

BattleText_StringBuffer1GrewToLevel:
	text_ram wStringBuffer1
	text " vyrastol na" ; text " grew to"
	line "level @" ; line "level @"
	text_decimal wCurPartyLevel, 1, 3
	text "!@"
	sound_dex_fanfare_50_79
	text_end

	text_end ; unreferenced

BattleText_WildMonIsEating:
	text "Divoky @" ; text "Wild @"
	text_ram wEnemyMonNickname
	text_start
	line "zerie!" ; line "is eating!"
	prompt

BattleText_WildMonIsAngry:
	text "Wild @" ; text "Wild @"
	text_ram wEnemyMonNickname
	text_start
	line "je nastvany!" ; line "is angry!"
	prompt

FastAsleepText:
	text "<USER>"
	line "tvrdo spi!" ; line "is fast asleep!"
	prompt

WokeUpText:
	text "<USER>"
	line "sa zobudil!" ; line "woke up!"
	prompt

FrozenSolidText:
	text "<USER>"
	line "zamrzol!" ; line "is frozen solid!"
	prompt

FlinchedText:
	text "<USER>"
	line "cuvol!" ; line "flinched!"
	prompt

MustRechargeText:
	text "<USER>"
	line "musi oddychovat!" ; line "must recharge!"
	prompt

DisabledNoMoreText:
	text "<USER>"
	line "uz nema vypnuty utok!" ; line "disabled no more!"
	prompt

IsConfusedText:
	text "<USER>"
	line "je zmateny!" ; line "is confused!"
	prompt

HurtItselfText:
	text "Zranil sam seba" ; text "It hurt itself in"
	line "kvoli zmateniu!" ; line "its confusion!"
	prompt

ConfusedNoMoreText:
	text "<USER>"
	line "uz nie je zmateny!" ; line "confused no more!"
	prompt

BecameConfusedText:
	text "<TARGET>"
	line "zacina byt zmateny!" ; line "became confused!"
	prompt

BattleText_ItemHealedConfusion:
	text "Vec @" ; text "A @"
	text_ram wStringBuffer1
	text " odstranila z" ; text " rid"
	line "<TARGET>"
	cont "zmatenie." ; cont "of its confusion."
	prompt

AlreadyConfusedText:
	text "<TARGET>"
	line "uz je zmateny!" ; line "already confused!"
	prompt

BattleText_UsersHurtByStringBuffer1:
	text "<USER>'s"
	line "je zraneny" ; line "hurt by"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

BattleText_UserWasReleasedFromStringBuffer1:
	text "<USER>"
	line "sa oslobodil z" ; line "was released from"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

UsedBindText:
	text "<USER>"
	line "pouzil BIND na" ; line "used BIND on"
	cont "<TARGET>!"
	prompt

WhirlpoolTrapText:
	text "<TARGET>"
	line "bol uvazneny!" ; line "was trapped!"
	prompt

FireSpinTrapText:
	text "<TARGET>"
	line "bol uvazneny!" ; line "was trapped!"
	prompt

WrappedByText:
	text "<TARGET>"
	line "bol WRAPPED od" ; line "was WRAPPED by"
	cont "<USER>!"
	prompt

ClampedByText:
	text "<TARGET>"
	line "bol CLAMPED od" ; line "was CLAMPED by"
	cont "<USER>!"
	prompt

StoringEnergyText:
	text "<USER>"
	line "setri energiu!" ; line "is storing energy!"
	prompt

UnleashedEnergyText:
	text "<USER>"
	line "rozputal energiu!" ; line "unleashed energy!"
	prompt

HungOnText:
	text "<TARGET>"
	line "sa zavesil na" ; ??? line "hung on with"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

EnduredText:
	text "<TARGET>"
	line "VYDRZAL utok!" ; line "ENDURED the hit!"
	prompt

InLoveWithText:
	text "<USER>"
	line "je zalubeny do" ; line "is in love with"
	cont "<TARGET>!"
	prompt

InfatuationText:
	text "<USER>"
	line "zalubenost zabranila" ; line "infatuation kept"
	cont "utoceniu!" ; cont "it from attacking!"
	prompt

DisabledMoveText:
	text "<USER>'s"
	line "@"
	text_ram wStringBuffer1
	text " je" ; text " is"
	cont "VYPNUTY!" ; cont "DISABLED!"
	prompt

LoafingAroundText:
	text_ram wBattleMonNickname
	text " je" ; text " is"
	line "necinny." ; line "loafing around."
	prompt

BeganToNapText:
	text_ram wBattleMonNickname
	text " zacal" ; text " began"
	line "spat!" ; line "to nap!"
	prompt

WontObeyText:
	text_ram wBattleMonNickname
	text " bohuzial" ; text " won't"
	line "neposlucha!" ; line "obey!"
	prompt

TurnedAwayText:
	text_ram wBattleMonNickname
	text " sa" ; text " turned"
	line "odvratil!" ; line "away!"
	prompt

IgnoredOrdersText:
	text_ram wBattleMonNickname
	text " ignoroval" ; text " ignored"
	line "prikaz!" ; line "orders!"
	prompt

IgnoredSleepingText:
	text_ram wBattleMonNickname
	text " ignoroval" ; text " ignored"
	line "prikaz…spi!" ; line "orders…sleeping!"
	prompt

NoPPLeftText:
	text "Nezostal ziaden PP" ; text "But no PP is left"
	line "na utok!" ; line "for the move!"
	prompt

HasNoPPLeftText:
	text "<USER>"
	line "nema ziaden PP na" ; line "has no PP left for"
	cont "@"
	text_ram wStringBuffer2
	text "!"
	prompt

WentToSleepText:
	text "<USER>"
	line "zaspal!" ; line "went to sleep!"
	done

RestedText:
	text "<USER>"
	line "zaspal a" ; line "fell asleep and"
	cont "uzdravil sa!" ; cont "became healthy!"
	done

RegainedHealthText:
	text "<USER>"
	line "ziskal zdravie!" ; line "regained health!"
	prompt

AttackMissedText:
	text "<USER>"
	line "minul utok!" ; line "attack missed!"
	prompt

AttackMissed2Text:
	text "<USER>"
	line "minul utok!" ; line "attack missed!"
	prompt

CrashedText:
	text "<USER>"
	line "pokracoval a" ; line "kept going and"
	cont "narazil!" ; cont "crashed!"
	prompt

UnaffectedText:
	text "<TARGET>"
	line "neovplyvneny!" ; line "unaffected!"
	prompt

DoesntAffectText:
	text "Neovplyvnuje" ; text "It doesn't affect"
	line "<TARGET>!"
	prompt

CriticalHitText:
	text "Kriticky zasah!" ; text "A critical hit!"
	prompt

OneHitKOText:
	text "Je to KO!" ; text "It's a one-hit KO!"
	prompt

SuperEffectiveText:
	text "Je to super-" ; text "It's super-"
	line "ucinne!" ; line "effective!"
	prompt

NotVeryEffectiveText:
	text "Nie je to velmi" ; text "It's not very"
	line "ucinne…" ; line "effective…"
	prompt

TookDownWithItText:
	text "<TARGET>"
	line "zobral zo sebou," ; line "took down with it,"
	cont "<USER>!"
	prompt

RageBuildingText:
	text "<USER>'s"
	line "HNEV sa stupnuje!" ; line "RAGE is building!"
	prompt

GotAnEncoreText:
	text "<TARGET>"
	line "dostal ENCORE!" ; line "got an ENCORE!"
	prompt

SharedPainText:
	text "Superi" ; text "The battlers"
	line "zdielaju bolest!" ; line "shared pain!"
	prompt

TookAimText:
	text "<USER>"
	line "zamieril!" ; line "took aim!"
	prompt

SketchedText:
	text "<USER>"
	line "SKETCHED" ; line "SKETCHED"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

DestinyBondEffectText:
	text "<USER>'s"
	line "skusa vziat so" ; line "trying to take its"
	cont "sebou nepriatela!" ; cont "opponent with it!"
	prompt

SpiteEffectText:
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer1
	text " bol" ; text " was"
	cont "znizeny o @" ; cont "reduced by @"
	text_decimal wTextDecimalByte, 1, 1
	text "!"
	prompt

BellChimedText:
	text "Zazvonil zvoncek!" ; text "A bell chimed!"
	line ""
	prompt

FellAsleepText:
	text "<TARGET>"
	line "zaspal!" ; line "fell asleep!"
	prompt

AlreadyAsleepText:
	text "<TARGET>'s"
	line "uz spi!" ; line "already asleep!"
	prompt

WasPoisonedText:
	text "<TARGET>"
	line "bol otraveny!" ; line "was poisoned!"
	prompt

BadlyPoisonedText:
	text "<TARGET>"
	line "bol silne otraveny!" ; line "badly poisoned!"
	prompt

AlreadyPoisonedText:
	text "<TARGET>"
	line "uz je otraveny!" ; line "already poisoned!"
	prompt

SuckedHealthText:
	text "Vysal HP z" ; text "Sucked health from"
	line "<TARGET>!"
	prompt

DreamEatenText:
	text "<TARGET>"
	line "sen bol prekazeny!" ; line "dream was eaten!"
	prompt

WasBurnedText:
	text "<TARGET>"
	line "bol popaleny!" ; line "was burned!"
	prompt

DefrostedOpponentText:
	text "<TARGET>"
	line "sa rozmrazil!" ; line "was defrosted!"
	prompt

WasFrozenText:
	text "<TARGET>"
	line "zamrzol!" ; line "was frozen solid!"
	prompt

WontRiseAnymoreText:
	text "<USER>"
	line "@"
	text_ram wStringBuffer2
	text " uz nemoze" ; text " won't"
	cont "stupnut!" ; cont "rise anymore!"
	prompt

WontDropAnymoreText:
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer2
	text " uz nemoze" ; text " won't"
	cont "klesnut!" ; cont "drop anymore!"
	prompt

FledFromBattleText::
	text "<USER>"
	line "utiekol zo zapasu!" ; line "fled from battle!"
	prompt

FledInFearText:
	text "<TARGET>"
	line "strachom utiekol!" ; line "fled in fear!"
	prompt

BlownAwayText:
	text "<TARGET>"
	line "bol odfuknuty!" ; line "was blown away!"
	prompt

PlayerHitTimesText:
	text "Zasiahnuty @" ; text "Hit @"
	text_decimal wPlayerDamageTaken, 1, 1
	text " krat!" ; text " times!"
	prompt

EnemyHitTimesText:
	text "Zasiahnuty @" ; text "Hit @"
	text_decimal wEnemyDamageTaken, 1, 1
	text " krat!" ; text " times!"
	prompt

MistText:
	text "<USER>'s"
	line "zahaleny do HMLY!" ; line "shrouded in MIST!"
	prompt

ProtectedByMistText:
	text "<TARGET>'s"
	line "ochraneny HMLOU." ; line "protected by MIST."
	prompt

GettingPumpedText:
	text_pause
	text "<USER>"
	line "sa napumpoval!" ; line "getting pumped!"
	prompt

RecoilText:
	text "<USER>'s"
	line "zasiahol spatnym razom!" ; line "hit with recoil!"
	prompt

MadeSubstituteText:
	text "<USER>"
	line "urobil NAHRADU!" ; line "made a SUBSTITUTE!"
	prompt

HasSubstituteText:
	text "<USER>"
	line "ma NAHRADU!" ; line "has a SUBSTITUTE!"
	prompt

TooWeakSubText:
	text "Prilis slaby na" ; text "Too weak to make"
	line "NAHRADU!" ; line "a SUBSTITUTE!"
	prompt

SubTookDamageText:
	text "NAHRADA" ; text "The SUBSTITUTE"
	line "zranena miesto" ; line "took damage for"
	cont "<TARGET>!"
	prompt

SubFadedText:
	text "<TARGET>"
	line "NAHRADA zmizla!" ; line "SUBSTITUTE faded!"
	prompt

MimicLearnedMoveText:
	text "<USER>"
	line "sa naucil" ; line "learned"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

WasSeededText:
	text "<TARGET>"
	line "bol zasiaty!" ; line "was seeded!"
	prompt

EvadedText:
	text "<TARGET>"
	line "sa uhol utoku!" ; line "evaded the attack!"
	prompt

WasDisabledText:
	text "<TARGET>"
	line "@"
	text_ram wStringBuffer1
	text " bol" ; text " was"
	cont "VYPNUTY!" ; cont "DISABLED!"
	prompt

CoinsScatteredText:
	text "Mince sa vsade" ; text "Coins scattered"
	line "rozprchli!"  ; line "everywhere!"
	prompt

TransformedTypeText:
	text "<USER>"
	line "sa zmenil na" ; line "transformed into"
	cont "the @" ; cont "the @"
	text_ram wStringBuffer1
	text " typ!" ; text "-type!"
	prompt

EliminatedStatsText:
	text "Vsetky statusy" ; text "All stat changes"
	line "boli eliminovane!" ; line "were eliminated!"
	prompt

TransformedText:
	text "<USER>"
	line "sa premenil na" ; line "TRANSFORMED into"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

LightScreenEffectText:
	text "<USER>"
	line "SPCL.OBR stupla!" ; line "SPCL.DEF rose!"
	prompt

ReflectEffectText:
	text "<USER>"
	line "OBRANA stupla!" ; line "DEFENSE rose!"
	prompt

NothingHappenedText:
	text "Ale nic sa" ; text "But nothing"
	line "nestalo." ; line "happened."
	prompt

ButItFailedText:
	text "Ale neuspesne!" ; text "But it failed!"
	prompt

ItFailedText:
	text "Nepodarilo sa!" ; text "It failed!"
	prompt

DidntAffect1Text:
	text "Nemalo to efekt na" ; text "It didn't affect"
	line "<TARGET>!"
	prompt

DidntAffect2Text:
	text "Nemalo to efekt na" ; text "It didn't affect"
	line "<TARGET>!"
	prompt

HPIsFullText:
	text "<USER>"
	line "HP je plne!" ; line "HP is full!"
	prompt

DraggedOutText:
	text "<USER>"
	line "bol vytiahnuty!" ; line "was dragged out!"
	prompt

ParalyzedText:
	text "<TARGET>"
	line "je paralyzovany!" ; line "paralyzed! Maybe"
	cont "Mozno nebude utocit!" ; cont "it can't attack!"
	prompt

FullyParalyzedText:
	text "<USER>"
	line "je plne paralyzovany!" ; line "fully paralyzed!"
	prompt

AlreadyParalyzedText:
	text "<TARGET>"
	line "je uz paralyzovany!" ; line "already paralyzed!"
	prompt

ProtectedByText:
	text "<TARGET>"
	line "je chraneny" ; line "protected by"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

MirrorMoveFailedText:
	text "MIRROR MOVE" ; text "The MIRROR MOVE"
	next "bol neuspesny!" ; next "failed!"
	prompt

StoleText:
	text "<USER>"
	line "ukradol @" ; line "stole @"
	text_ram wStringBuffer1
	text_start
	cont "od nepriatela!" ; cont "from its foe!"
	prompt

CantEscapeNowText:
	text "<TARGET>"
	line "uz nemoze ujst!" ; line "can't escape now!"
	prompt

StartedNightmareText:
	text "<TARGET>"
	line "zacal mat" ; line "started to have a"
	cont "NOCNU MORU!" ; cont "NIGHTMARE!"
	prompt

WasDefrostedText:
	text "<USER>"
	line "sa rozmrazil!" ; line "was defrosted!"
	prompt

PutACurseText:
	text "<USER>"
	line "obetoval polku HP a" ; line "cut its own HP and"

	para "dal KLIATBU na" ; para "put a CURSE on"
	line "<TARGET>!"
	prompt

ProtectedItselfText:
	text "<USER>"
	line "je OCHRANENY!" ; line "PROTECTED itself!"
	prompt

ProtectingItselfText:
	text "<TARGET>"
	line "je OCHRANENY!" ; line "PROTECTING itself!"
	done

SpikesText:
	text "PICHLIACE rozsypane" ; text "SPIKES scattered"
	line "vsade okolo" ; line "all around"
	cont "<TARGET>!"
	prompt

IdentifiedText:
	text "<USER>"
	line "identifikoval" ; line "identified"
	cont "<TARGET>!"
	prompt

StartPerishText:
	text "Obaja #MON" ; text "Both #MON will"
	line "odpadnu po 3 tahoch!" ; line "faint in 3 turns!"
	prompt

SandstormBrewedText:
	text "SANDSTORM" ; text "A SANDSTORM"
	line "zacala!" ; line "brewed!"
	prompt

BracedItselfText:
	text "<USER>"
	line "sa vzchopil!" ; line "braced itself!"
	prompt

FellInLoveText:
	text "<TARGET>"
	line "sa zalubil!" ; line "fell in love!"
	prompt

CoveredByVeilText:
	text "<USER>"
	line "bol zakryty clonou!" ; line "covered by a veil!"
	prompt

SafeguardProtectText:
	text "<TARGET>"
	line "je ochraneny" ; line "is protected by"
	cont "SAFEGUARD!" ; cont "SAFEGUARD!"
	prompt

MagnitudeText:
	text "MAGNITUDA @" ; text "Magnitude @"
	text_decimal wTextDecimalByte, 1, 1
	text "!"
	prompt

ReleasedByText:
	text "<USER>"
	line "bol uvolneny od" ; line "was released by"
	cont "<TARGET>!"
	prompt

ShedLeechSeedText:
	text "<USER>"
	line "vysypal LEECH SEED!" ; line "shed LEECH SEED!"
	prompt

BlewSpikesText:
	text "<USER>"
	line "odfukol PICHLIACE!" ; line "blew away SPIKES!"
	prompt

DownpourText:
	text "Zacal" ; text "A downpour"
	line "lejak!" ; line "started!"
	prompt

SunGotBrightText:
	text "Slnko svieti" ; text "The sunlight got"
	line "jasne!" ; line "bright!"
	prompt

BellyDrumText:
	text "<USER>"
	line "obetoval HP a" ; line "cut its HP and"
	cont "maximalizoval UTOK!" ; cont "maximized ATTACK!"
	prompt

CopiedStatsText:
	text "<USER>"
	line "skopiroval zmeny" ; line "copied the stat"

	para "statusov" ; para "changes of"
	line "<TARGET>!"
	prompt

ForesawAttackText:
	text "<USER>"
	line "predvidal utok!" ; line "foresaw an attack!"
	prompt

BeatUpAttackText:
	text_ram wStringBuffer1
	text " " ; text "'s"
	line "utok!" ; line "attack!"
	done

PresentFailedText:
	text "<TARGET>"
	line "odmietol darcek!" ; line "refused the gift!"
	prompt

IgnoredOrders2Text:
	text "<USER>"
	line "ignoroval prikaz!" ; line "ignored orders!"
	prompt

BattleText_LinkErrorBattleCanceled:
	text "Chyba spojenia…" ; text "Link error…"

	para "Zapas bol" ; para "The battle has"
	line "zruseny…" ; line "been canceled…"
	prompt

BattleText_NoTimeLeftToday: ; unreferenced
	text "There is no time"
	line "left today!"
	done
