; ModuleID = '/llk/IR_all_yes/sound/pci/hda/hda_proc.c_pt.bc'
source_filename = "../sound/pci/hda/hda_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, %struct.snd_array, %struct.snd_array, %struct.snd_array, ptr, i24, i32, i32, i32, ptr, ptr, %struct.snd_array, i32, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.72, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.72 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.hda_nid_item = type { ptr, i32, i16, i16 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }

@__param_str_dump_coef = internal constant [24 x i8] c"snd_hda_codec.dump_coef\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dump_coef = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_dump_coef = internal constant %struct.kernel_param { ptr @__param_str_dump_coef, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @dump_coef } }, section "__param", align 4
@__UNIQUE_ID_dump_coeftype239 = internal constant [37 x i8] c"snd_hda_codec.parmtype=dump_coef:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dump_coef240 = internal constant [108 x i8] c"snd_hda_codec.parm=dump_coef:Dump processing coefficients in codec proc file (-1=auto, 0=disable, 1=enable)\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"codec#%d\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Default PCM:\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Default Amp-In caps: \00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Default Amp-Out caps: \00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"State of AFG node 0x%02x:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid AFG subtree\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Node 0x%02x [%s] wcaps 0x%x:\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" Stereo\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" %d-Channels\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" Mono\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" Digital\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" Amp-In\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" Amp-Out\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" Stripe\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" R/L\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" CP\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  Amp-In caps: \00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  Amp-In vals: \00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  Amp-Out caps: \00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  Amp-Out vals: \00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"  PCM:\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  Delay: %d samples\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Codec: \00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Not Set\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Address: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AFG Function Id: 0x%x (unsol %u)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MFG Function Id: 0x%x (unsol %u)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Vendor Id: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Subsystem Id: 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Revision Id: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Modem Function Group: 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No Modem Function Group found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"N/A\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"    rates [0x%x]:\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"    bits [0x%x]:\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"    formats [0x%x]:\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" PCM\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" FLOAT\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" AC3\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ofs=0x%02x, nsteps=0x%02x, stepsize=0x%02x, mute=%x\0A\00", [43 x i8] zeroinitializer }, align 32
@print_power_state.names = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.49, ptr @.str.50, ptr @.str.51], [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"D0\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"D1\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"D2\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"D3\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"D3cold\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"S3D3cold\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLKSTOP\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EPSS\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  Power states: \00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  Power: setting=%s, actual=%s\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c", Error\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c", Clock-stop-OK\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c", Setting-reset\00", [16 x i8] zeroinitializer }, align 32
@get_pwr_state.buf = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"GPIO: io=%d, o=%d, i=%d, unsolicited=%d, wake=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"  IO[%d]: enable=%d, dir=%d, wake=%d, sticky=%d, data=%d, unsol=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@get_wid_type_name.names = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.69], [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Audio Output\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Audio Input\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Audio Mixer\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Audio Selector\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Pin Complex\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Power Widget\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Volume Knob Widget\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Beep Generator Widget\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Vendor Defined Widget\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"UNKNOWN Widget\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"  Control: name=\22%s\22, index=%i, device=%i\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"    ControlAmp: chs=%lu, dir=%s, idx=%lu, ofs=%lu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Out\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"In\00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"  Device: name=\22%s\22, type=\22%s\22, device=%i\0A\00", [53 x i8] zeroinitializer }, align 32
@snd_hda_pcm_type_name = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" [\00", [29 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%02x\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" 0x%02x\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"]\00", [30 x i8] zeroinitializer }, align 32
@print_pin_caps.jack_conns = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Jack\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Fixed\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Both\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  Pincap 0x%08x:\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" IN\00", [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" OUT\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" HP\00", [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" EAPD\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" Detect\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" Balanced\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" HBR\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" HDMI\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" DP\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" Trigger\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" ImpSense\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"    Vref caps:\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" HIZ\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" 50\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" GRD\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" 80\00", [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" 100\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  EAPD 0x%x:\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" BALANCED\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"  Pin Default 0x%08x: [%s] %s at %s %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"    Conn = %s, Color = %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"    DefAssociation = 0x%x, Sequence = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"    Misc = NO_PRESENCE\0A\00", [40 x i8] zeroinitializer }, align 32
@get_jack_type.jack_types = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123], [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Line Out\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Speaker\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP Out\00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CD\00", [29 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPDIF Out\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Digital Out\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Modem Line\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Modem Hand\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Line In\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Aux\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Telephony\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPDIF In\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Digital In\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Other\00", [26 x i8] zeroinitializer }, align 32
@get_jack_connectivity.jack_locations = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127], [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Ext\00", [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Int\00", [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Sep\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Oth\00", [28 x i8] zeroinitializer }, align 32
@get_jack_location.bases = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.81, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133], [36 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Rear\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Front\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Top\00", [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Bottom\00", [25 x i8] zeroinitializer }, align 32
@get_jack_location.specials = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140], [36 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Rear Panel\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Drive Bar\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Riser\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ATAPI\00", [26 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mobile-In\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mobile-Out\00", [21 x i8] zeroinitializer }, align 32
@get_jack_connection.names = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.138, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr null, ptr null, ptr null, ptr @.str.123], [32 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/8\00", [28 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/4\00", [28 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RCA\00", [28 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Optical\00", [24 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Digital\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Analog\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DIN\00", [28 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XLR\00", [28 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RJ11\00", [27 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Comb\00", [27 x i8] zeroinitializer }, align 32
@get_jack_color.names = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.141, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr null, ptr null, ptr null, ptr null, ptr @.str.161, ptr @.str.123], [32 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Black\00", [26 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Grey\00", [27 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Blue\00", [27 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Green\00", [26 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Red\00", [28 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Orange\00", [25 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Yellow\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Purple\00", [25 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Pink\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"White\00", [26 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  Pin-ctls: 0x%02x:\00", [44 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" VREF_HIZ\00", [22 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" VREF_50\00", [23 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" VREF_GRD\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" VREF_80\00", [23 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" VREF_100\00", [22 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"  Volume-Knob: delta=%d, steps=%d, \00", [60 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"direct=%d, val=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"  Converter: stream=%d, channel=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  SDI-Select: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"  Digital:\00", [21 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" Enabled\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" Validity\00", [22 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" ValidityCfg\00", [19 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" Preemphasis\00", [19 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" Non-Copyright\00", [17 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" Non-Audio\00", [21 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" Pro\00", [27 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" GenLevel\00", [22 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" KAE\00", [27 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  Digital category: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  IEC Coding Type: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"  Unsolicited: tag=%02x, enabled=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  Devices: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"    *\00", [26 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"     \00", [26 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Dev %02d: PD = %d, ELDV = %d, IA = %d, Connections [\00", [43 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" ]\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  Connection: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  In-driver Connection: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"  Processing caps: benign=%d, ncoeff=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"    Coeff 0x%02x: 0x%04x\0A\00", [38 x i8] zeroinitializer }, align 32
@switch.table.print_codec_info = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.163, ptr @.str.166, ptr @.str.167], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.199 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 6]
@__sancov_gen_cov_switch_values.200 = internal global [9 x i64] [i64 7, i64 32, i64 7, i64 8, i64 23, i64 24, i64 25, i64 55, i64 56]
@__sancov_gen_cov_switch_values.201 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.203 = private unnamed_addr constant [10 x i8] c"dump_coef\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 17, i32 12 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 945, i32 31 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 786, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 788, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 790, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 792, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 797, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 813, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 818, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 820, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 822, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 824, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 826, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 828, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 830, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 832, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 834, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 835, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 862, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 864, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 875, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 877, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 903, i32 5 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 916, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 751, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 753, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 756, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 757, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 759, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 762, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 764, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 765, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 766, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 769, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 771, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 205, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 170, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 173, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 181, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 183, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 189, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 191, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 193, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 195, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 103, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 515, i32 28 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 516, i32 30 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 517, i32 30 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 518, i32 30 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 519, i32 30 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 520, i32 33 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 521, i32 35 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 522, i32 31 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 523, i32 29 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 532, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 535, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 540, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 545, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 547, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 549, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 504, i32 28 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 509, i32 9 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 645, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 668, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 27, i32 28 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 28, i32 22 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 29, i32 21 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 30, i32 22 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 31, i32 22 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 32, i32 18 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 33, i32 20 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 34, i32 22 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 35, i32 19 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 36, i32 21 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 39, i32 10 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 58, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 63, i32 5 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 84, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 145, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 149, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 154, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 156, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant [11 x i8] c"jack_conns\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 308, i32 28 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 309, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 309, i32 11 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 309, i32 18 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 309, i32 27 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 314, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 316, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 318, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 320, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 322, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 324, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 326, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 333, i32 5 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 334, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 338, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 340, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 342, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 347, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 349, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 351, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 353, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 355, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 357, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 365, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 367, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 375, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 380, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 387, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 396, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant [11 x i8] c"jack_types\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 293, i32 28 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 294, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 294, i32 15 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 294, i32 26 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 294, i32 36 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 295, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 295, i32 16 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 295, i32 31 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 295, i32 45 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 296, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 296, i32 14 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 296, i32 21 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 296, i32 28 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 297, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 297, i32 15 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 297, i32 29 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 297, i32 41 }
@___asan_gen_.593 = private unnamed_addr constant [15 x i8] c"jack_locations\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 280, i32 28 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 281, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 281, i32 10 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 281, i32 17 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 281, i32 24 }
@___asan_gen_.608 = private unnamed_addr constant [6 x i8] c"bases\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 249, i32 28 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 250, i32 10 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 250, i32 18 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 250, i32 27 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 250, i32 35 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 250, i32 44 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 250, i32 51 }
@___asan_gen_.629 = private unnamed_addr constant [9 x i8] c"specials\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 257, i32 28 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 258, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 258, i32 17 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 259, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 259, i32 12 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 259, i32 20 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 260, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 260, i32 16 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 215, i32 28 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 216, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 216, i32 14 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 216, i32 21 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 217, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 217, i32 10 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 217, i32 20 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 217, i32 31 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 218, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 218, i32 10 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 218, i32 17 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 218, i32 25 }
@___asan_gen_.689 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 230, i32 28 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 231, i32 14 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 231, i32 23 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 231, i32 31 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 232, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 232, i32 12 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 232, i32 19 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 232, i32 29 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 233, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 233, i32 13 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 234, i32 15 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 408, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 419, i32 4 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 422, i32 4 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 425, i32 4 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 428, i32 4 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 431, i32 4 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 442, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 446, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 455, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 463, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 476, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 478, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 480, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 482, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 484, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 486, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 488, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 490, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 492, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 494, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 496, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 498, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 558, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 723, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 732, i32 4 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 734, i32 4 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 736, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 744, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 706, i32 4 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 613, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 615, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 628, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 579, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.822 = private constant [28 x i8] c"../sound/pci/hda/hda_proc.c\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 593, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant [30 x i8] c"switch.table.print_codec_info\00", align 1
@llvm.compiler.used = appending global [211 x ptr] [ptr @__UNIQUE_ID_dump_coef240, ptr @__UNIQUE_ID_dump_coeftype239, ptr @__param_dump_coef, ptr @dump_coef, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @print_power_state.names, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @get_pwr_state.buf, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @get_wid_type_name.names, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @print_pin_caps.jack_conns, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @get_jack_type.jack_types, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @get_jack_connectivity.jack_locations, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @get_jack_location.bases, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @get_jack_location.specials, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @get_jack_connection.names, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @get_jack_color.names, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @switch.table.print_codec_info], section "llvm.metadata"
@0 = internal global [208 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_coef to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_power_state.names to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pwr_state.buf to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_wid_type_name.names to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_pin_caps.jack_conns to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_jack_type.jack_types to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_jack_connectivity.jack_locations to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_jack_location.bases to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_jack_location.specials to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_jack_connection.names to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_jack_color.names to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.print_codec_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hda_codec_proc_new(ptr noundef %codec) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #6
  %addr = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 3
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 8
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %2)
  %card = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 2
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %call.i = call i32 @snd_card_rw_proc_new(ptr noundef %4, ptr noundef nonnull %name, ptr noundef %codec, ptr noundef nonnull @print_codec_info, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #6
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @print_codec_info(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  %list.i = alloca ptr, align 4
  %dev_list.i = alloca [64 x i8], align 1
  %nid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nid) #6
  %2 = ptrtoint ptr %nid to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %nid, align 2, !annotation !431
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef nonnull @.str.23) #6
  %vendor_name.i = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %vendor_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vendor_name.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %chip_name.i = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %chip_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip_name.i, align 8
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.24, ptr noundef nonnull %6, ptr noundef nonnull %8) #6
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.25) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  %addr.i = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef nonnull @.str.26, i32 noundef %16) #6
  %afg.i = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %afg.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %afg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool8.not.i = icmp eq i16 %18, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then9.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  %afg_function_id.i = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %afg_function_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %afg_function_id.i, align 4
  %afg_unsol.i = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %afg_unsol.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %afg_unsol.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef nonnull @.str.27, i32 noundef %22, i32 noundef %bf.cast.i) #6
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end.i.if.end11.i_crit_edge
  %mfg.i = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %mfg.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mfg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool12.not.i = icmp eq i16 %25, 0
  br i1 %tobool12.not.i, label %if.end11.i.if.end18.i_crit_edge, label %if.then13.i

if.end11.i.if.end18.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  %mfg_function_id.i = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %mfg_function_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mfg_function_id.i, align 8
  %mfg_unsol.i = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %mfg_unsol.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load15.i = load i8, ptr %mfg_unsol.i, align 4
  %bf.lshr16.i = lshr i8 %bf.load15.i, 6
  %bf.clear.i = and i8 %bf.lshr16.i, 1
  %bf.cast17.i = zext i8 %bf.clear.i to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.28, i32 noundef %29, i32 noundef %bf.cast17.i) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %if.end11.i.if.end18.i_crit_edge
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 4
  %vendor_id.i = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vendor_id.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.29, i32 noundef %34) #6
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer, align 4
  %subsystem_id.i = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %subsystem_id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %subsystem_id.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %36, ptr noundef nonnull @.str.30, i32 noundef %38) #6
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer, align 4
  %revision_id.i = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 9
  %41 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %revision_id.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %40, ptr noundef nonnull @.str.31, i32 noundef %42) #6
  %43 = ptrtoint ptr %mfg.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %mfg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool23.not.i = icmp eq i16 %44, 0
  %45 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer, align 4
  br i1 %tobool23.not.i, label %if.else27.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i16 %44 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %46, ptr noundef nonnull @.str.32, i32 noundef %conv.i) #6
  br label %print_codec_core_info.exit

if.else27.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %46, ptr noundef nonnull @.str.33) #6
  br label %print_codec_core_info.exit

print_codec_core_info.exit:                       ; preds = %if.else27.i, %if.then24.i
  %47 = ptrtoint ptr %afg.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %afg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool.not = icmp eq i16 %48, 0
  br i1 %tobool.not, label %print_codec_core_info.exit.cleanup180_crit_edge, label %if.end

print_codec_core_info.exit.cleanup180_crit_edge:  ; preds = %print_codec_core_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup180

if.end:                                           ; preds = %print_codec_core_info.exit
  %call = tail call i32 @snd_hdac_power_up(ptr noundef %1) #6
  %49 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %50, ptr noundef nonnull @.str.1) #6
  tail call fastcc void @print_pcm_caps(ptr noundef %buffer, ptr noundef %1, i16 noundef zeroext %48)
  %51 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %52, ptr noundef nonnull @.str.2) #6
  %call.i = tail call i32 @snd_hdac_read_parm_uncached(ptr noundef %1, i16 noundef zeroext %48, i32 noundef 13) #6
  %53 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end.i337 [
    i32 -1, label %if.end.if.then.i336_crit_edge
    i32 0, label %if.end.if.then.i336_crit_edge482
  ]

if.end.if.then.i336_crit_edge482:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i336

if.end.if.then.i336_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i336

if.then.i336:                                     ; preds = %if.end.if.then.i336_crit_edge, %if.end.if.then.i336_crit_edge482
  %54 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %55, ptr noundef nonnull @.str.34) #6
  br label %print_amp_caps.exit

if.end.i337:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer, align 4
  %and.i = and i32 %call.i, 127
  %and5.i = lshr i32 %call.i, 8
  %shr.i = and i32 %and5.i, 127
  %and6.i = lshr i32 %call.i, 16
  %shr7.i = and i32 %and6.i, 127
  %shr9.i = lshr i32 %call.i, 31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %57, ptr noundef nonnull @.str.43, i32 noundef %and.i, i32 noundef %shr.i, i32 noundef %shr7.i, i32 noundef %shr9.i) #6
  br label %print_amp_caps.exit

print_amp_caps.exit:                              ; preds = %if.end.i337, %if.then.i336
  %58 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %59, ptr noundef nonnull @.str.3) #6
  %call.i338 = tail call i32 @snd_hdac_read_parm_uncached(ptr noundef %1, i16 noundef zeroext %48, i32 noundef 18) #6
  %60 = zext i32 %call.i338 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %call.i338, label %if.end.i346 [
    i32 -1, label %print_amp_caps.exit.if.then.i339_crit_edge
    i32 0, label %print_amp_caps.exit.if.then.i339_crit_edge483
  ]

print_amp_caps.exit.if.then.i339_crit_edge483:    ; preds = %print_amp_caps.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i339

print_amp_caps.exit.if.then.i339_crit_edge:       ; preds = %print_amp_caps.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i339

if.then.i339:                                     ; preds = %print_amp_caps.exit.if.then.i339_crit_edge, %print_amp_caps.exit.if.then.i339_crit_edge483
  %61 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %62, ptr noundef nonnull @.str.34) #6
  br label %print_amp_caps.exit347

if.end.i346:                                      ; preds = %print_amp_caps.exit
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buffer, align 4
  %and.i340 = and i32 %call.i338, 127
  %and5.i341 = lshr i32 %call.i338, 8
  %shr.i342 = and i32 %and5.i341, 127
  %and6.i343 = lshr i32 %call.i338, 16
  %shr7.i344 = and i32 %and6.i343, 127
  %shr9.i345 = lshr i32 %call.i338, 31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %64, ptr noundef nonnull @.str.43, i32 noundef %and.i340, i32 noundef %shr.i342, i32 noundef %shr7.i344, i32 noundef %shr9.i345) #6
  br label %print_amp_caps.exit347

print_amp_caps.exit347:                           ; preds = %if.end.i346, %if.then.i339
  %65 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buffer, align 4
  %conv = zext i16 %48 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %66, ptr noundef nonnull @.str.4, i32 noundef %conv) #6
  tail call fastcc void @print_power_state(ptr noundef %buffer, ptr noundef %1, i16 noundef zeroext %48)
  %call9 = call i32 @snd_hdac_get_sub_nodes(ptr noundef %1, i16 noundef zeroext %48, ptr noundef nonnull %nid) #6
  %67 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %nid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool10.not = icmp eq i16 %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  %or.cond = select i1 %tobool10.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then12, label %if.end16

if.then12:                                        ; preds = %print_amp_caps.exit347
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %70, ptr noundef nonnull @.str.5) #6
  br label %cleanup180.sink.split

if.end16:                                         ; preds = %print_amp_caps.exit347
  %71 = ptrtoint ptr %afg.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %afg.i, align 4
  %call.i349 = call i32 @snd_hdac_read_parm_uncached(ptr noundef %1, i16 noundef zeroext %72, i32 noundef 17) #6
  %73 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buffer, align 4
  %and.i350 = and i32 %call.i349, 255
  %and3.i = lshr i32 %call.i349, 8
  %shr.i351 = and i32 %and3.i, 255
  %and4.i = lshr i32 %call.i349, 16
  %shr5.i = and i32 %and4.i, 255
  %and6.i352 = lshr i32 %call.i349, 30
  %and6.lobit.i = and i32 %and6.i352, 1
  %call.lobit.i = lshr i32 %call.i349, 31
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %74, ptr noundef nonnull @.str.59, i32 noundef %and.i350, i32 noundef %shr.i351, i32 noundef %shr5.i, i32 noundef %and6.lobit.i, i32 noundef %call.lobit.i) #6
  %75 = add nsw i32 %and.i350, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %75)
  %76 = icmp ult i32 %75, -8
  br i1 %76, label %if.end16.print_gpio.exit_crit_edge, label %for.body.preheader.i

if.end16.print_gpio.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_gpio.exit

for.body.preheader.i:                             ; preds = %if.end16
  %call.i.i = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %48, i32 noundef 0, i32 noundef 3862, i32 noundef 0) #6
  %call.i87.i = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %48, i32 noundef 0, i32 noundef 3863, i32 noundef 0) #6
  %call.i88.i = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %48, i32 noundef 0, i32 noundef 3864, i32 noundef 0) #6
  %call.i89.i = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %48, i32 noundef 0, i32 noundef 3865, i32 noundef 0) #6
  %call.i90.i = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %48, i32 noundef 0, i32 noundef 3866, i32 noundef 0) #6
  %call.i91.i = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %48, i32 noundef 0, i32 noundef 3861, i32 noundef 0) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.093.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %77 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buffer, align 4
  %79 = lshr i32 %call.i.i, %i.093.i
  %80 = and i32 %79, 1
  %81 = lshr i32 %call.i87.i, %i.093.i
  %82 = and i32 %81, 1
  %83 = lshr i32 %call.i88.i, %i.093.i
  %84 = and i32 %83, 1
  %85 = lshr i32 %call.i90.i, %i.093.i
  %86 = and i32 %85, 1
  %87 = lshr i32 %call.i91.i, %i.093.i
  %88 = and i32 %87, 1
  %89 = lshr i32 %call.i89.i, %i.093.i
  %90 = and i32 %89, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %78, ptr noundef nonnull @.str.60, i32 noundef %i.093.i, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88, i32 noundef %90) #6
  %inc.i = add nuw nsw i32 %i.093.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and.i350
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %mixers.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 15
  call fastcc void @print_nid_array(ptr noundef %buffer, i16 noundef zeroext %48, ptr noundef %mixers.i) #6
  %nids.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 16
  call fastcc void @print_nid_array(ptr noundef %buffer, i16 noundef zeroext %48, ptr noundef %nids.i) #6
  br label %print_gpio.exit

print_gpio.exit:                                  ; preds = %for.end.i, %if.end16.print_gpio.exit_crit_edge
  %proc_widget_hook = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 36
  %91 = ptrtoint ptr %proc_widget_hook to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %proc_widget_hook, align 8
  %tobool17.not = icmp eq ptr %92, null
  br i1 %tobool17.not, label %print_gpio.exit.if.end20_crit_edge, label %if.then18

print_gpio.exit.if.end20_crit_edge:               ; preds = %print_gpio.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %print_gpio.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void %92(ptr noundef %buffer, ptr noundef %1, i16 noundef zeroext %48) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %print_gpio.exit.if.end20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp21480 = icmp sgt i32 %call9, 0
  br i1 %cmp21480, label %for.body.lr.ph, label %if.end20.cleanup180.sink.split_crit_edge

if.end20.cleanup180.sink.split_crit_edge:         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup180.sink.split

for.body.lr.ph:                                   ; preds = %if.end20
  %mixers = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 15
  %nids = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 16
  %pcm_list_head.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 8
  %single_adc_amp = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %if.end173.for.body_crit_edge, %for.body.lr.ph
  %i.0481 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end173.for.body_crit_edge ]
  %93 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %nid, align 2
  %call24 = call i32 @snd_hdac_read_parm_uncached(ptr noundef %1, i16 noundef zeroext %94, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not.i353 = icmp eq i32 %call24, 0
  %and.i354 = lshr i32 %call24, 20
  %shr.i355 = and i32 %and.i354, 15
  %retval.0.i = select i1 %tobool.not.i353, i32 -1, i32 %shr.i355
  %95 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %buffer, align 4
  %97 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %nid, align 2
  %conv27 = zext i16 %98 to i32
  br i1 %tobool.not.i353, label %get_wid_type_name.exit.thread, label %if.end.i358

get_wid_type_name.exit.thread:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %96, ptr noundef nonnull @.str.6, i32 noundef %conv27, ptr noundef nonnull @.str.70, i32 noundef 0) #6
  br label %if.else38

if.end.i358:                                      ; preds = %for.body
  %and.i356 = and i32 %retval.0.i, 15
  %99 = add nsw i32 %and.i356, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %99)
  %tobool.not.i357 = icmp ult i32 %99, 7
  br i1 %tobool.not.i357, label %if.end.i358.get_wid_type_name.exit_crit_edge, label %if.then1.i

if.end.i358.get_wid_type_name.exit_crit_edge:     ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_wid_type_name.exit

if.then1.i:                                       ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [16 x ptr], ptr @get_wid_type_name.names, i32 0, i32 %and.i356
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i, align 4
  br label %get_wid_type_name.exit

get_wid_type_name.exit:                           ; preds = %if.then1.i, %if.end.i358.get_wid_type_name.exit_crit_edge
  %retval.0.i359 = phi ptr [ %101, %if.then1.i ], [ @.str.70, %if.end.i358.get_wid_type_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %96, ptr noundef nonnull @.str.6, i32 noundef %conv27, ptr noundef %retval.0.i359, i32 noundef %call24) #6
  %and = and i32 %call24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %get_wid_type_name.exit.if.else38_crit_edge, label %if.then30

get_wid_type_name.exit.if.else38_crit_edge:       ; preds = %get_wid_type_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else38

if.then30:                                        ; preds = %get_wid_type_name.exit
  %102 = lshr i32 %call24, 12
  %shl.i = and i32 %102, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %cmp32 = icmp eq i32 %shl.i, 0
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %104, ptr noundef nonnull @.str.7) #6
  br label %if.end40

if.else:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add nuw nsw i32 %shl.i, 2
  %105 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %106, ptr noundef nonnull @.str.8, i32 noundef %add.i) #6
  br label %if.end40

if.else38:                                        ; preds = %get_wid_type_name.exit.if.else38_crit_edge, %get_wid_type_name.exit.thread
  %107 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %108, ptr noundef nonnull @.str.9) #6
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.else, %if.then34
  %and41 = and i32 %call24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end45_crit_edge, label %if.then43

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %110, ptr noundef nonnull @.str.10) #6
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40.if.end45_crit_edge
  %and46 = and i32 %call24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end50_crit_edge, label %if.then48

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %112, ptr noundef nonnull @.str.11) #6
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end45.if.end50_crit_edge
  %and51 = and i32 %call24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end55_crit_edge, label %if.then53

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %114, ptr noundef nonnull @.str.12) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end50.if.end55_crit_edge
  %and56 = and i32 %call24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end60_crit_edge, label %if.then58

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %116, ptr noundef nonnull @.str.13) #6
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end55.if.end60_crit_edge
  %and61 = and i32 %call24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end65_crit_edge, label %if.then63

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %118, ptr noundef nonnull @.str.14) #6
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end60.if.end65_crit_edge
  %and66 = and i32 %call24, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end70_crit_edge, label %if.then68

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %119 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %120, ptr noundef nonnull @.str.15) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65.if.end70_crit_edge
  %121 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %122, ptr noundef nonnull @.str.16) #6
  %123 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %nid, align 2
  call fastcc void @print_nid_array(ptr noundef %buffer, i16 noundef zeroext %124, ptr noundef %mixers)
  %125 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %nid, align 2
  call fastcc void @print_nid_array(ptr noundef %buffer, i16 noundef zeroext %126, ptr noundef %nids)
  %127 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %nid, align 2
  %129 = ptrtoint ptr %pcm_list_head.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.pn31.i = load ptr, ptr %pcm_list_head.i, align 4
  %cmp.not33.i = icmp eq ptr %.pn31.i, %pcm_list_head.i
  br i1 %cmp.not33.i, label %if.end70.print_nid_pcms.exit_crit_edge, label %if.end70.for.cond2.preheader.i_crit_edge

if.end70.for.cond2.preheader.i_crit_edge:         ; preds = %if.end70
  br label %for.cond2.preheader.i

if.end70.print_nid_pcms.exit_crit_edge:           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_nid_pcms.exit

for.cond2.preheader.i:                            ; preds = %for.inc.1.i.for.cond2.preheader.i_crit_edge, %if.end70.for.cond2.preheader.i_crit_edge
  %.pn34.i = phi ptr [ %.pn.i, %for.inc.1.i.for.cond2.preheader.i_crit_edge ], [ %.pn31.i, %if.end70.for.cond2.preheader.i_crit_edge ]
  %cpcm.035.i = getelementptr i8, ptr %.pn34.i, i32 -156
  %pcm.i = getelementptr i8, ptr %.pn34.i, i32 -12
  %pcm_type.i = getelementptr i8, ptr %.pn34.i, i32 -20
  %nid5.i = getelementptr i8, ptr %.pn34.i, i32 -136
  %130 = ptrtoint ptr %nid5.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %nid5.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %131, i16 %128)
  %cmp7.not.i = icmp eq i16 %131, %128
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %for.cond2.preheader.i.for.inc.i_crit_edge

for.cond2.preheader.i.for.inc.i_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.cond2.preheader.i
  %132 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pcm.i, align 8
  %cmp9.i = icmp eq ptr %133, null
  br i1 %cmp9.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i360

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i360:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %buffer, align 4
  %136 = ptrtoint ptr %cpcm.035.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cpcm.035.i, align 8
  %138 = ptrtoint ptr %pcm_type.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %pcm_type.i, align 8
  %arrayidx12.i = getelementptr [0 x ptr], ptr @snd_hda_pcm_type_name, i32 0, i32 %139
  %140 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx12.i, align 4
  %device.i = getelementptr inbounds %struct.snd_pcm, ptr %133, i32 0, i32 2
  %142 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %device.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %135, ptr noundef nonnull @.str.75, ptr noundef %137, ptr noundef %141, i32 noundef %143) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i360, %lor.lhs.false.i.for.inc.i_crit_edge, %for.cond2.preheader.i.for.inc.i_crit_edge
  %nid5.1.i = getelementptr i8, ptr %.pn34.i, i32 -72
  %144 = ptrtoint ptr %nid5.1.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %nid5.1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %145, i16 %128)
  %cmp7.not.1.i = icmp eq i16 %145, %128
  br i1 %cmp7.not.1.i, label %lor.lhs.false.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

lor.lhs.false.1.i:                                ; preds = %for.inc.i
  %146 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pcm.i, align 8
  %cmp9.1.i = icmp eq ptr %147, null
  br i1 %cmp9.1.i, label %lor.lhs.false.1.i.for.inc.1.i_crit_edge, label %if.end.1.i

lor.lhs.false.1.i.for.inc.1.i_crit_edge:          ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %148 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %buffer, align 4
  %150 = ptrtoint ptr %cpcm.035.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cpcm.035.i, align 8
  %152 = ptrtoint ptr %pcm_type.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %pcm_type.i, align 8
  %arrayidx12.1.i = getelementptr [0 x ptr], ptr @snd_hda_pcm_type_name, i32 0, i32 %153
  %154 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx12.1.i, align 4
  %device.1.i = getelementptr inbounds %struct.snd_pcm, ptr %147, i32 0, i32 2
  %156 = ptrtoint ptr %device.1.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %device.1.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %149, ptr noundef nonnull @.str.75, ptr noundef %151, ptr noundef %155, i32 noundef %157) #6
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i, %lor.lhs.false.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %158 = ptrtoint ptr %.pn34.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %.pn.i = load ptr, ptr %.pn34.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pcm_list_head.i
  br i1 %cmp.not.i, label %for.inc.1.i.print_nid_pcms.exit_crit_edge, label %for.inc.1.i.for.cond2.preheader.i_crit_edge

for.inc.1.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond2.preheader.i

for.inc.1.i.print_nid_pcms.exit_crit_edge:        ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_nid_pcms.exit

print_nid_pcms.exit:                              ; preds = %for.inc.1.i.print_nid_pcms.exit_crit_edge, %if.end70.print_nid_pcms.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %retval.0.i)
  %cmp72 = icmp eq i32 %retval.0.i, 6
  %or = or i32 %call24, 256
  %spec.select = select i1 %cmp72, i32 %or, i32 %call24
  %and76 = and i32 %spec.select, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %print_nid_pcms.exit.if.end95_crit_edge, label %if.then78

print_nid_pcms.exit.if.end95_crit_edge:           ; preds = %print_nid_pcms.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then78:                                        ; preds = %print_nid_pcms.exit
  %159 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %nid, align 2
  %call80 = call i32 @snd_hdac_get_connections(ptr noundef %1, i16 noundef zeroext %160, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp sgt i32 %call80, 0
  br i1 %cmp81, label %if.end7.i, label %if.then78.if.end95_crit_edge

if.then78.if.end95_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.end7.i:                                        ; preds = %if.then78
  %161 = shl nuw i32 %call80, 1
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %161, i32 noundef 3264) #9
  %tobool85.not = icmp eq ptr %call8.i, null
  br i1 %tobool85.not, label %if.end7.i.cleanup180_crit_edge, label %if.end87

if.end7.i.cleanup180_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup180

if.end87:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %nid, align 2
  %call89 = call i32 @snd_hdac_get_connections(ptr noundef %1, i16 noundef zeroext %163, ptr noundef nonnull %call8.i, i32 noundef %call80) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  %spec.select334 = select i1 %cmp90, i32 0, i32 %call80
  br label %if.end95

if.end95:                                         ; preds = %if.end87, %if.then78.if.end95_crit_edge, %print_nid_pcms.exit.if.end95_crit_edge
  %conn.0 = phi ptr [ null, %if.then78.if.end95_crit_edge ], [ null, %print_nid_pcms.exit.if.end95_crit_edge ], [ %call8.i, %if.end87 ]
  %conn_len.0 = phi i32 [ %call80, %if.then78.if.end95_crit_edge ], [ 0, %print_nid_pcms.exit.if.end95_crit_edge ], [ %spec.select334, %if.end87 ]
  %and96 = and i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.if.end110_crit_edge, label %if.then98

if.end95.if.end110_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then98:                                        ; preds = %if.end95
  %164 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %165, ptr noundef nonnull @.str.17) #6
  %166 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %nid, align 2
  %call.i363 = call i32 @snd_hdac_read_parm_uncached(ptr noundef %1, i16 noundef zeroext %167, i32 noundef 13) #6
  %168 = zext i32 %call.i363 to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %call.i363, label %if.end.i371 [
    i32 -1, label %if.then98.if.then.i364_crit_edge
    i32 0, label %if.then98.if.then.i364_crit_edge484
  ]

if.then98.if.then.i364_crit_edge484:              ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i364

if.then98.if.then.i364_crit_edge:                 ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i364

if.then.i364:                                     ; preds = %if.then98.if.then.i364_crit_edge, %if.then98.if.then.i364_crit_edge484
  %169 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %170, ptr noundef nonnull @.str.34) #6
  br label %print_amp_caps.exit372

if.end.i371:                                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  %171 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %buffer, align 4
  %and.i365 = and i32 %call.i363, 127
  %and5.i366 = lshr i32 %call.i363, 8
  %shr.i367 = and i32 %and5.i366, 127
  %and6.i368 = lshr i32 %call.i363, 16
  %shr7.i369 = and i32 %and6.i368, 127
  %shr9.i370 = lshr i32 %call.i363, 31
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %172, ptr noundef nonnull @.str.43, i32 noundef %and.i365, i32 noundef %shr.i367, i32 noundef %shr7.i369, i32 noundef %shr9.i370) #6
  br label %print_amp_caps.exit372

print_amp_caps.exit372:                           ; preds = %if.end.i371, %if.then.i364
  %173 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %174, ptr noundef nonnull @.str.18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %cmp101 = icmp eq i32 %retval.0.i, 4
  br i1 %cmp101, label %print_amp_caps.exit372.if.then107_crit_edge, label %lor.lhs.false103

print_amp_caps.exit372.if.then107_crit_edge:      ; preds = %print_amp_caps.exit372
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then107

lor.lhs.false103:                                 ; preds = %print_amp_caps.exit372
  %175 = ptrtoint ptr %single_adc_amp to i32
  call void @__asan_load4_noabort(i32 %175)
  %bf.load = load i32, ptr %single_adc_amp, align 4
  %176 = and i32 %bf.load, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool104.not = icmp ne i32 %176, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp105 = icmp eq i32 %retval.0.i, 1
  %or.cond335 = and i1 %cmp105, %tobool104.not
  br i1 %or.cond335, label %lor.lhs.false103.if.then107_crit_edge, label %if.else108

lor.lhs.false103.if.then107_crit_edge:            ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then107

if.then107:                                       ; preds = %lor.lhs.false103.if.then107_crit_edge, %print_amp_caps.exit372.if.then107_crit_edge
  %177 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %nid, align 2
  call fastcc void @print_amp_vals(ptr noundef %buffer, ptr noundef %1, i16 noundef zeroext %178, i32 noundef 0, i32 noundef %spec.select, i32 noundef 1)
  br label %if.end110

if.else108:                                       ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #8
  %179 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %nid, align 2
  call fastcc void @print_amp_vals(ptr noundef %buffer, ptr noundef %1, i16 noundef zeroext %180, i32 noundef 0, i32 noundef %spec.select, i32 noundef %conn_len.0)
  br label %if.end110

if.end110:                                        ; preds = %if.else108, %if.then107, %if.end95.if.end110_crit_edge
  %and111 = and i32 %spec.select, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end110.if.end126_crit_edge, label %if.then113

if.end110.if.end126_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.then113:                                       ; preds = %if.end110
  %181 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %182, ptr noundef nonnull @.str.19) #6
  %183 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %nid, align 2
  %call.i373 = call i32 @snd_hdac_read_parm_uncached(ptr noundef %1, i16 noundef zeroext %184, i32 noundef 18) #6
  %185 = zext i32 %call.i373 to i64
  call void @__sanitizer_cov_trace_switch(i64 %185, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %call.i373, label %if.end.i381 [
    i32 -1, label %if.then113.if.then.i374_crit_edge
    i32 0, label %if.then113.if.then.i374_crit_edge485
  ]

if.then113.if.then.i374_crit_edge485:             ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i374

if.then113.if.then.i374_crit_edge:                ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i374

if.then.i374:                                     ; preds = %if.then113.if.then.i374_crit_edge, %if.then113.if.then.i374_crit_edge485
  %186 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %187, ptr noundef nonnull @.str.34) #6
  br label %print_amp_caps.exit382

if.end.i381:                                      ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  %188 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %buffer, align 4
  %and.i375 = and i32 %call.i373, 127
  %and5.i376 = lshr i32 %call.i373, 8
  %shr.i377 = and i32 %and5.i376, 127
  %and6.i378 = lshr i32 %call.i373, 16
  %shr7.i379 = and i32 %and6.i378, 127
  %shr9.i380 = lshr i32 %call.i373, 31
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %189, ptr noundef nonnull @.str.43, i32 noundef %and.i375, i32 noundef %shr.i377, i32 noundef %shr7.i379, i32 noundef %shr9.i380) #6
  br label %print_amp_caps.exit382

print_amp_caps.exit382:                           ; preds = %if.end.i381, %if.then.i374
  %190 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %191, ptr noundef nonnull @.str.20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %cmp116 = icmp eq i32 %retval.0.i, 4
  br i1 %cmp116, label %land.lhs.true118, label %print_amp_caps.exit382.if.else124_crit_edge

print_amp_caps.exit382.if.else124_crit_edge:      ; preds = %print_amp_caps.exit382
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else124

land.lhs.true118:                                 ; preds = %print_amp_caps.exit382
  %192 = ptrtoint ptr %single_adc_amp to i32
  call void @__asan_load4_noabort(i32 %192)
  %bf.load119 = load i32, ptr %single_adc_amp, align 4
  %193 = and i32 %bf.load119, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool122.not = icmp eq i32 %193, 0
  br i1 %tobool122.not, label %land.lhs.true118.if.else124_crit_edge, label %if.end126.thread

land.lhs.true118.if.else124_crit_edge:            ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else124

if.end126.thread:                                 ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #8
  %194 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %nid, align 2
  call fastcc void @print_amp_vals(ptr noundef %buffer, ptr noundef %1, i16 noundef zeroext %195, i32 noundef 1, i32 noundef %spec.select, i32 noundef %conn_len.0)
  br label %sw.bb

if.else124:                                       ; preds = %land.lhs.true118.if.else124_crit_edge, %print_amp_caps.exit382.if.else124_crit_edge
  %196 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %nid, align 2
  call fastcc void @print_amp_vals(ptr noundef %buffer, ptr noundef %1, i16 noundef zeroext %197, i32 noundef 1, i32 noundef %spec.select, i32 noundef 1)
  br label %if.end126

if.end126:                                        ; preds = %if.else124, %if.end110.if.end126_crit_edge
  %198 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %retval.0.i, label %if.end126.sw.epilog_crit_edge [
    i32 4, label %if.end126.sw.bb_crit_edge
    i32 6, label %sw.bb127
    i32 0, label %if.end126.sw.bb128_crit_edge
    i32 1, label %if.end126.sw.bb128_crit_edge486
  ]

if.end126.sw.bb128_crit_edge486:                  ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb128

if.end126.sw.bb128_crit_edge:                     ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb128

if.end126.sw.bb_crit_edge:                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end126.sw.epilog_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end126.sw.bb_crit_edge, %if.end126.thread
  %199 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %nid, align 2
  %call.i383 = call i32 @snd_hdac_read_parm_uncached(ptr noundef %1, i16 noundef zeroext %200, i32 noundef 12) #6
  %201 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %202, ptr noundef nonnull @.str.84, i32 noundef %call.i383) #6
  %and.i384 = and i32 %call.i383, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i384)
  %tobool.not.i385 = icmp eq i32 %and.i384, 0
  br i1 %tobool.not.i385, label %sw.bb.if.end.i388_crit_edge, label %if.then.i386

sw.bb.if.end.i388_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i388

if.then.i386:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %203 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %204, ptr noundef nonnull @.str.85) #6
  br label %if.end.i388

if.end.i388:                                      ; preds = %if.then.i386, %sw.bb.if.end.i388_crit_edge
  %and3.i387 = and i32 %call.i383, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i387)
  %tobool4.not.i = icmp eq i32 %and3.i387, 0
  br i1 %tobool4.not.i, label %if.end.i388.if.end7.i390_crit_edge, label %if.then5.i389

if.end.i388.if.end7.i390_crit_edge:               ; preds = %if.end.i388
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i390

if.then5.i389:                                    ; preds = %if.end.i388
  call void @__sanitizer_cov_trace_pc() #8
  %205 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %206, ptr noundef nonnull @.str.86) #6
  br label %if.end7.i390

if.end7.i390:                                     ; preds = %if.then5.i389, %if.end.i388.if.end7.i390_crit_edge
  %and8.i = and i32 %call.i383, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i390.if.end12.i_crit_edge, label %if.then10.i

if.end7.i390.if.end12.i_crit_edge:                ; preds = %if.end7.i390
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end7.i390
  call void @__sanitizer_cov_trace_pc() #8
  %207 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %208, ptr noundef nonnull @.str.87) #6
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end7.i390.if.end12.i_crit_edge
  %and13.i = and i32 %call.i383, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end17.i_crit_edge, label %if.then15.i

if.end12.i.if.end17.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %209 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %210, ptr noundef nonnull @.str.88) #6
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end17.i_crit_edge
  %and18.i = and i32 %call.i383, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end22.i_crit_edge, label %if.then20.i

if.end17.i.if.end22.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %211 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %212, ptr noundef nonnull @.str.89) #6
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end22.i_crit_edge
  %and23.i = and i32 %call.i383, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end27.i_crit_edge, label %if.then25.i

if.end22.i.if.end27.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %213 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %214, ptr noundef nonnull @.str.90) #6
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end27.i_crit_edge
  %and28.i = and i32 %call.i383, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.if.end41.i_crit_edge, label %if.then30.i

if.end27.i.if.end41.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.then30.i:                                      ; preds = %if.end27.i
  %215 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %vendor_id.i, align 8
  %shr.mask.i = and i32 %216, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 283901952, i32 %shr.mask.i)
  %cmp.i = icmp eq i32 %shr.mask.i, 283901952
  br i1 %cmp.i, label %if.then30.i.if.end41.sink.split.i_crit_edge, label %if.else.i392

if.then30.i.if.end41.sink.split.i_crit_edge:      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.sink.split.i

if.else.i392:                                     ; preds = %if.then30.i
  %and34.i = and i32 %call.i383, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.else.i392.if.end41.sink.split.i_crit_edge, label %if.then36.i

if.else.i392.if.end41.sink.split.i_crit_edge:     ; preds = %if.else.i392
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.sink.split.i

if.then36.i:                                      ; preds = %if.else.i392
  call void @__sanitizer_cov_trace_pc() #8
  %217 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %218, ptr noundef nonnull @.str.91) #6
  br label %if.end41.sink.split.i

if.end41.sink.split.i:                            ; preds = %if.then36.i, %if.else.i392.if.end41.sink.split.i_crit_edge, %if.then30.i.if.end41.sink.split.i_crit_edge
  %.str.14.sink.i = phi ptr [ @.str.14, %if.then30.i.if.end41.sink.split.i_crit_edge ], [ @.str.92, %if.then36.i ], [ @.str.92, %if.else.i392.if.end41.sink.split.i_crit_edge ]
  %219 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %220, ptr noundef nonnull %.str.14.sink.i) #6
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end41.sink.split.i, %if.end27.i.if.end41.i_crit_edge
  %and42.i = and i32 %call.i383, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end41.i.if.end46.i_crit_edge, label %if.then44.i

if.end41.i.if.end46.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  %221 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %222, ptr noundef nonnull @.str.93) #6
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then44.i, %if.end41.i.if.end46.i_crit_edge
  %and47.i = and i32 %call.i383, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end46.i.if.end51.i_crit_edge, label %if.then49.i

if.end46.i.if.end51.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  %223 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %224, ptr noundef nonnull @.str.94) #6
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then49.i, %if.end46.i.if.end51.i_crit_edge
  %and52.i = and i32 %call.i383, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end51.i.if.end56.i_crit_edge, label %if.then54.i

if.end51.i.if.end56.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then54.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  %225 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %226, ptr noundef nonnull @.str.95) #6
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %if.end51.i.if.end56.i_crit_edge
  %227 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %228, ptr noundef nonnull @.str.16) #6
  %and58.i = and i32 %call.i383, 14080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.end56.i.if.end91.i_crit_edge, label %if.then60.i

if.end56.i.if.end91.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91.i

if.then60.i:                                      ; preds = %if.end56.i
  %229 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %230, ptr noundef nonnull @.str.96) #6
  %231 = and i32 %call.i383, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool65.not.i = icmp eq i32 %231, 0
  br i1 %tobool65.not.i, label %if.then60.i.if.end68.i_crit_edge, label %if.then66.i

if.then60.i.if.end68.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i

if.then66.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #8
  %232 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %233, ptr noundef nonnull @.str.97) #6
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then66.i, %if.then60.i.if.end68.i_crit_edge
  %234 = and i32 %call.i383, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool70.not.i = icmp eq i32 %234, 0
  br i1 %tobool70.not.i, label %if.end68.i.if.end73.i_crit_edge, label %if.then71.i

if.end68.i.if.end73.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73.i

if.then71.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  %235 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %236, ptr noundef nonnull @.str.98) #6
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then71.i, %if.end68.i.if.end73.i_crit_edge
  %237 = and i32 %call.i383, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool75.not.i = icmp eq i32 %237, 0
  br i1 %tobool75.not.i, label %if.end73.i.if.end78.i_crit_edge, label %if.then76.i

if.end73.i.if.end78.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78.i

if.then76.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  %238 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %239, ptr noundef nonnull @.str.99) #6
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then76.i, %if.end73.i.if.end78.i_crit_edge
  %240 = and i32 %call.i383, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool80.not.i = icmp eq i32 %240, 0
  br i1 %tobool80.not.i, label %if.end78.i.if.end83.i_crit_edge, label %if.then81.i

if.end78.i.if.end83.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i

if.then81.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  %241 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %242, ptr noundef nonnull @.str.100) #6
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then81.i, %if.end78.i.if.end83.i_crit_edge
  %243 = and i32 %call.i383, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool85.not.i = icmp eq i32 %243, 0
  br i1 %tobool85.not.i, label %if.end83.i.if.end88.i_crit_edge, label %if.then86.i

if.end83.i.if.end88.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88.i

if.then86.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #8
  %244 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %245, ptr noundef nonnull @.str.101) #6
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then86.i, %if.end83.i.if.end88.i_crit_edge
  %246 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %247, ptr noundef nonnull @.str.16) #6
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.end88.i, %if.end56.i.if.end91.i_crit_edge
  br i1 %tobool14.not.i, label %if.end91.i.if.end113.i_crit_edge, label %if.then94.i

if.end91.i.if.end113.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113.i

if.then94.i:                                      ; preds = %if.end91.i
  %call.i.i393 = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %200, i32 noundef 0, i32 noundef 3852, i32 noundef 0) #6
  %248 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %249, ptr noundef nonnull @.str.102, i32 noundef %call.i.i393) #6
  %and97.i = and i32 %call.i.i393, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %if.then94.i.if.end101.i_crit_edge, label %if.then99.i

if.then94.i.if.end101.i_crit_edge:                ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101.i

if.then99.i:                                      ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #8
  %250 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %251, ptr noundef nonnull @.str.103) #6
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then99.i, %if.then94.i.if.end101.i_crit_edge
  %and102.i = and i32 %call.i.i393, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool103.not.i = icmp eq i32 %and102.i, 0
  br i1 %tobool103.not.i, label %if.end101.i.if.end106.i_crit_edge, label %if.then104.i

if.end101.i.if.end106.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.i

if.then104.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #8
  %252 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %253, ptr noundef nonnull @.str.88) #6
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then104.i, %if.end101.i.if.end106.i_crit_edge
  %and107.i = and i32 %call.i.i393, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i)
  %tobool108.not.i = icmp eq i32 %and107.i, 0
  br i1 %tobool108.not.i, label %if.end106.i.if.end111.i_crit_edge, label %if.then109.i

if.end106.i.if.end111.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111.i

if.then109.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #8
  %254 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %255, ptr noundef nonnull @.str.14) #6
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then109.i, %if.end106.i.if.end111.i_crit_edge
  %256 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %257, ptr noundef nonnull @.str.16) #6
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.end111.i, %if.end91.i.if.end113.i_crit_edge
  %call.i201.i = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %200, i32 noundef 0, i32 noundef 3868, i32 noundef 0) #6
  %258 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %buffer, align 4
  %shr117.i = lshr i32 %call.i201.i, 30
  %arrayidx.i394 = getelementptr [4 x ptr], ptr @print_pin_caps.jack_conns, i32 0, i32 %shr117.i
  %260 = ptrtoint ptr %arrayidx.i394 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx.i394, align 4
  %and.i.i = lshr i32 %call.i201.i, 20
  %shr.i.i = and i32 %and.i.i, 15
  %arrayidx.i.i = getelementptr [16 x ptr], ptr @get_jack_type.jack_types, i32 0, i32 %shr.i.i
  %262 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx.i.i, align 4
  %shr.i202.i = lshr i32 %call.i201.i, 28
  %and.i203.i = and i32 %shr.i202.i, 3
  %arrayidx.i204.i = getelementptr [4 x ptr], ptr @get_jack_connectivity.jack_locations, i32 0, i32 %and.i203.i
  %264 = ptrtoint ptr %arrayidx.i204.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %arrayidx.i204.i, align 4
  %and.i205.i = lshr i32 %call.i201.i, 24
  %and1.i.i = and i32 %and.i205.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and1.i.i)
  %cmp.i.i395 = icmp ult i32 %and1.i.i, 7
  br i1 %cmp.i.i395, label %if.then.i.i396, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.end113.i
  %shr.i206.i = and i32 %and.i205.i, 63
  %266 = zext i32 %shr.i206.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %266, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %shr.i206.i, label %for.body.preheader.i.i.get_jack_location.exit.i_crit_edge [
    i32 7, label %for.body.preheader.i.i.if.then7.i.i_crit_edge
    i32 8, label %if.then7.fold.split.i.i
    i32 23, label %if.then7.fold.split19.i.i
    i32 24, label %if.then7.fold.split20.i.i
    i32 25, label %if.then7.fold.split21.i.i
    i32 55, label %if.then7.fold.split22.i.i
    i32 56, label %if.then7.fold.split23.i.i
  ]

for.body.preheader.i.i.if.then7.i.i_crit_edge:    ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i.i

for.body.preheader.i.i.get_jack_location.exit.i_crit_edge: ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_jack_location.exit.i

if.then.i.i396:                                   ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i207.i = getelementptr [7 x ptr], ptr @get_jack_location.bases, i32 0, i32 %and1.i.i
  br label %cleanup.sink.split.i.i

if.then7.fold.split.i.i:                          ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i.i

if.then7.fold.split19.i.i:                        ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i.i

if.then7.fold.split20.i.i:                        ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i.i

if.then7.fold.split21.i.i:                        ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i.i

if.then7.fold.split22.i.i:                        ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i.i

if.then7.fold.split23.i.i:                        ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.then7.fold.split23.i.i, %if.then7.fold.split22.i.i, %if.then7.fold.split21.i.i, %if.then7.fold.split20.i.i, %if.then7.fold.split19.i.i, %if.then7.fold.split.i.i, %for.body.preheader.i.i.if.then7.i.i_crit_edge
  %i.017.lcssa.i.i = phi i32 [ 0, %for.body.preheader.i.i.if.then7.i.i_crit_edge ], [ 1, %if.then7.fold.split.i.i ], [ 2, %if.then7.fold.split19.i.i ], [ 3, %if.then7.fold.split20.i.i ], [ 4, %if.then7.fold.split21.i.i ], [ 5, %if.then7.fold.split22.i.i ], [ 6, %if.then7.fold.split23.i.i ]
  %arrayidx8.i.i = getelementptr [7 x ptr], ptr @get_jack_location.specials, i32 0, i32 %i.017.lcssa.i.i
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then7.i.i, %if.then.i.i396
  %arrayidx8.sink.i.i = phi ptr [ %arrayidx8.i.i, %if.then7.i.i ], [ %arrayidx.i207.i, %if.then.i.i396 ]
  %267 = ptrtoint ptr %arrayidx8.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %arrayidx8.sink.i.i, align 4
  br label %get_jack_location.exit.i

get_jack_location.exit.i:                         ; preds = %cleanup.sink.split.i.i, %for.body.preheader.i.i.get_jack_location.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.58, %for.body.preheader.i.i.get_jack_location.exit.i_crit_edge ], [ %268, %cleanup.sink.split.i.i ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %259, ptr noundef nonnull @.str.104, i32 noundef %call.i201.i, ptr noundef %261, ptr noundef %263, ptr noundef %265, ptr noundef %retval.0.i.i) #6
  %269 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %buffer, align 4
  %and.i208.i = lshr i32 %call.i201.i, 16
  %shr.i209.i = and i32 %and.i208.i, 15
  %271 = add nsw i32 %shr.i209.i, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %271)
  %tobool.not.i.i = icmp ult i32 %271, 3
  br i1 %tobool.not.i.i, label %get_jack_location.exit.i.get_jack_connection.exit.i_crit_edge, label %if.then.i211.i

get_jack_location.exit.i.get_jack_connection.exit.i_crit_edge: ; preds = %get_jack_location.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_jack_connection.exit.i

if.then.i211.i:                                   ; preds = %get_jack_location.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i210.i = getelementptr [16 x ptr], ptr @get_jack_connection.names, i32 0, i32 %shr.i209.i
  %272 = ptrtoint ptr %arrayidx.i210.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %arrayidx.i210.i, align 4
  br label %get_jack_connection.exit.i

get_jack_connection.exit.i:                       ; preds = %if.then.i211.i, %get_jack_location.exit.i.get_jack_connection.exit.i_crit_edge
  %retval.0.i212.i = phi ptr [ %273, %if.then.i211.i ], [ @.str.58, %get_jack_location.exit.i.get_jack_connection.exit.i_crit_edge ]
  %and.i213.i = lshr i32 %call.i201.i, 12
  %shr.i214.i = and i32 %and.i213.i, 15
  %274 = add nsw i32 %shr.i214.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %274)
  %tobool.not.i215.i = icmp ult i32 %274, 4
  br i1 %tobool.not.i215.i, label %get_jack_connection.exit.i.get_jack_color.exit.i_crit_edge, label %if.then.i217.i

get_jack_connection.exit.i.get_jack_color.exit.i_crit_edge: ; preds = %get_jack_connection.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_jack_color.exit.i

if.then.i217.i:                                   ; preds = %get_jack_connection.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i216.i = getelementptr [16 x ptr], ptr @get_jack_color.names, i32 0, i32 %shr.i214.i
  %275 = ptrtoint ptr %arrayidx.i216.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %arrayidx.i216.i, align 4
  br label %get_jack_color.exit.i

get_jack_color.exit.i:                            ; preds = %if.then.i217.i, %get_jack_connection.exit.i.get_jack_color.exit.i_crit_edge
  %retval.0.i218.i = phi ptr [ %276, %if.then.i217.i ], [ @.str.58, %get_jack_connection.exit.i.get_jack_color.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %270, ptr noundef nonnull @.str.105, ptr noundef %retval.0.i212.i, ptr noundef %retval.0.i218.i) #6
  %277 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %buffer, align 4
  %and125.i = lshr i32 %call.i201.i, 4
  %shr126.i = and i32 %and125.i, 15
  %and127.i = and i32 %call.i201.i, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %278, ptr noundef nonnull @.str.106, i32 noundef %shr126.i, i32 noundef %and127.i) #6
  %279 = and i32 %call.i201.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool131.not.i = icmp eq i32 %279, 0
  br i1 %tobool131.not.i, label %get_jack_color.exit.i.print_pin_caps.exit_crit_edge, label %if.then132.i

get_jack_color.exit.i.print_pin_caps.exit_crit_edge: ; preds = %get_jack_color.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_pin_caps.exit

if.then132.i:                                     ; preds = %get_jack_color.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %280 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %281, ptr noundef nonnull @.str.107) #6
  br label %print_pin_caps.exit

print_pin_caps.exit:                              ; preds = %if.then132.i, %get_jack_color.exit.i.print_pin_caps.exit_crit_edge
  %282 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %nid, align 2
  %call.i.i397 = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %283, i32 noundef 0, i32 noundef 3847, i32 noundef 0) #6
  %284 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %285, ptr noundef nonnull @.str.162, i32 noundef %call.i.i397) #6
  %and.i398 = and i32 %call.i.i397, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i398)
  %tobool.not.i399 = icmp eq i32 %and.i398, 0
  br i1 %tobool.not.i399, label %print_pin_caps.exit.if.end.i403_crit_edge, label %if.then.i400

print_pin_caps.exit.if.end.i403_crit_edge:        ; preds = %print_pin_caps.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i403

if.then.i400:                                     ; preds = %print_pin_caps.exit
  call void @__sanitizer_cov_trace_pc() #8
  %286 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %287, ptr noundef nonnull @.str.85) #6
  br label %if.end.i403

if.end.i403:                                      ; preds = %if.then.i400, %print_pin_caps.exit.if.end.i403_crit_edge
  %and3.i401 = and i32 %call.i.i397, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i401)
  %tobool4.not.i402 = icmp eq i32 %and3.i401, 0
  br i1 %tobool4.not.i402, label %if.end.i403.if.end7.i407_crit_edge, label %if.then5.i404

if.end.i403.if.end7.i407_crit_edge:               ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i407

if.then5.i404:                                    ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #8
  %288 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %289, ptr noundef nonnull @.str.86) #6
  br label %if.end7.i407

if.end7.i407:                                     ; preds = %if.then5.i404, %if.end.i403.if.end7.i407_crit_edge
  %and8.i405 = and i32 %call.i.i397, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i405)
  %tobool9.not.i406 = icmp eq i32 %and8.i405, 0
  br i1 %tobool9.not.i406, label %if.end7.i407.if.end12.i409_crit_edge, label %if.then10.i408

if.end7.i407.if.end12.i409_crit_edge:             ; preds = %if.end7.i407
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i409

if.then10.i408:                                   ; preds = %if.end7.i407
  call void @__sanitizer_cov_trace_pc() #8
  %290 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %291, ptr noundef nonnull @.str.87) #6
  br label %if.end12.i409

if.end12.i409:                                    ; preds = %if.then10.i408, %if.end7.i407.if.end12.i409_crit_edge
  br i1 %tobool59.not.i, label %if.end12.i409.print_pin_ctls.exit_crit_edge, label %if.then14.i

if.end12.i409.print_pin_ctls.exit_crit_edge:      ; preds = %if.end12.i409
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_pin_ctls.exit

if.then14.i:                                      ; preds = %if.end12.i409
  %and15.i = and i32 %call.i.i397, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and15.i)
  %292 = icmp ult i32 %and15.i, 6
  br i1 %292, label %switch.hole_check, label %if.then14.i.print_pin_ctls.exit_crit_edge

if.then14.i.print_pin_ctls.exit_crit_edge:        ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_pin_ctls.exit

switch.hole_check:                                ; preds = %if.then14.i
  %switch.maskindex = trunc i32 %and15.i to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %293 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %switch.lobit.not = icmp eq i8 %293, 0
  br i1 %switch.lobit.not, label %switch.hole_check.print_pin_ctls.exit_crit_edge, label %switch.lookup

switch.hole_check.print_pin_ctls.exit_crit_edge:  ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_pin_ctls.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.print_codec_info, i32 0, i32 %and15.i
  %294 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %294)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %295 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %296, ptr noundef nonnull %switch.load) #6
  br label %print_pin_ctls.exit

print_pin_ctls.exit:                              ; preds = %switch.lookup, %switch.hole_check.print_pin_ctls.exit_crit_edge, %if.then14.i.print_pin_ctls.exit_crit_edge, %if.end12.i409.print_pin_ctls.exit_crit_edge
  %297 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %298, ptr noundef nonnull @.str.16) #6
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  %299 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %nid, align 2
  %call.i410 = call i32 @snd_hdac_read_parm_uncached(ptr noundef %1, i16 noundef zeroext %300, i32 noundef 19) #6
  %301 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %buffer, align 4
  %shr.i411 = lshr i32 %call.i410, 7
  %and.i412 = and i32 %shr.i411, 1
  %and2.i = and i32 %call.i410, 127
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %302, ptr noundef nonnull @.str.168, i32 noundef %and.i412, i32 noundef %and2.i) #6
  %call.i.i413 = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %300, i32 noundef 0, i32 noundef 3855, i32 noundef 0) #6
  %303 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %buffer, align 4
  %shr5.i414 = lshr i32 %call.i.i413, 7
  %and6.i415 = and i32 %shr5.i414, 1
  %and7.i = and i32 %call.i.i413, 127
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %304, ptr noundef nonnull @.str.169, i32 noundef %and6.i415, i32 noundef %and7.i) #6
  br label %sw.epilog

sw.bb128:                                         ; preds = %if.end126.sw.bb128_crit_edge, %if.end126.sw.bb128_crit_edge486
  %305 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %nid, align 2
  %call.i.i416 = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %306, i32 noundef 0, i32 noundef 3846, i32 noundef 0) #6
  %307 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %buffer, align 4
  %and.i417 = lshr i32 %call.i.i416, 4
  %309 = and i32 %and.i417, 15
  %and2.i418 = and i32 %call.i.i416, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %308, ptr noundef nonnull @.str.170, i32 noundef %309, i32 noundef %and2.i418) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp.i419 = icmp eq i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i418)
  %cmp5.i = icmp eq i32 %and2.i418, 0
  %or.cond.i = and i1 %cmp.i419, %cmp5.i
  br i1 %or.cond.i, label %if.then.i420, label %sw.bb128.print_audio_io.exit_crit_edge

sw.bb128.print_audio_io.exit_crit_edge:           ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_audio_io.exit

if.then.i420:                                     ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #8
  %call.i15.i = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %306, i32 noundef 0, i32 noundef 3844, i32 noundef 0) #6
  %310 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %buffer, align 4
  %and9.i = and i32 %call.i15.i, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %311, ptr noundef nonnull @.str.171, i32 noundef %and9.i) #6
  br label %print_audio_io.exit

print_audio_io.exit:                              ; preds = %if.then.i420, %sw.bb128.print_audio_io.exit_crit_edge
  %and129 = and i32 %spec.select, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %print_audio_io.exit.if.end132_crit_edge, label %if.then131

print_audio_io.exit.if.end132_crit_edge:          ; preds = %print_audio_io.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end132

if.then131:                                       ; preds = %print_audio_io.exit
  %312 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %nid, align 2
  %call.i.i422 = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %313, i32 noundef 0, i32 noundef 3853, i32 noundef 0) #6
  %314 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %315, ptr noundef nonnull @.str.172) #6
  %and.i423 = and i32 %call.i.i422, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i423)
  %tobool.not.i424 = icmp eq i32 %and.i423, 0
  br i1 %tobool.not.i424, label %if.then131.if.end.i427_crit_edge, label %if.then.i425

if.then131.if.end.i427_crit_edge:                 ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i427

if.then.i425:                                     ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  %316 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %317, ptr noundef nonnull @.str.173) #6
  br label %if.end.i427

if.end.i427:                                      ; preds = %if.then.i425, %if.then131.if.end.i427_crit_edge
  %and5.i426 = and i32 %call.i.i422, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i426)
  %tobool6.not.i = icmp eq i32 %and5.i426, 0
  br i1 %tobool6.not.i, label %if.end.i427.if.end9.i_crit_edge, label %if.then7.i

if.end.i427.if.end9.i_crit_edge:                  ; preds = %if.end.i427
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i427
  call void @__sanitizer_cov_trace_pc() #8
  %318 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %319, ptr noundef nonnull @.str.174) #6
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i427.if.end9.i_crit_edge
  %and10.i = and i32 %call.i.i422, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end14.i_crit_edge, label %if.then12.i

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %320 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %321, ptr noundef nonnull @.str.175) #6
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end14.i_crit_edge
  %and15.i428 = and i32 %call.i.i422, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i428)
  %tobool16.not.i = icmp eq i32 %and15.i428, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end19.i_crit_edge, label %if.then17.i

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %322 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %323, ptr noundef nonnull @.str.176) #6
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end19.i_crit_edge
  %and20.i = and i32 %call.i.i422, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end24.i_crit_edge, label %if.then22.i

if.end19.i.if.end24.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %324 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %325, ptr noundef nonnull @.str.177) #6
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end24.i_crit_edge
  %and25.i = and i32 %call.i.i422, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.end29.i_crit_edge, label %if.then27.i

if.end24.i.if.end29.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %326 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %327, ptr noundef nonnull @.str.178) #6
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end24.i.if.end29.i_crit_edge
  %and30.i = and i32 %call.i.i422, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.if.end34.i_crit_edge, label %if.then32.i

if.end29.i.if.end34.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %328 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %329, ptr noundef nonnull @.str.179) #6
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end34.i_crit_edge
  %and35.i = and i32 %call.i.i422, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end39.i_crit_edge, label %if.then37.i

if.end34.i.if.end39.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %330 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %331, ptr noundef nonnull @.str.180) #6
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then37.i, %if.end34.i.if.end39.i_crit_edge
  %332 = and i32 %call.i.i422, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %tobool42.not.i = icmp eq i32 %332, 0
  br i1 %tobool42.not.i, label %if.end39.i.print_digital_conv.exit_crit_edge, label %if.then43.i

if.end39.i.print_digital_conv.exit_crit_edge:     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_digital_conv.exit

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  %333 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %334, ptr noundef nonnull @.str.181) #6
  br label %print_digital_conv.exit

print_digital_conv.exit:                          ; preds = %if.then43.i, %if.end39.i.print_digital_conv.exit_crit_edge
  %shr1.i = lshr i32 %call.i.i422, 16
  %shr.i429 = lshr i32 %call.i.i422, 8
  %335 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %336, ptr noundef nonnull @.str.16) #6
  %337 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %buffer, align 4
  %and49.i = and i32 %shr.i429, 127
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %338, ptr noundef nonnull @.str.182, i32 noundef %and49.i) #6
  %339 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %buffer, align 4
  %and52.i430 = and i32 %shr1.i, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %340, ptr noundef nonnull @.str.183, i32 noundef %and52.i430) #6
  br label %if.end132

if.end132:                                        ; preds = %print_digital_conv.exit, %print_audio_io.exit.if.end132_crit_edge
  %and133 = and i32 %spec.select, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.end132.sw.epilog_crit_edge, label %if.then135

if.end132.sw.epilog_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then135:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  %341 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %342, ptr noundef nonnull @.str.21) #6
  %343 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %nid, align 2
  call fastcc void @print_pcm_caps(ptr noundef %buffer, ptr noundef %1, i16 noundef zeroext %344)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then135, %if.end132.sw.epilog_crit_edge, %sw.bb127, %print_pin_ctls.exit, %if.end126.sw.epilog_crit_edge
  %and138 = and i32 %spec.select, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %sw.epilog.if.end141_crit_edge, label %if.then140

sw.epilog.if.end141_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

if.then140:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %345 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %nid, align 2
  %call.i.i431 = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %346, i32 noundef 0, i32 noundef 3848, i32 noundef 0) #6
  %347 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %buffer, align 4
  %and.i432 = and i32 %call.i.i431, 63
  %and2.i433 = lshr i32 %call.i.i431, 7
  %and2.lobit.i = and i32 %and2.i433, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %348, ptr noundef nonnull @.str.184, i32 noundef %and.i432, i32 noundef %and2.lobit.i) #6
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %sw.epilog.if.end141_crit_edge
  %and142 = and i32 %spec.select, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end141.if.end145_crit_edge, label %if.then144

if.end141.if.end145_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.then144:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  %349 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %349)
  %350 = load i16, ptr %nid, align 2
  call fastcc void @print_power_state(ptr noundef %buffer, ptr noundef %1, i16 noundef zeroext %350)
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %if.end141.if.end145_crit_edge
  %and146 = and i32 %spec.select, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end145.if.end151_crit_edge, label %if.then148

if.end145.if.end151_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  %351 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %buffer, align 4
  %shr = lshr exact i32 %and146, 16
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %352, ptr noundef nonnull @.str.22, i32 noundef %shr) #6
  br label %if.end151

if.end151:                                        ; preds = %if.then148, %if.end145.if.end151_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %cmp152 = icmp eq i32 %retval.0.i, 4
  br i1 %cmp152, label %land.lhs.true154, label %if.end151.if.end160_crit_edge

if.end151.if.end160_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

land.lhs.true154:                                 ; preds = %if.end151
  %353 = ptrtoint ptr %single_adc_amp to i32
  call void @__asan_load4_noabort(i32 %353)
  %bf.load155 = load i32, ptr %single_adc_amp, align 4
  %354 = and i32 %bf.load155, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %tobool158.not = icmp eq i32 %354, 0
  br i1 %tobool158.not, label %land.lhs.true154.if.end160_crit_edge, label %if.then159

land.lhs.true154.if.end160_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

if.then159:                                       ; preds = %land.lhs.true154
  %355 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %nid, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %dev_list.i) #6
  %357 = call ptr @memset(ptr %dev_list.i, i32 255, i32 64)
  %call.i434 = call i32 @snd_hda_get_devices(ptr noundef %1, i16 noundef zeroext %356, ptr noundef nonnull %dev_list.i, i32 noundef 64) #6
  %358 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %359, ptr noundef nonnull @.str.185, i32 noundef %call.i434) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i434)
  %cmp.i435 = icmp slt i32 %call.i434, 1
  br i1 %cmp.i435, label %if.then159.print_device_list.exit_crit_edge, label %for.body.preheader.i437

if.then159.print_device_list.exit_crit_edge:      ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_device_list.exit

for.body.preheader.i437:                          ; preds = %if.then159
  %call.i.i436 = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %356, i32 noundef 0, i32 noundef 3893, i32 noundef 0) #6
  br label %for.body.i443

for.body.i443:                                    ; preds = %print_dpmst_connections.exit.i.for.body.i443_crit_edge, %for.body.preheader.i437
  %i.051.i = phi i32 [ %inc.i447, %print_dpmst_connections.exit.i.for.body.i443_crit_edge ], [ 0, %for.body.preheader.i437 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.051.i, i32 %call.i.i436)
  %cmp4.i = icmp eq i32 %i.051.i, %call.i.i436
  %360 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %buffer, align 4
  %.str.186..str.187.i = select i1 %cmp4.i, ptr @.str.186, ptr @.str.187
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %361, ptr noundef nonnull %.str.186..str.187.i) #6
  %362 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %buffer, align 4
  %arrayidx.i438 = getelementptr [64 x i8], ptr %dev_list.i, i32 0, i32 %i.051.i
  %364 = ptrtoint ptr %arrayidx.i438 to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx.i438, align 1
  %conv.i439 = zext i8 %365 to i32
  %and.i440 = and i32 %conv.i439, 1
  %and13.i441 = lshr i32 %conv.i439, 1
  %and13.lobit.i = and i32 %and13.i441, 1
  %and21.i = lshr i32 %conv.i439, 2
  %and21.lobit.i = and i32 %and21.i, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %363, ptr noundef nonnull @.str.188, i32 noundef %i.051.i, i32 noundef %and.i440, i32 noundef %and13.lobit.i, i32 noundef %and21.lobit.i) #6
  %call.i49.i = call i32 @snd_hdac_get_connections(ptr noundef %1, i16 noundef zeroext %356, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i49.i)
  %cmp.i.i442 = icmp slt i32 %call.i49.i, 1
  br i1 %cmp.i.i442, label %for.body.i443.print_dpmst_connections.exit.i_crit_edge, label %if.end7.i.i.i

for.body.i443.print_dpmst_connections.exit.i_crit_edge: ; preds = %for.body.i443
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_dpmst_connections.exit.i

if.end7.i.i.i:                                    ; preds = %for.body.i443
  %366 = shl nuw i32 %call.i49.i, 1
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %366, i32 noundef 3264) #9
  %tobool.not.i.i445 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i.i445, label %if.end7.i.i.i.print_dpmst_connections.exit.i_crit_edge, label %if.end3.i.i

if.end7.i.i.i.print_dpmst_connections.exit.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_dpmst_connections.exit.i

if.end3.i.i:                                      ; preds = %if.end7.i.i.i
  %call4.i.i = call i32 @snd_hda_get_dev_select(ptr noundef %1, i16 noundef zeroext %356) #6
  %call5.i.i = call i32 @snd_hda_set_dev_select(ptr noundef %1, i16 noundef zeroext %356, i32 noundef %i.051.i) #6
  %call.i.i.i = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %356, i32 noundef 0, i32 noundef 3841, i32 noundef 0) #6
  %call8.i.i = call i32 @snd_hdac_get_connections(ptr noundef %1, i16 noundef zeroext %356, ptr noundef nonnull %call8.i.i.i, i32 noundef %call.i49.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i.i)
  %cmp9.i.i = icmp sgt i32 %call8.i.i, -1
  br i1 %cmp9.i.i, label %if.end3.i.i.for.body.i.i_crit_edge, label %if.end3.i.i.out.i.i_crit_edge

if.end3.i.i.out.i.i_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i.i

if.end3.i.i.for.body.i.i_crit_edge:               ; preds = %if.end3.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end3.i.i.for.body.i.i_crit_edge
  %c.048.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end3.i.i.for.body.i.i_crit_edge ]
  %367 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %buffer, align 4
  %arrayidx.i.i446 = getelementptr i16, ptr %call8.i.i.i, i32 %c.048.i.i
  %369 = ptrtoint ptr %arrayidx.i.i446 to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %arrayidx.i.i446, align 2
  %conv.i.i = zext i16 %370 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %368, ptr noundef nonnull @.str.78, i32 noundef %conv.i.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %c.048.i.i, i32 %call.i.i.i)
  %cmp14.i.i = icmp eq i32 %c.048.i.i, %call.i.i.i
  br i1 %cmp14.i.i, label %if.then16.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then16.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %371 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %372, ptr noundef nonnull @.str.190) #6
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then16.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %c.048.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call.i49.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.out.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.out.i.i_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i.i

out.i.i:                                          ; preds = %for.inc.i.i.out.i.i_crit_edge, %if.end3.i.i.out.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #6
  %call19.i.i = call i32 @snd_hda_set_dev_select(ptr noundef %1, i16 noundef zeroext %356, i32 noundef %call4.i.i) #6
  br label %print_dpmst_connections.exit.i

print_dpmst_connections.exit.i:                   ; preds = %out.i.i, %if.end7.i.i.i.print_dpmst_connections.exit.i_crit_edge, %for.body.i443.print_dpmst_connections.exit.i_crit_edge
  %373 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %374, ptr noundef nonnull @.str.189) #6
  %inc.i447 = add nuw nsw i32 %i.051.i, 1
  %exitcond.not.i448 = icmp eq i32 %inc.i447, %call.i434
  br i1 %exitcond.not.i448, label %print_dpmst_connections.exit.i.print_device_list.exit_crit_edge, label %print_dpmst_connections.exit.i.for.body.i443_crit_edge

print_dpmst_connections.exit.i.for.body.i443_crit_edge: ; preds = %print_dpmst_connections.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i443

print_dpmst_connections.exit.i.print_device_list.exit_crit_edge: ; preds = %print_dpmst_connections.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_device_list.exit

print_device_list.exit:                           ; preds = %print_dpmst_connections.exit.i.print_device_list.exit_crit_edge, %if.then159.print_device_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dev_list.i) #6
  br label %if.end160

if.end160:                                        ; preds = %print_device_list.exit, %land.lhs.true154.if.end160_crit_edge, %if.end151.if.end160_crit_edge
  br i1 %tobool77.not, label %if.end160.if.end164_crit_edge, label %if.then163

if.end160.if.end164_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

if.then163:                                       ; preds = %if.end160
  %375 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %nid, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list.i) #6
  %377 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr inttoptr (i32 -1 to ptr), ptr %list.i, align 4, !annotation !431
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conn_len.0)
  %cmp.i449 = icmp slt i32 %conn_len.0, 2
  br i1 %cmp.i449, label %if.end.i452, label %switch.early.test.i

switch.early.test.i:                              ; preds = %if.then163
  %378 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %378, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %retval.0.i, label %if.then.i451 [
    i32 6, label %switch.early.test.i.if.end.thread.i_crit_edge
    i32 5, label %switch.early.test.i.if.end.thread.i_crit_edge487
    i32 2, label %switch.early.test.i.if.end.thread.i_crit_edge488
  ]

switch.early.test.i.if.end.thread.i_crit_edge488: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread.i

switch.early.test.i.if.end.thread.i_crit_edge487: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread.i

switch.early.test.i.if.end.thread.i_crit_edge:    ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread.i

if.then.i451:                                     ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i450 = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %376, i32 noundef 0, i32 noundef 3841, i32 noundef 0) #6
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.then.i451, %switch.early.test.i.if.end.thread.i_crit_edge, %switch.early.test.i.if.end.thread.i_crit_edge487, %switch.early.test.i.if.end.thread.i_crit_edge488
  %curr.0.ph.i = phi i32 [ -1, %switch.early.test.i.if.end.thread.i_crit_edge ], [ -1, %switch.early.test.i.if.end.thread.i_crit_edge487 ], [ -1, %switch.early.test.i.if.end.thread.i_crit_edge488 ], [ %call.i.i450, %if.then.i451 ]
  %379 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %380, ptr noundef nonnull @.str.191, i32 noundef %conn_len.0) #6
  br label %for.body.preheader.i453

if.end.i452:                                      ; preds = %if.then163
  %381 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %382, ptr noundef nonnull @.str.191, i32 noundef %conn_len.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conn_len.0)
  %cmp7.i = icmp eq i32 %conn_len.0, 1
  br i1 %cmp7.i, label %if.end.i452.for.body.preheader.i453_crit_edge, label %if.end.i452.if.end18.i462_crit_edge

if.end.i452.if.end18.i462_crit_edge:              ; preds = %if.end.i452
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i462

if.end.i452.for.body.preheader.i453_crit_edge:    ; preds = %if.end.i452
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader.i453

for.body.preheader.i453:                          ; preds = %if.end.i452.for.body.preheader.i453_crit_edge, %if.end.thread.i
  %curr.079.i = phi i32 [ %curr.0.ph.i, %if.end.thread.i ], [ -1, %if.end.i452.for.body.preheader.i453_crit_edge ]
  %383 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %384, ptr noundef nonnull @.str.192) #6
  br label %for.body.i456

for.body.i456:                                    ; preds = %for.inc.i460.for.body.i456_crit_edge, %for.body.preheader.i453
  %c.081.i = phi i32 [ %inc.i458, %for.inc.i460.for.body.i456_crit_edge ], [ 0, %for.body.preheader.i453 ]
  %385 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %buffer, align 4
  %arrayidx.i454 = getelementptr i16, ptr %conn.0, i32 %c.081.i
  %387 = ptrtoint ptr %arrayidx.i454 to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %arrayidx.i454, align 2
  %conv.i455 = zext i16 %388 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %386, ptr noundef nonnull @.str.78, i32 noundef %conv.i455) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %c.081.i, i32 %curr.079.i)
  %cmp12.i = icmp eq i32 %c.081.i, %curr.079.i
  br i1 %cmp12.i, label %if.then14.i457, label %for.body.i456.for.inc.i460_crit_edge

for.body.i456.for.inc.i460_crit_edge:             ; preds = %for.body.i456
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i460

if.then14.i457:                                   ; preds = %for.body.i456
  call void @__sanitizer_cov_trace_pc() #8
  %389 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %390, ptr noundef nonnull @.str.190) #6
  br label %for.inc.i460

for.inc.i460:                                     ; preds = %if.then14.i457, %for.body.i456.for.inc.i460_crit_edge
  %inc.i458 = add nuw nsw i32 %c.081.i, 1
  %exitcond.not.i459 = icmp eq i32 %inc.i458, %conn_len.0
  br i1 %exitcond.not.i459, label %for.end.i461, label %for.inc.i460.for.body.i456_crit_edge

for.inc.i460.for.body.i456_crit_edge:             ; preds = %for.inc.i460
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i456

for.end.i461:                                     ; preds = %for.inc.i460
  call void @__sanitizer_cov_trace_pc() #8
  %391 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %392, ptr noundef nonnull @.str.16) #6
  br label %if.end18.i462

if.end18.i462:                                    ; preds = %for.end.i461, %if.end.i452.if.end18.i462_crit_edge
  %call19.i = call i32 @snd_hda_get_conn_list(ptr noundef %1, i16 noundef zeroext %376, ptr noundef nonnull %list.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.i)
  %cmp20.i = icmp sgt i32 %call19.i, -1
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end18.i462.print_conn_list.exit_crit_edge

if.end18.i462.print_conn_list.exit_crit_edge:     ; preds = %if.end18.i462
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_conn_list.exit

land.lhs.true22.i:                                ; preds = %if.end18.i462
  call void @__sanitizer_cov_trace_cmp4(i32 %call19.i, i32 %conn_len.0)
  %cmp23.not.i = icmp eq i32 %call19.i, %conn_len.0
  br i1 %cmp23.not.i, label %lor.lhs.false.i463, label %land.lhs.true22.i.if.then28.i_crit_edge

land.lhs.true22.i.if.then28.i_crit_edge:          ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28.i

lor.lhs.false.i463:                               ; preds = %land.lhs.true22.i
  %393 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %list.i, align 4
  %bcmp.i = call i32 @bcmp(ptr %394, ptr %conn.0, i32 %conn_len.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp26.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp26.not.i, label %lor.lhs.false.i463.print_conn_list.exit_crit_edge, label %lor.lhs.false.i463.if.then28.i_crit_edge

lor.lhs.false.i463.if.then28.i_crit_edge:         ; preds = %lor.lhs.false.i463
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28.i

lor.lhs.false.i463.print_conn_list.exit_crit_edge: ; preds = %lor.lhs.false.i463
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_conn_list.exit

if.then28.i:                                      ; preds = %lor.lhs.false.i463.if.then28.i_crit_edge, %land.lhs.true22.i.if.then28.i_crit_edge
  %395 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %396, ptr noundef nonnull @.str.193, i32 noundef %call19.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp30.not.i = icmp eq i32 %call19.i, 0
  br i1 %cmp30.not.i, label %if.then28.i.print_conn_list.exit_crit_edge, label %for.body37.preheader.i

if.then28.i.print_conn_list.exit_crit_edge:       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_conn_list.exit

for.body37.preheader.i:                           ; preds = %if.then28.i
  %397 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %398, ptr noundef nonnull @.str.192) #6
  br label %for.body37.i

for.body37.i:                                     ; preds = %for.body37.i.for.body37.i_crit_edge, %for.body37.preheader.i
  %c.183.i = phi i32 [ %inc42.i, %for.body37.i.for.body37.i_crit_edge ], [ 0, %for.body37.preheader.i ]
  %399 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %buffer, align 4
  %401 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %list.i, align 4
  %arrayidx39.i = getelementptr i16, ptr %402, i32 %c.183.i
  %403 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load2_noabort(i32 %403)
  %404 = load i16, ptr %arrayidx39.i, align 2
  %conv40.i = zext i16 %404 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %400, ptr noundef nonnull @.str.78, i32 noundef %conv40.i) #6
  %inc42.i = add nuw nsw i32 %c.183.i, 1
  %exitcond84.not.i = icmp eq i32 %inc42.i, %call19.i
  br i1 %exitcond84.not.i, label %for.end43.i, label %for.body37.i.for.body37.i_crit_edge

for.body37.i.for.body37.i_crit_edge:              ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body37.i

for.end43.i:                                      ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #8
  %405 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %406, ptr noundef nonnull @.str.16) #6
  br label %print_conn_list.exit

print_conn_list.exit:                             ; preds = %for.end43.i, %if.then28.i.print_conn_list.exit_crit_edge, %lor.lhs.false.i463.print_conn_list.exit_crit_edge, %if.end18.i462.print_conn_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list.i) #6
  br label %if.end164

if.end164:                                        ; preds = %print_conn_list.exit, %if.end160.if.end164_crit_edge
  %and165 = and i32 %spec.select, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end164.if.end168_crit_edge, label %if.then167

if.end164.if.end168_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end168

if.then167:                                       ; preds = %if.end164
  %407 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %407)
  %408 = load i16, ptr %nid, align 2
  %call.i465 = call i32 @snd_hdac_read_parm_uncached(ptr noundef %1, i16 noundef zeroext %408, i32 noundef 16) #6
  %and.i466 = lshr i32 %call.i465, 8
  %shr.i467 = and i32 %and.i466, 255
  %409 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %buffer, align 4
  %and2.i468 = and i32 %call.i465, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %410, ptr noundef nonnull @.str.194, i32 noundef %and2.i468, i32 noundef %shr.i467) #6
  %411 = load i32, ptr @dump_coef, align 4
  %412 = zext i32 %411 to i64
  call void @__sanitizer_cov_trace_switch(i64 %412, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %411, label %can_dump_coef.exit.i [
    i32 0, label %if.then167.if.end168_crit_edge
    i32 1, label %if.then167.if.end.i470_crit_edge
  ]

if.then167.if.end.i470_crit_edge:                 ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i470

if.then167.if.end168_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end168

can_dump_coef.exit.i:                             ; preds = %if.then167
  %413 = ptrtoint ptr %single_adc_amp to i32
  call void @__asan_load4_noabort(i32 %413)
  %bf.load.i.i = load i32, ptr %single_adc_amp, align 4
  %414 = and i32 %bf.load.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %414)
  %tobool.i.not.i = icmp eq i32 %414, 0
  br i1 %tobool.i.not.i, label %can_dump_coef.exit.i.if.end168_crit_edge, label %can_dump_coef.exit.i.if.end.i470_crit_edge

can_dump_coef.exit.i.if.end.i470_crit_edge:       ; preds = %can_dump_coef.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i470

can_dump_coef.exit.i.if.end168_crit_edge:         ; preds = %can_dump_coef.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end168

if.end.i470:                                      ; preds = %can_dump_coef.exit.i.if.end.i470_crit_edge, %if.then167.if.end.i470_crit_edge
  %call.i.i469 = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %408, i32 noundef 0, i32 noundef 3328, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i467)
  %cmp33.not.i = icmp eq i32 %shr.i467, 0
  br i1 %cmp33.not.i, label %if.end.i470.for.end.i474_crit_edge, label %if.end.i470.for.body.i473_crit_edge

if.end.i470.for.body.i473_crit_edge:              ; preds = %if.end.i470
  br label %for.body.i473

if.end.i470.for.end.i474_crit_edge:               ; preds = %if.end.i470
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i474

for.body.i473:                                    ; preds = %for.body.i473.for.body.i473_crit_edge, %if.end.i470.for.body.i473_crit_edge
  %i.034.i = phi i32 [ %inc.i471, %for.body.i473.for.body.i473_crit_edge ], [ 0, %if.end.i470.for.body.i473_crit_edge ]
  %call.i27.i = call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext %408, i32 noundef 0, i32 noundef 1280, i32 noundef %i.034.i) #6
  %call.i28.i = call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %408, i32 noundef 0, i32 noundef 3072, i32 noundef 0) #6
  %415 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %416, ptr noundef nonnull @.str.195, i32 noundef %i.034.i, i32 noundef %call.i28.i) #6
  %inc.i471 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i472 = icmp eq i32 %inc.i471, %shr.i467
  br i1 %exitcond.not.i472, label %for.body.i473.for.end.i474_crit_edge, label %for.body.i473.for.body.i473_crit_edge

for.body.i473.for.body.i473_crit_edge:            ; preds = %for.body.i473
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i473

for.body.i473.for.end.i474_crit_edge:             ; preds = %for.body.i473
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i474

for.end.i474:                                     ; preds = %for.body.i473.for.end.i474_crit_edge, %if.end.i470.for.end.i474_crit_edge
  %call.i29.i = call i32 @snd_hdac_codec_write(ptr noundef %1, i16 noundef zeroext %408, i32 noundef 0, i32 noundef 1280, i32 noundef %call.i.i469) #6
  br label %if.end168

if.end168:                                        ; preds = %for.end.i474, %can_dump_coef.exit.i.if.end168_crit_edge, %if.then167.if.end168_crit_edge, %if.end164.if.end168_crit_edge
  %417 = ptrtoint ptr %proc_widget_hook to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %proc_widget_hook, align 8
  %tobool170.not = icmp eq ptr %418, null
  br i1 %tobool170.not, label %if.end168.if.end173_crit_edge, label %if.then171

if.end168.if.end173_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

if.then171:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #8
  %419 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %419)
  %420 = load i16, ptr %nid, align 2
  call void %418(ptr noundef %buffer, ptr noundef %1, i16 noundef zeroext %420) #6
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %if.end168.if.end173_crit_edge
  call void @kfree(ptr noundef %conn.0) #6
  %inc = add nuw nsw i32 %i.0481, 1
  %421 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %421)
  %422 = load i16, ptr %nid, align 2
  %inc177 = add i16 %422, 1
  store i16 %inc177, ptr %nid, align 2
  %exitcond.not = icmp eq i32 %inc, %call9
  br i1 %exitcond.not, label %if.end173.cleanup180.sink.split_crit_edge, label %if.end173.for.body_crit_edge

if.end173.for.body_crit_edge:                     ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end173.cleanup180.sink.split_crit_edge:        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup180.sink.split

cleanup180.sink.split:                            ; preds = %if.end173.cleanup180.sink.split_crit_edge, %if.end20.cleanup180.sink.split_crit_edge, %if.then12
  %call179 = call i32 @snd_hdac_power_down(ptr noundef %1) #6
  br label %cleanup180

cleanup180:                                       ; preds = %cleanup180.sink.split, %if.end7.i.cleanup180_crit_edge, %print_codec_core_info.exit.cleanup180_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nid) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_pcm_caps(ptr noundef readonly %buffer, ptr noundef %codec, i16 noundef zeroext %nid) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hdac_read_parm_uncached(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 10) #6
  %call2 = tail call i32 @snd_hdac_read_parm_uncached(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp3 = icmp eq i32 %call2, -1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.34) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i32 %call, 4095
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.35, i32 noundef %and.i) #6
  %and2.i = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.end.for.inc.i_crit_edge, label %if.then.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.36, i32 noundef 8000) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end.for.inc.i_crit_edge
  %and2.1.i = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1.i)
  %tobool.not.1.i = icmp eq i32 %and2.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.36, i32 noundef 11025) #6
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %and2.2.i = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.2.i)
  %tobool.not.2.i = icmp eq i32 %and2.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.36, i32 noundef 16000) #6
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %and2.3.i = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.3.i)
  %tobool.not.3.i = icmp eq i32 %and2.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.36, i32 noundef 22050) #6
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %and2.4.i = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.4.i)
  %tobool.not.4.i = icmp eq i32 %and2.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.36, i32 noundef 32000) #6
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %and2.5.i = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.5.i)
  %tobool.not.5.i = icmp eq i32 %and2.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.36, i32 noundef 44100) #6
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %and2.6.i = and i32 %call, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.6.i)
  %tobool.not.6.i = icmp eq i32 %and2.6.i, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.36, i32 noundef 48000) #6
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %and2.7.i = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.7.i)
  %tobool.not.7.i = icmp eq i32 %and2.7.i, 0
  br i1 %tobool.not.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %if.then.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7.i

if.then.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.36, i32 noundef 88200) #6
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %and2.8.i = and i32 %call, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.8.i)
  %tobool.not.8.i = icmp eq i32 %and2.8.i, 0
  br i1 %tobool.not.8.i, label %for.inc.7.i.for.inc.8.i_crit_edge, label %if.then.8.i

for.inc.7.i.for.inc.8.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.8.i

if.then.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.36, i32 noundef 96000) #6
  br label %for.inc.8.i

for.inc.8.i:                                      ; preds = %if.then.8.i, %for.inc.7.i.for.inc.8.i_crit_edge
  %and2.9.i = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.9.i)
  %tobool.not.9.i = icmp eq i32 %and2.9.i, 0
  br i1 %tobool.not.9.i, label %for.inc.8.i.for.inc.9.i_crit_edge, label %if.then.9.i

for.inc.8.i.for.inc.9.i_crit_edge:                ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.9.i

if.then.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.36, i32 noundef 176400) #6
  br label %for.inc.9.i

for.inc.9.i:                                      ; preds = %if.then.9.i, %for.inc.8.i.for.inc.9.i_crit_edge
  %and2.10.i = and i32 %call, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.10.i)
  %tobool.not.10.i = icmp eq i32 %and2.10.i, 0
  br i1 %tobool.not.10.i, label %for.inc.9.i.for.inc.10.i_crit_edge, label %if.then.10.i

for.inc.9.i.for.inc.10.i_crit_edge:               ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.10.i

if.then.10.i:                                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.36, i32 noundef 192000) #6
  br label %for.inc.10.i

for.inc.10.i:                                     ; preds = %if.then.10.i, %for.inc.9.i.for.inc.10.i_crit_edge
  %and2.11.i = and i32 %call, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.11.i)
  %tobool.not.11.i = icmp eq i32 %and2.11.i, 0
  br i1 %tobool.not.11.i, label %for.inc.10.i.print_pcm_rates.exit_crit_edge, label %if.then.11.i

for.inc.10.i.print_pcm_rates.exit_crit_edge:      ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_pcm_rates.exit

if.then.11.i:                                     ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.36, i32 noundef 384000) #6
  br label %print_pcm_rates.exit

print_pcm_rates.exit:                             ; preds = %if.then.11.i, %for.inc.10.i.print_pcm_rates.exit_crit_edge
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.16) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #6
  %30 = call ptr @memset(ptr %buf.i, i32 255, i32 16)
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 4
  %shr.i = lshr i32 %call, 16
  %and.i14 = and i32 %shr.i, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.37, i32 noundef %and.i14) #6
  call void @snd_print_pcm_bits(i32 noundef %call, ptr noundef nonnull %buf.i, i32 noundef 16) #6
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.38, ptr noundef nonnull %buf.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #6
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer, align 4
  %and.i15 = and i32 %call2, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %36, ptr noundef nonnull @.str.39, i32 noundef %and.i15) #6
  %and2.i16 = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i16)
  %tobool.not.i17 = icmp eq i32 %and2.i16, 0
  br i1 %tobool.not.i17, label %print_pcm_rates.exit.if.end.i_crit_edge, label %if.then.i18

print_pcm_rates.exit.if.end.i_crit_edge:          ; preds = %print_pcm_rates.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i18:                                      ; preds = %print_pcm_rates.exit
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull @.str.40) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i18, %print_pcm_rates.exit.if.end.i_crit_edge
  %and4.i = and i32 %call2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then6.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %40, ptr noundef nonnull @.str.41) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i.if.end8.i_crit_edge
  %and9.i = and i32 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.print_pcm_formats.exit_crit_edge, label %if.then11.i

if.end8.i.print_pcm_formats.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_pcm_formats.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %42, ptr noundef nonnull @.str.42) #6
  br label %print_pcm_formats.exit

print_pcm_formats.exit:                           ; preds = %if.then11.i, %if.end8.i.print_pcm_formats.exit_crit_edge
  %43 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.16) #6
  br label %cleanup

cleanup:                                          ; preds = %print_pcm_formats.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_power_state(ptr nocapture noundef readonly %buffer, ptr noundef %codec, i16 noundef zeroext %nid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hdac_read_parm_uncached(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 15) #6
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3845, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.52) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then
  %i.051 = phi i32 [ 0, %if.then ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.051
  %and = and i32 %shl, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr [32 x ptr], ptr @print_power_state.names, i32 0, i32 %i.051
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.53, ptr noundef %5) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.16) #6
  br label %if.end7

if.end7:                                          ; preds = %for.end, %entry.if.end7_crit_edge
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %and9 = and i32 %call.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and9)
  %cmp.i = icmp ult i32 %and9, 5
  br i1 %cmp.i, label %if.then.i, label %if.end7.get_pwr_state.exit_crit_edge

if.end7.get_pwr_state.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_pwr_state.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [5 x ptr], ptr @get_pwr_state.buf, i32 0, i32 %and9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  br label %get_pwr_state.exit

get_pwr_state.exit:                               ; preds = %if.then.i, %if.end7.get_pwr_state.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.then.i ], [ @.str.58, %if.end7.get_pwr_state.exit_crit_edge ]
  %and11 = lshr i32 %call.i, 4
  %12 = and i32 %and11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp.i46 = icmp ult i32 %12, 5
  br i1 %cmp.i46, label %if.then.i48, label %get_pwr_state.exit.get_pwr_state.exit50_crit_edge

get_pwr_state.exit.get_pwr_state.exit50_crit_edge: ; preds = %get_pwr_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_pwr_state.exit50

if.then.i48:                                      ; preds = %get_pwr_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i47 = getelementptr [5 x ptr], ptr @get_pwr_state.buf, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i47, align 4
  br label %get_pwr_state.exit50

get_pwr_state.exit50:                             ; preds = %if.then.i48, %get_pwr_state.exit.get_pwr_state.exit50_crit_edge
  %retval.0.i49 = phi ptr [ %14, %if.then.i48 ], [ @.str.58, %get_pwr_state.exit.get_pwr_state.exit50_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.54, ptr noundef %retval.0.i, ptr noundef %retval.0.i49) #6
  %and13 = and i32 %call.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %get_pwr_state.exit50.if.end17_crit_edge, label %if.then15

get_pwr_state.exit50.if.end17_crit_edge:          ; preds = %get_pwr_state.exit50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %get_pwr_state.exit50
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.55) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %get_pwr_state.exit50.if.end17_crit_edge
  %and18 = and i32 %call.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end22_crit_edge, label %if.then20

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.56) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %and23 = and i32 %call.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %if.then25

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef nonnull @.str.57) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.16) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_sub_nodes(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_read_parm_uncached(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_nid_array(ptr nocapture noundef readonly %buffer, i16 noundef zeroext %nid, ptr nocapture noundef readonly %array) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.snd_array, ptr %array, i32 0, i32 4
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %2 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %array, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.02 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %nid1 = getelementptr %struct.hda_nid_item, ptr %1, i32 %i.02, i32 2
  %4 = ptrtoint ptr %nid1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nid1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %nid)
  %cmp3 = icmp eq i16 %5, %nid
  br i1 %cmp3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.hda_nid_item, ptr %1, i32 %i.02
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %7, i32 0, i32 1, i32 4
  %index = getelementptr inbounds %struct.snd_kcontrol, ptr %7, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %index8 = getelementptr %struct.hda_nid_item, ptr %1, i32 %i.02, i32 1
  %12 = ptrtoint ptr %index8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index8, align 4
  %add = add i32 %13, %11
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %7, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.71, ptr noundef %name, i32 noundef %add, i32 noundef %15) #6
  %flags = getelementptr %struct.hda_nid_item, ptr %1, i32 %i.02, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags, align 2
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not = icmp eq i16 %18, 0
  br i1 %tobool.not, label %if.then.for.inc_crit_edge, label %if.then11

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %7, i32 0, i32 7
  %21 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %22, 16
  %and13 = and i32 %shr, 3
  %23 = and i32 %22, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool17.not = icmp eq i32 %23, 0
  %cond = select i1 %tobool17.not, ptr @.str.74, ptr @.str.73
  %shr19 = lshr i32 %22, 19
  %and20 = and i32 %shr19, 15
  %shr22 = lshr i32 %22, 23
  %and23 = and i32 %shr22, 63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef nonnull @.str.72, i32 noundef %and13, ptr noundef nonnull %cond, i32 noundef %and20, i32 noundef %and23) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.02, 1
  %24 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %array, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_connections(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_amp_vals(ptr nocapture noundef readonly %buffer, ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef %dir, i32 noundef %wcaps, i32 noundef %indices) unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %conn.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %conn.i) #6
  %0 = ptrtoint ptr %conn.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %conn.i, align 2, !annotation !431
  %and.i = and i32 %wcaps, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.is_stereo_amps.exit_crit_edge

entry.is_stereo_amps.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %is_stereo_amps.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %indices)
  %cmp.not.i = icmp eq i32 %indices, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp1.not.i = icmp eq i32 %dir, 0
  %or.cond.i = and i1 %cmp1.not.i, %cmp.not.i
  %1 = and i32 %wcaps, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %1)
  %cmp3.not18.i = icmp eq i32 %1, 2097152
  %or.cond19.i = and i1 %cmp3.not18.i, %or.cond.i
  br i1 %or.cond19.i, label %if.end5.i, label %if.end.i.is_stereo_amps.exit_crit_edge

if.end.i.is_stereo_amps.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %is_stereo_amps.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @snd_hdac_get_connections(ptr noundef %codec, i16 noundef zeroext %nid, ptr noundef nonnull %conn.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.is_stereo_amps.exit.thread_crit_edge, label %if.end9.i

if.end5.i.is_stereo_amps.exit.thread_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %is_stereo_amps.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  %2 = ptrtoint ptr %conn.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %conn.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i.i, align 4, !annotation !431
  %call.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %3, i32 noundef 9, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end9.i.snd_hdac_read_parm.exit.i_crit_edge, label %cond.false.i.i

if.end9.i.snd_hdac_read_parm.exit.i_crit_edge:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_hdac_read_parm.exit.i

cond.false.i.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i.i, align 4
  %phi.bo.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.i)
  %phi.cmp.i = icmp ne i32 %phi.bo.i, 0
  br label %snd_hdac_read_parm.exit.i

snd_hdac_read_parm.exit.i:                        ; preds = %cond.false.i.i, %if.end9.i.snd_hdac_read_parm.exit.i_crit_edge
  %cond.i.i = phi i1 [ %phi.cmp.i, %cond.false.i.i ], [ true, %if.end9.i.snd_hdac_read_parm.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %is_stereo_amps.exit.thread

is_stereo_amps.exit.thread:                       ; preds = %snd_hdac_read_parm.exit.i, %if.end5.i.is_stereo_amps.exit.thread_crit_edge
  %retval.0.i.ph = phi i1 [ false, %if.end5.i.is_stereo_amps.exit.thread_crit_edge ], [ %cond.i.i, %snd_hdac_read_parm.exit.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %conn.i) #6
  br label %for.body.preheader

is_stereo_amps.exit:                              ; preds = %if.end.i.is_stereo_amps.exit_crit_edge, %entry.is_stereo_amps.exit_crit_edge
  %7 = xor i1 %tobool.not.i, true
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %conn.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %cond = select i1 %cmp, i32 32768, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indices)
  %cmp129 = icmp sgt i32 %indices, 0
  br i1 %cmp129, label %is_stereo_amps.exit.for.body.preheader_crit_edge, label %is_stereo_amps.exit.for.end_crit_edge

is_stereo_amps.exit.for.end_crit_edge:            ; preds = %is_stereo_amps.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

is_stereo_amps.exit.for.body.preheader_crit_edge: ; preds = %is_stereo_amps.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %is_stereo_amps.exit.for.body.preheader_crit_edge, %is_stereo_amps.exit.thread
  %cond36 = phi i32 [ 0, %is_stereo_amps.exit.thread ], [ %cond, %is_stereo_amps.exit.for.body.preheader_crit_edge ]
  %retval.0.i35 = phi i1 [ %retval.0.i.ph, %is_stereo_amps.exit.thread ], [ %7, %is_stereo_amps.exit.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.030 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.76) #6
  %or = or i32 %i.030, %cond36
  %or3 = or i32 %or, 8192
  %call.i = call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 2816, i32 noundef %or3) #6
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.77, i32 noundef %call.i) #6
  br i1 %retval.0.i35, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i28 = call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 2816, i32 noundef %or) #6
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.78, i32 noundef %call.i28) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.79) #6
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %indices
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %is_stereo_amps.exit.for.end_crit_edge
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.16) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_print_pcm_bits(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_devices(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_dev_select(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_set_dev_select(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_conn_list(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 208)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 208)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !163, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420}
!llvm.module.flags = !{!422, !423, !424, !425, !426, !427, !428, !429}
!llvm.ident = !{!430}

!0 = !{ptr @__param_dump_coef, !1, !"__param_dump_coef", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/hda_proc.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_dump_coeftype239, !1, !"__UNIQUE_ID_dump_coeftype239", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dump_coef240, !4, !"__UNIQUE_ID_dump_coef240", i1 false, i1 false}
!4 = !{!"../sound/pci/hda/hda_proc.c", i32 19, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../sound/pci/hda/hda_proc.c", i32 945, i32 31}
!7 = !{ptr @__param_str_dump_coef, !1, !"__param_str_dump_coef", i1 false, i1 false}
!8 = !{ptr @dump_coef, !9, !"dump_coef", i1 false, i1 false}
!9 = !{!"../sound/pci/hda/hda_proc.c", i32 17, i32 12}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/hda/hda_proc.c", i32 786, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/hda/hda_proc.c", i32 788, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/hda/hda_proc.c", i32 790, i32 2}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/hda/hda_proc.c", i32 792, i32 2}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/hda/hda_proc.c", i32 797, i32 3}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/hda/hda_proc.c", i32 813, i32 3}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/hda/hda_proc.c", i32 818, i32 5}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/hda/hda_proc.c", i32 820, i32 5}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/hda/hda_proc.c", i32 822, i32 4}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/hda/hda_proc.c", i32 824, i32 4}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/hda/hda_proc.c", i32 826, i32 4}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/hda/hda_proc.c", i32 828, i32 4}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/hda/hda_proc.c", i32 830, i32 4}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/hda/hda_proc.c", i32 832, i32 4}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/hda/hda_proc.c", i32 834, i32 4}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/hda/hda_proc.c", i32 835, i32 3}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/hda/hda_proc.c", i32 862, i32 4}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/hda/hda_proc.c", i32 864, i32 4}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/hda/hda_proc.c", i32 875, i32 4}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/hda/hda_proc.c", i32 877, i32 4}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/hda/hda_proc.c", i32 903, i32 5}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/hda/hda_proc.c", i32 916, i32 4}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/hda/hda_proc.c", i32 751, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/hda/hda_proc.c", i32 753, i32 3}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/hda/hda_proc.c", i32 756, i32 3}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/hda/hda_proc.c", i32 757, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/hda/hda_proc.c", i32 759, i32 3}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/hda/hda_proc.c", i32 762, i32 3}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/hda/hda_proc.c", i32 764, i32 2}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/hda/hda_proc.c", i32 765, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/hda/hda_proc.c", i32 766, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/hda/hda_proc.c", i32 769, i32 3}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/hda/hda_proc.c", i32 771, i32 3}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/hda/hda_proc.c", i32 205, i32 3}
!78 = distinct !{null, !79, !"rates", i1 false, i1 false}
!79 = !{!"../sound/pci/hda/hda_proc.c", i32 163, i32 28}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/hda/hda_proc.c", i32 170, i32 2}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/hda/hda_proc.c", i32 173, i32 4}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/hda/hda_proc.c", i32 181, i32 2}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/hda/hda_proc.c", i32 183, i32 2}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/hda/hda_proc.c", i32 189, i32 2}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/hda/hda_proc.c", i32 191, i32 3}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/hda/hda_proc.c", i32 193, i32 3}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/hda/hda_proc.c", i32 195, i32 3}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/hda/hda_proc.c", i32 103, i32 2}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/hda/hda_proc.c", i32 516, i32 30}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/hda/hda_proc.c", i32 517, i32 30}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/hda/hda_proc.c", i32 518, i32 30}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/hda/hda_proc.c", i32 519, i32 30}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/hda/hda_proc.c", i32 520, i32 33}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/hda/hda_proc.c", i32 521, i32 35}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/hda/hda_proc.c", i32 522, i32 31}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/hda/hda_proc.c", i32 523, i32 29}
!114 = !{ptr @print_power_state.names, !115, !"names", i1 false, i1 false}
!115 = !{!"../sound/pci/hda/hda_proc.c", i32 515, i32 28}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/hda/hda_proc.c", i32 532, i32 3}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/hda/hda_proc.c", i32 535, i32 5}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/hda/hda_proc.c", i32 540, i32 2}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/hda/hda_proc.c", i32 545, i32 3}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/hda/hda_proc.c", i32 547, i32 3}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/hda/hda_proc.c", i32 549, i32 3}
!128 = !{ptr @get_pwr_state.buf, !129, !"buf", i1 false, i1 false}
!129 = !{!"../sound/pci/hda/hda_proc.c", i32 504, i32 28}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/hda/hda_proc.c", i32 509, i32 9}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/hda/hda_proc.c", i32 645, i32 2}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/hda/hda_proc.c", i32 668, i32 3}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/hda/hda_proc.c", i32 28, i32 22}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/hda/hda_proc.c", i32 29, i32 21}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/hda/hda_proc.c", i32 30, i32 22}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/hda/hda_proc.c", i32 31, i32 22}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/hda/hda_proc.c", i32 32, i32 18}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/hda/hda_proc.c", i32 33, i32 20}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/hda/hda_proc.c", i32 34, i32 22}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/hda/hda_proc.c", i32 35, i32 19}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/hda/hda_proc.c", i32 36, i32 21}
!154 = !{ptr @get_wid_type_name.names, !155, !"names", i1 false, i1 false}
!155 = !{!"../sound/pci/hda/hda_proc.c", i32 27, i32 28}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/hda/hda_proc.c", i32 39, i32 10}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/hda/hda_proc.c", i32 58, i32 4}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/hda/hda_proc.c", i32 63, i32 5}
!162 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/pci/hda/hda_proc.c", i32 84, i32 4}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/hda/hda_proc.c", i32 145, i32 3}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/hda/hda_proc.c", i32 149, i32 3}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/hda/hda_proc.c", i32 154, i32 4}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/hda/hda_proc.c", i32 156, i32 3}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/hda/hda_proc.c", i32 309, i32 3}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/hda/hda_proc.c", i32 309, i32 11}
!178 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/hda/hda_proc.c", i32 309, i32 18}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/hda/hda_proc.c", i32 309, i32 27}
!182 = !{ptr @print_pin_caps.jack_conns, !183, !"jack_conns", i1 false, i1 false}
!183 = !{!"../sound/pci/hda/hda_proc.c", i32 308, i32 28}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/pci/hda/hda_proc.c", i32 314, i32 2}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/pci/hda/hda_proc.c", i32 316, i32 3}
!188 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/hda/hda_proc.c", i32 318, i32 3}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/pci/hda/hda_proc.c", i32 320, i32 3}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/hda/hda_proc.c", i32 322, i32 3}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/hda/hda_proc.c", i32 324, i32 3}
!196 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/hda/hda_proc.c", i32 326, i32 3}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/pci/hda/hda_proc.c", i32 333, i32 5}
!200 = !{ptr @.str.92, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/hda/hda_proc.c", i32 334, i32 4}
!202 = !{ptr @.str.93, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/hda/hda_proc.c", i32 338, i32 3}
!204 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/pci/hda/hda_proc.c", i32 340, i32 3}
!206 = !{ptr @.str.95, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/hda/hda_proc.c", i32 342, i32 3}
!208 = !{ptr @.str.96, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/pci/hda/hda_proc.c", i32 347, i32 3}
!210 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/pci/hda/hda_proc.c", i32 349, i32 4}
!212 = !{ptr @.str.98, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/pci/hda/hda_proc.c", i32 351, i32 4}
!214 = !{ptr @.str.99, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/pci/hda/hda_proc.c", i32 353, i32 4}
!216 = !{ptr @.str.100, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/hda/hda_proc.c", i32 355, i32 4}
!218 = !{ptr @.str.101, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/pci/hda/hda_proc.c", i32 357, i32 4}
!220 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/hda/hda_proc.c", i32 365, i32 3}
!222 = !{ptr @.str.103, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/pci/hda/hda_proc.c", i32 367, i32 4}
!224 = !{ptr @.str.104, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/pci/hda/hda_proc.c", i32 375, i32 2}
!226 = !{ptr @.str.105, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/pci/hda/hda_proc.c", i32 380, i32 2}
!228 = !{ptr @.str.106, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/pci/hda/hda_proc.c", i32 387, i32 2}
!230 = !{ptr @.str.107, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/pci/hda/hda_proc.c", i32 396, i32 3}
!232 = !{ptr @.str.108, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/pci/hda/hda_proc.c", i32 294, i32 3}
!234 = !{ptr @.str.109, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/pci/hda/hda_proc.c", i32 294, i32 15}
!236 = !{ptr @.str.110, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/pci/hda/hda_proc.c", i32 294, i32 26}
!238 = !{ptr @.str.111, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/pci/hda/hda_proc.c", i32 294, i32 36}
!240 = !{ptr @.str.112, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/pci/hda/hda_proc.c", i32 295, i32 3}
!242 = !{ptr @.str.113, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/pci/hda/hda_proc.c", i32 295, i32 16}
!244 = !{ptr @.str.114, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/pci/hda/hda_proc.c", i32 295, i32 31}
!246 = !{ptr @.str.115, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/pci/hda/hda_proc.c", i32 295, i32 45}
!248 = !{ptr @.str.116, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/pci/hda/hda_proc.c", i32 296, i32 3}
!250 = !{ptr @.str.117, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/pci/hda/hda_proc.c", i32 296, i32 14}
!252 = !{ptr @.str.118, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/pci/hda/hda_proc.c", i32 296, i32 21}
!254 = !{ptr @.str.119, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/pci/hda/hda_proc.c", i32 296, i32 28}
!256 = !{ptr @.str.120, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/pci/hda/hda_proc.c", i32 297, i32 3}
!258 = !{ptr @.str.121, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/pci/hda/hda_proc.c", i32 297, i32 15}
!260 = !{ptr @.str.122, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/pci/hda/hda_proc.c", i32 297, i32 29}
!262 = !{ptr @.str.123, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/pci/hda/hda_proc.c", i32 297, i32 41}
!264 = !{ptr @get_jack_type.jack_types, !265, !"jack_types", i1 false, i1 false}
!265 = !{!"../sound/pci/hda/hda_proc.c", i32 293, i32 28}
!266 = !{ptr @.str.124, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/pci/hda/hda_proc.c", i32 281, i32 3}
!268 = !{ptr @.str.125, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/pci/hda/hda_proc.c", i32 281, i32 10}
!270 = !{ptr @.str.126, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/pci/hda/hda_proc.c", i32 281, i32 17}
!272 = !{ptr @.str.127, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/pci/hda/hda_proc.c", i32 281, i32 24}
!274 = !{ptr @get_jack_connectivity.jack_locations, !275, !"jack_locations", i1 false, i1 false}
!275 = !{!"../sound/pci/hda/hda_proc.c", i32 280, i32 28}
!276 = !{ptr @.str.128, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/pci/hda/hda_proc.c", i32 250, i32 10}
!278 = !{ptr @.str.129, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/pci/hda/hda_proc.c", i32 250, i32 18}
!280 = !{ptr @.str.130, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/pci/hda/hda_proc.c", i32 250, i32 27}
!282 = !{ptr @.str.131, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/pci/hda/hda_proc.c", i32 250, i32 35}
!284 = !{ptr @.str.132, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/pci/hda/hda_proc.c", i32 250, i32 44}
!286 = !{ptr @.str.133, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/pci/hda/hda_proc.c", i32 250, i32 51}
!288 = !{ptr @get_jack_location.bases, !289, !"bases", i1 false, i1 false}
!289 = !{!"../sound/pci/hda/hda_proc.c", i32 249, i32 28}
!290 = distinct !{null, !291, !"specials_idx", i1 false, i1 false}
!291 = !{!"../sound/pci/hda/hda_proc.c", i32 252, i32 29}
!292 = !{ptr @.str.134, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/pci/hda/hda_proc.c", i32 258, i32 3}
!294 = !{ptr @.str.135, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/pci/hda/hda_proc.c", i32 258, i32 17}
!296 = !{ptr @.str.136, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/pci/hda/hda_proc.c", i32 259, i32 3}
!298 = !{ptr @.str.137, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/pci/hda/hda_proc.c", i32 259, i32 12}
!300 = !{ptr @.str.138, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/pci/hda/hda_proc.c", i32 259, i32 20}
!302 = !{ptr @.str.139, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/pci/hda/hda_proc.c", i32 260, i32 3}
!304 = !{ptr @.str.140, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/pci/hda/hda_proc.c", i32 260, i32 16}
!306 = !{ptr @get_jack_location.specials, !307, !"specials", i1 false, i1 false}
!307 = !{!"../sound/pci/hda/hda_proc.c", i32 257, i32 28}
!308 = !{ptr @.str.141, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/pci/hda/hda_proc.c", i32 216, i32 3}
!310 = !{ptr @.str.142, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/pci/hda/hda_proc.c", i32 216, i32 14}
!312 = !{ptr @.str.143, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/pci/hda/hda_proc.c", i32 216, i32 21}
!314 = !{ptr @.str.144, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/pci/hda/hda_proc.c", i32 217, i32 3}
!316 = !{ptr @.str.145, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/pci/hda/hda_proc.c", i32 217, i32 10}
!318 = !{ptr @.str.146, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/pci/hda/hda_proc.c", i32 217, i32 20}
!320 = !{ptr @.str.147, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/pci/hda/hda_proc.c", i32 217, i32 31}
!322 = !{ptr @.str.148, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/pci/hda/hda_proc.c", i32 218, i32 3}
!324 = !{ptr @.str.149, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/pci/hda/hda_proc.c", i32 218, i32 10}
!326 = !{ptr @.str.150, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/pci/hda/hda_proc.c", i32 218, i32 17}
!328 = !{ptr @.str.151, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/pci/hda/hda_proc.c", i32 218, i32 25}
!330 = !{ptr @get_jack_connection.names, !331, !"names", i1 false, i1 false}
!331 = !{!"../sound/pci/hda/hda_proc.c", i32 215, i32 28}
!332 = !{ptr @.str.152, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/pci/hda/hda_proc.c", i32 231, i32 14}
!334 = !{ptr @.str.153, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/pci/hda/hda_proc.c", i32 231, i32 23}
!336 = !{ptr @.str.154, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/pci/hda/hda_proc.c", i32 231, i32 31}
!338 = !{ptr @.str.155, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/pci/hda/hda_proc.c", i32 232, i32 3}
!340 = !{ptr @.str.156, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/pci/hda/hda_proc.c", i32 232, i32 12}
!342 = !{ptr @.str.157, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/pci/hda/hda_proc.c", i32 232, i32 19}
!344 = !{ptr @.str.158, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/pci/hda/hda_proc.c", i32 232, i32 29}
!346 = !{ptr @.str.159, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/pci/hda/hda_proc.c", i32 233, i32 3}
!348 = !{ptr @.str.160, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/pci/hda/hda_proc.c", i32 233, i32 13}
!350 = !{ptr @.str.161, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/pci/hda/hda_proc.c", i32 234, i32 15}
!352 = !{ptr @get_jack_color.names, !353, !"names", i1 false, i1 false}
!353 = !{!"../sound/pci/hda/hda_proc.c", i32 230, i32 28}
!354 = !{ptr @.str.162, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/pci/hda/hda_proc.c", i32 408, i32 2}
!356 = !{ptr @.str.163, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/pci/hda/hda_proc.c", i32 419, i32 4}
!358 = !{ptr @.str.164, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/pci/hda/hda_proc.c", i32 422, i32 4}
!360 = !{ptr @.str.165, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/pci/hda/hda_proc.c", i32 425, i32 4}
!362 = !{ptr @.str.166, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/pci/hda/hda_proc.c", i32 428, i32 4}
!364 = !{ptr @.str.167, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/pci/hda/hda_proc.c", i32 431, i32 4}
!366 = !{ptr @.str.168, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/pci/hda/hda_proc.c", i32 442, i32 2}
!368 = !{ptr @.str.169, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/pci/hda/hda_proc.c", i32 446, i32 2}
!370 = !{ptr @.str.170, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/pci/hda/hda_proc.c", i32 455, i32 2}
!372 = !{ptr @.str.171, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/pci/hda/hda_proc.c", i32 463, i32 3}
!374 = !{ptr @.str.172, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/pci/hda/hda_proc.c", i32 476, i32 2}
!376 = !{ptr @.str.173, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/pci/hda/hda_proc.c", i32 478, i32 3}
!378 = !{ptr @.str.174, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/pci/hda/hda_proc.c", i32 480, i32 3}
!380 = !{ptr @.str.175, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/pci/hda/hda_proc.c", i32 482, i32 3}
!382 = !{ptr @.str.176, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/pci/hda/hda_proc.c", i32 484, i32 3}
!384 = !{ptr @.str.177, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/pci/hda/hda_proc.c", i32 486, i32 3}
!386 = !{ptr @.str.178, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/pci/hda/hda_proc.c", i32 488, i32 3}
!388 = !{ptr @.str.179, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/pci/hda/hda_proc.c", i32 490, i32 3}
!390 = !{ptr @.str.180, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/pci/hda/hda_proc.c", i32 492, i32 3}
!392 = !{ptr @.str.181, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/pci/hda/hda_proc.c", i32 494, i32 3}
!394 = !{ptr @.str.182, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/pci/hda/hda_proc.c", i32 496, i32 2}
!396 = !{ptr @.str.183, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/pci/hda/hda_proc.c", i32 498, i32 2}
!398 = !{ptr @.str.184, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../sound/pci/hda/hda_proc.c", i32 558, i32 2}
!400 = !{ptr @.str.185, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/pci/hda/hda_proc.c", i32 723, i32 2}
!402 = !{ptr @.str.186, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/pci/hda/hda_proc.c", i32 732, i32 4}
!404 = !{ptr @.str.187, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/pci/hda/hda_proc.c", i32 734, i32 4}
!406 = !{ptr @.str.188, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/pci/hda/hda_proc.c", i32 736, i32 3}
!408 = !{ptr @.str.189, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/pci/hda/hda_proc.c", i32 744, i32 3}
!410 = !{ptr @.str.190, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../sound/pci/hda/hda_proc.c", i32 706, i32 4}
!412 = !{ptr @.str.191, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/pci/hda/hda_proc.c", i32 613, i32 2}
!414 = !{ptr @.str.192, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/pci/hda/hda_proc.c", i32 615, i32 3}
!416 = !{ptr @.str.193, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/pci/hda/hda_proc.c", i32 628, i32 3}
!418 = !{ptr @.str.194, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../sound/pci/hda/hda_proc.c", i32 579, i32 2}
!420 = !{ptr @.str.195, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/pci/hda/hda_proc.c", i32 593, i32 3}
!422 = !{i32 1, !"wchar_size", i32 2}
!423 = !{i32 1, !"min_enum_size", i32 4}
!424 = !{i32 8, !"branch-target-enforcement", i32 0}
!425 = !{i32 8, !"sign-return-address", i32 0}
!426 = !{i32 8, !"sign-return-address-all", i32 0}
!427 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!428 = !{i32 7, !"uwtable", i32 1}
!429 = !{i32 7, !"frame-pointer", i32 2}
!430 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!431 = !{!"auto-init"}
