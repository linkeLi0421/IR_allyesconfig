; ModuleID = '/llk/IR_all_yes/sound/usb/caiaq/input.c_pt.bc'
source_filename = "../sound/usb/caiaq/input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_usb_caiaqdev = type { %struct.snd_usb_audio, %struct.urb, %struct.urb, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], %struct.caiaq_device_spec, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, ptr, ptr, i32, i32, i32, [32 x ptr], [32 x ptr], [256 x i8], [2 x i8], ptr, [64 x i8], [128 x i16], ptr, [512 x i8], ptr, %struct.snd_pcm_hardware, ptr, ptr, ptr }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.caiaq_device_spec = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@keycode_rk2 = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8], [18 x i8] zeroinitializer }, align 32
@keycode_rk3 = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10], [46 x i8] zeroinitializer }, align 32
@keycode_ak1 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 46, i16 48, i16 30], [26 x i8] zeroinitializer }, align 32
@keycode_kore = internal constant { [32 x i16], [32 x i8] } { [32 x i16] [i16 466, i16 472, i16 467, i16 468, i16 469, i16 470, i16 471, i16 473, i16 106, i16 108, i16 103, i16 105, i16 213, i16 167, i16 164, i16 128, i16 260, i16 259, i16 258, i16 257, i16 264, i16 263, i16 262, i16 261, i16 500, i16 499, i16 498, i16 497, i16 504, i16 503, i16 502, i16 501], [32 x i8] zeroinitializer }, align 32
@keycode_maschine = internal constant { [42 x i16], [44 x i8] } { [42 x i16] [i16 296, i16 295, i16 294, i16 293, i16 292, i16 291, i16 290, i16 289, i16 0, i16 286, i16 287, i16 288, i16 284, i16 283, i16 282, i16 281, i16 277, i16 278, i16 279, i16 280, i16 276, i16 275, i16 274, i16 273, i16 256, i16 258, i16 260, i16 262, i16 263, i16 261, i16 259, i16 257, i16 271, i16 270, i16 269, i16 268, i16 267, i16 266, i16 265, i16 264, i16 272, i16 285], [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_ep4_reply_dispatch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 529, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to submit urb. OOM!?\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snd_usb_caiaq_ep4_reply_dispatch\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/usb/caiaq/input.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_ep4_reply_dispatch._entry_ptr = internal global ptr @snd_usb_caiaq_ep4_reply_dispatch._entry, section ".printk_index", align 4
@snd_usb_caiaq_tks4_dispatch.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_caiaq\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_usb_caiaq_tks4_dispatch\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): bogus block (id %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 399247368, i64 399247381, i64 399263505, i64 399263506]
@__sancov_gen_cov_switch_values.11 = internal global [7 x i64] [i64 5, i64 32, i64 399251776, i64 399251817, i64 399254277, i64 399263505, i64 399263506]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 399254277, i64 399263505, i64 399263506]
@__sancov_gen_cov_switch_values.13 = internal global [10 x i64] [i64 8, i64 32, i64 399247368, i64 399247381, i64 399251776, i64 399251817, i64 399254277, i64 399263505, i64 399263506, i64 399293183]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 399247368, i64 399254277, i64 399293183]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 399247368, i64 399254277, i64 399293183]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 399247368, i64 399254277, i64 399293183]
@__sancov_gen_cov_switch_values.17 = internal global [10 x i64] [i64 8, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 598, i32 22 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"keycode_rk2\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 18, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"keycode_rk3\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 20, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"keycode_ak1\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 17, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"keycode_kore\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 23, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"keycode_maschine\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 63, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 912, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 529, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [27 x i8] c"../sound/usb/caiaq/input.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 459, i32 4 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @snd_usb_caiaq_ep4_reply_dispatch._entry, ptr @snd_usb_caiaq_ep4_reply_dispatch._entry_ptr, ptr @.str, ptr @keycode_rk2, ptr @keycode_rk3, ptr @keycode_ak1, ptr @keycode_kore, ptr @keycode_maschine, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keycode_rk2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keycode_rk3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keycode_ak1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keycode_kore to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keycode_maschine to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_caiaq_ep4_reply_dispatch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_caiaq_input_dispatch(ptr nocapture noundef readonly %cdev, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input_dev = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 40
  %0 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.sw.epilog_crit_edge, label %if.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.end.sw.epilog_crit_edge [
    i8 3, label %sw.bb
    i8 2, label %sw.bb1
    i8 4, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %buf, i32 1
  tail call fastcc void @snd_caiaq_input_read_analog(ptr noundef %cdev, ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %add.ptr2 = getelementptr i8, ptr %buf, i32 1
  %usb_id.i = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 4
  %5 = ptrtoint ptr %usb_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usb_id.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %6, label %sw.bb1.sw.epilog_crit_edge [
    i32 399247381, label %sw.bb.i
    i32 399263505, label %sw.bb1.sw.bb3.i_crit_edge
    i32 399263506, label %sw.bb1.sw.bb3.i_crit_edge16
    i32 399247368, label %sw.bb28.i
  ]

sw.bb1.sw.bb3.i_crit_edge16:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

sw.bb1.sw.bb3.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr2, align 1
  %arrayidx2.i = getelementptr i8, ptr %buf, i32 2
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %9)
  %cmp14.i.i = icmp ult i8 %9, -126
  %conv17.i.i = zext i8 %11 to i32
  %add30.i.i = sub nuw nsw i32 405, %conv17.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %11)
  %cmp21.i.i = icmp ugt i8 %11, -126
  %spec.select.v.i.i = select i1 %cmp21.i.i, i32 -131, i32 419
  %spec.select.i.i = add nsw i32 %spec.select.v.i.i, %conv17.i.i
  %pos_b.0.i.i = select i1 %cmp14.i.i, i32 %spec.select.i.i, i32 %add30.i.i
  br label %sw.epilog.sink.split.i

sw.bb3.i:                                         ; preds = %sw.bb1.sw.bb3.i_crit_edge, %sw.bb1.sw.bb3.i_crit_edge16
  %arrayidx4.i = getelementptr i8, ptr %buf, i32 8
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i, align 1
  %arrayidx5.i = getelementptr i8, ptr %buf, i32 6
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %13)
  %cmp14.i1.i = icmp ult i8 %13, -126
  %conv17.i2.i = zext i8 %15 to i32
  %add30.i3.i = sub nuw nsw i32 405, %conv17.i2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %15)
  %cmp21.i4.i = icmp ugt i8 %15, -126
  %spec.select.v.i5.i = select i1 %cmp21.i4.i, i32 -131, i32 419
  %spec.select.i6.i = add nsw i32 %spec.select.v.i5.i, %conv17.i2.i
  %pos_b.0.i7.i = select i1 %cmp14.i1.i, i32 %spec.select.i6.i, i32 %add30.i3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %13)
  %cmp.i8.i = icmp ugt i8 %13, -126
  %conv.i9.i = zext i8 %13 to i32
  %sub.neg.i10.i = add nsw i32 %conv.i9.i, -130
  %sub.i11.i = sub nsw i32 130, %conv.i9.i
  %cond.i12.i = select i1 %cmp.i8.i, i32 %sub.neg.i10.i, i32 %sub.i11.i
  %16 = tail call i32 @llvm.smax.i32(i32 %cond.i12.i, i32 18) #6
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 118) #6
  %sub12.i13.i = sub nuw nsw i32 118, %17
  %18 = add nsw i32 %17, -18
  %sub37.i15.i = add nuw nsw i32 %conv.i9.i, 7
  %add41.i16.i = sub nuw nsw i32 543, %conv.i9.i
  %pos_a.0.i17.i = select i1 %cmp21.i4.i, i32 %sub37.i15.i, i32 %add41.i16.i
  %mul43.i18.i = mul nuw nsw i32 %sub12.i13.i, %pos_a.0.i17.i
  %mul44.i19.i = mul nsw i32 %18, %pos_b.0.i7.i
  %add45.i20.i = add nsw i32 %mul44.i19.i, %mul43.i18.i
  %mul46.i21.i = mul nsw i32 %add45.i20.i, 10
  %div48.i22.i = sdiv i32 %add45.i20.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i21.i)
  %cmp49.i23.i = icmp slt i32 %mul46.i21.i, -549
  %add52.i24.i = add nsw i32 %div48.i22.i, 1000
  %ret.0.i25.i = select i1 %cmp49.i23.i, i32 %add52.i24.i, i32 %div48.i22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i25.i)
  %cmp54.i26.i = icmp sgt i32 %ret.0.i25.i, 999
  %sub57.i27.i = add nsw i32 %ret.0.i25.i, -1000
  %ret.1.i28.i = select i1 %cmp54.i26.i, i32 %sub57.i27.i, i32 %ret.0.i25.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 16, i32 noundef %ret.1.i28.i) #6
  %arrayidx7.i = getelementptr i8, ptr %buf, i32 13
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %buf, i32 15
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %20)
  %cmp14.i29.i = icmp ult i8 %20, -126
  %conv17.i30.i = zext i8 %22 to i32
  %add30.i31.i = sub nuw nsw i32 405, %conv17.i30.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %22)
  %cmp21.i32.i = icmp ugt i8 %22, -126
  %spec.select.v.i33.i = select i1 %cmp21.i32.i, i32 -131, i32 419
  %spec.select.i34.i = add nsw i32 %spec.select.v.i33.i, %conv17.i30.i
  %pos_b.0.i35.i = select i1 %cmp14.i29.i, i32 %spec.select.i34.i, i32 %add30.i31.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %20)
  %cmp.i36.i = icmp ugt i8 %20, -126
  %conv.i37.i = zext i8 %20 to i32
  %sub.neg.i38.i = add nsw i32 %conv.i37.i, -130
  %sub.i39.i = sub nsw i32 130, %conv.i37.i
  %cond.i40.i = select i1 %cmp.i36.i, i32 %sub.neg.i38.i, i32 %sub.i39.i
  %23 = tail call i32 @llvm.smax.i32(i32 %cond.i40.i, i32 18) #6
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 118) #6
  %sub12.i41.i = sub nuw nsw i32 118, %24
  %25 = add nsw i32 %24, -18
  %sub37.i43.i = add nuw nsw i32 %conv.i37.i, 7
  %add41.i44.i = sub nuw nsw i32 543, %conv.i37.i
  %pos_a.0.i45.i = select i1 %cmp21.i32.i, i32 %sub37.i43.i, i32 %add41.i44.i
  %mul43.i46.i = mul nuw nsw i32 %sub12.i41.i, %pos_a.0.i45.i
  %mul44.i47.i = mul nsw i32 %25, %pos_b.0.i35.i
  %add45.i48.i = add nsw i32 %mul44.i47.i, %mul43.i46.i
  %mul46.i49.i = mul nsw i32 %add45.i48.i, 10
  %div48.i50.i = sdiv i32 %add45.i48.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i49.i)
  %cmp49.i51.i = icmp slt i32 %mul46.i49.i, -549
  %add52.i52.i = add nsw i32 %div48.i50.i, 1000
  %ret.0.i53.i = select i1 %cmp49.i51.i, i32 %add52.i52.i, i32 %div48.i50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i53.i)
  %cmp54.i54.i = icmp sgt i32 %ret.0.i53.i, 999
  %sub57.i55.i = add nsw i32 %ret.0.i53.i, -1000
  %ret.1.i56.i = select i1 %cmp54.i54.i, i32 %sub57.i55.i, i32 %ret.0.i53.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 17, i32 noundef %ret.1.i56.i) #6
  %arrayidx10.i = getelementptr i8, ptr %buf, i32 16
  %26 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx10.i, align 1
  %arrayidx11.i = getelementptr i8, ptr %buf, i32 14
  %28 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %27)
  %cmp14.i57.i = icmp ult i8 %27, -126
  %conv17.i58.i = zext i8 %29 to i32
  %add30.i59.i = sub nuw nsw i32 405, %conv17.i58.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %29)
  %cmp21.i60.i = icmp ugt i8 %29, -126
  %spec.select.v.i61.i = select i1 %cmp21.i60.i, i32 -131, i32 419
  %spec.select.i62.i = add nsw i32 %spec.select.v.i61.i, %conv17.i58.i
  %pos_b.0.i63.i = select i1 %cmp14.i57.i, i32 %spec.select.i62.i, i32 %add30.i59.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %27)
  %cmp.i64.i = icmp ugt i8 %27, -126
  %conv.i65.i = zext i8 %27 to i32
  %sub.neg.i66.i = add nsw i32 %conv.i65.i, -130
  %sub.i67.i = sub nsw i32 130, %conv.i65.i
  %cond.i68.i = select i1 %cmp.i64.i, i32 %sub.neg.i66.i, i32 %sub.i67.i
  %30 = tail call i32 @llvm.smax.i32(i32 %cond.i68.i, i32 18) #6
  %31 = tail call i32 @llvm.smin.i32(i32 %30, i32 118) #6
  %sub12.i69.i = sub nuw nsw i32 118, %31
  %32 = add nsw i32 %31, -18
  %sub37.i71.i = add nuw nsw i32 %conv.i65.i, 7
  %add41.i72.i = sub nuw nsw i32 543, %conv.i65.i
  %pos_a.0.i73.i = select i1 %cmp21.i60.i, i32 %sub37.i71.i, i32 %add41.i72.i
  %mul43.i74.i = mul nuw nsw i32 %sub12.i69.i, %pos_a.0.i73.i
  %mul44.i75.i = mul nsw i32 %32, %pos_b.0.i63.i
  %add45.i76.i = add nsw i32 %mul44.i75.i, %mul43.i74.i
  %mul46.i77.i = mul nsw i32 %add45.i76.i, 10
  %div48.i78.i = sdiv i32 %add45.i76.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i77.i)
  %cmp49.i79.i = icmp slt i32 %mul46.i77.i, -549
  %add52.i80.i = add nsw i32 %div48.i78.i, 1000
  %ret.0.i81.i = select i1 %cmp49.i79.i, i32 %add52.i80.i, i32 %div48.i78.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i81.i)
  %cmp54.i82.i = icmp sgt i32 %ret.0.i81.i, 999
  %sub57.i83.i = add nsw i32 %ret.0.i81.i, -1000
  %ret.1.i84.i = select i1 %cmp54.i82.i, i32 %sub57.i83.i, i32 %ret.0.i81.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 18, i32 noundef %ret.1.i84.i) #6
  %33 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr2, align 1
  %arrayidx14.i = getelementptr i8, ptr %buf, i32 3
  %35 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %34)
  %cmp14.i85.i = icmp ult i8 %34, -126
  %conv17.i86.i = zext i8 %36 to i32
  %add30.i87.i = sub nuw nsw i32 405, %conv17.i86.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %36)
  %cmp21.i88.i = icmp ugt i8 %36, -126
  %spec.select.v.i89.i = select i1 %cmp21.i88.i, i32 -131, i32 419
  %spec.select.i90.i = add nsw i32 %spec.select.v.i89.i, %conv17.i86.i
  %pos_b.0.i91.i = select i1 %cmp14.i85.i, i32 %spec.select.i90.i, i32 %add30.i87.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %34)
  %cmp.i92.i = icmp ugt i8 %34, -126
  %conv.i93.i = zext i8 %34 to i32
  %sub.neg.i94.i = add nsw i32 %conv.i93.i, -130
  %sub.i95.i = sub nsw i32 130, %conv.i93.i
  %cond.i96.i = select i1 %cmp.i92.i, i32 %sub.neg.i94.i, i32 %sub.i95.i
  %37 = tail call i32 @llvm.smax.i32(i32 %cond.i96.i, i32 18) #6
  %38 = tail call i32 @llvm.smin.i32(i32 %37, i32 118) #6
  %sub12.i97.i = sub nuw nsw i32 118, %38
  %39 = add nsw i32 %38, -18
  %sub37.i99.i = add nuw nsw i32 %conv.i93.i, 7
  %add41.i100.i = sub nuw nsw i32 543, %conv.i93.i
  %pos_a.0.i101.i = select i1 %cmp21.i88.i, i32 %sub37.i99.i, i32 %add41.i100.i
  %mul43.i102.i = mul nuw nsw i32 %sub12.i97.i, %pos_a.0.i101.i
  %mul44.i103.i = mul nsw i32 %39, %pos_b.0.i91.i
  %add45.i104.i = add nsw i32 %mul44.i103.i, %mul43.i102.i
  %mul46.i105.i = mul nsw i32 %add45.i104.i, 10
  %div48.i106.i = sdiv i32 %add45.i104.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i105.i)
  %cmp49.i107.i = icmp slt i32 %mul46.i105.i, -549
  %add52.i108.i = add nsw i32 %div48.i106.i, 1000
  %ret.0.i109.i = select i1 %cmp49.i107.i, i32 %add52.i108.i, i32 %div48.i106.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i109.i)
  %cmp54.i110.i = icmp sgt i32 %ret.0.i109.i, 999
  %sub57.i111.i = add nsw i32 %ret.0.i109.i, -1000
  %ret.1.i112.i = select i1 %cmp54.i110.i, i32 %sub57.i111.i, i32 %ret.0.i109.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 19, i32 noundef %ret.1.i112.i) #6
  %arrayidx16.i = getelementptr i8, ptr %buf, i32 4
  %40 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx16.i, align 1
  %arrayidx17.i = getelementptr i8, ptr %buf, i32 2
  %42 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %41)
  %cmp14.i113.i = icmp ult i8 %41, -126
  %conv17.i114.i = zext i8 %43 to i32
  %add30.i115.i = sub nuw nsw i32 405, %conv17.i114.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %43)
  %cmp21.i116.i = icmp ugt i8 %43, -126
  %spec.select.v.i117.i = select i1 %cmp21.i116.i, i32 -131, i32 419
  %spec.select.i118.i = add nsw i32 %spec.select.v.i117.i, %conv17.i114.i
  %pos_b.0.i119.i = select i1 %cmp14.i113.i, i32 %spec.select.i118.i, i32 %add30.i115.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %41)
  %cmp.i120.i = icmp ugt i8 %41, -126
  %conv.i121.i = zext i8 %41 to i32
  %sub.neg.i122.i = add nsw i32 %conv.i121.i, -130
  %sub.i123.i = sub nsw i32 130, %conv.i121.i
  %cond.i124.i = select i1 %cmp.i120.i, i32 %sub.neg.i122.i, i32 %sub.i123.i
  %44 = tail call i32 @llvm.smax.i32(i32 %cond.i124.i, i32 18) #6
  %45 = tail call i32 @llvm.smin.i32(i32 %44, i32 118) #6
  %sub12.i125.i = sub nuw nsw i32 118, %45
  %46 = add nsw i32 %45, -18
  %sub37.i127.i = add nuw nsw i32 %conv.i121.i, 7
  %add41.i128.i = sub nuw nsw i32 543, %conv.i121.i
  %pos_a.0.i129.i = select i1 %cmp21.i116.i, i32 %sub37.i127.i, i32 %add41.i128.i
  %mul43.i130.i = mul nuw nsw i32 %sub12.i125.i, %pos_a.0.i129.i
  %mul44.i131.i = mul nsw i32 %46, %pos_b.0.i119.i
  %add45.i132.i = add nsw i32 %mul44.i131.i, %mul43.i130.i
  %mul46.i133.i = mul nsw i32 %add45.i132.i, 10
  %div48.i134.i = sdiv i32 %add45.i132.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i133.i)
  %cmp49.i135.i = icmp slt i32 %mul46.i133.i, -549
  %add52.i136.i = add nsw i32 %div48.i134.i, 1000
  %ret.0.i137.i = select i1 %cmp49.i135.i, i32 %add52.i136.i, i32 %div48.i134.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i137.i)
  %cmp54.i138.i = icmp sgt i32 %ret.0.i137.i, 999
  %sub57.i139.i = add nsw i32 %ret.0.i137.i, -1000
  %ret.1.i140.i = select i1 %cmp54.i138.i, i32 %sub57.i139.i, i32 %ret.0.i137.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 20, i32 noundef %ret.1.i140.i) #6
  %arrayidx19.i = getelementptr i8, ptr %buf, i32 9
  %47 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx19.i, align 1
  %arrayidx20.i = getelementptr i8, ptr %buf, i32 11
  %49 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %48)
  %cmp14.i141.i = icmp ult i8 %48, -126
  %conv17.i142.i = zext i8 %50 to i32
  %add30.i143.i = sub nuw nsw i32 405, %conv17.i142.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %50)
  %cmp21.i144.i = icmp ugt i8 %50, -126
  %spec.select.v.i145.i = select i1 %cmp21.i144.i, i32 -131, i32 419
  %spec.select.i146.i = add nsw i32 %spec.select.v.i145.i, %conv17.i142.i
  %pos_b.0.i147.i = select i1 %cmp14.i141.i, i32 %spec.select.i146.i, i32 %add30.i143.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %48)
  %cmp.i148.i = icmp ugt i8 %48, -126
  %conv.i149.i = zext i8 %48 to i32
  %sub.neg.i150.i = add nsw i32 %conv.i149.i, -130
  %sub.i151.i = sub nsw i32 130, %conv.i149.i
  %cond.i152.i = select i1 %cmp.i148.i, i32 %sub.neg.i150.i, i32 %sub.i151.i
  %51 = tail call i32 @llvm.smax.i32(i32 %cond.i152.i, i32 18) #6
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 118) #6
  %sub12.i153.i = sub nuw nsw i32 118, %52
  %53 = add nsw i32 %52, -18
  %sub37.i155.i = add nuw nsw i32 %conv.i149.i, 7
  %add41.i156.i = sub nuw nsw i32 543, %conv.i149.i
  %pos_a.0.i157.i = select i1 %cmp21.i144.i, i32 %sub37.i155.i, i32 %add41.i156.i
  %mul43.i158.i = mul nuw nsw i32 %sub12.i153.i, %pos_a.0.i157.i
  %mul44.i159.i = mul nsw i32 %53, %pos_b.0.i147.i
  %add45.i160.i = add nsw i32 %mul44.i159.i, %mul43.i158.i
  %mul46.i161.i = mul nsw i32 %add45.i160.i, 10
  %div48.i162.i = sdiv i32 %add45.i160.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i161.i)
  %cmp49.i163.i = icmp slt i32 %mul46.i161.i, -549
  %add52.i164.i = add nsw i32 %div48.i162.i, 1000
  %ret.0.i165.i = select i1 %cmp49.i163.i, i32 %add52.i164.i, i32 %div48.i162.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i165.i)
  %cmp54.i166.i = icmp sgt i32 %ret.0.i165.i, 999
  %sub57.i167.i = add nsw i32 %ret.0.i165.i, -1000
  %ret.1.i168.i = select i1 %cmp54.i166.i, i32 %sub57.i167.i, i32 %ret.0.i165.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 21, i32 noundef %ret.1.i168.i) #6
  %arrayidx22.i = getelementptr i8, ptr %buf, i32 12
  %54 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx22.i, align 1
  %arrayidx23.i = getelementptr i8, ptr %buf, i32 10
  %56 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %55)
  %cmp14.i169.i = icmp ult i8 %55, -126
  %conv17.i170.i = zext i8 %57 to i32
  %add30.i171.i = sub nuw nsw i32 405, %conv17.i170.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %57)
  %cmp21.i172.i = icmp ugt i8 %57, -126
  %spec.select.v.i173.i = select i1 %cmp21.i172.i, i32 -131, i32 419
  %spec.select.i174.i = add nsw i32 %spec.select.v.i173.i, %conv17.i170.i
  %pos_b.0.i175.i = select i1 %cmp14.i169.i, i32 %spec.select.i174.i, i32 %add30.i171.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %55)
  %cmp.i176.i = icmp ugt i8 %55, -126
  %conv.i177.i = zext i8 %55 to i32
  %sub.neg.i178.i = add nsw i32 %conv.i177.i, -130
  %sub.i179.i = sub nsw i32 130, %conv.i177.i
  %cond.i180.i = select i1 %cmp.i176.i, i32 %sub.neg.i178.i, i32 %sub.i179.i
  %58 = tail call i32 @llvm.smax.i32(i32 %cond.i180.i, i32 18) #6
  %59 = tail call i32 @llvm.smin.i32(i32 %58, i32 118) #6
  %sub12.i181.i = sub nuw nsw i32 118, %59
  %60 = add nsw i32 %59, -18
  %sub37.i183.i = add nuw nsw i32 %conv.i177.i, 7
  %add41.i184.i = sub nuw nsw i32 543, %conv.i177.i
  %pos_a.0.i185.i = select i1 %cmp21.i172.i, i32 %sub37.i183.i, i32 %add41.i184.i
  %mul43.i186.i = mul nuw nsw i32 %sub12.i181.i, %pos_a.0.i185.i
  %mul44.i187.i = mul nsw i32 %60, %pos_b.0.i175.i
  %add45.i188.i = add nsw i32 %mul44.i187.i, %mul43.i186.i
  %mul46.i189.i = mul nsw i32 %add45.i188.i, 10
  %div48.i190.i = sdiv i32 %add45.i188.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i189.i)
  %cmp49.i191.i = icmp slt i32 %mul46.i189.i, -549
  %add52.i192.i = add nsw i32 %div48.i190.i, 1000
  %ret.0.i193.i = select i1 %cmp49.i191.i, i32 %add52.i192.i, i32 %div48.i190.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i193.i)
  %cmp54.i194.i = icmp sgt i32 %ret.0.i193.i, 999
  %sub57.i195.i = add nsw i32 %ret.0.i193.i, -1000
  %ret.1.i196.i = select i1 %cmp54.i194.i, i32 %sub57.i195.i, i32 %ret.0.i193.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 22, i32 noundef %ret.1.i196.i) #6
  %arrayidx25.i = getelementptr i8, ptr %buf, i32 5
  %61 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx25.i, align 1
  %arrayidx26.i = getelementptr i8, ptr %buf, i32 7
  %63 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx26.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %62)
  %cmp14.i197.i = icmp ult i8 %62, -126
  %conv17.i198.i = zext i8 %64 to i32
  %add30.i199.i = sub nuw nsw i32 405, %conv17.i198.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %64)
  %cmp21.i200.i = icmp ugt i8 %64, -126
  %spec.select.v.i201.i = select i1 %cmp21.i200.i, i32 -131, i32 419
  %spec.select.i202.i = add nsw i32 %spec.select.v.i201.i, %conv17.i198.i
  %pos_b.0.i203.i = select i1 %cmp14.i197.i, i32 %spec.select.i202.i, i32 %add30.i199.i
  br label %sw.epilog.sink.split.i

sw.bb28.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx29.i = getelementptr i8, ptr %buf, i32 22
  %65 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx29.i, align 1
  %arrayidx30.i = getelementptr i8, ptr %buf, i32 21
  %67 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %66)
  %cmp14.i225.i = icmp ult i8 %66, -126
  %conv17.i226.i = zext i8 %68 to i32
  %add30.i227.i = sub nuw nsw i32 405, %conv17.i226.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %68)
  %cmp21.i228.i = icmp ugt i8 %68, -126
  %spec.select.v.i229.i = select i1 %cmp21.i228.i, i32 -131, i32 419
  %spec.select.i230.i = add nsw i32 %spec.select.v.i229.i, %conv17.i226.i
  %pos_b.0.i231.i = select i1 %cmp14.i225.i, i32 %spec.select.i230.i, i32 %add30.i227.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %66)
  %cmp.i232.i = icmp ugt i8 %66, -126
  %conv.i233.i = zext i8 %66 to i32
  %sub.neg.i234.i = add nsw i32 %conv.i233.i, -130
  %sub.i235.i = sub nsw i32 130, %conv.i233.i
  %cond.i236.i = select i1 %cmp.i232.i, i32 %sub.neg.i234.i, i32 %sub.i235.i
  %69 = tail call i32 @llvm.smax.i32(i32 %cond.i236.i, i32 18) #6
  %70 = tail call i32 @llvm.smin.i32(i32 %69, i32 118) #6
  %sub12.i237.i = sub nuw nsw i32 118, %70
  %71 = add nsw i32 %70, -18
  %sub37.i239.i = add nuw nsw i32 %conv.i233.i, 7
  %add41.i240.i = sub nuw nsw i32 543, %conv.i233.i
  %pos_a.0.i241.i = select i1 %cmp21.i228.i, i32 %sub37.i239.i, i32 %add41.i240.i
  %mul43.i242.i = mul nuw nsw i32 %sub12.i237.i, %pos_a.0.i241.i
  %mul44.i243.i = mul nsw i32 %71, %pos_b.0.i231.i
  %add45.i244.i = add nsw i32 %mul44.i243.i, %mul43.i242.i
  %mul46.i245.i = mul nsw i32 %add45.i244.i, 10
  %div48.i246.i = sdiv i32 %add45.i244.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i245.i)
  %cmp49.i247.i = icmp slt i32 %mul46.i245.i, -549
  %add52.i248.i = add nsw i32 %div48.i246.i, 1000
  %ret.0.i249.i = select i1 %cmp49.i247.i, i32 %add52.i248.i, i32 %div48.i246.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i249.i)
  %cmp54.i250.i = icmp sgt i32 %ret.0.i249.i, 999
  %sub57.i251.i = add nsw i32 %ret.0.i249.i, -1000
  %ret.1.i252.i = select i1 %cmp54.i250.i, i32 %sub57.i251.i, i32 %ret.0.i249.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 16, i32 noundef %ret.1.i252.i) #6
  %arrayidx32.i = getelementptr i8, ptr %buf, i32 16
  %72 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx32.i, align 1
  %arrayidx33.i = getelementptr i8, ptr %buf, i32 15
  %74 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx33.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %73)
  %cmp14.i253.i = icmp ult i8 %73, -126
  %conv17.i254.i = zext i8 %75 to i32
  %add30.i255.i = sub nuw nsw i32 405, %conv17.i254.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %75)
  %cmp21.i256.i = icmp ugt i8 %75, -126
  %spec.select.v.i257.i = select i1 %cmp21.i256.i, i32 -131, i32 419
  %spec.select.i258.i = add nsw i32 %spec.select.v.i257.i, %conv17.i254.i
  %pos_b.0.i259.i = select i1 %cmp14.i253.i, i32 %spec.select.i258.i, i32 %add30.i255.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %73)
  %cmp.i260.i = icmp ugt i8 %73, -126
  %conv.i261.i = zext i8 %73 to i32
  %sub.neg.i262.i = add nsw i32 %conv.i261.i, -130
  %sub.i263.i = sub nsw i32 130, %conv.i261.i
  %cond.i264.i = select i1 %cmp.i260.i, i32 %sub.neg.i262.i, i32 %sub.i263.i
  %76 = tail call i32 @llvm.smax.i32(i32 %cond.i264.i, i32 18) #6
  %77 = tail call i32 @llvm.smin.i32(i32 %76, i32 118) #6
  %sub12.i265.i = sub nuw nsw i32 118, %77
  %78 = add nsw i32 %77, -18
  %sub37.i267.i = add nuw nsw i32 %conv.i261.i, 7
  %add41.i268.i = sub nuw nsw i32 543, %conv.i261.i
  %pos_a.0.i269.i = select i1 %cmp21.i256.i, i32 %sub37.i267.i, i32 %add41.i268.i
  %mul43.i270.i = mul nuw nsw i32 %sub12.i265.i, %pos_a.0.i269.i
  %mul44.i271.i = mul nsw i32 %78, %pos_b.0.i259.i
  %add45.i272.i = add nsw i32 %mul44.i271.i, %mul43.i270.i
  %mul46.i273.i = mul nsw i32 %add45.i272.i, 10
  %div48.i274.i = sdiv i32 %add45.i272.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i273.i)
  %cmp49.i275.i = icmp slt i32 %mul46.i273.i, -549
  %add52.i276.i = add nsw i32 %div48.i274.i, 1000
  %ret.0.i277.i = select i1 %cmp49.i275.i, i32 %add52.i276.i, i32 %div48.i274.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i277.i)
  %cmp54.i278.i = icmp sgt i32 %ret.0.i277.i, 999
  %sub57.i279.i = add nsw i32 %ret.0.i277.i, -1000
  %ret.1.i280.i = select i1 %cmp54.i278.i, i32 %sub57.i279.i, i32 %ret.0.i277.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 17, i32 noundef %ret.1.i280.i) #6
  %arrayidx35.i = getelementptr i8, ptr %buf, i32 10
  %79 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx35.i, align 1
  %arrayidx36.i = getelementptr i8, ptr %buf, i32 9
  %81 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %80)
  %cmp14.i281.i = icmp ult i8 %80, -126
  %conv17.i282.i = zext i8 %82 to i32
  %add30.i283.i = sub nuw nsw i32 405, %conv17.i282.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %82)
  %cmp21.i284.i = icmp ugt i8 %82, -126
  %spec.select.v.i285.i = select i1 %cmp21.i284.i, i32 -131, i32 419
  %spec.select.i286.i = add nsw i32 %spec.select.v.i285.i, %conv17.i282.i
  %pos_b.0.i287.i = select i1 %cmp14.i281.i, i32 %spec.select.i286.i, i32 %add30.i283.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %80)
  %cmp.i288.i = icmp ugt i8 %80, -126
  %conv.i289.i = zext i8 %80 to i32
  %sub.neg.i290.i = add nsw i32 %conv.i289.i, -130
  %sub.i291.i = sub nsw i32 130, %conv.i289.i
  %cond.i292.i = select i1 %cmp.i288.i, i32 %sub.neg.i290.i, i32 %sub.i291.i
  %83 = tail call i32 @llvm.smax.i32(i32 %cond.i292.i, i32 18) #6
  %84 = tail call i32 @llvm.smin.i32(i32 %83, i32 118) #6
  %sub12.i293.i = sub nuw nsw i32 118, %84
  %85 = add nsw i32 %84, -18
  %sub37.i295.i = add nuw nsw i32 %conv.i289.i, 7
  %add41.i296.i = sub nuw nsw i32 543, %conv.i289.i
  %pos_a.0.i297.i = select i1 %cmp21.i284.i, i32 %sub37.i295.i, i32 %add41.i296.i
  %mul43.i298.i = mul nuw nsw i32 %sub12.i293.i, %pos_a.0.i297.i
  %mul44.i299.i = mul nsw i32 %85, %pos_b.0.i287.i
  %add45.i300.i = add nsw i32 %mul44.i299.i, %mul43.i298.i
  %mul46.i301.i = mul nsw i32 %add45.i300.i, 10
  %div48.i302.i = sdiv i32 %add45.i300.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i301.i)
  %cmp49.i303.i = icmp slt i32 %mul46.i301.i, -549
  %add52.i304.i = add nsw i32 %div48.i302.i, 1000
  %ret.0.i305.i = select i1 %cmp49.i303.i, i32 %add52.i304.i, i32 %div48.i302.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i305.i)
  %cmp54.i306.i = icmp sgt i32 %ret.0.i305.i, 999
  %sub57.i307.i = add nsw i32 %ret.0.i305.i, -1000
  %ret.1.i308.i = select i1 %cmp54.i306.i, i32 %sub57.i307.i, i32 %ret.0.i305.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 18, i32 noundef %ret.1.i308.i) #6
  %arrayidx38.i = getelementptr i8, ptr %buf, i32 4
  %86 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx38.i, align 1
  %arrayidx39.i = getelementptr i8, ptr %buf, i32 3
  %88 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %87)
  %cmp14.i309.i = icmp ult i8 %87, -126
  %conv17.i310.i = zext i8 %89 to i32
  %add30.i311.i = sub nuw nsw i32 405, %conv17.i310.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %89)
  %cmp21.i312.i = icmp ugt i8 %89, -126
  %spec.select.v.i313.i = select i1 %cmp21.i312.i, i32 -131, i32 419
  %spec.select.i314.i = add nsw i32 %spec.select.v.i313.i, %conv17.i310.i
  %pos_b.0.i315.i = select i1 %cmp14.i309.i, i32 %spec.select.i314.i, i32 %add30.i311.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %87)
  %cmp.i316.i = icmp ugt i8 %87, -126
  %conv.i317.i = zext i8 %87 to i32
  %sub.neg.i318.i = add nsw i32 %conv.i317.i, -130
  %sub.i319.i = sub nsw i32 130, %conv.i317.i
  %cond.i320.i = select i1 %cmp.i316.i, i32 %sub.neg.i318.i, i32 %sub.i319.i
  %90 = tail call i32 @llvm.smax.i32(i32 %cond.i320.i, i32 18) #6
  %91 = tail call i32 @llvm.smin.i32(i32 %90, i32 118) #6
  %sub12.i321.i = sub nuw nsw i32 118, %91
  %92 = add nsw i32 %91, -18
  %sub37.i323.i = add nuw nsw i32 %conv.i317.i, 7
  %add41.i324.i = sub nuw nsw i32 543, %conv.i317.i
  %pos_a.0.i325.i = select i1 %cmp21.i312.i, i32 %sub37.i323.i, i32 %add41.i324.i
  %mul43.i326.i = mul nuw nsw i32 %sub12.i321.i, %pos_a.0.i325.i
  %mul44.i327.i = mul nsw i32 %92, %pos_b.0.i315.i
  %add45.i328.i = add nsw i32 %mul44.i327.i, %mul43.i326.i
  %mul46.i329.i = mul nsw i32 %add45.i328.i, 10
  %div48.i330.i = sdiv i32 %add45.i328.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i329.i)
  %cmp49.i331.i = icmp slt i32 %mul46.i329.i, -549
  %add52.i332.i = add nsw i32 %div48.i330.i, 1000
  %ret.0.i333.i = select i1 %cmp49.i331.i, i32 %add52.i332.i, i32 %div48.i330.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i333.i)
  %cmp54.i334.i = icmp sgt i32 %ret.0.i333.i, 999
  %sub57.i335.i = add nsw i32 %ret.0.i333.i, -1000
  %ret.1.i336.i = select i1 %cmp54.i334.i, i32 %sub57.i335.i, i32 %ret.0.i333.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 19, i32 noundef %ret.1.i336.i) #6
  %arrayidx41.i = getelementptr i8, ptr %buf, i32 20
  %93 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx41.i, align 1
  %arrayidx42.i = getelementptr i8, ptr %buf, i32 19
  %95 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx42.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %94)
  %cmp14.i337.i = icmp ult i8 %94, -126
  %conv17.i338.i = zext i8 %96 to i32
  %add30.i339.i = sub nuw nsw i32 405, %conv17.i338.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %96)
  %cmp21.i340.i = icmp ugt i8 %96, -126
  %spec.select.v.i341.i = select i1 %cmp21.i340.i, i32 -131, i32 419
  %spec.select.i342.i = add nsw i32 %spec.select.v.i341.i, %conv17.i338.i
  %pos_b.0.i343.i = select i1 %cmp14.i337.i, i32 %spec.select.i342.i, i32 %add30.i339.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %94)
  %cmp.i344.i = icmp ugt i8 %94, -126
  %conv.i345.i = zext i8 %94 to i32
  %sub.neg.i346.i = add nsw i32 %conv.i345.i, -130
  %sub.i347.i = sub nsw i32 130, %conv.i345.i
  %cond.i348.i = select i1 %cmp.i344.i, i32 %sub.neg.i346.i, i32 %sub.i347.i
  %97 = tail call i32 @llvm.smax.i32(i32 %cond.i348.i, i32 18) #6
  %98 = tail call i32 @llvm.smin.i32(i32 %97, i32 118) #6
  %sub12.i349.i = sub nuw nsw i32 118, %98
  %99 = add nsw i32 %98, -18
  %sub37.i351.i = add nuw nsw i32 %conv.i345.i, 7
  %add41.i352.i = sub nuw nsw i32 543, %conv.i345.i
  %pos_a.0.i353.i = select i1 %cmp21.i340.i, i32 %sub37.i351.i, i32 %add41.i352.i
  %mul43.i354.i = mul nuw nsw i32 %sub12.i349.i, %pos_a.0.i353.i
  %mul44.i355.i = mul nsw i32 %99, %pos_b.0.i343.i
  %add45.i356.i = add nsw i32 %mul44.i355.i, %mul43.i354.i
  %mul46.i357.i = mul nsw i32 %add45.i356.i, 10
  %div48.i358.i = sdiv i32 %add45.i356.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i357.i)
  %cmp49.i359.i = icmp slt i32 %mul46.i357.i, -549
  %add52.i360.i = add nsw i32 %div48.i358.i, 1000
  %ret.0.i361.i = select i1 %cmp49.i359.i, i32 %add52.i360.i, i32 %div48.i358.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i361.i)
  %cmp54.i362.i = icmp sgt i32 %ret.0.i361.i, 999
  %sub57.i363.i = add nsw i32 %ret.0.i361.i, -1000
  %ret.1.i364.i = select i1 %cmp54.i362.i, i32 %sub57.i363.i, i32 %ret.0.i361.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 20, i32 noundef %ret.1.i364.i) #6
  %arrayidx44.i = getelementptr i8, ptr %buf, i32 14
  %100 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx44.i, align 1
  %arrayidx45.i = getelementptr i8, ptr %buf, i32 13
  %102 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx45.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %101)
  %cmp14.i365.i = icmp ult i8 %101, -126
  %conv17.i366.i = zext i8 %103 to i32
  %add30.i367.i = sub nuw nsw i32 405, %conv17.i366.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %103)
  %cmp21.i368.i = icmp ugt i8 %103, -126
  %spec.select.v.i369.i = select i1 %cmp21.i368.i, i32 -131, i32 419
  %spec.select.i370.i = add nsw i32 %spec.select.v.i369.i, %conv17.i366.i
  %pos_b.0.i371.i = select i1 %cmp14.i365.i, i32 %spec.select.i370.i, i32 %add30.i367.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %101)
  %cmp.i372.i = icmp ugt i8 %101, -126
  %conv.i373.i = zext i8 %101 to i32
  %sub.neg.i374.i = add nsw i32 %conv.i373.i, -130
  %sub.i375.i = sub nsw i32 130, %conv.i373.i
  %cond.i376.i = select i1 %cmp.i372.i, i32 %sub.neg.i374.i, i32 %sub.i375.i
  %104 = tail call i32 @llvm.smax.i32(i32 %cond.i376.i, i32 18) #6
  %105 = tail call i32 @llvm.smin.i32(i32 %104, i32 118) #6
  %sub12.i377.i = sub nuw nsw i32 118, %105
  %106 = add nsw i32 %105, -18
  %sub37.i379.i = add nuw nsw i32 %conv.i373.i, 7
  %add41.i380.i = sub nuw nsw i32 543, %conv.i373.i
  %pos_a.0.i381.i = select i1 %cmp21.i368.i, i32 %sub37.i379.i, i32 %add41.i380.i
  %mul43.i382.i = mul nuw nsw i32 %sub12.i377.i, %pos_a.0.i381.i
  %mul44.i383.i = mul nsw i32 %106, %pos_b.0.i371.i
  %add45.i384.i = add nsw i32 %mul44.i383.i, %mul43.i382.i
  %mul46.i385.i = mul nsw i32 %add45.i384.i, 10
  %div48.i386.i = sdiv i32 %add45.i384.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i385.i)
  %cmp49.i387.i = icmp slt i32 %mul46.i385.i, -549
  %add52.i388.i = add nsw i32 %div48.i386.i, 1000
  %ret.0.i389.i = select i1 %cmp49.i387.i, i32 %add52.i388.i, i32 %div48.i386.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i389.i)
  %cmp54.i390.i = icmp sgt i32 %ret.0.i389.i, 999
  %sub57.i391.i = add nsw i32 %ret.0.i389.i, -1000
  %ret.1.i392.i = select i1 %cmp54.i390.i, i32 %sub57.i391.i, i32 %ret.0.i389.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 21, i32 noundef %ret.1.i392.i) #6
  %arrayidx47.i = getelementptr i8, ptr %buf, i32 8
  %107 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx47.i, align 1
  %arrayidx48.i = getelementptr i8, ptr %buf, i32 7
  %109 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx48.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %108)
  %cmp14.i393.i = icmp ult i8 %108, -126
  %conv17.i394.i = zext i8 %110 to i32
  %add30.i395.i = sub nuw nsw i32 405, %conv17.i394.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %110)
  %cmp21.i396.i = icmp ugt i8 %110, -126
  %spec.select.v.i397.i = select i1 %cmp21.i396.i, i32 -131, i32 419
  %spec.select.i398.i = add nsw i32 %spec.select.v.i397.i, %conv17.i394.i
  %pos_b.0.i399.i = select i1 %cmp14.i393.i, i32 %spec.select.i398.i, i32 %add30.i395.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %108)
  %cmp.i400.i = icmp ugt i8 %108, -126
  %conv.i401.i = zext i8 %108 to i32
  %sub.neg.i402.i = add nsw i32 %conv.i401.i, -130
  %sub.i403.i = sub nsw i32 130, %conv.i401.i
  %cond.i404.i = select i1 %cmp.i400.i, i32 %sub.neg.i402.i, i32 %sub.i403.i
  %111 = tail call i32 @llvm.smax.i32(i32 %cond.i404.i, i32 18) #6
  %112 = tail call i32 @llvm.smin.i32(i32 %111, i32 118) #6
  %sub12.i405.i = sub nuw nsw i32 118, %112
  %113 = add nsw i32 %112, -18
  %sub37.i407.i = add nuw nsw i32 %conv.i401.i, 7
  %add41.i408.i = sub nuw nsw i32 543, %conv.i401.i
  %pos_a.0.i409.i = select i1 %cmp21.i396.i, i32 %sub37.i407.i, i32 %add41.i408.i
  %mul43.i410.i = mul nuw nsw i32 %sub12.i405.i, %pos_a.0.i409.i
  %mul44.i411.i = mul nsw i32 %113, %pos_b.0.i399.i
  %add45.i412.i = add nsw i32 %mul44.i411.i, %mul43.i410.i
  %mul46.i413.i = mul nsw i32 %add45.i412.i, 10
  %div48.i414.i = sdiv i32 %add45.i412.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i413.i)
  %cmp49.i415.i = icmp slt i32 %mul46.i413.i, -549
  %add52.i416.i = add nsw i32 %div48.i414.i, 1000
  %ret.0.i417.i = select i1 %cmp49.i415.i, i32 %add52.i416.i, i32 %div48.i414.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i417.i)
  %cmp54.i418.i = icmp sgt i32 %ret.0.i417.i, 999
  %sub57.i419.i = add nsw i32 %ret.0.i417.i, -1000
  %ret.1.i420.i = select i1 %cmp54.i418.i, i32 %sub57.i419.i, i32 %ret.0.i417.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 22, i32 noundef %ret.1.i420.i) #6
  %arrayidx50.i = getelementptr i8, ptr %buf, i32 2
  %114 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx50.i, align 1
  %116 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %add.ptr2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %115)
  %cmp14.i421.i = icmp ult i8 %115, -126
  %conv17.i422.i = zext i8 %117 to i32
  %add30.i423.i = sub nuw nsw i32 405, %conv17.i422.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %117)
  %cmp21.i424.i = icmp ugt i8 %117, -126
  %spec.select.v.i425.i = select i1 %cmp21.i424.i, i32 -131, i32 419
  %spec.select.i426.i = add nsw i32 %spec.select.v.i425.i, %conv17.i422.i
  %pos_b.0.i427.i = select i1 %cmp14.i421.i, i32 %spec.select.i426.i, i32 %add30.i423.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %115)
  %cmp.i428.i = icmp ugt i8 %115, -126
  %conv.i429.i = zext i8 %115 to i32
  %sub.neg.i430.i = add nsw i32 %conv.i429.i, -130
  %sub.i431.i = sub nsw i32 130, %conv.i429.i
  %cond.i432.i = select i1 %cmp.i428.i, i32 %sub.neg.i430.i, i32 %sub.i431.i
  %118 = tail call i32 @llvm.smax.i32(i32 %cond.i432.i, i32 18) #6
  %119 = tail call i32 @llvm.smin.i32(i32 %118, i32 118) #6
  %sub12.i433.i = sub nuw nsw i32 118, %119
  %120 = add nsw i32 %119, -18
  %sub37.i435.i = add nuw nsw i32 %conv.i429.i, 7
  %add41.i436.i = sub nuw nsw i32 543, %conv.i429.i
  %pos_a.0.i437.i = select i1 %cmp21.i424.i, i32 %sub37.i435.i, i32 %add41.i436.i
  %mul43.i438.i = mul nuw nsw i32 %sub12.i433.i, %pos_a.0.i437.i
  %mul44.i439.i = mul nsw i32 %120, %pos_b.0.i427.i
  %add45.i440.i = add nsw i32 %mul44.i439.i, %mul43.i438.i
  %mul46.i441.i = mul nsw i32 %add45.i440.i, 10
  %div48.i442.i = sdiv i32 %add45.i440.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i441.i)
  %cmp49.i443.i = icmp slt i32 %mul46.i441.i, -549
  %add52.i444.i = add nsw i32 %div48.i442.i, 1000
  %ret.0.i445.i = select i1 %cmp49.i443.i, i32 %add52.i444.i, i32 %div48.i442.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i445.i)
  %cmp54.i446.i = icmp sgt i32 %ret.0.i445.i, 999
  %sub57.i447.i = add nsw i32 %ret.0.i445.i, -1000
  %ret.1.i448.i = select i1 %cmp54.i446.i, i32 %sub57.i447.i, i32 %ret.0.i445.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 23, i32 noundef %ret.1.i448.i) #6
  %arrayidx53.i = getelementptr i8, ptr %buf, i32 18
  %121 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx53.i, align 1
  %arrayidx54.i = getelementptr i8, ptr %buf, i32 17
  %123 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx54.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %122)
  %cmp14.i449.i = icmp ult i8 %122, -126
  %conv17.i450.i = zext i8 %124 to i32
  %add30.i451.i = sub nuw nsw i32 405, %conv17.i450.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %124)
  %cmp21.i452.i = icmp ugt i8 %124, -126
  %spec.select.v.i453.i = select i1 %cmp21.i452.i, i32 -131, i32 419
  %spec.select.i454.i = add nsw i32 %spec.select.v.i453.i, %conv17.i450.i
  %pos_b.0.i455.i = select i1 %cmp14.i449.i, i32 %spec.select.i454.i, i32 %add30.i451.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %122)
  %cmp.i456.i = icmp ugt i8 %122, -126
  %conv.i457.i = zext i8 %122 to i32
  %sub.neg.i458.i = add nsw i32 %conv.i457.i, -130
  %sub.i459.i = sub nsw i32 130, %conv.i457.i
  %cond.i460.i = select i1 %cmp.i456.i, i32 %sub.neg.i458.i, i32 %sub.i459.i
  %125 = tail call i32 @llvm.smax.i32(i32 %cond.i460.i, i32 18) #6
  %126 = tail call i32 @llvm.smin.i32(i32 %125, i32 118) #6
  %sub12.i461.i = sub nuw nsw i32 118, %126
  %127 = add nsw i32 %126, -18
  %sub37.i463.i = add nuw nsw i32 %conv.i457.i, 7
  %add41.i464.i = sub nuw nsw i32 543, %conv.i457.i
  %pos_a.0.i465.i = select i1 %cmp21.i452.i, i32 %sub37.i463.i, i32 %add41.i464.i
  %mul43.i466.i = mul nuw nsw i32 %sub12.i461.i, %pos_a.0.i465.i
  %mul44.i467.i = mul nsw i32 %127, %pos_b.0.i455.i
  %add45.i468.i = add nsw i32 %mul44.i467.i, %mul43.i466.i
  %mul46.i469.i = mul nsw i32 %add45.i468.i, 10
  %div48.i470.i = sdiv i32 %add45.i468.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i469.i)
  %cmp49.i471.i = icmp slt i32 %mul46.i469.i, -549
  %add52.i472.i = add nsw i32 %div48.i470.i, 1000
  %ret.0.i473.i = select i1 %cmp49.i471.i, i32 %add52.i472.i, i32 %div48.i470.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i473.i)
  %cmp54.i474.i = icmp sgt i32 %ret.0.i473.i, 999
  %sub57.i475.i = add nsw i32 %ret.0.i473.i, -1000
  %ret.1.i476.i = select i1 %cmp54.i474.i, i32 %sub57.i475.i, i32 %ret.0.i473.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 3, i32 noundef %ret.1.i476.i) #6
  %arrayidx56.i = getelementptr i8, ptr %buf, i32 12
  %128 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx56.i, align 1
  %arrayidx57.i = getelementptr i8, ptr %buf, i32 11
  %130 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx57.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %129)
  %cmp14.i477.i = icmp ult i8 %129, -126
  %conv17.i478.i = zext i8 %131 to i32
  %add30.i479.i = sub nuw nsw i32 405, %conv17.i478.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %131)
  %cmp21.i480.i = icmp ugt i8 %131, -126
  %spec.select.v.i481.i = select i1 %cmp21.i480.i, i32 -131, i32 419
  %spec.select.i482.i = add nsw i32 %spec.select.v.i481.i, %conv17.i478.i
  %pos_b.0.i483.i = select i1 %cmp14.i477.i, i32 %spec.select.i482.i, i32 %add30.i479.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %129)
  %cmp.i484.i = icmp ugt i8 %129, -126
  %conv.i485.i = zext i8 %129 to i32
  %sub.neg.i486.i = add nsw i32 %conv.i485.i, -130
  %sub.i487.i = sub nsw i32 130, %conv.i485.i
  %cond.i488.i = select i1 %cmp.i484.i, i32 %sub.neg.i486.i, i32 %sub.i487.i
  %132 = tail call i32 @llvm.smax.i32(i32 %cond.i488.i, i32 18) #6
  %133 = tail call i32 @llvm.smin.i32(i32 %132, i32 118) #6
  %sub12.i489.i = sub nuw nsw i32 118, %133
  %134 = add nsw i32 %133, -18
  %sub37.i491.i = add nuw nsw i32 %conv.i485.i, 7
  %add41.i492.i = sub nuw nsw i32 543, %conv.i485.i
  %pos_a.0.i493.i = select i1 %cmp21.i480.i, i32 %sub37.i491.i, i32 %add41.i492.i
  %mul43.i494.i = mul nuw nsw i32 %sub12.i489.i, %pos_a.0.i493.i
  %mul44.i495.i = mul nsw i32 %134, %pos_b.0.i483.i
  %add45.i496.i = add nsw i32 %mul44.i495.i, %mul43.i494.i
  %mul46.i497.i = mul nsw i32 %add45.i496.i, 10
  %div48.i498.i = sdiv i32 %add45.i496.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i497.i)
  %cmp49.i499.i = icmp slt i32 %mul46.i497.i, -549
  %add52.i500.i = add nsw i32 %div48.i498.i, 1000
  %ret.0.i501.i = select i1 %cmp49.i499.i, i32 %add52.i500.i, i32 %div48.i498.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i501.i)
  %cmp54.i502.i = icmp sgt i32 %ret.0.i501.i, 999
  %sub57.i503.i = add nsw i32 %ret.0.i501.i, -1000
  %ret.1.i504.i = select i1 %cmp54.i502.i, i32 %sub57.i503.i, i32 %ret.0.i501.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef 4, i32 noundef %ret.1.i504.i) #6
  %arrayidx59.i = getelementptr i8, ptr %buf, i32 6
  %135 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx59.i, align 1
  %arrayidx60.i = getelementptr i8, ptr %buf, i32 5
  %137 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx60.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %136)
  %cmp14.i505.i = icmp ult i8 %136, -126
  %conv17.i506.i = zext i8 %138 to i32
  %add30.i507.i = sub nuw nsw i32 405, %conv17.i506.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %138)
  %cmp21.i508.i = icmp ugt i8 %138, -126
  %spec.select.v.i509.i = select i1 %cmp21.i508.i, i32 -131, i32 419
  %spec.select.i510.i = add nsw i32 %spec.select.v.i509.i, %conv17.i506.i
  %pos_b.0.i511.i = select i1 %cmp14.i505.i, i32 %spec.select.i510.i, i32 %add30.i507.i
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb28.i, %sw.bb3.i, %sw.bb.i
  %.sink544.i = phi i8 [ %9, %sw.bb.i ], [ %62, %sw.bb3.i ], [ %136, %sw.bb28.i ]
  %cmp21.i.sink.i = phi i1 [ %cmp21.i.i, %sw.bb.i ], [ %cmp21.i200.i, %sw.bb3.i ], [ %cmp21.i508.i, %sw.bb28.i ]
  %pos_b.0.i.sink.i = phi i32 [ %pos_b.0.i.i, %sw.bb.i ], [ %pos_b.0.i203.i, %sw.bb3.i ], [ %pos_b.0.i511.i, %sw.bb28.i ]
  %.sink.i = phi i32 [ 0, %sw.bb.i ], [ 23, %sw.bb3.i ], [ 5, %sw.bb28.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %.sink544.i)
  %cmp.i.i = icmp ugt i8 %.sink544.i, -126
  %conv.i.i = zext i8 %.sink544.i to i32
  %sub.neg.i.i = add nsw i32 %conv.i.i, -130
  %sub.i.i = sub nsw i32 130, %conv.i.i
  %cond.i.i = select i1 %cmp.i.i, i32 %sub.neg.i.i, i32 %sub.i.i
  %139 = tail call i32 @llvm.smax.i32(i32 %cond.i.i, i32 18) #6
  %140 = tail call i32 @llvm.smin.i32(i32 %139, i32 118) #6
  %sub12.i.i = sub nuw nsw i32 118, %140
  %141 = add nsw i32 %140, -18
  %sub37.i.i = add nuw nsw i32 %conv.i.i, 7
  %add41.i.i = sub nuw nsw i32 543, %conv.i.i
  %pos_a.0.i.i = select i1 %cmp21.i.sink.i, i32 %sub37.i.i, i32 %add41.i.i
  %mul43.i.i = mul nuw nsw i32 %sub12.i.i, %pos_a.0.i.i
  %mul44.i.i = mul nsw i32 %141, %pos_b.0.i.sink.i
  %add45.i.i = add nsw i32 %mul44.i.i, %mul43.i.i
  %mul46.i.i = mul nsw i32 %add45.i.i, 10
  %div48.i.i = sdiv i32 %add45.i.i, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -549, i32 %mul46.i.i)
  %cmp49.i.i = icmp slt i32 %mul46.i.i, -549
  %add52.i.i = add nsw i32 %div48.i.i, 1000
  %ret.0.i.i = select i1 %cmp49.i.i, i32 %add52.i.i, i32 %div48.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ret.0.i.i)
  %cmp54.i530.i = icmp sgt i32 %ret.0.i.i, 999
  %sub57.i531.i = add nsw i32 %ret.0.i.i, -1000
  %ret.1.i532.i = select i1 %cmp54.i530.i, i32 %sub57.i531.i, i32 %ret.0.i.i
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 3, i32 noundef %.sink.i, i32 noundef %ret.1.i532.i) #6
  tail call void @input_event(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr5 = getelementptr i8, ptr %buf, i32 1
  %sub6 = add i32 %len, -1
  tail call fastcc void @snd_caiaq_input_read_io(ptr noundef %cdev, ptr noundef %add.ptr5, i32 noundef %sub6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.epilog.sink.split.i, %sw.bb1.sw.epilog_crit_edge, %sw.bb, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_caiaq_input_read_analog(ptr nocapture noundef readonly %cdev, ptr noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input_dev1 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 40
  %0 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev1, align 4
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 4
  %2 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 399251817, label %sw.bb
    i32 399251776, label %entry.sw.bb2_crit_edge
    i32 399263505, label %entry.sw.bb2_crit_edge94
    i32 399263506, label %entry.sw.bb2_crit_edge95
    i32 399254277, label %sw.bb3
  ]

entry.sw.bb2_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr i8, ptr %buf, i32 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %6 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx2.i = getelementptr i8, ptr %buf, i32 5
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %8 to i32
  %or.i = or i32 %shl.i, %conv3.i
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %or.i) #6
  %9 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input_dev1, align 4
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf, align 1
  %conv.i2 = zext i8 %12 to i32
  %shl.i3 = shl nuw nsw i32 %conv.i2, 8
  %arrayidx2.i4 = getelementptr i8, ptr %buf, i32 1
  %13 = ptrtoint ptr %arrayidx2.i4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx2.i4, align 1
  %conv3.i5 = zext i8 %14 to i32
  %or.i6 = or i32 %shl.i3, %conv3.i5
  tail call void @input_event(ptr noundef %10, i32 noundef 3, i32 noundef 1, i32 noundef %or.i6) #6
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge94, %entry.sw.bb2_crit_edge95
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf, align 1
  %conv.i15 = zext i8 %16 to i32
  %shl.i16 = shl nuw nsw i32 %conv.i15, 8
  %arrayidx2.i17 = getelementptr i8, ptr %buf, i32 1
  %17 = ptrtoint ptr %arrayidx2.i17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx2.i17, align 1
  %conv3.i18 = zext i8 %18 to i32
  %or.i19 = or i32 %shl.i16, %conv3.i18
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %or.i19) #6
  %19 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input_dev1, align 4
  %arrayidx.i21 = getelementptr i8, ptr %buf, i32 2
  %21 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i21, align 1
  %conv.i22 = zext i8 %22 to i32
  %shl.i23 = shl nuw nsw i32 %conv.i22, 8
  %arrayidx2.i24 = getelementptr i8, ptr %buf, i32 3
  %23 = ptrtoint ptr %arrayidx2.i24 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx2.i24, align 1
  %conv3.i25 = zext i8 %24 to i32
  %or.i26 = or i32 %shl.i23, %conv3.i25
  tail call void @input_event(ptr noundef %20, i32 noundef 3, i32 noundef 1, i32 noundef %or.i26) #6
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i35 = getelementptr i8, ptr %buf, i32 8
  %25 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i35, align 1
  %conv.i36 = zext i8 %26 to i32
  %shl.i37 = shl nuw nsw i32 %conv.i36, 8
  %arrayidx2.i38 = getelementptr i8, ptr %buf, i32 9
  %27 = ptrtoint ptr %arrayidx2.i38 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx2.i38, align 1
  %conv3.i39 = zext i8 %28 to i32
  %or.i40 = or i32 %shl.i37, %conv3.i39
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 16, i32 noundef %or.i40) #6
  %29 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %input_dev1, align 4
  %arrayidx.i42 = getelementptr i8, ptr %buf, i32 4
  %31 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i42, align 1
  %conv.i43 = zext i8 %32 to i32
  %shl.i44 = shl nuw nsw i32 %conv.i43, 8
  %arrayidx2.i45 = getelementptr i8, ptr %buf, i32 5
  %33 = ptrtoint ptr %arrayidx2.i45 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx2.i45, align 1
  %conv3.i46 = zext i8 %34 to i32
  %or.i47 = or i32 %shl.i44, %conv3.i46
  tail call void @input_event(ptr noundef %30, i32 noundef 3, i32 noundef 17, i32 noundef %or.i47) #6
  %35 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input_dev1, align 4
  %arrayidx.i49 = getelementptr i8, ptr %buf, i32 12
  %37 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i49, align 1
  %conv.i50 = zext i8 %38 to i32
  %shl.i51 = shl nuw nsw i32 %conv.i50, 8
  %arrayidx2.i52 = getelementptr i8, ptr %buf, i32 13
  %39 = ptrtoint ptr %arrayidx2.i52 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx2.i52, align 1
  %conv3.i53 = zext i8 %40 to i32
  %or.i54 = or i32 %shl.i51, %conv3.i53
  tail call void @input_event(ptr noundef %36, i32 noundef 3, i32 noundef 18, i32 noundef %or.i54) #6
  %41 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %input_dev1, align 4
  %arrayidx.i56 = getelementptr i8, ptr %buf, i32 2
  %43 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i56, align 1
  %conv.i57 = zext i8 %44 to i32
  %shl.i58 = shl nuw nsw i32 %conv.i57, 8
  %arrayidx2.i59 = getelementptr i8, ptr %buf, i32 3
  %45 = ptrtoint ptr %arrayidx2.i59 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx2.i59, align 1
  %conv3.i60 = zext i8 %46 to i32
  %or.i61 = or i32 %shl.i58, %conv3.i60
  tail call void @input_event(ptr noundef %42, i32 noundef 3, i32 noundef 19, i32 noundef %or.i61) #6
  %47 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input_dev1, align 4
  %arrayidx.i63 = getelementptr i8, ptr %buf, i32 14
  %49 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i63, align 1
  %conv.i64 = zext i8 %50 to i32
  %shl.i65 = shl nuw nsw i32 %conv.i64, 8
  %arrayidx2.i66 = getelementptr i8, ptr %buf, i32 15
  %51 = ptrtoint ptr %arrayidx2.i66 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx2.i66, align 1
  %conv3.i67 = zext i8 %52 to i32
  %or.i68 = or i32 %shl.i65, %conv3.i67
  tail call void @input_event(ptr noundef %48, i32 noundef 3, i32 noundef 20, i32 noundef %or.i68) #6
  %53 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %input_dev1, align 4
  %55 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %buf, align 1
  %conv.i70 = zext i8 %56 to i32
  %shl.i71 = shl nuw nsw i32 %conv.i70, 8
  %arrayidx2.i72 = getelementptr i8, ptr %buf, i32 1
  %57 = ptrtoint ptr %arrayidx2.i72 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx2.i72, align 1
  %conv3.i73 = zext i8 %58 to i32
  %or.i74 = or i32 %shl.i71, %conv3.i73
  tail call void @input_event(ptr noundef %54, i32 noundef 3, i32 noundef 21, i32 noundef %or.i74) #6
  %59 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %input_dev1, align 4
  %arrayidx.i76 = getelementptr i8, ptr %buf, i32 10
  %61 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i76, align 1
  %conv.i77 = zext i8 %62 to i32
  %shl.i78 = shl nuw nsw i32 %conv.i77, 8
  %arrayidx2.i79 = getelementptr i8, ptr %buf, i32 11
  %63 = ptrtoint ptr %arrayidx2.i79 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx2.i79, align 1
  %conv3.i80 = zext i8 %64 to i32
  %or.i81 = or i32 %shl.i78, %conv3.i80
  tail call void @input_event(ptr noundef %60, i32 noundef 3, i32 noundef 22, i32 noundef %or.i81) #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %sw.bb2, %sw.bb
  %.sink93 = phi i32 [ 6, %sw.bb3 ], [ 4, %sw.bb2 ], [ 2, %sw.bb ]
  %.sink91 = phi i32 [ 7, %sw.bb3 ], [ 5, %sw.bb2 ], [ 3, %sw.bb ]
  %.sink89 = phi i32 [ 23, %sw.bb3 ], [ 2, %sw.bb2 ], [ 2, %sw.bb ]
  %65 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %input_dev1, align 4
  %arrayidx.i83 = getelementptr i8, ptr %buf, i32 %.sink93
  %67 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i83, align 1
  %conv.i84 = zext i8 %68 to i32
  %shl.i85 = shl nuw nsw i32 %conv.i84, 8
  %arrayidx2.i86 = getelementptr i8, ptr %buf, i32 %.sink91
  %69 = ptrtoint ptr %arrayidx2.i86 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx2.i86, align 1
  %conv3.i87 = zext i8 %70 to i32
  %or.i88 = or i32 %shl.i85, %conv3.i87
  tail call void @input_event(ptr noundef %66, i32 noundef 3, i32 noundef %.sink89, i32 noundef %or.i88) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_caiaq_input_read_io(ptr nocapture noundef readonly %cdev, ptr nocapture noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input_dev1 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 40
  %0 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev1, align 4
  %keycode2 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %keycode2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %keycode2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %product = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6505, i16 %5)
  %cmp = icmp eq i16 %5, 6505
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp574 = icmp ne i32 %len, 0
  %or.cond80 = and i1 %cmp, %cmp574
  br i1 %or.cond80, label %if.end.for.body_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.075 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.075
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %neg = xor i8 %7, -1
  store i8 %neg, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.if.end10_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %for.body.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 15
  %mul = shl i32 %len, 3
  %8 = ptrtoint ptr %keycodemax to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %keycodemax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1276 = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp1477 = icmp ne i32 %mul, 0
  %or.cond78 = and i1 %cmp1477, %cmp1276
  br i1 %or.cond78, label %if.end10.for.body16_crit_edge, label %if.end10.for.end23_crit_edge

if.end10.for.end23_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end23

if.end10.for.body16_crit_edge:                    ; preds = %if.end10
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %if.end10.for.body16_crit_edge
  %i.179 = phi i32 [ %inc22, %for.body16.for.body16_crit_edge ], [ 0, %if.end10.for.body16_crit_edge ]
  %arrayidx17 = getelementptr i16, ptr %3, i32 %i.179
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %11 to i32
  %div = sdiv i32 %i.179, 8
  %arrayidx19 = getelementptr i8, ptr %buf, i32 %div
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %13 to i32
  %rem73 = and i32 %i.179, 7
  %14 = lshr i32 %conv20, %rem73
  %15 = and i32 %14, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv18, i32 noundef %15) #6
  %inc22 = add nuw i32 %i.179, 1
  %16 = ptrtoint ptr %keycodemax to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %keycodemax, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc22, i32 %17)
  %cmp12 = icmp ult i32 %inc22, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %inc22, i32 %mul)
  %cmp14 = icmp ult i32 %inc22, %mul
  %or.cond = and i1 %cmp14, %cmp12
  br i1 %or.cond, label %for.body16.for.body16_crit_edge, label %for.body16.for.end23_crit_edge

for.body16.for.end23_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end23

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16

for.end23:                                        ; preds = %for.body16.for.end23_crit_edge, %if.end10.for.end23_crit_edge
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 4
  %18 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usb_id, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %19, label %for.end23.sw.epilog_crit_edge [
    i32 399263505, label %for.end23.sw.bb_crit_edge
    i32 399263506, label %for.end23.sw.bb_crit_edge83
    i32 399254277, label %sw.bb27
  ]

for.end23.sw.bb_crit_edge83:                      ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.end23.sw.bb_crit_edge:                        ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.end23.sw.epilog_crit_edge:                    ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end23.sw.bb_crit_edge, %for.end23.sw.bb_crit_edge83
  %arrayidx25 = getelementptr i8, ptr %buf, i32 4
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx25, align 1
  %23 = xor i8 %22, -1
  br label %sw.epilog.sink.split

sw.bb27:                                          ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input_dev1, align 4
  %arrayidx29 = getelementptr i8, ptr %buf, i32 5
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx29, align 1
  %28 = and i8 %27, 15
  %and31 = zext i8 %28 to i32
  tail call void @input_event(ptr noundef %25, i32 noundef 3, i32 noundef 0, i32 noundef %and31) #6
  %29 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %input_dev1, align 4
  %31 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx29, align 1
  %33 = lshr i8 %32, 4
  %34 = zext i8 %33 to i32
  tail call void @input_event(ptr noundef %30, i32 noundef 3, i32 noundef 1, i32 noundef %34) #6
  %35 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input_dev1, align 4
  %arrayidx36 = getelementptr i8, ptr %buf, i32 6
  %37 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx36, align 1
  %39 = and i8 %38, 15
  %and38 = zext i8 %39 to i32
  tail call void @input_event(ptr noundef %36, i32 noundef 3, i32 noundef 2, i32 noundef %and38) #6
  %40 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx36, align 1
  %42 = lshr i8 %41, 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb27, %sw.bb
  %.sink82 = phi i8 [ %42, %sw.bb27 ], [ %23, %sw.bb ]
  %43 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.sink = load ptr, ptr %input_dev1, align 4
  %44 = zext i8 %.sink82 to i32
  tail call void @input_event(ptr noundef %.sink, i32 noundef 3, i32 noundef 40, i32 noundef %44) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.end23.sw.epilog_crit_edge
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_caiaq_input_init(ptr noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @input_allocate_device() #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %phys = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 41
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.1, ptr noundef %5, ptr noundef %devpath.i) #6
  %call4 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str, i32 noundef 64) #6
  %product_name = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 17
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %product_name, ptr %call, align 8
  %phys8 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %phys8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %phys, ptr %phys8, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 3, ptr %id, align 2
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 7
  %9 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %idVendor.i, align 8
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #6
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %vendor.i, align 2
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 8
  %13 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idProduct.i, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #6
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %product.i, align 2
  %bcdDevice.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 9
  %17 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bcdDevice.i, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #6
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %version.i, align 2
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %parent = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev9, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cdev, ptr %driver_data.i.i, align 4
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 4
  %23 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usb_id, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %24, label %if.end.exit_free_idev_crit_edge [
    i32 399251817, label %sw.bb
    i32 399251776, label %sw.bb15
    i32 399247381, label %sw.bb27
    i32 399263505, label %if.end.sw.bb39_crit_edge
    i32 399263506, label %if.end.sw.bb39_crit_edge411
    i32 399254277, label %sw.bb53
    i32 399293183, label %sw.bb84
    i32 399247368, label %sw.bb149
  ]

if.end.sw.bb39_crit_edge411:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb39

if.end.sw.bb39_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb39

if.end.exit_free_idev_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_idev

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 5
  %26 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 10, ptr %evbit, align 8
  %absbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 8
  %27 = ptrtoint ptr %absbit to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 7, ptr %absbit, align 8
  %keycode = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 42
  %28 = call ptr @memcpy(ptr %keycode, ptr @keycode_rk2, i32 14)
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 15
  %29 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7, ptr %keycodemax, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 2, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 10) #6
  %call14 = tail call i32 @snd_usb_caiaq_set_auto_msg(ptr noundef %cdev, i32 noundef 1, i32 noundef 10, i32 noundef 0) #6
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %evbit16 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 5
  %30 = ptrtoint ptr %evbit16 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 10, ptr %evbit16, align 8
  %absbit18 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 8
  %31 = ptrtoint ptr %absbit18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7, ptr %absbit18, align 8
  %keycode23 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 42
  %32 = call ptr @memcpy(ptr %keycode23, ptr @keycode_rk3, i32 18)
  %keycodemax25 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 15
  %33 = ptrtoint ptr %keycodemax25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 9, ptr %keycodemax25, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0, i32 noundef 1024, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 0, i32 noundef 1024, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 2, i32 noundef 0, i32 noundef 1024, i32 noundef 0, i32 noundef 10) #6
  %call26 = tail call i32 @snd_usb_caiaq_set_auto_msg(ptr noundef %cdev, i32 noundef 1, i32 noundef 10, i32 noundef 0) #6
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %evbit28 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 5
  %34 = ptrtoint ptr %evbit28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 10, ptr %evbit28, align 8
  %absbit30 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 8
  %35 = ptrtoint ptr %absbit30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %absbit30, align 8
  %keycode35 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 42
  %36 = call ptr @memcpy(ptr %keycode35, ptr @keycode_ak1, i32 6)
  %keycodemax37 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 15
  %37 = ptrtoint ptr %keycodemax37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %keycodemax37, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  %call38 = tail call i32 @snd_usb_caiaq_set_auto_msg(ptr noundef %cdev, i32 noundef 1, i32 noundef 0, i32 noundef 5) #6
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end.sw.bb39_crit_edge, %if.end.sw.bb39_crit_edge411
  %evbit40 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 5
  %38 = ptrtoint ptr %evbit40 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 10, ptr %evbit40, align 8
  %absbit42 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 8
  %39 = ptrtoint ptr %absbit42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16711687, ptr %absbit42, align 8
  %arrayidx45 = getelementptr %struct.input_dev, ptr %call, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx45, align 4
  %or = or i32 %41, 256
  store i32 %or, ptr %arrayidx45, align 4
  %keycode49 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 42
  %42 = call ptr @memcpy(ptr %keycode49, ptr @keycode_kore, i32 64)
  %keycodemax51 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 15
  %43 = ptrtoint ptr %keycodemax51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 32, ptr %keycodemax51, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 16, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 17, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 18, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 19, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 20, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 21, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 22, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 23, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 2, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 40, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 1) #6
  %call52 = tail call i32 @snd_usb_caiaq_set_auto_msg(ptr noundef %cdev, i32 noundef 1, i32 noundef 10, i32 noundef 5) #6
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end
  %evbit54 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 5
  %44 = ptrtoint ptr %evbit54 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 10, ptr %evbit54, align 8
  %absbit56 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 8
  %45 = ptrtoint ptr %absbit56 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 16711687, ptr %absbit56, align 8
  %arrayidx59 = getelementptr %struct.input_dev, ptr %call, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx59, align 4
  %or60 = or i32 %47, 256
  store i32 %or60, ptr %arrayidx59, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb53
  %i.0403 = phi i32 [ 0, %sw.bb53 ], [ %inc, %for.body.for.body_crit_edge ]
  %48 = trunc i32 %i.0403 to i16
  %conv = add i16 %48, 256
  %arrayidx65 = getelementptr %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 42, i32 %i.0403
  %49 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv, ptr %arrayidx65, align 2
  %inc = add nuw nsw i32 %i.0403, 1
  %exitcond410.not = icmp eq i32 %inc, 40
  br i1 %exitcond410.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %keycodemax66 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 15
  %50 = ptrtoint ptr %keycodemax66 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 40, ptr %keycodemax66, align 4
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 16, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 17, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 18, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 19, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 20, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 21, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 22, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 23, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 0, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 1, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 2, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 40, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  %call67 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #6
  %ep4_in_urb = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 43
  %51 = ptrtoint ptr %ep4_in_urb to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call67, ptr %ep4_in_urb, align 8
  %tobool69.not = icmp eq ptr %call67, null
  br i1 %tobool69.not, label %for.end.exit_free_idev_crit_edge, label %if.end71

for.end.exit_free_idev_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_idev

if.end71:                                         ; preds = %for.end
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %1, align 8
  %shl.i379 = shl i32 %53, 8
  %or75 = or i32 %shl.i379, -1073610624
  %ep4_in_buf = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 44
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call67, i32 0, i32 8
  %54 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %1, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call67, i32 0, i32 10
  %55 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or75, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call67, i32 0, i32 14
  %56 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %ep4_in_buf, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call67, i32 0, i32 19
  %57 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 512, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call67, i32 0, i32 28
  %58 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @snd_usb_caiaq_ep4_reply_dispatch, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call67, i32 0, i32 27
  %59 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %cdev, ptr %context4.i, align 4
  %60 = ptrtoint ptr %ep4_in_urb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ep4_in_urb, align 8
  %call78 = tail call i32 @usb_urb_ep_type_check(ptr noundef %61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end71.exit_free_idev_crit_edge, label %if.end82

if.end71.exit_free_idev_crit_edge:                ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_idev

if.end82:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %call83 = tail call i32 @snd_usb_caiaq_set_auto_msg(ptr noundef %cdev, i32 noundef 1, i32 noundef 10, i32 noundef 5) #6
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end
  %evbit85 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 5
  %62 = ptrtoint ptr %evbit85 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 10, ptr %evbit85, align 8
  br label %for.body93

for.body93:                                       ; preds = %for.body93.for.body93_crit_edge, %sw.bb84
  %i.1399 = phi i32 [ 0, %sw.bb84 ], [ %inc99, %for.body93.for.body93_crit_edge ]
  %63 = trunc i32 %i.1399 to i16
  %conv95 = add i16 %63, 256
  %arrayidx97 = getelementptr %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 42, i32 %i.1399
  %64 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv95, ptr %arrayidx97, align 2
  %inc99 = add nuw nsw i32 %i.1399, 1
  %exitcond406.not = icmp eq i32 %inc99, 96
  br i1 %exitcond406.not, label %for.end100, label %for.body93.for.body93_crit_edge

for.body93.for.body93_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body93

for.end100:                                       ; preds = %for.body93
  %keycodemax101 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 15
  %65 = ptrtoint ptr %keycodemax101 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 96, ptr %keycodemax101, align 4
  br label %for.body105

for.body105:                                      ; preds = %for.body105.for.body105_crit_edge, %for.end100
  %i.2400 = phi i32 [ 0, %for.end100 ], [ %inc111, %for.body105.for.body105_crit_edge ]
  %add106 = add nuw nsw i32 %i.2400, 16
  %rem378 = and i32 %add106, 31
  %shl = shl nuw i32 1, %rem378
  %div397 = lshr i32 %add106, 5
  %arrayidx108 = getelementptr %struct.input_dev, ptr %call, i32 0, i32 8, i32 %div397
  %66 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx108, align 4
  %or109 = or i32 %67, %shl
  store i32 %or109, ptr %arrayidx108, align 4
  %inc111 = add nuw nsw i32 %i.2400, 1
  %exitcond407.not = icmp eq i32 %inc111, 46
  br i1 %exitcond407.not, label %for.body105.for.body116_crit_edge, label %for.body105.for.body105_crit_edge

for.body105.for.body105_crit_edge:                ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body105

for.body105.for.body116_crit_edge:                ; preds = %for.body105
  br label %for.body116

for.body116:                                      ; preds = %for.body116.for.body116_crit_edge, %for.body105.for.body116_crit_edge
  %i.3401 = phi i32 [ %inc119, %for.body116.for.body116_crit_edge ], [ 0, %for.body105.for.body116_crit_edge ]
  %add117 = add nuw nsw i32 %i.3401, 16
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef %add117, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 10) #6
  %inc119 = add nuw nsw i32 %i.3401, 1
  %exitcond408.not = icmp eq i32 %inc119, 36
  br i1 %exitcond408.not, label %for.end120, label %for.body116.for.body116_crit_edge

for.body116.for.body116_crit_edge:                ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body116

for.end120:                                       ; preds = %for.body116
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 52, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 1) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 53, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 1) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 54, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 55, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 56, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 57, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 58, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 59, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 60, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 61, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 62, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  %call130 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #6
  %ep4_in_urb131 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 43
  %68 = ptrtoint ptr %ep4_in_urb131 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call130, ptr %ep4_in_urb131, align 8
  %tobool133.not = icmp eq ptr %call130, null
  br i1 %tobool133.not, label %for.end120.exit_free_idev_crit_edge, label %if.end135

for.end120.exit_free_idev_crit_edge:              ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_idev

if.end135:                                        ; preds = %for.end120
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %1, align 8
  %shl.i381 = shl i32 %70, 8
  %or139 = or i32 %shl.i381, -1073610624
  %ep4_in_buf140 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 44
  %dev1.i383 = getelementptr inbounds %struct.urb, ptr %call130, i32 0, i32 8
  %71 = ptrtoint ptr %dev1.i383 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %1, ptr %dev1.i383, align 4
  %pipe2.i384 = getelementptr inbounds %struct.urb, ptr %call130, i32 0, i32 10
  %72 = ptrtoint ptr %pipe2.i384 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or139, ptr %pipe2.i384, align 4
  %transfer_buffer3.i385 = getelementptr inbounds %struct.urb, ptr %call130, i32 0, i32 14
  %73 = ptrtoint ptr %transfer_buffer3.i385 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %ep4_in_buf140, ptr %transfer_buffer3.i385, align 4
  %transfer_buffer_length.i386 = getelementptr inbounds %struct.urb, ptr %call130, i32 0, i32 19
  %74 = ptrtoint ptr %transfer_buffer_length.i386 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 512, ptr %transfer_buffer_length.i386, align 4
  %complete.i387 = getelementptr inbounds %struct.urb, ptr %call130, i32 0, i32 28
  %75 = ptrtoint ptr %complete.i387 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @snd_usb_caiaq_ep4_reply_dispatch, ptr %complete.i387, align 4
  %context4.i388 = getelementptr inbounds %struct.urb, ptr %call130, i32 0, i32 27
  %76 = ptrtoint ptr %context4.i388 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %cdev, ptr %context4.i388, align 4
  %77 = ptrtoint ptr %ep4_in_urb131 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ep4_in_urb131, align 8
  %call143 = tail call i32 @usb_urb_ep_type_check(ptr noundef %78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.end135.exit_free_idev_crit_edge, label %if.end147

if.end135.exit_free_idev_crit_edge:               ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_idev

if.end147:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  %call148 = tail call i32 @snd_usb_caiaq_set_auto_msg(ptr noundef %cdev, i32 noundef 1, i32 noundef 10, i32 noundef 5) #6
  br label %sw.epilog

sw.bb149:                                         ; preds = %if.end
  %evbit150 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 5
  %79 = ptrtoint ptr %evbit150 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 10, ptr %evbit150, align 8
  %absbit152 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 8
  %80 = ptrtoint ptr %absbit152 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 16711736, ptr %absbit152, align 8
  %keycode157 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 42
  %81 = call ptr @memcpy(ptr %keycode157, ptr @keycode_maschine, i32 84)
  %keycodemax159 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 15
  %82 = ptrtoint ptr %keycodemax159 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 42, ptr %keycodemax159, align 4
  br label %for.body163

for.body163:                                      ; preds = %for.body163.for.body163_crit_edge, %sw.bb149
  %i.5398 = phi i32 [ 0, %sw.bb149 ], [ %inc170, %for.body163.for.body163_crit_edge ]
  %add164 = add nuw nsw i32 %i.5398, 24
  %83 = ptrtoint ptr %absbit152 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %absbit152, align 8
  %or167 = or i32 %84, %add164
  store i32 %or167, ptr %absbit152, align 8
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef %add164, i32 noundef 0, i32 noundef 4095, i32 noundef 5, i32 noundef 10) #6
  %inc170 = add nuw nsw i32 %i.5398, 1
  %exitcond.not = icmp eq i32 %inc170, 16
  br i1 %exitcond.not, label %for.end171, label %for.body163.for.body163_crit_edge

for.body163.for.body163_crit_edge:                ; preds = %for.body163
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body163

for.end171:                                       ; preds = %for.body163
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 16, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 17, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 18, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 19, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 20, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 21, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 22, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 23, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 3, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 4, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  tail call void @input_set_abs_params(ptr noundef %call, i32 noundef 5, i32 noundef 0, i32 noundef 999, i32 noundef 0, i32 noundef 10) #6
  %call172 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #6
  %ep4_in_urb173 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 43
  %85 = ptrtoint ptr %ep4_in_urb173 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call172, ptr %ep4_in_urb173, align 8
  %tobool175.not = icmp eq ptr %call172, null
  br i1 %tobool175.not, label %for.end171.exit_free_idev_crit_edge, label %if.end177

for.end171.exit_free_idev_crit_edge:              ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_idev

if.end177:                                        ; preds = %for.end171
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %1, align 8
  %shl.i389 = shl i32 %87, 8
  %or181 = or i32 %shl.i389, -1073610624
  %ep4_in_buf182 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 44
  %dev1.i391 = getelementptr inbounds %struct.urb, ptr %call172, i32 0, i32 8
  %88 = ptrtoint ptr %dev1.i391 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %1, ptr %dev1.i391, align 4
  %pipe2.i392 = getelementptr inbounds %struct.urb, ptr %call172, i32 0, i32 10
  %89 = ptrtoint ptr %pipe2.i392 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or181, ptr %pipe2.i392, align 4
  %transfer_buffer3.i393 = getelementptr inbounds %struct.urb, ptr %call172, i32 0, i32 14
  %90 = ptrtoint ptr %transfer_buffer3.i393 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %ep4_in_buf182, ptr %transfer_buffer3.i393, align 4
  %transfer_buffer_length.i394 = getelementptr inbounds %struct.urb, ptr %call172, i32 0, i32 19
  %91 = ptrtoint ptr %transfer_buffer_length.i394 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 512, ptr %transfer_buffer_length.i394, align 4
  %complete.i395 = getelementptr inbounds %struct.urb, ptr %call172, i32 0, i32 28
  %92 = ptrtoint ptr %complete.i395 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @snd_usb_caiaq_ep4_reply_dispatch, ptr %complete.i395, align 4
  %context4.i396 = getelementptr inbounds %struct.urb, ptr %call172, i32 0, i32 27
  %93 = ptrtoint ptr %context4.i396 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %cdev, ptr %context4.i396, align 4
  %94 = ptrtoint ptr %ep4_in_urb173 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ep4_in_urb173, align 8
  %call185 = tail call i32 @usb_urb_ep_type_check(ptr noundef %95) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %cmp186 = icmp slt i32 %call185, 0
  br i1 %cmp186, label %if.end177.exit_free_idev_crit_edge, label %if.end189

if.end177.exit_free_idev_crit_edge:               ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_idev

if.end189:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  %call190 = tail call i32 @snd_usb_caiaq_set_auto_msg(ptr noundef %cdev, i32 noundef 1, i32 noundef 10, i32 noundef 5) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end189, %if.end147, %if.end82, %sw.bb39, %sw.bb27, %sw.bb15, %sw.bb
  %open = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 31
  %96 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @snd_usb_caiaq_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 32
  %97 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @snd_usb_caiaq_input_close, ptr %close, align 4
  %keycode191 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 42
  %keycode193 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 17
  %98 = ptrtoint ptr %keycode193 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %keycode191, ptr %keycode193, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 16
  %99 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2, ptr %keycodesize, align 8
  %keycodemax195 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 15
  %100 = ptrtoint ptr %keycodemax195 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %keycodemax195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp196404.not = icmp eq i32 %101, 0
  br i1 %cmp196404.not, label %sw.epilog.for.end205_crit_edge, label %for.body198.lr.ph

sw.epilog.for.end205_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end205

for.body198.lr.ph:                                ; preds = %sw.epilog
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 6
  br label %for.body198

for.body198:                                      ; preds = %for.body198.for.body198_crit_edge, %for.body198.lr.ph
  %i.6405 = phi i32 [ 0, %for.body198.lr.ph ], [ %inc204, %for.body198.for.body198_crit_edge ]
  %arrayidx200 = getelementptr %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 42, i32 %i.6405
  %102 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx200, align 2
  %conv201 = zext i16 %103 to i32
  %rem.i = and i32 %conv201, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv201, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %104 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %105
  store i32 %or.i, ptr %add.ptr.i, align 4
  %inc204 = add nuw i32 %i.6405, 1
  %106 = ptrtoint ptr %keycodemax195 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %keycodemax195, align 4
  %cmp196 = icmp ult i32 %inc204, %107
  br i1 %cmp196, label %for.body198.for.body198_crit_edge, label %for.body198.for.end205_crit_edge

for.body198.for.end205_crit_edge:                 ; preds = %for.body198
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end205

for.body198.for.body198_crit_edge:                ; preds = %for.body198
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body198

for.end205:                                       ; preds = %for.body198.for.end205_crit_edge, %sw.epilog.for.end205_crit_edge
  %input_dev = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 40
  %108 = ptrtoint ptr %input_dev to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call, ptr %input_dev, align 4
  %call206 = tail call i32 @input_register_device(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %cmp207 = icmp slt i32 %call206, 0
  br i1 %cmp207, label %for.end205.exit_free_idev_crit_edge, label %for.end205.cleanup_crit_edge

for.end205.cleanup_crit_edge:                     ; preds = %for.end205
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end205.exit_free_idev_crit_edge:              ; preds = %for.end205
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_idev

exit_free_idev:                                   ; preds = %for.end205.exit_free_idev_crit_edge, %if.end177.exit_free_idev_crit_edge, %for.end171.exit_free_idev_crit_edge, %if.end135.exit_free_idev_crit_edge, %for.end120.exit_free_idev_crit_edge, %if.end71.exit_free_idev_crit_edge, %for.end.exit_free_idev_crit_edge, %if.end.exit_free_idev_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.exit_free_idev_crit_edge ], [ %call185, %if.end177.exit_free_idev_crit_edge ], [ %call206, %for.end205.exit_free_idev_crit_edge ], [ %call143, %if.end135.exit_free_idev_crit_edge ], [ %call78, %if.end71.exit_free_idev_crit_edge ], [ -12, %for.end.exit_free_idev_crit_edge ], [ -12, %for.end120.exit_free_idev_crit_edge ], [ -12, %for.end171.exit_free_idev_crit_edge ]
  tail call void @input_free_device(ptr noundef %call) #6
  %input_dev211 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 40
  %109 = ptrtoint ptr %input_dev211 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %input_dev211, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit_free_idev, %for.end205.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit_free_idev ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end205.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_caiaq_set_auto_msg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usb_caiaq_ep4_reply_dispatch(ptr noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %dev1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  %tobool3.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false4:                                   ; preds = %entry
  %ep4_in_urb = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 43
  %8 = ptrtoint ptr %ep4_in_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep4_in_urb, align 8
  %cmp.not = icmp eq ptr %9, %urb
  br i1 %cmp.not, label %if.end, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usb_id, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %11, label %if.end.requeue_crit_edge [
    i32 399254277, label %sw.bb
    i32 399293183, label %sw.bb18
    i32 399247368, label %sw.bb20
  ]

if.end.requeue_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %requeue

sw.bb:                                            ; preds = %if.end
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %14)
  %cmp5 = icmp ult i32 %14, 24
  br i1 %cmp5, label %sw.bb.requeue_crit_edge, label %if.end7

sw.bb.requeue_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %requeue

if.end7:                                          ; preds = %sw.bb
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 1
  %17 = and i8 %16, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %3, i32 1
  tail call fastcc void @snd_caiaq_input_read_io(ptr noundef nonnull %1, ptr noundef %add.ptr, i32 noundef 7)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %3, align 1
  %20 = and i8 %19, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool14.not = icmp eq i8 %20, 0
  br i1 %tobool14.not, label %if.end10.requeue_crit_edge, label %if.then15

if.end10.requeue_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %requeue

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr16 = getelementptr i8, ptr %3, i32 8
  tail call fastcc void @snd_caiaq_input_read_analog(ptr noundef nonnull %1, ptr noundef %add.ptr16)
  br label %requeue

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %actual_length19 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %21 = ptrtoint ptr %actual_length19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual_length19, align 4
  tail call fastcc void @snd_usb_caiaq_tks4_dispatch(ptr noundef nonnull %1, ptr noundef %3, i32 noundef %22)
  br label %requeue

sw.bb20:                                          ; preds = %if.end
  %actual_length21 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %23 = ptrtoint ptr %actual_length21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %actual_length21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %cmp22 = icmp ult i32 %24, 32
  br i1 %cmp22, label %sw.bb20.requeue_crit_edge, label %if.end25

sw.bb20.requeue_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %requeue

if.end25:                                         ; preds = %sw.bb20
  %input_dev.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 40
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end25
  %pressure.02.i = phi ptr [ %3, %if.end25 ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %i.01.i = phi i32 [ 0, %if.end25 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %pressure.02.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pressure.02.i, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #6
  %conv.i = zext i16 %27 to i32
  %28 = lshr i32 %conv.i, 12
  %29 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %input_dev.i, align 4
  %add.i = add nuw nsw i32 %28, 24
  %and.i = and i32 %conv.i, 4095
  tail call void @input_event(ptr noundef %30, i32 noundef 3, i32 noundef %add.i, i32 noundef %and.i) #6
  %incdec.ptr.i = getelementptr i16, ptr %pressure.02.i, i32 1
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %snd_usb_caiaq_maschine_dispatch.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

snd_usb_caiaq_maschine_dispatch.exit:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input_dev.i, align 4
  tail call void @input_event(ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %requeue

requeue:                                          ; preds = %snd_usb_caiaq_maschine_dispatch.exit, %sw.bb20.requeue_crit_edge, %sw.bb18, %if.then15, %if.end10.requeue_crit_edge, %sw.bb.requeue_crit_edge, %if.end.requeue_crit_edge
  %33 = ptrtoint ptr %ep4_in_urb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ep4_in_urb, align 8
  %actual_length28 = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 20
  %35 = ptrtoint ptr %actual_length28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %actual_length28, align 4
  %36 = load ptr, ptr %ep4_in_urb, align 8
  %call = tail call i32 @usb_submit_urb(ptr noundef %36, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp30 = icmp slt i32 %call, 0
  br i1 %cmp30, label %do.end, label %requeue.cleanup_crit_edge

requeue.cleanup_crit_edge:                        ; preds = %requeue
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %requeue
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.2) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %requeue.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_ep_type_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_caiaq_input_open(ptr nocapture noundef readonly %idev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %3, label %if.end.sw.epilog_crit_edge [
    i32 399254277, label %if.end.sw.bb_crit_edge
    i32 399293183, label %if.end.sw.bb_crit_edge6
    i32 399247368, label %if.end.sw.bb_crit_edge7
  ]

if.end.sw.bb_crit_edge7:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge6:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge6, %if.end.sw.bb_crit_edge7
  %ep4_in_urb = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 43
  %5 = ptrtoint ptr %ep4_in_urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep4_in_urb, align 8
  %call1 = tail call i32 @usb_submit_urb(ptr noundef %6, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -5, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usb_caiaq_input_close(ptr nocapture noundef readonly %idev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 399254277, label %if.end.sw.bb_crit_edge
    i32 399293183, label %if.end.sw.bb_crit_edge3
    i32 399247368, label %if.end.sw.bb_crit_edge4
  ]

if.end.sw.bb_crit_edge4:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge3:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge3, %if.end.sw.bb_crit_edge4
  %ep4_in_urb = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 43
  %5 = ptrtoint ptr %ep4_in_urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep4_in_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_caiaq_input_free(ptr noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cdev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %input_dev = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 40
  %0 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %ep4_in_urb = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 43
  %2 = ptrtoint ptr %ep4_in_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep4_in_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %3) #6
  %4 = ptrtoint ptr %ep4_in_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep4_in_urb, align 8
  tail call void @usb_free_urb(ptr noundef %5) #6
  %6 = ptrtoint ptr %ep4_in_urb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ep4_in_urb, align 8
  %7 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input_dev, align 4
  tail call void @input_unregister_device(ptr noundef %8) #6
  %9 = ptrtoint ptr %input_dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %input_dev, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_usb_caiaq_tks4_dispatch(ptr noundef readonly %cdev, ptr noundef readonly %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 2
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %dev1 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not433 = icmp eq i32 %len, 0
  br i1 %tobool.not433, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %input_dev.i393 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 40
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.0435 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %sw.epilog.while.body_crit_edge ]
  %len.addr.0434 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %sw.epilog.while.body_crit_edge ]
  %4 = ptrtoint ptr %buf.addr.0435 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf.addr.0435, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx2 = getelementptr i8, ptr %buf.addr.0435, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %or = or i32 %shl, %conv3
  %trunc = trunc i32 %or to i16
  %8 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %trunc, label %do.body [
    i16 0, label %while.body.for.body_crit_edge
    i16 1, label %sw.bb8
    i16 2, label %sw.bb61
    i16 3, label %sw.bb62
    i16 4, label %sw.bb63
    i16 5, label %sw.bb64
    i16 6, label %sw.bb65
    i16 7, label %sw.bb66
  ]

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body.for.body_crit_edge
  %i.0432 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input_dev.i393, align 4
  %add = add nuw nsw i32 %i.0432, 256
  %div182 = lshr i32 %i.0432, 3
  %add5 = add nuw nsw i32 %div182, 4
  %arrayidx6 = getelementptr i8, ptr %buf.addr.0435, i32 %add5
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %12 to i32
  %rem = and i32 %i.0432, 7
  %13 = lshr i32 %conv7, %rem
  %14 = and i32 %13, 1
  tail call void @input_event(ptr noundef %10, i32 noundef 1, i32 noundef %add, i32 noundef %14) #6
  %inc = add nuw nsw i32 %i.0432, 1
  %exitcond.not = icmp eq i32 %inc, 96
  br i1 %exitcond.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx10 = getelementptr i8, ptr %buf.addr.0435, i32 9
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %18 to i32
  %arrayidx12 = getelementptr i8, ptr %buf.addr.0435, i32 8
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx12, align 1
  %21 = and i8 %20, 3
  %and14 = zext i8 %21 to i32
  %shl15 = shl nuw nsw i32 %and14, 8
  %or16 = or i32 %shl15, %conv11
  tail call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 52, i32 noundef %or16) #6
  %22 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx18 = getelementptr i8, ptr %buf.addr.0435, i32 13
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %25 to i32
  %arrayidx20 = getelementptr i8, ptr %buf.addr.0435, i32 12
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx20, align 1
  %28 = and i8 %27, 3
  %and22 = zext i8 %28 to i32
  %shl23 = shl nuw nsw i32 %and22, 8
  %or24 = or i32 %shl23, %conv19
  tail call void @input_event(ptr noundef %23, i32 noundef 3, i32 noundef 53, i32 noundef %or24) #6
  %29 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx26 = getelementptr i8, ptr %buf.addr.0435, i32 3
  %31 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx26, align 1
  %33 = and i8 %32, 15
  %and28 = zext i8 %33 to i32
  tail call void @input_event(ptr noundef %30, i32 noundef 3, i32 noundef 54, i32 noundef %and28) #6
  %34 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx30 = getelementptr i8, ptr %buf.addr.0435, i32 4
  %36 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx30, align 1
  %38 = lshr i8 %37, 4
  %39 = zext i8 %38 to i32
  tail call void @input_event(ptr noundef %35, i32 noundef 3, i32 noundef 55, i32 noundef %39) #6
  %40 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input_dev.i393, align 4
  %42 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx30, align 1
  %44 = and i8 %43, 15
  %and36 = zext i8 %44 to i32
  tail call void @input_event(ptr noundef %41, i32 noundef 3, i32 noundef 56, i32 noundef %and36) #6
  %45 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx38 = getelementptr i8, ptr %buf.addr.0435, i32 5
  %47 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx38, align 1
  %49 = lshr i8 %48, 4
  %50 = zext i8 %49 to i32
  tail call void @input_event(ptr noundef %46, i32 noundef 3, i32 noundef 57, i32 noundef %50) #6
  %51 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input_dev.i393, align 4
  %53 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx38, align 1
  %55 = and i8 %54, 15
  %and44 = zext i8 %55 to i32
  tail call void @input_event(ptr noundef %52, i32 noundef 3, i32 noundef 58, i32 noundef %and44) #6
  %56 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx46 = getelementptr i8, ptr %buf.addr.0435, i32 6
  %58 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx46, align 1
  %60 = lshr i8 %59, 4
  %61 = zext i8 %60 to i32
  tail call void @input_event(ptr noundef %57, i32 noundef 3, i32 noundef 59, i32 noundef %61) #6
  %62 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %input_dev.i393, align 4
  %64 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx46, align 1
  %66 = and i8 %65, 15
  %and52 = zext i8 %66 to i32
  tail call void @input_event(ptr noundef %63, i32 noundef 3, i32 noundef 60, i32 noundef %and52) #6
  %67 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx54 = getelementptr i8, ptr %buf.addr.0435, i32 7
  %69 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx54, align 1
  %71 = lshr i8 %70, 4
  %72 = zext i8 %71 to i32
  tail call void @input_event(ptr noundef %68, i32 noundef 3, i32 noundef 61, i32 noundef %72) #6
  %73 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %input_dev.i393, align 4
  %75 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx54, align 1
  %77 = and i8 %76, 15
  %and60 = zext i8 %77 to i32
  tail call void @input_event(ptr noundef %74, i32 noundef 3, i32 noundef 62, i32 noundef %and60) #6
  br label %sw.epilog

sw.bb61:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i = getelementptr i8, ptr %buf.addr.0435, i32 2
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %81 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx2.i = getelementptr i8, ptr %buf.addr.0435, i32 3
  %82 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %83 to i32
  %or.i = or i32 %shl.i, %conv3.i
  tail call void @input_event(ptr noundef %79, i32 noundef 3, i32 noundef 16, i32 noundef %or.i) #6
  %84 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i184 = getelementptr i8, ptr %buf.addr.0435, i32 4
  %86 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i184, align 1
  %conv.i185 = zext i8 %87 to i32
  %shl.i186 = shl nuw nsw i32 %conv.i185, 8
  %arrayidx2.i187 = getelementptr i8, ptr %buf.addr.0435, i32 5
  %88 = ptrtoint ptr %arrayidx2.i187 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx2.i187, align 1
  %conv3.i188 = zext i8 %89 to i32
  %or.i189 = or i32 %shl.i186, %conv3.i188
  tail call void @input_event(ptr noundef %85, i32 noundef 3, i32 noundef 17, i32 noundef %or.i189) #6
  %90 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i191 = getelementptr i8, ptr %buf.addr.0435, i32 6
  %92 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i191, align 1
  %conv.i192 = zext i8 %93 to i32
  %shl.i193 = shl nuw nsw i32 %conv.i192, 8
  %arrayidx2.i194 = getelementptr i8, ptr %buf.addr.0435, i32 7
  %94 = ptrtoint ptr %arrayidx2.i194 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx2.i194, align 1
  %conv3.i195 = zext i8 %95 to i32
  %or.i196 = or i32 %shl.i193, %conv3.i195
  tail call void @input_event(ptr noundef %91, i32 noundef 3, i32 noundef 18, i32 noundef %or.i196) #6
  %96 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i198 = getelementptr i8, ptr %buf.addr.0435, i32 8
  %98 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i198, align 1
  %conv.i199 = zext i8 %99 to i32
  %shl.i200 = shl nuw nsw i32 %conv.i199, 8
  %arrayidx2.i201 = getelementptr i8, ptr %buf.addr.0435, i32 9
  %100 = ptrtoint ptr %arrayidx2.i201 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx2.i201, align 1
  %conv3.i202 = zext i8 %101 to i32
  %or.i203 = or i32 %shl.i200, %conv3.i202
  tail call void @input_event(ptr noundef %97, i32 noundef 3, i32 noundef 19, i32 noundef %or.i203) #6
  %102 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i205 = getelementptr i8, ptr %buf.addr.0435, i32 12
  %104 = ptrtoint ptr %arrayidx.i205 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i205, align 1
  %conv.i206 = zext i8 %105 to i32
  %shl.i207 = shl nuw nsw i32 %conv.i206, 8
  %arrayidx2.i208 = getelementptr i8, ptr %buf.addr.0435, i32 13
  %106 = ptrtoint ptr %arrayidx2.i208 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx2.i208, align 1
  %conv3.i209 = zext i8 %107 to i32
  %or.i210 = or i32 %shl.i207, %conv3.i209
  tail call void @input_event(ptr noundef %103, i32 noundef 3, i32 noundef 20, i32 noundef %or.i210) #6
  %108 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i212 = getelementptr i8, ptr %buf.addr.0435, i32 14
  %110 = ptrtoint ptr %arrayidx.i212 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.i212, align 1
  %conv.i213 = zext i8 %111 to i32
  %shl.i214 = shl nuw nsw i32 %conv.i213, 8
  %arrayidx2.i215 = getelementptr i8, ptr %buf.addr.0435, i32 15
  %112 = ptrtoint ptr %arrayidx2.i215 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx2.i215, align 1
  %conv3.i216 = zext i8 %113 to i32
  %or.i217 = or i32 %shl.i214, %conv3.i216
  tail call void @input_event(ptr noundef %109, i32 noundef 3, i32 noundef 23, i32 noundef %or.i217) #6
  br label %sw.epilog

sw.bb62:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i219 = getelementptr i8, ptr %buf.addr.0435, i32 6
  %116 = ptrtoint ptr %arrayidx.i219 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i219, align 1
  %conv.i220 = zext i8 %117 to i32
  %shl.i221 = shl nuw nsw i32 %conv.i220, 8
  %arrayidx2.i222 = getelementptr i8, ptr %buf.addr.0435, i32 7
  %118 = ptrtoint ptr %arrayidx2.i222 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx2.i222, align 1
  %conv3.i223 = zext i8 %119 to i32
  %or.i224 = or i32 %shl.i221, %conv3.i223
  tail call void @input_event(ptr noundef %115, i32 noundef 3, i32 noundef 22, i32 noundef %or.i224) #6
  %120 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i226 = getelementptr i8, ptr %buf.addr.0435, i32 8
  %122 = ptrtoint ptr %arrayidx.i226 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.i226, align 1
  %conv.i227 = zext i8 %123 to i32
  %shl.i228 = shl nuw nsw i32 %conv.i227, 8
  %arrayidx2.i229 = getelementptr i8, ptr %buf.addr.0435, i32 9
  %124 = ptrtoint ptr %arrayidx2.i229 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx2.i229, align 1
  %conv3.i230 = zext i8 %125 to i32
  %or.i231 = or i32 %shl.i228, %conv3.i230
  tail call void @input_event(ptr noundef %121, i32 noundef 3, i32 noundef 21, i32 noundef %or.i231) #6
  %126 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i233 = getelementptr i8, ptr %buf.addr.0435, i32 12
  %128 = ptrtoint ptr %arrayidx.i233 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i233, align 1
  %conv.i234 = zext i8 %129 to i32
  %shl.i235 = shl nuw nsw i32 %conv.i234, 8
  %arrayidx2.i236 = getelementptr i8, ptr %buf.addr.0435, i32 13
  %130 = ptrtoint ptr %arrayidx2.i236 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx2.i236, align 1
  %conv3.i237 = zext i8 %131 to i32
  %or.i238 = or i32 %shl.i235, %conv3.i237
  tail call void @input_event(ptr noundef %127, i32 noundef 3, i32 noundef 24, i32 noundef %or.i238) #6
  %132 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i240 = getelementptr i8, ptr %buf.addr.0435, i32 14
  %134 = ptrtoint ptr %arrayidx.i240 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i240, align 1
  %conv.i241 = zext i8 %135 to i32
  %shl.i242 = shl nuw nsw i32 %conv.i241, 8
  %arrayidx2.i243 = getelementptr i8, ptr %buf.addr.0435, i32 15
  %136 = ptrtoint ptr %arrayidx2.i243 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx2.i243, align 1
  %conv3.i244 = zext i8 %137 to i32
  %or.i245 = or i32 %shl.i242, %conv3.i244
  tail call void @input_event(ptr noundef %133, i32 noundef 3, i32 noundef 25, i32 noundef %or.i245) #6
  br label %sw.epilog

sw.bb63:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %138 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i247 = getelementptr i8, ptr %buf.addr.0435, i32 2
  %140 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.i247, align 1
  %conv.i248 = zext i8 %141 to i32
  %shl.i249 = shl nuw nsw i32 %conv.i248, 8
  %arrayidx2.i250 = getelementptr i8, ptr %buf.addr.0435, i32 3
  %142 = ptrtoint ptr %arrayidx2.i250 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx2.i250, align 1
  %conv3.i251 = zext i8 %143 to i32
  %or.i252 = or i32 %shl.i249, %conv3.i251
  tail call void @input_event(ptr noundef %139, i32 noundef 3, i32 noundef 26, i32 noundef %or.i252) #6
  %144 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i254 = getelementptr i8, ptr %buf.addr.0435, i32 4
  %146 = ptrtoint ptr %arrayidx.i254 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i254, align 1
  %conv.i255 = zext i8 %147 to i32
  %shl.i256 = shl nuw nsw i32 %conv.i255, 8
  %arrayidx2.i257 = getelementptr i8, ptr %buf.addr.0435, i32 5
  %148 = ptrtoint ptr %arrayidx2.i257 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx2.i257, align 1
  %conv3.i258 = zext i8 %149 to i32
  %or.i259 = or i32 %shl.i256, %conv3.i258
  tail call void @input_event(ptr noundef %145, i32 noundef 3, i32 noundef 27, i32 noundef %or.i259) #6
  %150 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i261 = getelementptr i8, ptr %buf.addr.0435, i32 6
  %152 = ptrtoint ptr %arrayidx.i261 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx.i261, align 1
  %conv.i262 = zext i8 %153 to i32
  %shl.i263 = shl nuw nsw i32 %conv.i262, 8
  %arrayidx2.i264 = getelementptr i8, ptr %buf.addr.0435, i32 7
  %154 = ptrtoint ptr %arrayidx2.i264 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx2.i264, align 1
  %conv3.i265 = zext i8 %155 to i32
  %or.i266 = or i32 %shl.i263, %conv3.i265
  tail call void @input_event(ptr noundef %151, i32 noundef 3, i32 noundef 28, i32 noundef %or.i266) #6
  %156 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i268 = getelementptr i8, ptr %buf.addr.0435, i32 8
  %158 = ptrtoint ptr %arrayidx.i268 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx.i268, align 1
  %conv.i269 = zext i8 %159 to i32
  %shl.i270 = shl nuw nsw i32 %conv.i269, 8
  %arrayidx2.i271 = getelementptr i8, ptr %buf.addr.0435, i32 9
  %160 = ptrtoint ptr %arrayidx2.i271 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx2.i271, align 1
  %conv3.i272 = zext i8 %161 to i32
  %or.i273 = or i32 %shl.i270, %conv3.i272
  tail call void @input_event(ptr noundef %157, i32 noundef 3, i32 noundef 29, i32 noundef %or.i273) #6
  %162 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i275 = getelementptr i8, ptr %buf.addr.0435, i32 10
  %164 = ptrtoint ptr %arrayidx.i275 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx.i275, align 1
  %conv.i276 = zext i8 %165 to i32
  %shl.i277 = shl nuw nsw i32 %conv.i276, 8
  %arrayidx2.i278 = getelementptr i8, ptr %buf.addr.0435, i32 11
  %166 = ptrtoint ptr %arrayidx2.i278 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx2.i278, align 1
  %conv3.i279 = zext i8 %167 to i32
  %or.i280 = or i32 %shl.i277, %conv3.i279
  tail call void @input_event(ptr noundef %163, i32 noundef 3, i32 noundef 30, i32 noundef %or.i280) #6
  %168 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i282 = getelementptr i8, ptr %buf.addr.0435, i32 12
  %170 = ptrtoint ptr %arrayidx.i282 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx.i282, align 1
  %conv.i283 = zext i8 %171 to i32
  %shl.i284 = shl nuw nsw i32 %conv.i283, 8
  %arrayidx2.i285 = getelementptr i8, ptr %buf.addr.0435, i32 13
  %172 = ptrtoint ptr %arrayidx2.i285 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx2.i285, align 1
  %conv3.i286 = zext i8 %173 to i32
  %or.i287 = or i32 %shl.i284, %conv3.i286
  tail call void @input_event(ptr noundef %169, i32 noundef 3, i32 noundef 31, i32 noundef %or.i287) #6
  %174 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i289 = getelementptr i8, ptr %buf.addr.0435, i32 14
  %176 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx.i289, align 1
  %conv.i290 = zext i8 %177 to i32
  %shl.i291 = shl nuw nsw i32 %conv.i290, 8
  %arrayidx2.i292 = getelementptr i8, ptr %buf.addr.0435, i32 15
  %178 = ptrtoint ptr %arrayidx2.i292 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx2.i292, align 1
  %conv3.i293 = zext i8 %179 to i32
  %or.i294 = or i32 %shl.i291, %conv3.i293
  tail call void @input_event(ptr noundef %175, i32 noundef 3, i32 noundef 32, i32 noundef %or.i294) #6
  br label %sw.epilog

sw.bb64:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %180 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i296 = getelementptr i8, ptr %buf.addr.0435, i32 2
  %182 = ptrtoint ptr %arrayidx.i296 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx.i296, align 1
  %conv.i297 = zext i8 %183 to i32
  %shl.i298 = shl nuw nsw i32 %conv.i297, 8
  %arrayidx2.i299 = getelementptr i8, ptr %buf.addr.0435, i32 3
  %184 = ptrtoint ptr %arrayidx2.i299 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx2.i299, align 1
  %conv3.i300 = zext i8 %185 to i32
  %or.i301 = or i32 %shl.i298, %conv3.i300
  tail call void @input_event(ptr noundef %181, i32 noundef 3, i32 noundef 33, i32 noundef %or.i301) #6
  %186 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i303 = getelementptr i8, ptr %buf.addr.0435, i32 4
  %188 = ptrtoint ptr %arrayidx.i303 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx.i303, align 1
  %conv.i304 = zext i8 %189 to i32
  %shl.i305 = shl nuw nsw i32 %conv.i304, 8
  %arrayidx2.i306 = getelementptr i8, ptr %buf.addr.0435, i32 5
  %190 = ptrtoint ptr %arrayidx2.i306 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx2.i306, align 1
  %conv3.i307 = zext i8 %191 to i32
  %or.i308 = or i32 %shl.i305, %conv3.i307
  tail call void @input_event(ptr noundef %187, i32 noundef 3, i32 noundef 34, i32 noundef %or.i308) #6
  %192 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i310 = getelementptr i8, ptr %buf.addr.0435, i32 6
  %194 = ptrtoint ptr %arrayidx.i310 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx.i310, align 1
  %conv.i311 = zext i8 %195 to i32
  %shl.i312 = shl nuw nsw i32 %conv.i311, 8
  %arrayidx2.i313 = getelementptr i8, ptr %buf.addr.0435, i32 7
  %196 = ptrtoint ptr %arrayidx2.i313 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx2.i313, align 1
  %conv3.i314 = zext i8 %197 to i32
  %or.i315 = or i32 %shl.i312, %conv3.i314
  tail call void @input_event(ptr noundef %193, i32 noundef 3, i32 noundef 35, i32 noundef %or.i315) #6
  %198 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i317 = getelementptr i8, ptr %buf.addr.0435, i32 8
  %200 = ptrtoint ptr %arrayidx.i317 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx.i317, align 1
  %conv.i318 = zext i8 %201 to i32
  %shl.i319 = shl nuw nsw i32 %conv.i318, 8
  %arrayidx2.i320 = getelementptr i8, ptr %buf.addr.0435, i32 9
  %202 = ptrtoint ptr %arrayidx2.i320 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx2.i320, align 1
  %conv3.i321 = zext i8 %203 to i32
  %or.i322 = or i32 %shl.i319, %conv3.i321
  tail call void @input_event(ptr noundef %199, i32 noundef 3, i32 noundef 36, i32 noundef %or.i322) #6
  %204 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i324 = getelementptr i8, ptr %buf.addr.0435, i32 10
  %206 = ptrtoint ptr %arrayidx.i324 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx.i324, align 1
  %conv.i325 = zext i8 %207 to i32
  %shl.i326 = shl nuw nsw i32 %conv.i325, 8
  %arrayidx2.i327 = getelementptr i8, ptr %buf.addr.0435, i32 11
  %208 = ptrtoint ptr %arrayidx2.i327 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx2.i327, align 1
  %conv3.i328 = zext i8 %209 to i32
  %or.i329 = or i32 %shl.i326, %conv3.i328
  tail call void @input_event(ptr noundef %205, i32 noundef 3, i32 noundef 37, i32 noundef %or.i329) #6
  %210 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i331 = getelementptr i8, ptr %buf.addr.0435, i32 12
  %212 = ptrtoint ptr %arrayidx.i331 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx.i331, align 1
  %conv.i332 = zext i8 %213 to i32
  %shl.i333 = shl nuw nsw i32 %conv.i332, 8
  %arrayidx2.i334 = getelementptr i8, ptr %buf.addr.0435, i32 13
  %214 = ptrtoint ptr %arrayidx2.i334 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx2.i334, align 1
  %conv3.i335 = zext i8 %215 to i32
  %or.i336 = or i32 %shl.i333, %conv3.i335
  tail call void @input_event(ptr noundef %211, i32 noundef 3, i32 noundef 38, i32 noundef %or.i336) #6
  %216 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i338 = getelementptr i8, ptr %buf.addr.0435, i32 14
  %218 = ptrtoint ptr %arrayidx.i338 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx.i338, align 1
  %conv.i339 = zext i8 %219 to i32
  %shl.i340 = shl nuw nsw i32 %conv.i339, 8
  %arrayidx2.i341 = getelementptr i8, ptr %buf.addr.0435, i32 15
  %220 = ptrtoint ptr %arrayidx2.i341 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx2.i341, align 1
  %conv3.i342 = zext i8 %221 to i32
  %or.i343 = or i32 %shl.i340, %conv3.i342
  tail call void @input_event(ptr noundef %217, i32 noundef 3, i32 noundef 39, i32 noundef %or.i343) #6
  br label %sw.epilog

sw.bb65:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %222 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i345 = getelementptr i8, ptr %buf.addr.0435, i32 2
  %224 = ptrtoint ptr %arrayidx.i345 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx.i345, align 1
  %conv.i346 = zext i8 %225 to i32
  %shl.i347 = shl nuw nsw i32 %conv.i346, 8
  %arrayidx2.i348 = getelementptr i8, ptr %buf.addr.0435, i32 3
  %226 = ptrtoint ptr %arrayidx2.i348 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx2.i348, align 1
  %conv3.i349 = zext i8 %227 to i32
  %or.i350 = or i32 %shl.i347, %conv3.i349
  tail call void @input_event(ptr noundef %223, i32 noundef 3, i32 noundef 40, i32 noundef %or.i350) #6
  %228 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i352 = getelementptr i8, ptr %buf.addr.0435, i32 4
  %230 = ptrtoint ptr %arrayidx.i352 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx.i352, align 1
  %conv.i353 = zext i8 %231 to i32
  %shl.i354 = shl nuw nsw i32 %conv.i353, 8
  %arrayidx2.i355 = getelementptr i8, ptr %buf.addr.0435, i32 5
  %232 = ptrtoint ptr %arrayidx2.i355 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx2.i355, align 1
  %conv3.i356 = zext i8 %233 to i32
  %or.i357 = or i32 %shl.i354, %conv3.i356
  tail call void @input_event(ptr noundef %229, i32 noundef 3, i32 noundef 41, i32 noundef %or.i357) #6
  %234 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i359 = getelementptr i8, ptr %buf.addr.0435, i32 6
  %236 = ptrtoint ptr %arrayidx.i359 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx.i359, align 1
  %conv.i360 = zext i8 %237 to i32
  %shl.i361 = shl nuw nsw i32 %conv.i360, 8
  %arrayidx2.i362 = getelementptr i8, ptr %buf.addr.0435, i32 7
  %238 = ptrtoint ptr %arrayidx2.i362 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx2.i362, align 1
  %conv3.i363 = zext i8 %239 to i32
  %or.i364 = or i32 %shl.i361, %conv3.i363
  tail call void @input_event(ptr noundef %235, i32 noundef 3, i32 noundef 42, i32 noundef %or.i364) #6
  %240 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i366 = getelementptr i8, ptr %buf.addr.0435, i32 8
  %242 = ptrtoint ptr %arrayidx.i366 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx.i366, align 1
  %conv.i367 = zext i8 %243 to i32
  %shl.i368 = shl nuw nsw i32 %conv.i367, 8
  %arrayidx2.i369 = getelementptr i8, ptr %buf.addr.0435, i32 9
  %244 = ptrtoint ptr %arrayidx2.i369 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx2.i369, align 1
  %conv3.i370 = zext i8 %245 to i32
  %or.i371 = or i32 %shl.i368, %conv3.i370
  tail call void @input_event(ptr noundef %241, i32 noundef 3, i32 noundef 43, i32 noundef %or.i371) #6
  %246 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i373 = getelementptr i8, ptr %buf.addr.0435, i32 10
  %248 = ptrtoint ptr %arrayidx.i373 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx.i373, align 1
  %conv.i374 = zext i8 %249 to i32
  %shl.i375 = shl nuw nsw i32 %conv.i374, 8
  %arrayidx2.i376 = getelementptr i8, ptr %buf.addr.0435, i32 11
  %250 = ptrtoint ptr %arrayidx2.i376 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx2.i376, align 1
  %conv3.i377 = zext i8 %251 to i32
  %or.i378 = or i32 %shl.i375, %conv3.i377
  tail call void @input_event(ptr noundef %247, i32 noundef 3, i32 noundef 44, i32 noundef %or.i378) #6
  %252 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i380 = getelementptr i8, ptr %buf.addr.0435, i32 12
  %254 = ptrtoint ptr %arrayidx.i380 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx.i380, align 1
  %conv.i381 = zext i8 %255 to i32
  %shl.i382 = shl nuw nsw i32 %conv.i381, 8
  %arrayidx2.i383 = getelementptr i8, ptr %buf.addr.0435, i32 13
  %256 = ptrtoint ptr %arrayidx2.i383 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx2.i383, align 1
  %conv3.i384 = zext i8 %257 to i32
  %or.i385 = or i32 %shl.i382, %conv3.i384
  tail call void @input_event(ptr noundef %253, i32 noundef 3, i32 noundef 45, i32 noundef %or.i385) #6
  %258 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i387 = getelementptr i8, ptr %buf.addr.0435, i32 14
  %260 = ptrtoint ptr %arrayidx.i387 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %arrayidx.i387, align 1
  %conv.i388 = zext i8 %261 to i32
  %shl.i389 = shl nuw nsw i32 %conv.i388, 8
  %arrayidx2.i390 = getelementptr i8, ptr %buf.addr.0435, i32 15
  %262 = ptrtoint ptr %arrayidx2.i390 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx2.i390, align 1
  %conv3.i391 = zext i8 %263 to i32
  %or.i392 = or i32 %shl.i389, %conv3.i391
  tail call void @input_event(ptr noundef %259, i32 noundef 3, i32 noundef 46, i32 noundef %or.i392) #6
  br label %sw.epilog

sw.bb66:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %264 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i394 = getelementptr i8, ptr %buf.addr.0435, i32 2
  %266 = ptrtoint ptr %arrayidx.i394 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx.i394, align 1
  %conv.i395 = zext i8 %267 to i32
  %shl.i396 = shl nuw nsw i32 %conv.i395, 8
  %arrayidx2.i397 = getelementptr i8, ptr %buf.addr.0435, i32 3
  %268 = ptrtoint ptr %arrayidx2.i397 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx2.i397, align 1
  %conv3.i398 = zext i8 %269 to i32
  %or.i399 = or i32 %shl.i396, %conv3.i398
  tail call void @input_event(ptr noundef %265, i32 noundef 3, i32 noundef 47, i32 noundef %or.i399) #6
  %270 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i401 = getelementptr i8, ptr %buf.addr.0435, i32 4
  %272 = ptrtoint ptr %arrayidx.i401 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx.i401, align 1
  %conv.i402 = zext i8 %273 to i32
  %shl.i403 = shl nuw nsw i32 %conv.i402, 8
  %arrayidx2.i404 = getelementptr i8, ptr %buf.addr.0435, i32 5
  %274 = ptrtoint ptr %arrayidx2.i404 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx2.i404, align 1
  %conv3.i405 = zext i8 %275 to i32
  %or.i406 = or i32 %shl.i403, %conv3.i405
  tail call void @input_event(ptr noundef %271, i32 noundef 3, i32 noundef 48, i32 noundef %or.i406) #6
  %276 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i408 = getelementptr i8, ptr %buf.addr.0435, i32 6
  %278 = ptrtoint ptr %arrayidx.i408 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx.i408, align 1
  %conv.i409 = zext i8 %279 to i32
  %shl.i410 = shl nuw nsw i32 %conv.i409, 8
  %arrayidx2.i411 = getelementptr i8, ptr %buf.addr.0435, i32 7
  %280 = ptrtoint ptr %arrayidx2.i411 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx2.i411, align 1
  %conv3.i412 = zext i8 %281 to i32
  %or.i413 = or i32 %shl.i410, %conv3.i412
  tail call void @input_event(ptr noundef %277, i32 noundef 3, i32 noundef 49, i32 noundef %or.i413) #6
  %282 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i415 = getelementptr i8, ptr %buf.addr.0435, i32 8
  %284 = ptrtoint ptr %arrayidx.i415 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx.i415, align 1
  %conv.i416 = zext i8 %285 to i32
  %shl.i417 = shl nuw nsw i32 %conv.i416, 8
  %arrayidx2.i418 = getelementptr i8, ptr %buf.addr.0435, i32 9
  %286 = ptrtoint ptr %arrayidx2.i418 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx2.i418, align 1
  %conv3.i419 = zext i8 %287 to i32
  %or.i420 = or i32 %shl.i417, %conv3.i419
  tail call void @input_event(ptr noundef %283, i32 noundef 3, i32 noundef 50, i32 noundef %or.i420) #6
  %288 = ptrtoint ptr %input_dev.i393 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %input_dev.i393, align 4
  %arrayidx.i422 = getelementptr i8, ptr %buf.addr.0435, i32 10
  %290 = ptrtoint ptr %arrayidx.i422 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx.i422, align 1
  %conv.i423 = zext i8 %291 to i32
  %shl.i424 = shl nuw nsw i32 %conv.i423, 8
  %arrayidx2.i425 = getelementptr i8, ptr %buf.addr.0435, i32 11
  %292 = ptrtoint ptr %arrayidx2.i425 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx2.i425, align 1
  %conv3.i426 = zext i8 %293 to i32
  %or.i427 = or i32 %shl.i424, %conv3.i426
  tail call void @input_event(ptr noundef %289, i32 noundef 3, i32 noundef 51, i32 noundef %or.i427) #6
  br label %sw.epilog

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_caiaq_tks4_dispatch.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_tks4_dispatch, %cleanup.thread)) #6
          to label %cleanup72 [label %cleanup.thread], !srcloc !36

cleanup.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_caiaq_tks4_dispatch.__UNIQUE_ID_ddebug239, ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef %or) #6
  br label %cleanup72

sw.epilog:                                        ; preds = %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb8, %for.body.sw.epilog_crit_edge
  %sub = add i32 %len.addr.0434, -16
  %add.ptr = getelementptr i8, ptr %buf.addr.0435, i32 16
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  %input_dev71 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 40
  %294 = ptrtoint ptr %input_dev71 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %input_dev71, align 4
  tail call void @input_event(ptr noundef %295, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup72

cleanup72:                                        ; preds = %while.end, %cleanup.thread, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/caiaq/input.c", i32 598, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/usb.h", i32 912, i32 31}
!4 = !{ptr @keycode_rk2, !5, !"keycode_rk2", i1 false, i1 false}
!5 = !{!"../sound/usb/caiaq/input.c", i32 18, i32 29}
!6 = !{ptr @keycode_rk3, !7, !"keycode_rk3", i1 false, i1 false}
!7 = !{!"../sound/usb/caiaq/input.c", i32 20, i32 29}
!8 = !{ptr @keycode_ak1, !9, !"keycode_ak1", i1 false, i1 false}
!9 = !{!"../sound/usb/caiaq/input.c", i32 17, i32 29}
!10 = !{ptr @keycode_kore, !11, !"keycode_kore", i1 false, i1 false}
!11 = !{!"../sound/usb/caiaq/input.c", i32 23, i32 29}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/usb/caiaq/input.c", i32 529, i32 3}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @snd_usb_caiaq_ep4_reply_dispatch._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @snd_usb_caiaq_ep4_reply_dispatch._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/usb/caiaq/input.c", i32 459, i32 4}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @snd_usb_caiaq_tks4_dispatch.__UNIQUE_ID_ddebug239, !21, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!25 = !{ptr @keycode_maschine, !26, !"keycode_maschine", i1 false, i1 false}
!26 = !{!"../sound/usb/caiaq/input.c", i32 63, i32 29}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2148302132, i64 2148302137, i64 2148302150, i64 2148302194, i64 2148302228, i64 2148302249}
