; ModuleID = '/llk/IR_all_yes/sound/usb/proc.c_pt.bc'
source_filename = "../sound/usb/proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.68, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.snd_usb_stream = type { ptr, ptr, i32, i32, [2 x %struct.snd_usb_substream], %struct.list_head }
%struct.snd_usb_substream = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, %struct.list_head, %struct.spinlock, i32, %struct.anon.73, i8, i8, ptr }
%struct.anon.73 = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.snd_usb_endpoint = type { ptr, ptr, i32, %struct.atomic_t, i32, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, [12 x %struct.snd_urb_ctx], [12 x %struct.snd_usb_packet_info], i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, ptr, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.snd_urb_ctx = type { ptr, i32, ptr, ptr, i32, i32, i32, [48 x i32], %struct.list_head }
%struct.snd_usb_packet_info = type { [48 x i32], i32 }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbbus\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usbid\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stream%d\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%03d/%03d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%04x:%04x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s : %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0APlayback:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\0ACapture:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  Status: Running\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"    Interface = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"    Altset = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  Status: Stop\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"    Packet Size = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"    Momentary freq = %u Hz (%#x.%04x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"    Feedback Format = %d.%d\0A\00", [35 x i8] zeroinitializer }, align 32
@proc_dump_substream_formats.sync_types = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ASYNC\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADAPTIVE\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SYNC\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  Interface %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"    Altset %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"    Format:\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"    Channels: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"    Endpoint: 0x%02x (%d %s) (%s)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"    Rates: %d - %d (continuous)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"    Rates: \00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"    Data packet interval: %d us\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"    Bits: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"    DSD raw: DOP=%d, bitrev=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"    Channel map:\00", [47 x i8] zeroinitializer }, align 32
@channel_labels = internal constant { [35 x ptr], [52 x i8] } { [35 x ptr] [ptr null, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" --\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"    Sync Endpoint: 0x%02x (%d %s)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"    Sync EP Interface: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"    Sync EP Altset: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"    Implicit Feedback Mode: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Yes\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"No\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MONO\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FL\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FR\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RL\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RR\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FC\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LFE\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SL\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SR\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RC\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FLC\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FRC\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RLC\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RRC\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TC\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TFL\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TFR\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TFC\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TRL\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TRR\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TRC\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TFLC\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TFRC\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TSL\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TSR\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LLFE\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RLFE\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BC\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 51, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 53, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 234, i32 16 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 37, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 44, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 215, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 218, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 223, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 198, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 200, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 201, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 205, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 179, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 180, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 187, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [11 x i8] c"sync_types\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 95, i32 28 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 96, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 96, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 96, i32 20 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 96, i32 32 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 102, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 103, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 104, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 107, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 109, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 110, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 111, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 117, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 121, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 124, i32 6 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 125, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 130, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 132, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 135, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 142, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant [15 x i8] c"channel_labels\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 57, i32 27 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 146, i32 6 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 155, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 159, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 161, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 163, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 58, i32 21 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 59, i32 23 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 60, i32 21 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 61, i32 21 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 64, i32 21 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 65, i32 21 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 62, i32 21 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 63, i32 22 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 69, i32 21 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 70, i32 21 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 68, i32 21 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 66, i32 22 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 67, i32 22 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 85, i32 22 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 86, i32 22 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 71, i32 21 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 72, i32 22 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 74, i32 22 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 73, i32 22 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 75, i32 22 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 77, i32 22 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 76, i32 22 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 78, i32 23 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 79, i32 23 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 82, i32 22 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 83, i32 22 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 80, i32 23 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 81, i32 23 }
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.292 = private constant [20 x i8] c"../sound/usb/proc.c\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 84, i32 21 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @proc_dump_substream_formats.sync_types, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @channel_labels, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_dump_substream_formats.sync_types to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_labels to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_audio_create_proc(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call.i = tail call i32 @snd_card_rw_proc_new(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %chip, ptr noundef nonnull @proc_audio_usbbus_read, ptr noundef null) #4
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call.i6 = tail call i32 @snd_card_rw_proc_new(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef %chip, ptr noundef nonnull @proc_audio_usbid_read, ptr noundef null) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_audio_usbbus_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %shutdown = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shutdown, i32 noundef 4) #4
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %busnum, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %13) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_audio_usbid_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %shutdown = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shutdown, i32 noundef 4) #4
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usb_id, align 4
  %shr = lshr i32 %7, 16
  %conv4 = and i32 %7, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %shr, i32 noundef %conv4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_proc_pcm_format_add(ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #4
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %1 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stream, align 8
  %card1 = getelementptr inbounds %struct.snd_usb_audio, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card1, align 4
  %pcm_index = getelementptr inbounds %struct.snd_usb_stream, ptr %stream, i32 0, i32 2
  %5 = ptrtoint ptr %pcm_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pcm_index, align 8
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.2, i32 noundef %6)
  %call.i = call i32 @snd_card_rw_proc_new(ptr noundef %4, ptr noundef nonnull %name, ptr noundef %stream, ptr noundef nonnull @proc_pcm_format_read, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_pcm_format_read(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 4
  %pcm = getelementptr inbounds %struct.snd_usb_stream, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm, align 4
  %name = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef %longname, ptr noundef %name) #4
  %num_formats = getelementptr inbounds %struct.snd_usb_stream, ptr %1, i32 0, i32 4, i32 0, i32 25
  %10 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_formats, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %substream = getelementptr inbounds %struct.snd_usb_stream, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.6) #4
  tail call fastcc void @proc_dump_substream_status(ptr noundef %3, ptr noundef %substream, ptr noundef %buffer)
  tail call fastcc void @proc_dump_substream_formats(ptr noundef %substream, ptr noundef %buffer)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_formats12 = getelementptr %struct.snd_usb_stream, ptr %1, i32 0, i32 4, i32 1, i32 25
  %14 = ptrtoint ptr %num_formats12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_formats12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool13.not = icmp eq i32 %15, 0
  br i1 %tobool13.not, label %if.end.if.end20_crit_edge, label %if.then14

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx11 = getelementptr %struct.snd_usb_stream, ptr %1, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.7) #4
  tail call fastcc void @proc_dump_substream_status(ptr noundef %3, ptr noundef %arrayidx11, ptr noundef %buffer)
  tail call fastcc void @proc_dump_substream_formats(ptr noundef %arrayidx11, ptr noundef %buffer)
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end.if.end20_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @proc_dump_substream_status(ptr noundef %chip, ptr nocapture noundef readonly %subs, ptr nocapture noundef readonly %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %running = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 12
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %running, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %2, ptr noundef nonnull @.str.8) #4
  %cur_audiofmt = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 5
  %3 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_audiofmt, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  %iface = getelementptr inbounds %struct.audioformat, ptr %4, i32 0, i32 6
  %7 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %iface, align 8
  %conv = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %6, ptr noundef nonnull @.str.9, i32 noundef %conv) #4
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  %11 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_audiofmt, align 4
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %altsetting, align 1
  %conv8 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef %conv8) #4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %data_endpoint = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 20
  %15 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data_endpoint, align 8
  %sync_endpoint = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 21
  %17 = ptrtoint ptr %sync_endpoint to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sync_endpoint, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.if.end10_crit_edge, label %if.end.i

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end.i:                                         ; preds = %if.end
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  %curpacksize.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %16, i32 0, i32 39
  %21 = ptrtoint ptr %curpacksize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %curpacksize.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef nonnull @.str.12, i32 noundef %22) #4
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer, align 4
  %speed.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 23
  %25 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i = icmp eq i32 %26, 2
  %freqm.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %16, i32 0, i32 32
  %27 = ptrtoint ptr %freqm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %freqm.i, align 4
  %mul.i.i = mul i32 %28, 125
  %..i = select i1 %cmp.i, i32 4096, i32 512
  %.31.i = select i1 %cmp.i, i32 13, i32 10
  %add.i28.i = add i32 %mul.i.i, %..i
  %shr.i29.i = lshr i32 %add.i28.i, %.31.i
  %shr.i = lshr i32 %28, 16
  %and.i = and i32 %28, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.13, i32 noundef %shr.i29.i, i32 noundef %shr.i, i32 noundef %and.i) #4
  %tobool7.not.i = icmp eq ptr %18, null
  br i1 %tobool7.not.i, label %if.end.i.if.end10_crit_edge, label %land.lhs.true.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

land.lhs.true.i:                                  ; preds = %if.end.i
  %freqshift.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %16, i32 0, i32 33
  %29 = ptrtoint ptr %freqshift.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %freqshift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %30)
  %cmp8.not.i = icmp eq i32 %30, -2147483648
  br i1 %cmp8.not.i, label %land.lhs.true.i.if.end10_crit_edge, label %if.then9.i

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub i32 16, %30
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 4
  %syncmaxsize.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %18, i32 0, i32 41
  %33 = ptrtoint ptr %syncmaxsize.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %syncmaxsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp12.i = icmp ugt i32 %34, 3
  %cond13.i = select i1 %cmp12.i, i32 32, i32 24
  %sub14.i = sub i32 %cond13.i, %sub.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.14, i32 noundef %sub14.i, i32 noundef %sub.i) #4
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %2, ptr noundef nonnull @.str.11) #4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9.i, %land.lhs.true.i.if.end10_crit_edge, %if.end.i.if.end10_crit_edge, %if.end.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @proc_dump_substream_formats(ptr noundef readonly %subs, ptr noundef readonly %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt_list = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 26
  %0 = ptrtoint ptr %fmt_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %fp.0196 = load ptr, ptr %fmt_list, align 4
  %cmp.not197 = icmp eq ptr %fp.0196, %fmt_list
  br i1 %cmp.not197, label %entry.for.end121_crit_edge, label %for.body.lr.ph

entry.for.end121_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end121

for.body.lr.ph:                                   ; preds = %entry
  %speed = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %if.end114.for.body_crit_edge, %for.body.lr.ph
  %fp.0198 = phi ptr [ %fp.0196, %for.body.lr.ph ], [ %fp.0, %if.end114.for.body_crit_edge ]
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer, align 4
  %iface = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 6
  %3 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iface, align 8
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %conv) #4
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 7
  %7 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %altsetting, align 1
  %conv4 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %6, ptr noundef nonnull @.str.20, i32 noundef %conv4) #4
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.21) #4
  %formats = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 1
  br label %for.body9

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %for.body
  %fmt.0189 = phi i32 [ 0, %for.body ], [ %add, %for.inc.for.body9_crit_edge ]
  %11 = ptrtoint ptr %formats to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %formats, align 8
  %sh_prom.i = zext i32 %fmt.0189 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and = and i64 %12, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.body9.for.inc_crit_edge, label %if.then

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  %call11 = tail call ptr @snd_pcm_format_name(i32 noundef %fmt.0189) #4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef nonnull @.str.22, ptr noundef %call11) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body9.for.inc_crit_edge
  %add = add nuw nsw i32 %fmt.0189, 1
  %exitcond.not = icmp eq i32 %add, 53
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body9_crit_edge

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body9

for.end:                                          ; preds = %for.inc
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.23) #4
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 4
  %channels = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 2
  %19 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channels, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.24, i32 noundef %20) #4
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %endpoint = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 11
  %23 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %endpoint, align 1
  %conv15 = zext i8 %24 to i32
  %and18 = and i32 %conv15, 15
  %and21 = and i32 %conv15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond = select i1 %tobool22.not, ptr @.str.27, ptr @.str.26
  %ep_attr = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 12
  %25 = ptrtoint ptr %ep_attr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ep_attr, align 2
  %27 = lshr i8 %26, 2
  %28 = and i8 %27, 3
  %29 = zext i8 %28 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @proc_dump_substream_formats.sync_types, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.25, i32 noundef %conv15, i32 noundef %and18, ptr noundef nonnull %cond, ptr noundef %31) #4
  %rates = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 21
  %32 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rates, align 4
  %and25 = and i32 %33, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %34 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buffer, align 4
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %rate_min = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 22
  %36 = ptrtoint ptr %rate_min to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rate_min, align 8
  %rate_max = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 23
  %38 = ptrtoint ptr %rate_max to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rate_max, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %35, ptr noundef nonnull @.str.28, i32 noundef %37, i32 noundef %39) #4
  br label %if.end44

if.else:                                          ; preds = %for.end
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %35, ptr noundef nonnull @.str.29) #4
  %nr_rates = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 24
  %40 = ptrtoint ptr %nr_rates to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_rates, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp31191.not = icmp eq i32 %41, 0
  br i1 %cmp31191.not, label %if.else.for.end42_crit_edge, label %if.end38.peel

if.else.for.end42_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end42

if.end38.peel:                                    ; preds = %if.else
  %rate_table = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 25
  %42 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer, align 4
  %44 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rate_table, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %43, ptr noundef nonnull @.str.31, i32 noundef %47) #4
  %48 = ptrtoint ptr %nr_rates to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_rates, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp31.peel = icmp ugt i32 %49, 1
  br i1 %cmp31.peel, label %if.end38.peel.if.end38_crit_edge, label %if.end38.peel.for.end42_crit_edge

if.end38.peel.for.end42_crit_edge:                ; preds = %if.end38.peel
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end42

if.end38.peel.if.end38_crit_edge:                 ; preds = %if.end38.peel
  br label %if.end38

if.end38:                                         ; preds = %if.end38.if.end38_crit_edge, %if.end38.peel.if.end38_crit_edge
  %i.0192 = phi i32 [ %inc, %if.end38.if.end38_crit_edge ], [ 1, %if.end38.peel.if.end38_crit_edge ]
  %50 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %51, ptr noundef nonnull @.str.30) #4
  %52 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer, align 4
  %54 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rate_table, align 4
  %arrayidx40 = getelementptr i32, ptr %55, i32 %i.0192
  %56 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx40, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %53, ptr noundef nonnull @.str.31, i32 noundef %57) #4
  %inc = add nuw i32 %i.0192, 1
  %58 = ptrtoint ptr %nr_rates to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_rates, align 8
  %cmp31 = icmp ult i32 %inc, %59
  br i1 %cmp31, label %if.end38.if.end38_crit_edge, label %if.end38.for.end42_crit_edge, !llvm.loop !153

if.end38.for.end42_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end42

if.end38.if.end38_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

for.end42:                                        ; preds = %if.end38.for.end42_crit_edge, %if.end38.peel.for.end42_crit_edge, %if.else.for.end42_crit_edge
  %60 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %61, ptr noundef nonnull @.str.23) #4
  br label %if.end44

if.end44:                                         ; preds = %for.end42, %if.then27
  %62 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp45.not = icmp eq i32 %63, 2
  br i1 %cmp45.not, label %if.end44.if.end50_crit_edge, label %if.then47

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer, align 4
  %datainterval = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 18
  %66 = ptrtoint ptr %datainterval to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %datainterval, align 4
  %conv49 = zext i8 %67 to i32
  %mul = shl i32 125, %conv49
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %65, ptr noundef nonnull @.str.32, i32 noundef %mul) #4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end44.if.end50_crit_edge
  %68 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer, align 4
  %fmt_bits = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 4
  %70 = ptrtoint ptr %fmt_bits to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fmt_bits, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %69, ptr noundef nonnull @.str.33, i32 noundef %71) #4
  %dsd_raw = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 30
  %72 = ptrtoint ptr %dsd_raw to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dsd_raw, align 2, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool52.not = icmp eq i8 %73, 0
  br i1 %tobool52.not, label %if.end50.if.end59_crit_edge, label %if.then53

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buffer, align 4
  %dsd_dop = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 28
  %76 = ptrtoint ptr %dsd_dop to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %dsd_dop, align 8, !range !155
  %78 = zext i8 %77 to i32
  %dsd_bitrev = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 29
  %79 = ptrtoint ptr %dsd_bitrev to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %dsd_bitrev, align 1, !range !155
  %81 = zext i8 %80 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %75, ptr noundef nonnull @.str.34, i32 noundef %78, i32 noundef %81) #4
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.end50.if.end59_crit_edge
  %chmap = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 27
  %82 = ptrtoint ptr %chmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chmap, align 4
  %tobool60.not = icmp eq ptr %83, null
  br i1 %tobool60.not, label %if.end59.if.end92_crit_edge, label %if.then61

if.end59.if.end92_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end92

if.then61:                                        ; preds = %if.end59
  %84 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %85, ptr noundef nonnull @.str.35) #4
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp67194.not = icmp eq i8 %87, 0
  br i1 %cmp67194.not, label %if.then61.for.end90_crit_edge, label %if.then61.for.body69_crit_edge

if.then61.for.body69_crit_edge:                   ; preds = %if.then61
  br label %for.body69

if.then61.for.end90_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end90

for.body69:                                       ; preds = %for.inc88.for.body69_crit_edge, %if.then61.for.body69_crit_edge
  %c.0195 = phi i32 [ %inc89, %for.inc88.for.body69_crit_edge ], [ 0, %if.then61.for.body69_crit_edge ]
  %arrayidx71 = getelementptr %struct.snd_pcm_chmap_elem, ptr %83, i32 0, i32 1, i32 %c.0195
  %88 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %89)
  %cmp73 = icmp ugt i8 %89, 34
  br i1 %cmp73, label %for.body69.if.then79_crit_edge, label %lor.lhs.false

for.body69.if.then79_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then79

lor.lhs.false:                                    ; preds = %for.body69
  %conv72 = zext i8 %89 to i32
  %arrayidx77 = getelementptr [35 x ptr], ptr @channel_labels, i32 0, i32 %conv72
  %90 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx77, align 4
  %tobool78.not = icmp eq ptr %91, null
  br i1 %tobool78.not, label %lor.lhs.false.if.then79_crit_edge, label %if.else81

lor.lhs.false.if.then79_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then79

if.then79:                                        ; preds = %lor.lhs.false.if.then79_crit_edge, %for.body69.if.then79_crit_edge
  %92 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %93, ptr noundef nonnull @.str.36) #4
  br label %for.inc88

if.else81:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %95, ptr noundef nonnull @.str.22, ptr noundef nonnull %91) #4
  br label %for.inc88

for.inc88:                                        ; preds = %if.else81, %if.then79
  %inc89 = add nuw nsw i32 %c.0195, 1
  %96 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %83, align 1
  %conv66 = zext i8 %97 to i32
  %cmp67 = icmp ult i32 %inc89, %conv66
  br i1 %cmp67, label %for.inc88.for.body69_crit_edge, label %for.inc88.for.end90_crit_edge

for.inc88.for.end90_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end90

for.inc88.for.body69_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body69

for.end90:                                        ; preds = %for.inc88.for.end90_crit_edge, %if.then61.for.end90_crit_edge
  %98 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %99, ptr noundef nonnull @.str.23) #4
  br label %if.end92

if.end92:                                         ; preds = %for.end90, %if.end59.if.end92_crit_edge
  %sync_ep = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 14
  %100 = ptrtoint ptr %sync_ep to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %sync_ep, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool93.not = icmp eq i8 %101, 0
  br i1 %tobool93.not, label %if.end92.if.end114_crit_edge, label %if.then94

if.end92.if.end114_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  %102 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %buffer, align 4
  %conv97 = zext i8 %101 to i32
  %and100 = and i32 %conv97, 15
  %and103 = and i32 %conv97, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  %cond105 = select i1 %tobool104.not, ptr @.str.27, ptr @.str.26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %103, ptr noundef nonnull @.str.37, i32 noundef %conv97, i32 noundef %and100, ptr noundef nonnull %cond105) #4
  %104 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %buffer, align 4
  %sync_iface = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 15
  %106 = ptrtoint ptr %sync_iface to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %sync_iface, align 1
  %conv107 = zext i8 %107 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %105, ptr noundef nonnull @.str.38, i32 noundef %conv107) #4
  %108 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %buffer, align 4
  %sync_altsetting = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 16
  %110 = ptrtoint ptr %sync_altsetting to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %sync_altsetting, align 2
  %conv109 = zext i8 %111 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %109, ptr noundef nonnull @.str.39, i32 noundef %conv109) #4
  %112 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %buffer, align 4
  %implicit_fb = getelementptr inbounds %struct.audioformat, ptr %fp.0198, i32 0, i32 13
  %114 = ptrtoint ptr %implicit_fb to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %implicit_fb, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool111.not = icmp eq i8 %115, 0
  %cond113 = select i1 %tobool111.not, ptr @.str.42, ptr @.str.41
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %113, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond113) #4
  br label %if.end114

if.end114:                                        ; preds = %if.then94, %if.end92.if.end114_crit_edge
  %116 = ptrtoint ptr %fp.0198 to i32
  call void @__asan_load4_noabort(i32 %116)
  %fp.0 = load ptr, ptr %fp.0198, align 4
  %cmp.not = icmp eq ptr %fp.0, %fmt_list
  br i1 %cmp.not, label %if.end114.for.end121_crit_edge, label %if.end114.for.body_crit_edge

if.end114.for.body_crit_edge:                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end114.for.end121_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end121

for.end121:                                       ; preds = %if.end114.for.end121_crit_edge, %entry.for.end121_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pcm_format_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/proc.c", i32 51, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/usb/proc.c", i32 53, i32 35}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/usb/proc.c", i32 234, i32 16}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/usb/proc.c", i32 37, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/usb/proc.c", i32 44, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/usb/proc.c", i32 215, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/usb/proc.c", i32 218, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/usb/proc.c", i32 223, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/usb/proc.c", i32 198, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/usb/proc.c", i32 200, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/usb/proc.c", i32 201, i32 4}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/usb/proc.c", i32 205, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/usb/proc.c", i32 179, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/usb/proc.c", i32 180, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/usb/proc.c", i32 187, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/usb/proc.c", i32 96, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/usb/proc.c", i32 96, i32 11}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/usb/proc.c", i32 96, i32 20}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/usb/proc.c", i32 96, i32 32}
!38 = !{ptr @proc_dump_substream_formats.sync_types, !39, !"sync_types", i1 false, i1 false}
!39 = !{!"../sound/usb/proc.c", i32 95, i32 28}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/usb/proc.c", i32 102, i32 3}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/usb/proc.c", i32 103, i32 3}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/usb/proc.c", i32 104, i32 3}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/usb/proc.c", i32 107, i32 5}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/usb/proc.c", i32 109, i32 3}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/usb/proc.c", i32 110, i32 3}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/usb/proc.c", i32 111, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/usb/proc.c", i32 117, i32 4}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/usb/proc.c", i32 121, i32 4}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/usb/proc.c", i32 124, i32 6}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/usb/proc.c", i32 125, i32 5}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/usb/proc.c", i32 130, i32 4}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/usb/proc.c", i32 132, i32 3}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/usb/proc.c", i32 135, i32 4}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/usb/proc.c", i32 142, i32 4}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/usb/proc.c", i32 146, i32 6}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/usb/proc.c", i32 155, i32 4}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/usb/proc.c", i32 159, i32 4}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/usb/proc.c", i32 161, i32 4}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/usb/proc.c", i32 163, i32 4}
!82 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/usb/proc.c", i32 58, i32 21}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/usb/proc.c", i32 59, i32 23}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/usb/proc.c", i32 60, i32 21}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/usb/proc.c", i32 61, i32 21}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/usb/proc.c", i32 64, i32 21}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/usb/proc.c", i32 65, i32 21}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/usb/proc.c", i32 62, i32 21}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/usb/proc.c", i32 63, i32 22}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/usb/proc.c", i32 69, i32 21}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/usb/proc.c", i32 70, i32 21}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/usb/proc.c", i32 68, i32 21}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/usb/proc.c", i32 66, i32 22}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/usb/proc.c", i32 67, i32 22}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/usb/proc.c", i32 85, i32 22}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/usb/proc.c", i32 86, i32 22}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/usb/proc.c", i32 71, i32 21}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/usb/proc.c", i32 72, i32 22}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/usb/proc.c", i32 74, i32 22}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/usb/proc.c", i32 73, i32 22}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/usb/proc.c", i32 75, i32 22}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/usb/proc.c", i32 77, i32 22}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/usb/proc.c", i32 76, i32 22}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/usb/proc.c", i32 78, i32 23}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/usb/proc.c", i32 79, i32 23}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/usb/proc.c", i32 82, i32 22}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/usb/proc.c", i32 83, i32 22}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/usb/proc.c", i32 80, i32 23}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/usb/proc.c", i32 81, i32 23}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/usb/proc.c", i32 84, i32 21}
!142 = !{ptr @channel_labels, !143, !"channel_labels", i1 false, i1 false}
!143 = !{!"../sound/usb/proc.c", i32 57, i32 27}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = distinct !{!153, !154}
!154 = !{!"llvm.loop.peeled.count", i32 1}
!155 = !{i8 0, i8 2}
