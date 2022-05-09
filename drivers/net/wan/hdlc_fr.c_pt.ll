; ModuleID = '/llk/IR_all_yes/drivers/net/wan/hdlc_fr.c_pt.bc'
source_filename = "../drivers/net/wan/hdlc_fr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdlc_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.frad_state = type { %struct.fr_proto, ptr, i32, %struct.timer_list, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.fr_proto = type { i32, i32, i32, i32, i32, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pvc_device = type { ptr, ptr, ptr, ptr, i32, i32, %struct.anon.118 }
%struct.anon.118 = type { i8, i32 }
%struct.fr_proto_pvc = type { i32 }
%struct.if_settings = type { i32, i32, %union.anon.21 }
%union.anon.21 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.hdlc_device = type { ptr, ptr, ptr, i32, i32, %struct.spinlock, ptr, ptr }
%struct.fr_proto_pvc_info = type { i32, [16 x i8] }

@proto = internal global { %struct.hdlc_proto, [52 x i8] } { %struct.hdlc_proto { ptr null, ptr @fr_close, ptr @fr_start, ptr @fr_stop, ptr @fr_destroy, ptr @fr_ioctl, ptr null, ptr @fr_rx, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_hdlc_fr__345_1295_hdlc_fr_init6 = internal global ptr @hdlc_fr_init, section ".initcall6.init", align 4
@__exitcall_hdlc_fr_exit = internal global ptr @hdlc_fr_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author346 = internal constant [48 x i8] c"hdlc_fr.author=Krzysztof Halasa <khc@pm.waw.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description347 = internal constant [66 x i8] c"hdlc_fr.description=Frame-Relay protocol support for generic HDLC\00", section ".modinfo", align 1
@__UNIQUE_ID_file348 = internal constant [37 x i8] c"hdlc_fr.file=drivers/net/wan/hdlc_fr\00", section ".modinfo", align 1
@__UNIQUE_ID_license349 = internal constant [23 x i8] c"hdlc_fr.license=GPL v2\00", section ".modinfo", align 1
@fr_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&state(hdlc)->timer)\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No LMI status reply received\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Link %sreliable\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Too many PVCs while sending LMI full report\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DLCI %d [%s%s%s]%s %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" new\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"deleted\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inactive\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Memory squeeze on fr_add_pvc()\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pvceth%d\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pvc%d\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Memory squeeze on fr_pvc()\0A\00", [36 x i8] zeroinitializer }, align 32
@pvc_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @pvc_open, ptr @pvc_close, ptr @pvc_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pvc_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unsupported protocol, NLPID=%x length=%i\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Short LMI frame\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Received non-LMI frame with LMI DLCI\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid LMI Call reference (0x%02X)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid LMI Message type (0x%02X)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Not ANSI locking shift in LMI message (0x%02X)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Not an LMI Report type IE (0x%02X)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid LMI Report type IE length (%u)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported LMI Report type (0x%02X)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Not an LMI Link integrity verification IE (0x%02X)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Invalid LMI Link integrity verification IE length (%u)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Not an LMI PVC status IE (0x%02X)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid LMI PVC status IE length (%u)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Memory squeeze on fr_lmi_recv()\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 8195, i64 8196, i64 8197, i64 8200, i64 8201]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 8196, i64 8200]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 10, i64 0, i64 1023]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 142, i64 204]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1023]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 15]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1174, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1012, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 599, i32 22 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 611, i32 20 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 611, i32 52 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 611, i32 57 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 471, i32 21 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 440, i32 25 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 443, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 445, i32 24 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 446, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 447, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 447, i32 38 }
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 174, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1071, i32 21 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1081, i32 9 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1084, i32 9 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1087, i32 21 }
@___asan_gen_.97 = private unnamed_addr constant [8 x i8] c"pvc_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1055, i32 36 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 976, i32 21 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 644, i32 20 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 650, i32 20 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 655, i32 20 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 661, i32 20 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 668, i32 21 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 679, i32 20 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 685, i32 20 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 692, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 699, i32 20 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 705, i32 20 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 780, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 786, i32 21 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [29 x i8] c"../drivers/net/wan/hdlc_fr.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 808, i32 21 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author346, ptr @__UNIQUE_ID_description347, ptr @__UNIQUE_ID_file348, ptr @__UNIQUE_ID_license349, ptr @__exitcall_hdlc_fr_exit, ptr @__initcall__kmod_hdlc_fr__345_1295_hdlc_fr_init6, ptr @hdlc_fr_exit, ptr @proto, ptr @fr_start.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @pvc_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proto to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fr_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvc_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hdlc_fr_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_hdlc_protocol(ptr noundef nonnull @proto) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_hdlc_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlc_fr_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_hdlc_protocol(ptr noundef nonnull @proto) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fr_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %first_pvc = getelementptr inbounds %struct.frad_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %first_pvc to i32
  call void @__asan_load4_noabort(i32 %2)
  %pvc.014 = load ptr, ptr %first_pvc, align 4
  %tobool.not15 = icmp eq ptr %pvc.014, null
  br i1 %tobool.not15, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %entry.while.body_crit_edge
  %pvc.016 = phi ptr [ %pvc.0, %if.end7.while.body_crit_edge ], [ %pvc.014, %entry.while.body_crit_edge ]
  %main = getelementptr inbounds %struct.pvc_device, ptr %pvc.016, i32 0, i32 1
  %3 = ptrtoint ptr %main to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %main, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_close(ptr noundef nonnull %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %ether = getelementptr inbounds %struct.pvc_device, ptr %pvc.016, i32 0, i32 2
  %5 = ptrtoint ptr %ether to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ether, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_close(ptr noundef nonnull %6) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %next = getelementptr inbounds %struct.pvc_device, ptr %pvc.016, i32 0, i32 3
  %7 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %7)
  %pvc.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %pvc.0, null
  br i1 %tobool.not, label %if.end7.while.end_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end7.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fr_start(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %lmi = getelementptr inbounds %struct.fr_proto, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %lmi to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %lmi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not = icmp eq i16 %3, 1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reliable = getelementptr inbounds %struct.frad_state, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %reliable to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %reliable, align 4
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state.i, align 4
  %dce_changed = getelementptr inbounds %struct.frad_state, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %dce_changed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %dce_changed, align 4
  %8 = load ptr, ptr %state.i, align 4
  %request = getelementptr inbounds %struct.frad_state, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %request, align 4
  %10 = load ptr, ptr %state.i, align 4
  %fullrep_sent = getelementptr inbounds %struct.frad_state, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %fullrep_sent to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %fullrep_sent, align 4
  %12 = load ptr, ptr %state.i, align 4
  %last_errors = getelementptr inbounds %struct.frad_state, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %last_errors to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %last_errors, align 4
  %14 = load ptr, ptr %state.i, align 4
  %n391cnt = getelementptr inbounds %struct.frad_state, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %n391cnt to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %n391cnt, align 4
  %16 = load ptr, ptr %state.i, align 4
  %rxseq = getelementptr inbounds %struct.frad_state, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %rxseq to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %rxseq, align 2
  %18 = load ptr, ptr %state.i, align 4
  %txseq = getelementptr inbounds %struct.frad_state, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %txseq to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %txseq, align 1
  %20 = load ptr, ptr %state.i, align 4
  %dev12 = getelementptr inbounds %struct.frad_state, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %dev12, align 4
  %22 = load ptr, ptr %state.i, align 4
  %timer = getelementptr inbounds %struct.frad_state, ptr %22, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @fr_timer, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @fr_start.__key) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %23, 100
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state.i, align 4
  %expires = getelementptr inbounds %struct.frad_state, ptr %25, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %expires, align 4
  %27 = load ptr, ptr %state.i, align 4
  %timer17 = getelementptr inbounds %struct.frad_state, ptr %27, i32 0, i32 3
  tail call void @add_timer(ptr noundef %timer17) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @fr_set_link_state(i32 noundef 1, ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fr_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %lmi = getelementptr inbounds %struct.fr_proto, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %lmi to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %lmi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not = icmp eq i16 %3, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %timer = getelementptr inbounds %struct.frad_state, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @fr_set_link_state(i32 noundef 0, ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fr_destroy(ptr nocapture noundef readonly %frad) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %frad, i32 2368
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %first_pvc = getelementptr inbounds %struct.frad_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %first_pvc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %first_pvc, align 4
  store ptr null, ptr %first_pvc, align 4
  %4 = load ptr, ptr %state.i, align 4
  %dce_pvc_count = getelementptr inbounds %struct.frad_state, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dce_pvc_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dce_pvc_count, align 4
  %6 = load ptr, ptr %state.i, align 4
  %dce_changed = getelementptr inbounds %struct.frad_state, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %dce_changed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %dce_changed, align 4
  %tobool.not26 = icmp eq ptr %3, null
  br i1 %tobool.not26, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %entry.while.body_crit_edge
  %pvc.027 = phi ptr [ %9, %if.end12.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %next6 = getelementptr inbounds %struct.pvc_device, ptr %pvc.027, i32 0, i32 3
  %8 = ptrtoint ptr %next6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next6, align 4
  %main = getelementptr inbounds %struct.pvc_device, ptr %pvc.027, i32 0, i32 1
  %10 = ptrtoint ptr %main to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_netdevice_queue(ptr noundef nonnull %11, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %ether = getelementptr inbounds %struct.pvc_device, ptr %pvc.027, i32 0, i32 2
  %12 = ptrtoint ptr %ether to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ether, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_netdevice_queue(ptr noundef nonnull %13, ptr noundef null) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  tail call void @kfree(ptr noundef nonnull %pvc.027) #9
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fr_ioctl(ptr noundef %dev, ptr nocapture noundef %ifs) #2 align 64 {
entry:
  %new_settings = alloca %struct.fr_proto, align 4
  %pvc = alloca %struct.fr_proto_pvc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ifs_ifsu = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 2
  %0 = ptrtoint ptr %ifs_ifsu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifs_ifsu, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %new_settings) #9
  %2 = getelementptr inbounds %struct.fr_proto, ptr %new_settings, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fr_proto, ptr %new_settings, i32 0, i32 2
  %4 = getelementptr inbounds %struct.fr_proto, ptr %new_settings, i32 0, i32 3
  %5 = getelementptr inbounds %struct.fr_proto, ptr %new_settings, i32 0, i32 4
  %6 = getelementptr inbounds %struct.fr_proto, ptr %new_settings, i32 0, i32 5
  %7 = getelementptr inbounds %struct.fr_proto, ptr %new_settings, i32 0, i32 6
  %add.ptr.i.i216 = getelementptr i8, ptr %dev, i32 2304
  %8 = call ptr @memset(ptr %new_settings, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pvc) #9
  %9 = ptrtoint ptr %pvc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %pvc, align 4, !annotation !95
  %10 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifs, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8195, label %sw.bb12
    i32 8196, label %entry.sw.bb96_crit_edge
    i32 8197, label %entry.sw.bb96_crit_edge236
    i32 8200, label %entry.sw.bb96_crit_edge237
    i32 8201, label %entry.sw.bb96_crit_edge238
  ]

entry.sw.bb96_crit_edge238:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

entry.sw.bb96_crit_edge237:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

entry.sw.bb96_crit_edge236:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

entry.sw.bb96_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %proto = getelementptr i8, ptr %dev, i32 2312
  %13 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %proto, align 4
  %cmp.not = icmp eq ptr %14, @proto
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %15 = ptrtoint ptr %ifs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8195, ptr %ifs, align 4
  %size3 = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 1
  %16 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %17)
  %cmp4 = icmp ult i32 %17, 24
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 24, ptr %size3, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end7.cleanup_crit_edge, label %if.end.i.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end7
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 24, i32 -1226833920) #12, !srcloc !96
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %20, i32 noundef 24) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %20, i32 noundef 24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select235 = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %call13 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %call13, label %if.end15, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %sw.bb12
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end59.i.i186, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59.i.i186:                                  ; preds = %if.end15
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #9
  %call.i.i187 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i187, label %if.end59.i.i186.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i186.if.then11.i.i_crit_edge:          ; preds = %if.end59.i.i186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i186
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 24, i32 -1226833920) #12, !srcloc !97
  %asmresult.i.i188 = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i188)
  %cmp.i6.i189 = icmp eq i32 %asmresult.i.i188, 0
  br i1 %cmp.i6.i189, label %if.end.i.i191, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !98

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i191:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i190 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new_settings, i32 noundef 24) #9
  %25 = call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !99
  %and.i.i.i.i = and i32 %27, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %new_settings, ptr noundef %1, i32 noundef 24) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #9, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end22, label %if.end.i.i191.if.then11.i.i_crit_edge, !prof !98

if.end.i.i191.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i191.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i186.if.then11.i.i_crit_edge
  %res.0.i.i227 = phi i32 [ %call1.i.i.i, %if.end.i.i191.if.then11.i.i_crit_edge ], [ 24, %if.end59.i.i186.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i227
  %add.ptr.i.i = getelementptr i8, ptr %new_settings, i32 %sub.i.i
  %28 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i227)
  br label %cleanup

if.end22:                                         ; preds = %if.end.i.i191
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp23 = icmp eq i16 %30, 0
  br i1 %cmp23, label %if.then25, label %if.end22.if.end27_crit_edge

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 2, ptr %6, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %6, align 4
  %.off = add i16 %33, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %.off)
  %switch = icmp ult i16 %.off, 4
  br i1 %switch, label %lor.lhs.false, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end27
  %34 = ptrtoint ptr %new_settings to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %new_settings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp46 = icmp eq i32 %35, 0
  br i1 %cmp46, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false48

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false48:                                  ; preds = %lor.lhs.false
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp49 = icmp ult i32 %37, 2
  br i1 %cmp49, label %lor.lhs.false48.cleanup_crit_edge, label %lor.lhs.false51

lor.lhs.false48.cleanup_crit_edge:                ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false51:                                  ; preds = %lor.lhs.false48
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp52 = icmp eq i32 %39, 0
  br i1 %cmp52, label %lor.lhs.false51.cleanup_crit_edge, label %lor.lhs.false54

lor.lhs.false51.cleanup_crit_edge:                ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false54:                                  ; preds = %lor.lhs.false51
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp55 = icmp eq i32 %41, 0
  br i1 %cmp55, label %lor.lhs.false54.cleanup_crit_edge, label %lor.lhs.false57

lor.lhs.false54.cleanup_crit_edge:                ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false57:                                  ; preds = %lor.lhs.false54
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %41)
  %cmp59 = icmp ult i32 %43, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %43)
  %cmp63 = icmp ugt i32 %43, 32
  %or.cond = or i1 %cmp59, %cmp63
  br i1 %or.cond, label %lor.lhs.false57.cleanup_crit_edge, label %lor.lhs.false65

lor.lhs.false57.cleanup_crit_edge:                ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false65:                                  ; preds = %lor.lhs.false57
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %45)
  %switch180 = icmp ult i16 %45, 2
  br i1 %switch180, label %if.end75, label %lor.lhs.false65.cleanup_crit_edge

lor.lhs.false65.cleanup_crit_edge:                ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end75:                                         ; preds = %lor.lhs.false65
  %46 = ptrtoint ptr %add.ptr.i.i216 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i.i216, align 4
  %call76 = call i32 %47(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end79:                                         ; preds = %if.end75
  %proto81 = getelementptr i8, ptr %dev, i32 2312
  %48 = ptrtoint ptr %proto81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %proto81, align 4
  %cmp82.not = icmp eq ptr %49, @proto
  br i1 %cmp82.not, label %if.end79.if.end91_crit_edge, label %if.then84

if.end79.if.end91_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then84:                                        ; preds = %if.end79
  %call85 = call i32 @attach_hdlc_protocol(ptr noundef %dev, ptr noundef nonnull @proto, i32 noundef 112) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.then84.cleanup_crit_edge

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end88:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  %state.i219 = getelementptr i8, ptr %dev, i32 2368
  %50 = ptrtoint ptr %state.i219 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %state.i219, align 4
  %first_pvc = getelementptr inbounds %struct.frad_state, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %first_pvc to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %first_pvc, align 4
  %53 = load ptr, ptr %state.i219, align 4
  %dce_pvc_count = getelementptr inbounds %struct.frad_state, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dce_pvc_count to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %dce_pvc_count, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end88, %if.end79.if.end91_crit_edge
  %state.i221 = getelementptr i8, ptr %dev, i32 2368
  %55 = ptrtoint ptr %state.i221 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %state.i221, align 4
  %57 = call ptr @memcpy(ptr %56, ptr %new_settings, i32 24)
  %type94 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %58 = ptrtoint ptr %type94 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 770, ptr %type94, align 16
  %call95 = call i32 @call_netdevice_notifiers(i32 noundef 16, ptr noundef %dev) #9
  br label %cleanup

sw.bb96:                                          ; preds = %entry.sw.bb96_crit_edge, %entry.sw.bb96_crit_edge236, %entry.sw.bb96_crit_edge237, %entry.sw.bb96_crit_edge238
  %proto98 = getelementptr i8, ptr %dev, i32 2312
  %59 = ptrtoint ptr %proto98 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %proto98, align 4
  %cmp99.not = icmp eq ptr %60, @proto
  br i1 %cmp99.not, label %if.end102, label %sw.bb96.cleanup_crit_edge

sw.bb96.cleanup_crit_edge:                        ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end102:                                        ; preds = %sw.bb96
  %call103 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %call103, label %if.end105, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end105:                                        ; preds = %if.end102
  %61 = ptrtoint ptr %ifs_ifsu to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ifs_ifsu, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #9
  %call.i.i197 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i197, label %if.end105.if.then11.i.i213_crit_edge, label %land.lhs.true.i.i200

if.end105.if.then11.i.i213_crit_edge:             ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i213

land.lhs.true.i.i200:                             ; preds = %if.end105
  %63 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %62, i32 4, i32 -1226833920) #12, !srcloc !97
  %asmresult.i.i198 = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i198)
  %cmp.i6.i199 = icmp eq i32 %asmresult.i.i198, 0
  br i1 %cmp.i6.i199, label %if.end.i.i210, label %land.lhs.true.i.i200.if.then11.i.i213_crit_edge, !prof !98

land.lhs.true.i.i200.if.then11.i.i213_crit_edge:  ; preds = %land.lhs.true.i.i200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i213

if.end.i.i210:                                    ; preds = %land.lhs.true.i.i200
  %call.i.i.i201 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pvc, i32 noundef 4) #9
  %64 = call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i.i202 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i202 to ptr
  %cpu_domain.i.i.i.i.i203 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i203) #5, !srcloc !99
  %and.i.i.i.i204 = and i32 %66, -13
  %or.i.i.i.i205 = or i32 %and.i.i.i.i204, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i205) #9, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %call1.i.i.i206 = call i32 @arm_copy_from_user(ptr noundef nonnull %pvc, ptr noundef %62, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #9, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i206)
  %tobool4.not.i.i209 = icmp eq i32 %call1.i.i.i206, 0
  br i1 %tobool4.not.i.i209, label %if.end110, label %if.end.i.i210.if.then11.i.i213_crit_edge, !prof !98

if.end.i.i210.if.then11.i.i213_crit_edge:         ; preds = %if.end.i.i210
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i213

if.then11.i.i213:                                 ; preds = %if.end.i.i210.if.then11.i.i213_crit_edge, %land.lhs.true.i.i200.if.then11.i.i213_crit_edge, %if.end105.if.then11.i.i213_crit_edge
  %res.0.i.i208232 = phi i32 [ %call1.i.i.i206, %if.end.i.i210.if.then11.i.i213_crit_edge ], [ 4, %if.end105.if.then11.i.i213_crit_edge ], [ 4, %land.lhs.true.i.i200.if.then11.i.i213_crit_edge ]
  %sub.i.i211 = sub i32 4, %res.0.i.i208232
  %add.ptr.i.i212 = getelementptr i8, ptr %pvc, i32 %sub.i.i211
  %67 = call ptr @memset(ptr %add.ptr.i.i212, i32 0, i32 %res.0.i.i208232)
  br label %cleanup

if.end110:                                        ; preds = %if.end.i.i210
  %68 = ptrtoint ptr %pvc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pvc, align 4
  %70 = add i32 %69, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1023, i32 %70)
  %71 = icmp ult i32 %70, -1023
  br i1 %71, label %if.end110.cleanup_crit_edge, label %if.end118

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end118:                                        ; preds = %if.end110
  %72 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ifs, align 4
  %74 = and i32 %73, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %74)
  %switch182 = icmp eq i32 %74, 8200
  %spec.select = select i1 %switch182, i32 1, i32 15
  %75 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %73, label %if.else138 [
    i32 8196, label %if.end118.if.then135_crit_edge
    i32 8200, label %if.end118.if.then135_crit_edge239
  ]

if.end118.if.then135_crit_edge239:                ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then135

if.end118.if.then135_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then135

if.then135:                                       ; preds = %if.end118.if.then135_crit_edge, %if.end118.if.then135_crit_edge239
  %call137 = call fastcc i32 @fr_add_pvc(ptr noundef %dev, i32 noundef %69, i32 noundef %spec.select)
  br label %cleanup

if.else138:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %call140 = call fastcc i32 @fr_del_pvc(ptr noundef %add.ptr.i.i216, i32 noundef %69, i32 noundef %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %if.else138, %if.then135, %if.end110.cleanup_crit_edge, %if.then11.i.i213, %if.end102.cleanup_crit_edge, %sw.bb96.cleanup_crit_edge, %if.end91, %if.then84.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %lor.lhs.false65.cleanup_crit_edge, %lor.lhs.false57.cleanup_crit_edge, %lor.lhs.false54.cleanup_crit_edge, %lor.lhs.false51.cleanup_crit_edge, %lor.lhs.false48.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.then11.i.i, %if.end15.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then5, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call137, %if.then135 ], [ %call140, %if.else138 ], [ 0, %if.end91 ], [ -105, %if.then5 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -1, %sw.bb12.cleanup_crit_edge ], [ -16, %if.end15.cleanup_crit_edge ], [ -22, %lor.lhs.false65.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ -22, %lor.lhs.false57.cleanup_crit_edge ], [ -22, %lor.lhs.false54.cleanup_crit_edge ], [ -22, %lor.lhs.false51.cleanup_crit_edge ], [ -22, %lor.lhs.false48.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ %call76, %if.end75.cleanup_crit_edge ], [ %call85, %if.then84.cleanup_crit_edge ], [ -22, %sw.bb96.cleanup_crit_edge ], [ -1, %if.end102.cleanup_crit_edge ], [ -22, %if.end110.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end7.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i213 ], [ %spec.select235, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pvc) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %new_settings) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fr_rx(ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp ult i32 %6, 4
  br i1 %cmp, label %entry.rx_error_crit_edge, label %lor.lhs.false

entry.rx_error_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_error

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %bf.load = load i16, ptr %4, align 1
  %8 = and i16 %bf.load, 257
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %.not = icmp eq i16 %8, 1
  br i1 %.not, label %lor.lhs.false8, label %lor.lhs.false.rx_error_crit_edge

lor.lhs.false.rx_error_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_error

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %arrayidx = getelementptr i8, ptr %4, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp9.not = icmp eq i8 %10, 3
  br i1 %cmp9.not, label %if.end, label %lor.lhs.false8.rx_error_crit_edge

lor.lhs.false8.rx_error_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_error

if.end:                                           ; preds = %lor.lhs.false8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %4, align 1
  %13 = and i8 %12, -4
  %and.i = zext i8 %13 to i16
  %shl.i = shl nuw nsw i16 %and.i, 2
  %arrayidx1.i = getelementptr i8, ptr %4, i32 1
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.i, align 1
  %16 = lshr i8 %15, 4
  %17 = zext i8 %16 to i16
  %or.i = or i16 %shl.i, %17
  %trunc = trunc i16 %or.i to i10
  %18 = zext i10 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.35)
  switch i10 %trunc, label %if.end.if.end43_crit_edge [
    i10 0, label %land.lhs.true
    i10 -1, label %land.lhs.true31
  ]

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end
  %state.i = getelementptr i8, ptr %2, i32 2368
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state.i, align 4
  %lmi = getelementptr inbounds %struct.fr_proto, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %lmi to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %lmi, align 4
  %23 = and i16 %22, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %23)
  %switch = icmp eq i16 %23, 2
  br i1 %switch, label %land.lhs.true.if.then38_crit_edge, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

land.lhs.true.if.then38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.lhs.true31:                                  ; preds = %if.end
  %state.i231 = getelementptr i8, ptr %2, i32 2368
  %24 = ptrtoint ptr %state.i231 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state.i231, align 4
  %lmi34 = getelementptr inbounds %struct.fr_proto, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %lmi34 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %lmi34, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %27)
  %cmp36 = icmp eq i16 %27, 4
  br i1 %cmp36, label %land.lhs.true31.if.then38_crit_edge, label %land.lhs.true31.if.end43_crit_edge

land.lhs.true31.if.end43_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

land.lhs.true31.if.then38_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.then38:                                        ; preds = %land.lhs.true31.if.then38_crit_edge, %land.lhs.true.if.then38_crit_edge
  %state.i.i = getelementptr i8, ptr %2, i32 2368
  %28 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state.i.i, align 4
  %lmi2.i = getelementptr inbounds %struct.fr_proto, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %lmi2.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %lmi2.i, align 4
  %dce5.i = getelementptr inbounds %struct.fr_proto, ptr %29, i32 0, i32 6
  %32 = ptrtoint ptr %dce5.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dce5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %31)
  %cmp.i = icmp eq i16 %31, 4
  %cond.i = select i1 %cmp.i, i32 6, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %31)
  %cmp8.i = icmp eq i16 %31, 2
  %cond10.i = select i1 %cmp8.i, i32 14, i32 13
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %cond10.i)
  %cmp11.i = icmp ult i32 %6, %cond10.i
  br i1 %cmp11.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.20) #13
  br label %rx_error

if.end.i:                                         ; preds = %if.then38
  %arrayidx.i = getelementptr i8, ptr %4, i32 3
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %conv13.i = zext i8 %35 to i32
  %cond16.i = select i1 %cmp.i, i32 9, i32 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond16.i, i32 %conv13.i)
  %cmp17.not.i = icmp eq i32 %cond16.i, %conv13.i
  br i1 %cmp17.not.i, label %if.end20.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.21) #13
  br label %rx_error

if.end20.i:                                       ; preds = %if.end.i
  %arrayidx22.i = getelementptr i8, ptr %4, i32 4
  %36 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp24.not.i = icmp eq i8 %37, 0
  br i1 %cmp24.not.i, label %if.end30.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv23.i = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef %conv23.i) #13
  br label %rx_error

if.end30.i:                                       ; preds = %if.end20.i
  %arrayidx32.i = getelementptr i8, ptr %4, i32 5
  %38 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx32.i, align 1
  %conv33.i = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.i = icmp eq i16 %33, 0
  %cond34.i = select i1 %tobool.not.i, i32 125, i32 117
  call void @__sanitizer_cov_trace_cmp4(i32 %cond34.i, i32 %conv33.i)
  %cmp35.not.i = icmp eq i32 %cond34.i, %conv33.i
  br i1 %cmp35.not.i, label %if.end41.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef %conv33.i) #13
  br label %rx_error

if.end41.i:                                       ; preds = %if.end30.i
  br i1 %cmp8.i, label %if.then44.i, label %if.end41.i.if.end55.i_crit_edge

if.end41.i.if.end55.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

if.then44.i:                                      ; preds = %if.end41.i
  %arrayidx46.i = getelementptr i8, ptr %4, i32 6
  %40 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx46.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %41)
  %cmp48.not.i = icmp eq i8 %41, -107
  br i1 %cmp48.not.i, label %if.then44.i.if.end55.i_crit_edge, label %if.then50.i

if.then44.i.if.end55.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

if.then50.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv47.i = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %conv47.i) #13
  br label %rx_error

if.end55.i:                                       ; preds = %if.then44.i.if.end55.i_crit_edge, %if.end41.i.if.end55.i_crit_edge
  %i.0.i = phi i32 [ 7, %if.then44.i.if.end55.i_crit_edge ], [ 6, %if.end41.i.if.end55.i_crit_edge ]
  %arrayidx57.i = getelementptr i8, ptr %4, i32 %i.0.i
  %42 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx57.i, align 1
  %conv58.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %31)
  %cmp59.i = icmp eq i16 %31, 3
  %cond61.i = select i1 %cmp59.i, i32 81, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond61.i, i32 %conv58.i)
  %cmp62.not.i = icmp eq i32 %cond61.i, %conv58.i
  br i1 %cmp62.not.i, label %if.end68.i, label %if.then64.i

if.then64.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %conv58.i) #13
  br label %rx_error

if.end68.i:                                       ; preds = %if.end55.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx70.i = getelementptr i8, ptr %4, i32 %inc.i
  %44 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx70.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp72.not.i = icmp eq i8 %45, 1
  br i1 %cmp72.not.i, label %if.end78.i, label %if.then74.i

if.then74.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv71.i = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef %conv71.i) #13
  br label %rx_error

if.end78.i:                                       ; preds = %if.end68.i
  %inc80.i = add nuw nsw i32 %i.0.i, 2
  %arrayidx81.i = getelementptr i8, ptr %4, i32 %inc80.i
  %46 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx81.i, align 1
  %conv82.i = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %switch.i = icmp ult i8 %47, 2
  br i1 %switch.i, label %if.end88.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %conv82.i) #13
  br label %rx_error

if.end88.i:                                       ; preds = %if.end78.i
  %inc90.i = add nuw nsw i32 %i.0.i, 3
  %arrayidx91.i = getelementptr i8, ptr %4, i32 %inc90.i
  %48 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx91.i, align 1
  %conv92.i = zext i8 %49 to i32
  %cond95.i = select i1 %cmp59.i, i32 83, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %cond95.i, i32 %conv92.i)
  %cmp96.not.i = icmp eq i32 %cond95.i, %conv92.i
  br i1 %cmp96.not.i, label %if.end102.i, label %if.then98.i

if.then98.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %conv92.i) #13
  br label %rx_error

if.end102.i:                                      ; preds = %if.end88.i
  %inc104.i = add nuw nsw i32 %i.0.i, 4
  %arrayidx105.i = getelementptr i8, ptr %4, i32 %inc104.i
  %50 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx105.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp107.not.i = icmp eq i8 %51, 2
  br i1 %cmp107.not.i, label %if.end113.i, label %if.then109.i

if.then109.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv106.i = zext i8 %51 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef %conv106.i) #13
  br label %rx_error

if.end113.i:                                      ; preds = %if.end102.i
  %inc114.i = add nuw nsw i32 %i.0.i, 5
  %inc116.i = add nuw nsw i32 %i.0.i, 6
  %arrayidx117.i = getelementptr i8, ptr %4, i32 %inc114.i
  %52 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx117.i, align 1
  %rxseq119.i = getelementptr inbounds %struct.frad_state, ptr %29, i32 0, i32 13
  %54 = ptrtoint ptr %rxseq119.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %rxseq119.i, align 2
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %inc121.i = add nuw nsw i32 %i.0.i, 7
  %arrayidx122.i = getelementptr i8, ptr %56, i32 %inc116.i
  %57 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx122.i, align 1
  %59 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %state.i.i, align 4
  %txseq124.i = getelementptr inbounds %struct.frad_state, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %txseq124.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %txseq124.i, align 1
  br i1 %tobool.not.i, label %if.end113.i.if.end128.i_crit_edge, label %if.then126.i

if.end113.i.if.end128.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128.i

if.then126.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %last_poll.i = getelementptr inbounds %struct.frad_state, ptr %60, i32 0, i32 5
  %64 = ptrtoint ptr %last_poll.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %last_poll.i, align 4
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then126.i, %if.end113.i.if.end128.i_crit_edge
  %65 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %state.i.i, align 4
  %reliable.i = getelementptr inbounds %struct.frad_state, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %reliable.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %reliable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool130.not.i = icmp eq i32 %68, 0
  %spec.select.i = zext i1 %tobool130.not.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp134.i = icmp ne i8 %58, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %62)
  %cmp138.not.i = icmp eq i8 %58, %62
  %or.cond.i = select i1 %cmp134.i, i1 %cmp138.not.i, i1 false
  br i1 %or.cond.i, label %if.end128.i.if.end142.i_crit_edge, label %if.then140.i

if.end128.i.if.end142.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142.i

if.then140.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #11
  %n391cnt.i = getelementptr inbounds %struct.frad_state, ptr %66, i32 0, i32 11
  %69 = ptrtoint ptr %n391cnt.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %n391cnt.i, align 4
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.then140.i, %if.end128.i.if.end142.i_crit_edge
  %error.1.i = phi i32 [ 1, %if.then140.i ], [ %spec.select.i, %if.end128.i.if.end142.i_crit_edge ]
  %70 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %state.i.i, align 4
  br i1 %tobool.not.i, label %if.end174.i, label %if.then144.i

if.then144.i:                                     ; preds = %if.end142.i
  %fullrep_sent.i = getelementptr inbounds %struct.frad_state, ptr %71, i32 0, i32 9
  %72 = ptrtoint ptr %fullrep_sent.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %fullrep_sent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool146.not.i = icmp ne i32 %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.i)
  %tobool148.not.i = icmp eq i32 %error.1.i, 0
  %or.cond541.i = select i1 %tobool146.not.i, i1 %tobool148.not.i, i1 false
  br i1 %or.cond541.i, label %if.then149.i, label %if.then144.i.if.end160.i_crit_edge

if.then144.i.if.end160.i_crit_edge:               ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.i

if.then149.i:                                     ; preds = %if.then144.i
  %74 = ptrtoint ptr %fullrep_sent.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %fullrep_sent.i, align 4
  %75 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %state.i.i, align 4
  %first_pvc.i = getelementptr inbounds %struct.frad_state, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %first_pvc.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %pvc.0619.i = load ptr, ptr %first_pvc.i, align 4
  %tobool153.not620.i = icmp eq ptr %pvc.0619.i, null
  br i1 %tobool153.not620.i, label %if.then149.i.if.end160.i_crit_edge, label %if.then149.i.while.body.i_crit_edge

if.then149.i.while.body.i_crit_edge:              ; preds = %if.then149.i
  br label %while.body.i

if.then149.i.if.end160.i_crit_edge:               ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.i

while.body.i:                                     ; preds = %if.end159.i.while.body.i_crit_edge, %if.then149.i.while.body.i_crit_edge
  %pvc.0621.i = phi ptr [ %pvc.0.i, %if.end159.i.while.body.i_crit_edge ], [ %pvc.0619.i, %if.then149.i.while.body.i_crit_edge ]
  %state.i232 = getelementptr inbounds %struct.pvc_device, ptr %pvc.0621.i, i32 0, i32 6
  %78 = ptrtoint ptr %state.i232 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load.i = load i8, ptr %state.i232, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool154.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool154.not.i, label %while.body.i.if.end159.i_crit_edge, label %if.then155.i

while.body.i.if.end159.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159.i

if.then155.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear.i = and i8 %bf.load.i, 127
  %79 = ptrtoint ptr %state.i232 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %bf.clear.i, ptr %state.i232, align 4
  %80 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %state.i.i, align 4
  %dce_changed.i = getelementptr inbounds %struct.frad_state, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %dce_changed.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %dce_changed.i, align 4
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then155.i, %while.body.i.if.end159.i_crit_edge
  %next.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.0621.i, i32 0, i32 3
  %83 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %pvc.0.i = load ptr, ptr %next.i, align 4
  %tobool153.not.i = icmp eq ptr %pvc.0.i, null
  br i1 %tobool153.not.i, label %if.end159.i.if.end160.i_crit_edge, label %if.end159.i.while.body.i_crit_edge

if.end159.i.while.body.i_crit_edge:               ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end159.i.if.end160.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.end159.i.if.end160.i_crit_edge, %if.then149.i.if.end160.i_crit_edge, %if.then144.i.if.end160.i_crit_edge
  %84 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %state.i.i, align 4
  %dce_changed162.i = getelementptr inbounds %struct.frad_state, ptr %85, i32 0, i32 7
  %86 = ptrtoint ptr %dce_changed162.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dce_changed162.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool163.not.i = icmp eq i32 %87, 0
  br i1 %tobool163.not.i, label %if.end160.i.if.end169.i_crit_edge, label %if.then164.i

if.end160.i.if.end169.i_crit_edge:                ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169.i

if.then164.i:                                     ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #11
  %fullrep_sent166.i = getelementptr inbounds %struct.frad_state, ptr %85, i32 0, i32 9
  %88 = ptrtoint ptr %fullrep_sent166.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %fullrep_sent166.i, align 4
  %89 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %state.i.i, align 4
  %dce_changed168.i = getelementptr inbounds %struct.frad_state, ptr %90, i32 0, i32 7
  %91 = ptrtoint ptr %dce_changed168.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %dce_changed168.i, align 4
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.then164.i, %if.end160.i.if.end169.i_crit_edge
  %reptype.0.i = phi i32 [ 0, %if.then164.i ], [ %conv82.i, %if.end160.i.if.end169.i_crit_edge ]
  %92 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %state.i.i, align 4
  %request.i = getelementptr inbounds %struct.frad_state, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %request.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reptype.0.i)
  %cmp171.i = icmp eq i32 %reptype.0.i, 0
  %cond173.i = zext i1 %cmp171.i to i32
  tail call fastcc void @fr_lmi_send(ptr noundef %2, i32 noundef %cond173.i) #9
  br label %if.end42

if.end174.i:                                      ; preds = %if.end142.i
  %request176.i = getelementptr inbounds %struct.frad_state, ptr %71, i32 0, i32 8
  %95 = ptrtoint ptr %request176.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %request176.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.i)
  %tobool177.not.i = icmp eq i32 %error.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp180.not.i = icmp eq i8 %47, 0
  %or.cond543.i = select i1 %tobool177.not.i, i1 %cmp180.not.i, i1 false
  br i1 %or.cond543.i, label %if.end183.i, label %if.end174.i.if.end42_crit_edge

if.end174.i.if.end42_crit_edge:                   ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end183.i:                                      ; preds = %if.end174.i
  %96 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %state.i.i, align 4
  %first_pvc185.i = getelementptr inbounds %struct.frad_state, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %first_pvc185.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %pvc.1622.i = load ptr, ptr %first_pvc185.i, align 4
  %tobool187.not623.i = icmp eq ptr %pvc.1622.i, null
  br i1 %tobool187.not623.i, label %if.end183.i.while.cond195.preheader.i_crit_edge, label %if.end183.i.while.body188.i_crit_edge

if.end183.i.while.body188.i_crit_edge:            ; preds = %if.end183.i
  br label %while.body188.i

if.end183.i.while.cond195.preheader.i_crit_edge:  ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond195.preheader.i

while.cond195.preheader.i:                        ; preds = %while.body188.i.while.cond195.preheader.i_crit_edge, %if.end183.i.while.cond195.preheader.i_crit_edge
  %99 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len, align 4
  %add627.i = add nuw nsw i32 %i.0.i, 9
  %add197628.i = add nuw nsw i32 %add627.i, %cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %add197628.i)
  %cmp198.not629.i = icmp ult i32 %100, %add197628.i
  br i1 %cmp198.not629.i, label %while.cond195.preheader.i.while.end344.i_crit_edge, label %while.body200.lr.ph.i

while.cond195.preheader.i.while.end344.i_crit_edge: ; preds = %while.cond195.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end344.i

while.body200.lr.ph.i:                            ; preds = %while.cond195.preheader.i
  %cond206.i = select i1 %cmp59.i, i32 87, i32 7
  br label %while.body200.i

while.body188.i:                                  ; preds = %while.body188.i.while.body188.i_crit_edge, %if.end183.i.while.body188.i_crit_edge
  %pvc.1624.i = phi ptr [ %pvc.1.i, %while.body188.i.while.body188.i_crit_edge ], [ %pvc.1622.i, %if.end183.i.while.body188.i_crit_edge ]
  %state189.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.1624.i, i32 0, i32 6
  %101 = ptrtoint ptr %state189.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load190.i = load i8, ptr %state189.i, align 4
  %bf.set192.i = or i8 %bf.load190.i, 16
  store i8 %bf.set192.i, ptr %state189.i, align 4
  %next193.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.1624.i, i32 0, i32 3
  %102 = ptrtoint ptr %next193.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %pvc.1.i = load ptr, ptr %next193.i, align 4
  %tobool187.not.i = icmp eq ptr %pvc.1.i, null
  br i1 %tobool187.not.i, label %while.body188.i.while.cond195.preheader.i_crit_edge, label %while.body188.i.while.body188.i_crit_edge

while.body188.i.while.body188.i_crit_edge:        ; preds = %while.body188.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body188.i

while.body188.i.while.cond195.preheader.i_crit_edge: ; preds = %while.body188.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond195.preheader.i

while.body200.i:                                  ; preds = %cleanup.i.while.body200.i_crit_edge, %while.body200.lr.ph.i
  %add197633.i = phi i32 [ %add197628.i, %while.body200.lr.ph.i ], [ %add197.i, %cleanup.i.while.body200.i_crit_edge ]
  %add632.i = phi i32 [ %add627.i, %while.body200.lr.ph.i ], [ %add.i, %cleanup.i.while.body200.i_crit_edge ]
  %i.1631.i = phi i32 [ %inc121.i, %while.body200.lr.ph.i ], [ %add197633.i, %cleanup.i.while.body200.i_crit_edge ]
  %no_ram.0630.i = phi i32 [ 0, %while.body200.lr.ph.i ], [ %no_ram.2.i, %cleanup.i.while.body200.i_crit_edge ]
  %103 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data, align 4
  %arrayidx202.i = getelementptr i8, ptr %104, i32 %i.1631.i
  %105 = ptrtoint ptr %arrayidx202.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx202.i, align 1
  %conv203.i = zext i8 %106 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond206.i, i32 %conv203.i)
  %cmp207.not.i = icmp eq i32 %cond206.i, %conv203.i
  br i1 %cmp207.not.i, label %if.end213.i, label %if.then209.i

if.then209.i:                                     ; preds = %while.body200.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv203.i.le = zext i8 %106 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef %conv203.i.le) #13
  br label %rx_error

if.end213.i:                                      ; preds = %while.body200.i
  %inc215.i = add i32 %i.1631.i, 1
  %arrayidx216.i = getelementptr i8, ptr %104, i32 %inc215.i
  %107 = ptrtoint ptr %arrayidx216.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx216.i, align 1
  %conv217.i = zext i8 %108 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv217.i)
  %cmp218.not.i = icmp eq i32 %cond.i, %conv217.i
  br i1 %cmp218.not.i, label %if.end224.i, label %if.then220.i

if.then220.i:                                     ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv217.i.le = zext i8 %108 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.31, i32 noundef %conv217.i.le) #13
  br label %rx_error

if.end224.i:                                      ; preds = %if.end213.i
  %add227.i = add i32 %i.1631.i, 4
  %arrayidx228.i = getelementptr i8, ptr %104, i32 %add227.i
  %109 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx228.i, align 1
  %conv229.i = zext i8 %110 to i32
  %and.i233 = lshr i32 %conv229.i, 3
  %and.lobit.i = and i32 %and.i233, 1
  %and236.i = lshr i32 %conv229.i, 1
  %and236.lobit.i = and i32 %and236.i, 1
  %arrayidx246.i = getelementptr i8, ptr %104, i32 %add632.i
  %111 = ptrtoint ptr %arrayidx246.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx246.i, align 1
  br i1 %cmp.i, label %if.then244.i, label %if.else269.i

if.then244.i:                                     ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv247.i = zext i8 %112 to i16
  %shl.i234 = shl nuw i16 %conv247.i, 8
  %add249.i = add i32 %i.1631.i, 3
  %arrayidx250.i = getelementptr i8, ptr %104, i32 %add249.i
  %113 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx250.i, align 1
  %conv251.i = zext i8 %114 to i16
  %or.i235 = or i16 %shl.i234, %conv251.i
  %add254.i = add i32 %i.1631.i, 5
  %arrayidx255.i = getelementptr i8, ptr %104, i32 %add254.i
  %115 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx255.i, align 1
  %conv256.i = zext i8 %116 to i32
  %shl257.i = shl nuw nsw i32 %conv256.i, 16
  %add259.i = add i32 %i.1631.i, 6
  %arrayidx260.i = getelementptr i8, ptr %104, i32 %add259.i
  %117 = ptrtoint ptr %arrayidx260.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx260.i, align 1
  %conv261.i = zext i8 %118 to i32
  %shl262.i = shl nuw nsw i32 %conv261.i, 8
  %or263.i = or i32 %shl262.i, %shl257.i
  %add265.i = add i32 %i.1631.i, 7
  %arrayidx266.i = getelementptr i8, ptr %104, i32 %add265.i
  %119 = ptrtoint ptr %arrayidx266.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx266.i, align 1
  %conv267.i = zext i8 %120 to i32
  %or268.i = or i32 %or263.i, %conv267.i
  br label %if.end282.i

if.else269.i:                                     ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #11
  %121 = and i8 %112, 63
  %and273.i = zext i8 %121 to i16
  %shl274.i = shl nuw nsw i16 %and273.i, 4
  %add276.i = add i32 %i.1631.i, 3
  %arrayidx277.i = getelementptr i8, ptr %104, i32 %add276.i
  %122 = ptrtoint ptr %arrayidx277.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx277.i, align 1
  %124 = lshr i8 %123, 3
  %125 = and i8 %124, 15
  %126 = zext i8 %125 to i16
  %or280.i = or i16 %shl274.i, %126
  br label %if.end282.i

if.end282.i:                                      ; preds = %if.else269.i, %if.then244.i
  %dlci.0.i = phi i16 [ %or.i235, %if.then244.i ], [ %or280.i, %if.else269.i ]
  %bw.0.i = phi i32 [ %or268.i, %if.then244.i ], [ 0, %if.else269.i ]
  %127 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %state.i.i, align 4
  %first_pvc.i.i = getelementptr inbounds %struct.frad_state, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %first_pvc.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %first_pvc.i.i, align 4
  %tobool.not36.i.i = icmp eq ptr %130, null
  br i1 %tobool.not36.i.i, label %if.end282.i.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

if.end282.i.while.end.i.i_crit_edge:              ; preds = %if.end282.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end282.i
  %conv.i.i = zext i16 %dlci.0.i to i32
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end9.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %131 = phi ptr [ %130, %while.body.lr.ph.i.i ], [ %135, %if.end9.i.i.while.body.i.i_crit_edge ]
  %pvc_p.037.i.i = phi ptr [ %first_pvc.i.i, %while.body.lr.ph.i.i ], [ %next.i.i, %if.end9.i.i.while.body.i.i_crit_edge ]
  %dlci2.i.i = getelementptr inbounds %struct.pvc_device, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %dlci2.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dlci2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %conv.i.i)
  %cmp.i.i = icmp eq i32 %133, %conv.i.i
  br i1 %cmp.i.i, label %while.body.i.i.if.then290.i_crit_edge, label %if.end.i.i

while.body.i.i.if.then290.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then290.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %conv.i.i)
  %cmp6.i.i = icmp sgt i32 %133, %conv.i.i
  br i1 %cmp6.i.i, label %if.end.i.i.while.end.i.i_crit_edge, label %if.end9.i.i

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %next.i.i = getelementptr inbounds %struct.pvc_device, ptr %131, i32 0, i32 3
  %134 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %135, null
  br i1 %tobool.not.i.i, label %if.end9.i.i.while.end.i.i_crit_edge, label %if.end9.i.i.while.body.i.i_crit_edge

if.end9.i.i.while.body.i.i_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end9.i.i.while.end.i.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end9.i.i.while.end.i.i_crit_edge, %if.end.i.i.while.end.i.i_crit_edge, %if.end282.i.while.end.i.i_crit_edge
  %pvc_p.0.lcssa.i.i = phi ptr [ %first_pvc.i.i, %if.end282.i.while.end.i.i_crit_edge ], [ %pvc_p.037.i.i, %if.end.i.i.while.end.i.i_crit_edge ], [ %next.i.i, %if.end9.i.i.while.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %136 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %136, i32 noundef 2848, i32 noundef 32) #14
  %tobool11.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool11.not.i.i, label %land.lhs.true285.i, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv14.i.i = zext i16 %dlci.0.i to i32
  %dlci15.i.i = getelementptr inbounds %struct.pvc_device, ptr %call7.i.i.i.i, i32 0, i32 4
  %137 = ptrtoint ptr %dlci15.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %conv14.i.i, ptr %dlci15.i.i, align 8
  %138 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %2, ptr %call7.i.i.i.i, align 8
  %139 = ptrtoint ptr %pvc_p.0.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pvc_p.0.lcssa.i.i, align 4
  %next16.i.i = getelementptr inbounds %struct.pvc_device, ptr %call7.i.i.i.i, i32 0, i32 3
  %141 = ptrtoint ptr %next16.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %140, ptr %next16.i.i, align 4
  store ptr %call7.i.i.i.i, ptr %pvc_p.0.lcssa.i.i, align 4
  br label %if.then290.i

land.lhs.true285.i:                               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_ram.0630.i)
  %tobool286.not.i = icmp eq i32 %no_ram.0630.i, 0
  br i1 %tobool286.not.i, label %if.then287.i, label %land.lhs.true285.i.cleanup.i_crit_edge

land.lhs.true285.i.cleanup.i_crit_edge:           ; preds = %land.lhs.true285.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then287.i:                                     ; preds = %land.lhs.true285.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.32) #13
  br label %cleanup.i

if.then290.i:                                     ; preds = %if.end13.i.i, %while.body.i.i.if.then290.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ %call7.i.i.i.i, %if.end13.i.i ], [ %131, %while.body.i.i.if.then290.i_crit_edge ]
  %state291.i = getelementptr inbounds %struct.pvc_device, ptr %retval.0.i.ph.i, i32 0, i32 6
  %142 = ptrtoint ptr %state291.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load292.i = load i8, ptr %state291.i, align 4
  %bf.set294.i = and i8 %bf.load292.i, -49
  %bf.clear297.i = or i8 %bf.set294.i, 32
  store i8 %bf.clear297.i, ptr %state291.i, align 4
  %bf.lshr301.i = lshr i8 %bf.load292.i, 6
  %bf.clear302.i = and i8 %bf.lshr301.i, 1
  %bf.cast303.i = zext i8 %bf.clear302.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and236.lobit.i, i32 %bf.cast303.i)
  %cmp304.not.i = icmp eq i32 %and236.lobit.i, %bf.cast303.i
  br i1 %cmp304.not.i, label %lor.lhs.false306.i, label %if.then290.i.if.then324.i_crit_edge

if.then290.i.if.then324.i_crit_edge:              ; preds = %if.then290.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then324.i

lor.lhs.false306.i:                               ; preds = %if.then290.i
  %bf.lshr309.i = lshr i8 %bf.load292.i, 7
  %bf.cast310.i = zext i8 %bf.lshr309.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit.i, i32 %bf.cast310.i)
  %cmp311.not.i = icmp eq i32 %and.lobit.i, %bf.cast310.i
  br i1 %cmp311.not.i, label %lor.lhs.false313.i, label %lor.lhs.false306.i.if.then324.i_crit_edge

lor.lhs.false306.i.if.then324.i_crit_edge:        ; preds = %lor.lhs.false306.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then324.i

lor.lhs.false313.i:                               ; preds = %lor.lhs.false306.i
  %bandwidth.i = getelementptr inbounds %struct.pvc_device, ptr %retval.0.i.ph.i, i32 0, i32 6, i32 1
  %143 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %bandwidth.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bw.0.i, i32 %144)
  %cmp315.not.i = icmp eq i32 %bw.0.i, %144
  br i1 %cmp315.not.i, label %lor.lhs.false313.i.cleanup.i_crit_edge, label %lor.lhs.false313.i.if.then324.i_crit_edge

lor.lhs.false313.i.if.then324.i_crit_edge:        ; preds = %lor.lhs.false313.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then324.i

lor.lhs.false313.i.cleanup.i_crit_edge:           ; preds = %lor.lhs.false313.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then324.i:                                     ; preds = %lor.lhs.false313.i.if.then324.i_crit_edge, %lor.lhs.false306.i.if.then324.i_crit_edge, %if.then290.i.if.then324.i_crit_edge
  %145 = trunc i32 %and.i233 to i8
  %bf.shl.i = shl i8 %145, 7
  %bf.clear327.i = and i8 %bf.clear297.i, 47
  %bf.set328.i = or i8 %bf.clear327.i, %bf.shl.i
  %146 = trunc i32 %and236.i to i8
  %bf.value331.i = shl i8 %146, 6
  %bf.shl332.i = and i8 %bf.value331.i, 64
  %bf.set334.i = or i8 %bf.set328.i, %bf.shl332.i
  %147 = ptrtoint ptr %state291.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %bf.set334.i, ptr %state291.i, align 4
  %bandwidth337.i = getelementptr inbounds %struct.pvc_device, ptr %retval.0.i.ph.i, i32 0, i32 6, i32 1
  %148 = ptrtoint ptr %bandwidth337.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %bw.0.i, ptr %bandwidth337.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236.lobit.i)
  %tobool.not.i560.i = icmp eq i32 %and236.lobit.i, 0
  %main15.i.i = getelementptr inbounds %struct.pvc_device, ptr %retval.0.i.ph.i, i32 0, i32 1
  %149 = ptrtoint ptr %main15.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %main15.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %150, null
  br i1 %tobool.not.i560.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then324.i
  br i1 %tobool16.not.i.i, label %if.then.i.i.if.end6.i.i_crit_edge, label %if.then2.i.i

if.then.i.i.if.end6.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  %state.i.i561.i = getelementptr inbounds %struct.net_device, ptr %150, i32 0, i32 6
  %151 = ptrtoint ptr %state.i.i561.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %state.i.i561.i, align 4
  %153 = and i32 %152, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool.not.i.i.i = icmp eq i32 %153, 0
  br i1 %tobool.not.i.i.i, label %if.then2.i.i.if.end6.i.i_crit_edge, label %if.then4.i.i

if.then2.i.i.if.end6.i.i_crit_edge:               ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_on(ptr noundef nonnull %150) #9
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.then2.i.i.if.end6.i.i_crit_edge, %if.then.i.i.if.end6.i.i_crit_edge
  %ether.i.i = getelementptr inbounds %struct.pvc_device, ptr %retval.0.i.ph.i, i32 0, i32 2
  %154 = ptrtoint ptr %ether.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ether.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %155, null
  br i1 %tobool7.not.i.i, label %if.end6.i.i.pvc_carrier.exit.i_crit_edge, label %if.then8.i.i

if.end6.i.i.pvc_carrier.exit.i_crit_edge:         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  %state.i48.i.i = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 6
  %156 = ptrtoint ptr %state.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %state.i48.i.i, align 4
  %158 = and i32 %157, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i49.i.i = icmp eq i32 %158, 0
  br i1 %tobool.not.i49.i.i, label %if.then8.i.i.pvc_carrier.exit.i_crit_edge, label %if.then11.i.i

if.then8.i.i.pvc_carrier.exit.i_crit_edge:        ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit.i

if.then11.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_on(ptr noundef nonnull %155) #9
  br label %pvc_carrier.exit.i

if.else.i.i:                                      ; preds = %if.then324.i
  br i1 %tobool16.not.i.i, label %if.else.i.i.if.end23.i.i_crit_edge, label %if.then17.i.i

if.else.i.i.if.end23.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i.i

if.then17.i.i:                                    ; preds = %if.else.i.i
  %state.i50.i.i = getelementptr inbounds %struct.net_device, ptr %150, i32 0, i32 6
  %159 = ptrtoint ptr %state.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %state.i50.i.i, align 4
  %161 = and i32 %160, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.not.i51.i.i = icmp eq i32 %161, 0
  br i1 %tobool.not.i51.i.i, label %if.then20.i.i, label %if.then17.i.i.if.end23.i.i_crit_edge

if.then17.i.i.if.end23.i.i_crit_edge:             ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i.i

if.then20.i.i:                                    ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_off(ptr noundef nonnull %150) #9
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then20.i.i, %if.then17.i.i.if.end23.i.i_crit_edge, %if.else.i.i.if.end23.i.i_crit_edge
  %ether24.i.i = getelementptr inbounds %struct.pvc_device, ptr %retval.0.i.ph.i, i32 0, i32 2
  %162 = ptrtoint ptr %ether24.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ether24.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %163, null
  br i1 %tobool25.not.i.i, label %if.end23.i.i.pvc_carrier.exit.i_crit_edge, label %if.then26.i.i

if.end23.i.i.pvc_carrier.exit.i_crit_edge:        ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit.i

if.then26.i.i:                                    ; preds = %if.end23.i.i
  %state.i52.i.i = getelementptr inbounds %struct.net_device, ptr %163, i32 0, i32 6
  %164 = ptrtoint ptr %state.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %state.i52.i.i, align 4
  %166 = and i32 %165, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool.not.i53.i.i = icmp eq i32 %166, 0
  br i1 %tobool.not.i53.i.i, label %if.then29.i.i, label %if.then26.i.i.pvc_carrier.exit.i_crit_edge

if.then26.i.i.pvc_carrier.exit.i_crit_edge:       ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit.i

if.then29.i.i:                                    ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_off(ptr noundef nonnull %163) #9
  br label %pvc_carrier.exit.i

pvc_carrier.exit.i:                               ; preds = %if.then29.i.i, %if.then26.i.i.pvc_carrier.exit.i_crit_edge, %if.end23.i.i.pvc_carrier.exit.i_crit_edge, %if.then11.i.i, %if.then8.i.i.pvc_carrier.exit.i_crit_edge, %if.end6.i.i.pvc_carrier.exit.i_crit_edge
  %167 = ptrtoint ptr %retval.0.i.ph.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %retval.0.i.ph.i, align 4
  %dlci.i.i = getelementptr inbounds %struct.pvc_device, ptr %retval.0.i.ph.i, i32 0, i32 4
  %169 = ptrtoint ptr %dlci.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %dlci.i.i, align 4
  %171 = ptrtoint ptr %main15.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %main15.i.i, align 4
  %tobool.not.i562.i = icmp eq ptr %172, null
  br i1 %tobool.not.i562.i, label %pvc_carrier.exit.i.fr_log_dlci_active.exit.i_crit_edge, label %land.rhs.i.i

pvc_carrier.exit.i.fr_log_dlci_active.exit.i_crit_edge: ; preds = %pvc_carrier.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fr_log_dlci_active.exit.i

land.rhs.i.i:                                     ; preds = %pvc_carrier.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %ether.i563.i = getelementptr inbounds %struct.pvc_device, ptr %retval.0.i.ph.i, i32 0, i32 2
  %173 = ptrtoint ptr %ether.i563.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ether.i563.i, align 4
  %tobool4.not.i.i = icmp eq ptr %174, null
  %phi.sel.i.i = select i1 %tobool4.not.i.i, ptr @.str.3, ptr @.str.7
  br label %fr_log_dlci_active.exit.i

fr_log_dlci_active.exit.i:                        ; preds = %land.rhs.i.i, %pvc_carrier.exit.i.fr_log_dlci_active.exit.i_crit_edge
  %spec.select.i.i = phi ptr [ %172, %land.rhs.i.i ], [ @.str.3, %pvc_carrier.exit.i.fr_log_dlci_active.exit.i_crit_edge ]
  %175 = phi ptr [ %phi.sel.i.i, %land.rhs.i.i ], [ @.str.3, %pvc_carrier.exit.i.fr_log_dlci_active.exit.i_crit_edge ]
  %ether6.i.i = getelementptr inbounds %struct.pvc_device, ptr %retval.0.i.ph.i, i32 0, i32 2
  %176 = ptrtoint ptr %ether6.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ether6.i.i, align 4
  %tobool7.not.i564.i = icmp eq ptr %177, null
  %spec.select44.i.i = select i1 %tobool7.not.i564.i, ptr @.str.3, ptr %177
  %178 = ptrtoint ptr %state291.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %bf.load.i.i = load i8, ptr %state291.i, align 4
  %179 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool21.not.i.i = icmp eq i8 %179, 0
  %180 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool29.not.i.i = icmp eq i8 %180, 0
  %cond30.i.i = select i1 %tobool29.not.i.i, ptr @.str.11, ptr @.str.10
  %cond32.i.i = select i1 %tobool21.not.i.i, ptr @.str.9, ptr %cond30.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool15.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %cond16.i.i = select i1 %tobool15.not.i.i, ptr @.str.3, ptr @.str.8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %168, ptr noundef nonnull @.str.6, i32 noundef %170, ptr noundef nonnull %spec.select.i.i, ptr noundef nonnull %175, ptr noundef nonnull %spec.select44.i.i, ptr noundef nonnull %cond16.i.i, ptr noundef nonnull %cond32.i.i) #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %fr_log_dlci_active.exit.i, %lor.lhs.false313.i.cleanup.i_crit_edge, %if.then287.i, %land.lhs.true285.i.cleanup.i_crit_edge
  %no_ram.2.i = phi i32 [ %no_ram.0630.i, %lor.lhs.false313.i.cleanup.i_crit_edge ], [ %no_ram.0630.i, %fr_log_dlci_active.exit.i ], [ 1, %land.lhs.true285.i.cleanup.i_crit_edge ], [ 1, %if.then287.i ]
  %181 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %len, align 4
  %add.i = add i32 %add197633.i, 2
  %add197.i = add i32 %add.i, %cond.i
  %cmp198.not.i = icmp ult i32 %182, %add197.i
  br i1 %cmp198.not.i, label %cleanup.i.while.end344.i_crit_edge, label %cleanup.i.while.body200.i_crit_edge

cleanup.i.while.body200.i_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body200.i

cleanup.i.while.end344.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end344.i

while.end344.i:                                   ; preds = %cleanup.i.while.end344.i_crit_edge, %while.cond195.preheader.i.while.end344.i_crit_edge
  %183 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %state.i.i, align 4
  %first_pvc346.i = getelementptr inbounds %struct.frad_state, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %first_pvc346.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %pvc.2634.i = load ptr, ptr %first_pvc346.i, align 4
  %tobool348.not635.i = icmp eq ptr %pvc.2634.i, null
  br i1 %tobool348.not635.i, label %while.end344.i.while.end380.i_crit_edge, label %while.end344.i.while.body349.i_crit_edge

while.end344.i.while.body349.i_crit_edge:         ; preds = %while.end344.i
  br label %while.body349.i

while.end344.i.while.end380.i_crit_edge:          ; preds = %while.end344.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end380.i

while.body349.i:                                  ; preds = %if.end378.i.while.body349.i_crit_edge, %while.end344.i.while.body349.i_crit_edge
  %pvc.2636.i = phi ptr [ %pvc.2.i, %if.end378.i.while.body349.i_crit_edge ], [ %pvc.2634.i, %while.end344.i.while.body349.i_crit_edge ]
  %state350.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.2636.i, i32 0, i32 6
  %186 = ptrtoint ptr %state350.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %bf.load351.i = load i8, ptr %state350.i, align 4
  %187 = and i8 %bf.load351.i, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %187)
  %.not.i = icmp eq i8 %187, 48
  br i1 %.not.i, label %if.then363.i, label %while.body349.i.if.end378.i_crit_edge

while.body349.i.if.end378.i_crit_edge:            ; preds = %while.body349.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end378.i

if.then363.i:                                     ; preds = %while.body349.i
  %main15.i567.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.2636.i, i32 0, i32 1
  %188 = ptrtoint ptr %main15.i567.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %main15.i567.i, align 4
  %tobool16.not.i568.i = icmp eq ptr %189, null
  br i1 %tobool16.not.i568.i, label %if.then363.i.if.end23.i576.i_crit_edge, label %if.then17.i572.i

if.then363.i.if.end23.i576.i_crit_edge:           ; preds = %if.then363.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i576.i

if.then17.i572.i:                                 ; preds = %if.then363.i
  %state.i50.i570.i = getelementptr inbounds %struct.net_device, ptr %189, i32 0, i32 6
  %190 = ptrtoint ptr %state.i50.i570.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %state.i50.i570.i, align 4
  %192 = and i32 %191, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool.not.i51.i571.i = icmp eq i32 %192, 0
  br i1 %tobool.not.i51.i571.i, label %if.then20.i573.i, label %if.then17.i572.i.if.end23.i576.i_crit_edge

if.then17.i572.i.if.end23.i576.i_crit_edge:       ; preds = %if.then17.i572.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i576.i

if.then20.i573.i:                                 ; preds = %if.then17.i572.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_off(ptr noundef nonnull %189) #9
  br label %if.end23.i576.i

if.end23.i576.i:                                  ; preds = %if.then20.i573.i, %if.then17.i572.i.if.end23.i576.i_crit_edge, %if.then363.i.if.end23.i576.i_crit_edge
  %ether24.i574.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.2636.i, i32 0, i32 2
  %193 = ptrtoint ptr %ether24.i574.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ether24.i574.i, align 4
  %tobool25.not.i575.i = icmp eq ptr %194, null
  br i1 %tobool25.not.i575.i, label %if.end23.i576.i.pvc_carrier.exit581.i_crit_edge, label %if.then26.i579.i

if.end23.i576.i.pvc_carrier.exit581.i_crit_edge:  ; preds = %if.end23.i576.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit581.i

if.then26.i579.i:                                 ; preds = %if.end23.i576.i
  %state.i52.i577.i = getelementptr inbounds %struct.net_device, ptr %194, i32 0, i32 6
  %195 = ptrtoint ptr %state.i52.i577.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile i32, ptr %state.i52.i577.i, align 4
  %197 = and i32 %196, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool.not.i53.i578.i = icmp eq i32 %197, 0
  br i1 %tobool.not.i53.i578.i, label %if.then29.i580.i, label %if.then26.i579.i.pvc_carrier.exit581.i_crit_edge

if.then26.i579.i.pvc_carrier.exit581.i_crit_edge: ; preds = %if.then26.i579.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit581.i

if.then29.i580.i:                                 ; preds = %if.then26.i579.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_off(ptr noundef nonnull %194) #9
  br label %pvc_carrier.exit581.i

pvc_carrier.exit581.i:                            ; preds = %if.then29.i580.i, %if.then26.i579.i.pvc_carrier.exit581.i_crit_edge, %if.end23.i576.i.pvc_carrier.exit581.i_crit_edge
  %198 = ptrtoint ptr %state350.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %bf.load365.i = load i8, ptr %state350.i, align 4
  %bf.clear374.i = and i8 %bf.load365.i, 31
  store i8 %bf.clear374.i, ptr %state350.i, align 4
  %bandwidth377.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.2636.i, i32 0, i32 6, i32 1
  %199 = ptrtoint ptr %bandwidth377.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %bandwidth377.i, align 4
  %200 = ptrtoint ptr %pvc.2636.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pvc.2636.i, align 4
  %dlci.i582.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.2636.i, i32 0, i32 4
  %202 = ptrtoint ptr %dlci.i582.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %dlci.i582.i, align 4
  %204 = ptrtoint ptr %main15.i567.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %main15.i567.i, align 4
  %tobool.not.i584.i = icmp eq ptr %205, null
  br i1 %tobool.not.i584.i, label %pvc_carrier.exit581.i.fr_log_dlci_active.exit601.i_crit_edge, label %land.rhs.i588.i

pvc_carrier.exit581.i.fr_log_dlci_active.exit601.i_crit_edge: ; preds = %pvc_carrier.exit581.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fr_log_dlci_active.exit601.i

land.rhs.i588.i:                                  ; preds = %pvc_carrier.exit581.i
  call void @__sanitizer_cov_trace_pc() #11
  %206 = ptrtoint ptr %ether24.i574.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ether24.i574.i, align 4
  %tobool4.not.i586.i = icmp eq ptr %207, null
  %phi.sel.i587.i = select i1 %tobool4.not.i586.i, ptr @.str.3, ptr @.str.7
  br label %fr_log_dlci_active.exit601.i

fr_log_dlci_active.exit601.i:                     ; preds = %land.rhs.i588.i, %pvc_carrier.exit581.i.fr_log_dlci_active.exit601.i_crit_edge
  %spec.select.i589.i = phi ptr [ %205, %land.rhs.i588.i ], [ @.str.3, %pvc_carrier.exit581.i.fr_log_dlci_active.exit601.i_crit_edge ]
  %208 = phi ptr [ %phi.sel.i587.i, %land.rhs.i588.i ], [ @.str.3, %pvc_carrier.exit581.i.fr_log_dlci_active.exit601.i_crit_edge ]
  %209 = ptrtoint ptr %ether24.i574.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ether24.i574.i, align 4
  %tobool7.not.i591.i = icmp eq ptr %210, null
  %spec.select44.i592.i = select i1 %tobool7.not.i591.i, ptr @.str.3, ptr %210
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %201, ptr noundef nonnull @.str.6, i32 noundef %203, ptr noundef nonnull %spec.select.i589.i, ptr noundef nonnull %208, ptr noundef nonnull %spec.select44.i592.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9) #13
  br label %if.end378.i

if.end378.i:                                      ; preds = %fr_log_dlci_active.exit601.i, %while.body349.i.if.end378.i_crit_edge
  %next379.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.2636.i, i32 0, i32 3
  %211 = ptrtoint ptr %next379.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %pvc.2.i = load ptr, ptr %next379.i, align 4
  %tobool348.not.i = icmp eq ptr %pvc.2.i, null
  br i1 %tobool348.not.i, label %if.end378.i.while.end380.i_crit_edge, label %if.end378.i.while.body349.i_crit_edge

if.end378.i.while.body349.i_crit_edge:            ; preds = %if.end378.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body349.i

if.end378.i.while.end380.i_crit_edge:             ; preds = %if.end378.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end380.i

while.end380.i:                                   ; preds = %if.end378.i.while.end380.i_crit_edge, %while.end344.i.while.end380.i_crit_edge
  %212 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %state.i.i, align 4
  %n391.i = getelementptr inbounds %struct.fr_proto, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %n391.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %n391.i, align 4
  %conv383.i = trunc i32 %215 to i8
  %n391cnt385.i = getelementptr inbounds %struct.frad_state, ptr %213, i32 0, i32 11
  %216 = ptrtoint ptr %n391cnt385.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %conv383.i, ptr %n391cnt385.i, align 4
  br label %if.end42

if.end42:                                         ; preds = %while.end380.i, %if.end174.i.if.end42_crit_edge, %if.end169.i
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true31.if.end43_crit_edge, %land.lhs.true.if.end43_crit_edge, %if.end.if.end43_crit_edge
  %state.i.i236 = getelementptr i8, ptr %2, i32 2368
  %217 = ptrtoint ptr %state.i.i236 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %state.i.i236, align 4
  %first_pvc.i237 = getelementptr inbounds %struct.frad_state, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %first_pvc.i237 to i32
  call void @__asan_load4_noabort(i32 %219)
  %pvc.014.i = load ptr, ptr %first_pvc.i237, align 4
  %tobool.not15.i = icmp eq ptr %pvc.014.i, null
  br i1 %tobool.not15.i, label %if.end43.rx_drop_crit_edge, label %while.body.lr.ph.i

if.end43.rx_drop_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_drop

while.body.lr.ph.i:                               ; preds = %if.end43
  %conv.i = zext i16 %or.i to i32
  br label %while.body.i239

while.body.i239:                                  ; preds = %if.end8.i.while.body.i239_crit_edge, %while.body.lr.ph.i
  %pvc.016.i = phi ptr [ %pvc.014.i, %while.body.lr.ph.i ], [ %pvc.0.i242, %if.end8.i.while.body.i239_crit_edge ]
  %dlci1.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.016.i, i32 0, i32 4
  %220 = ptrtoint ptr %dlci1.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %dlci1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %221, i32 %conv.i)
  %cmp.i238 = icmp eq i32 %221, %conv.i
  br i1 %cmp.i238, label %if.end47, label %if.end.i240

if.end.i240:                                      ; preds = %while.body.i239
  call void @__sanitizer_cov_trace_cmp4(i32 %221, i32 %conv.i)
  %cmp5.i = icmp sgt i32 %221, %conv.i
  br i1 %cmp5.i, label %if.end.i240.rx_drop_crit_edge, label %if.end8.i

if.end.i240.rx_drop_crit_edge:                    ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_drop

if.end8.i:                                        ; preds = %if.end.i240
  %next.i241 = getelementptr inbounds %struct.pvc_device, ptr %pvc.016.i, i32 0, i32 3
  %222 = ptrtoint ptr %next.i241 to i32
  call void @__asan_load4_noabort(i32 %222)
  %pvc.0.i242 = load ptr, ptr %next.i241, align 4
  %tobool.not.i243 = icmp eq ptr %pvc.0.i242, null
  br i1 %tobool.not.i243, label %if.end8.i.rx_drop_crit_edge, label %if.end8.i.while.body.i239_crit_edge

if.end8.i.while.body.i239_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i239

if.end8.i.rx_drop_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_drop

if.end47:                                         ; preds = %while.body.i239
  %state = getelementptr inbounds %struct.pvc_device, ptr %pvc.016.i, i32 0, i32 6
  %223 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %223)
  %bf.load48 = load i8, ptr %state, align 4
  %bf.lshr49 = lshr i8 %bf.load48, 3
  %bf.clear50 = and i8 %bf.lshr49, 1
  %224 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %224, i32 2)
  %bf.load52 = load i16, ptr %4, align 1
  %bf.lshr53 = lshr i16 %bf.load52, 3
  %bf.clear54 = and i16 %bf.lshr53, 1
  %225 = zext i8 %bf.clear50 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.clear54, i16 %225)
  %cmp56.not = icmp eq i16 %bf.clear54, %225
  br i1 %cmp56.not, label %if.end47.if.end66_crit_edge, label %if.then58

if.end47.if.end66_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then58:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %226 = shl nuw nsw i8 %bf.clear50, 3
  %bf.clear65 = and i8 %bf.load48, -9
  %227 = or i8 %226, %bf.clear65
  %bf.set = xor i8 %227, 8
  %228 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %bf.set, ptr %state, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then58, %if.end47.if.end66_crit_edge
  %229 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %229)
  %bf.load68 = load i8, ptr %state, align 4
  %bf.lshr69 = lshr i8 %bf.load68, 2
  %bf.clear70 = and i8 %bf.lshr69, 1
  %230 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %230, i32 2)
  %bf.load72 = load i16, ptr %4, align 1
  %bf.lshr73 = lshr i16 %bf.load72, 2
  %bf.clear74 = and i16 %bf.lshr73, 1
  %231 = zext i8 %bf.clear70 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.clear74, i16 %231)
  %cmp76.not = icmp eq i16 %bf.clear74, %231
  br i1 %cmp76.not, label %if.end66.if.end91_crit_edge, label %if.then78

if.end66.if.end91_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then78:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %232 = shl nuw nsw i8 %bf.clear70, 2
  %bf.clear88 = and i8 %bf.load68, -5
  %233 = or i8 %232, %bf.clear88
  %bf.set89 = xor i8 %233, 4
  %234 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %bf.set89, ptr %state, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then78, %if.end66.if.end91_crit_edge
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #9
  %235 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %236)
  %cmp.i.not.i = icmp eq i32 %236, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end91
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #9
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread261, !prof !102

skb_share_check.exit.thread261:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %if.end95

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %if.then94

skb_share_check.exit:                             ; preds = %if.end91
  %tobool93.not = icmp eq ptr %skb, null
  br i1 %tobool93.not, label %skb_share_check.exit.if.then94_crit_edge, label %skb_share_check.exit.if.end95_crit_edge

skb_share_check.exit.if.end95_crit_edge:          ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

skb_share_check.exit.if.then94_crit_edge:         ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then94

if.then94:                                        ; preds = %skb_share_check.exit.if.then94_crit_edge, %skb_share_check.exit.thread
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 6
  %237 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %238, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %cleanup

if.end95:                                         ; preds = %skb_share_check.exit.if.end95_crit_edge, %skb_share_check.exit.thread261
  %skb.addr.0.i264 = phi ptr [ %call7.i, %skb_share_check.exit.thread261 ], [ %skb, %skb_share_check.exit.if.end95_crit_edge ]
  %arrayidx96 = getelementptr i8, ptr %4, i32 3
  %239 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx96, align 1
  %241 = zext i8 %240 to i64
  call void @__sanitizer_cov_trace_switch(i64 %241, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %240, label %if.else146 [
    i8 -52, label %if.then100
    i8 -114, label %if.then110
    i8 0, label %if.then123
  ]

if.then100:                                       ; preds = %if.end95
  %main = getelementptr inbounds %struct.pvc_device, ptr %pvc.016.i, i32 0, i32 1
  %242 = ptrtoint ptr %main to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %main, align 4
  %tobool101.not = icmp eq ptr %243, null
  br i1 %tobool101.not, label %if.then100.rx_drop_crit_edge, label %if.then100.if.end152.sink.split_crit_edge

if.then100.if.end152.sink.split_crit_edge:        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152.sink.split

if.then100.rx_drop_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_drop

if.then110:                                       ; preds = %if.end95
  %main111 = getelementptr inbounds %struct.pvc_device, ptr %pvc.016.i, i32 0, i32 1
  %244 = ptrtoint ptr %main111 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %main111, align 4
  %tobool112.not = icmp eq ptr %245, null
  br i1 %tobool112.not, label %if.then110.rx_drop_crit_edge, label %if.then110.if.end152.sink.split_crit_edge

if.then110.if.end152.sink.split_crit_edge:        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152.sink.split

if.then110.rx_drop_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_drop

if.then123:                                       ; preds = %if.end95
  %len124 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i264, i32 0, i32 6
  %246 = ptrtoint ptr %len124 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %len124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %247)
  %cmp125 = icmp ult i32 %247, 5
  br i1 %cmp125, label %if.then123.rx_error_crit_edge, label %if.end128

if.then123.rx_error_crit_edge:                    ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_error

if.end128:                                        ; preds = %if.then123
  %arrayidx129 = getelementptr i8, ptr %4, i32 4
  %248 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx129, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %249)
  %cmp131 = icmp eq i8 %249, -128
  br i1 %cmp131, label %if.then133, label %if.end128.rx_drop_crit_edge

if.end128.rx_drop_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_drop

if.then133:                                       ; preds = %if.end128
  %call134 = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i264, i32 noundef 5) #9
  %250 = ptrtoint ptr %len124 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %len124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %251)
  %cmp136 = icmp ult i32 %251, 5
  br i1 %cmp136, label %if.then133.rx_error_crit_edge, label %if.end139

if.then133.rx_error_crit_edge:                    ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_error

if.end139:                                        ; preds = %if.then133
  %call140 = tail call fastcc i32 @fr_snap_parse(ptr noundef nonnull %skb.addr.0.i264, ptr noundef nonnull %pvc.016.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end139.if.end152_crit_edge, label %if.end139.rx_drop_crit_edge

if.end139.rx_drop_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_drop

if.end139.if.end152_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.else146:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %conv97 = zext i8 %240 to i32
  %len149 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i264, i32 0, i32 6
  %252 = ptrtoint ptr %len149 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %len149, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %conv97, i32 noundef %253) #13
  br label %rx_drop

if.end152.sink.split:                             ; preds = %if.then110.if.end152.sink.split_crit_edge, %if.then100.if.end152.sink.split_crit_edge
  %main111.sink = phi ptr [ %main, %if.then100.if.end152.sink.split_crit_edge ], [ %main111, %if.then110.if.end152.sink.split_crit_edge ]
  %.sink = phi i16 [ 2048, %if.then100.if.end152.sink.split_crit_edge ], [ -31011, %if.then110.if.end152.sink.split_crit_edge ]
  %call115 = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i264, i32 noundef 4) #9
  %254 = ptrtoint ptr %main111.sink to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %main111.sink, align 4
  %256 = getelementptr inbounds %struct.anon.0, ptr %skb.addr.0.i264, i32 0, i32 2
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %255, ptr %256, align 8
  %protocol117 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i264, i32 0, i32 15, i32 0, i32 18
  %258 = ptrtoint ptr %protocol117 to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %.sink, ptr %protocol117, align 8
  %data.i247 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i264, i32 0, i32 19
  %259 = ptrtoint ptr %data.i247 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %data.i247, align 4
  %head.i248 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i264, i32 0, i32 18
  %261 = ptrtoint ptr %head.i248 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %head.i248, align 8
  %sub.ptr.lhs.cast.i249 = ptrtoint ptr %260 to i32
  %sub.ptr.rhs.cast.i250 = ptrtoint ptr %262 to i32
  %sub.ptr.sub.i251 = sub i32 %sub.ptr.lhs.cast.i249, %sub.ptr.rhs.cast.i250
  %conv.i252 = trunc i32 %sub.ptr.sub.i251 to i16
  %mac_header.i253 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i264, i32 0, i32 15, i32 0, i32 21
  %263 = ptrtoint ptr %mac_header.i253 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %conv.i252, ptr %mac_header.i253, align 2
  br label %if.end152

if.end152:                                        ; preds = %if.end152.sink.split, %if.end139.if.end152_crit_edge
  %264 = getelementptr inbounds %struct.anon.0, ptr %skb.addr.0.i264, i32 0, i32 2
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %264, align 8
  %stats153 = getelementptr inbounds %struct.net_device, ptr %266, i32 0, i32 36
  %267 = ptrtoint ptr %stats153 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %stats153, align 8
  %inc154 = add i32 %268, 1
  store i32 %inc154, ptr %stats153, align 8
  %len155 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i264, i32 0, i32 6
  %269 = ptrtoint ptr %len155 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %len155, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %266, i32 0, i32 36, i32 2
  %271 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %272, %270
  store i32 %add, ptr %rx_bytes, align 8
  %273 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %273)
  %bf.load158 = load i8, ptr %state, align 4
  %274 = and i8 %bf.load158, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool162.not = icmp eq i8 %274, 0
  br i1 %tobool162.not, label %if.end152.if.end166_crit_edge, label %if.then163

if.end152.if.end166_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.then163:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  %rx_compressed = getelementptr inbounds %struct.net_device, ptr %266, i32 0, i32 36, i32 21
  %275 = ptrtoint ptr %rx_compressed to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %rx_compressed, align 4
  %inc165 = add i32 %276, 1
  store i32 %inc165, ptr %rx_compressed, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %if.end152.if.end166_crit_edge
  %call167 = tail call i32 @netif_rx(ptr noundef nonnull %skb.addr.0.i264) #9
  br label %cleanup

rx_error:                                         ; preds = %if.then133.rx_error_crit_edge, %if.then123.rx_error_crit_edge, %if.then220.i, %if.then209.i, %if.then109.i, %if.then98.i, %if.then87.i, %if.then74.i, %if.then64.i, %if.then50.i, %if.then37.i, %if.then26.i, %if.then19.i, %if.then.i, %lor.lhs.false8.rx_error_crit_edge, %lor.lhs.false.rx_error_crit_edge, %entry.rx_error_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %entry.rx_error_crit_edge ], [ %skb, %lor.lhs.false.rx_error_crit_edge ], [ %skb, %lor.lhs.false8.rx_error_crit_edge ], [ %skb.addr.0.i264, %if.then123.rx_error_crit_edge ], [ %skb.addr.0.i264, %if.then133.rx_error_crit_edge ], [ %skb, %if.then.i ], [ %skb, %if.then19.i ], [ %skb, %if.then26.i ], [ %skb, %if.then37.i ], [ %skb, %if.then50.i ], [ %skb, %if.then64.i ], [ %skb, %if.then74.i ], [ %skb, %if.then87.i ], [ %skb, %if.then98.i ], [ %skb, %if.then109.i ], [ %skb, %if.then209.i ], [ %skb, %if.then220.i ]
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 4
  %277 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %rx_errors, align 8
  %inc169 = add i32 %278, 1
  store i32 %inc169, ptr %rx_errors, align 8
  br label %rx_drop

rx_drop:                                          ; preds = %rx_error, %if.else146, %if.end139.rx_drop_crit_edge, %if.end128.rx_drop_crit_edge, %if.then110.rx_drop_crit_edge, %if.then100.rx_drop_crit_edge, %if.end8.i.rx_drop_crit_edge, %if.end.i240.rx_drop_crit_edge, %if.end43.rx_drop_crit_edge
  %skb.addr.1 = phi ptr [ %skb.addr.0, %rx_error ], [ %skb.addr.0.i264, %if.then100.rx_drop_crit_edge ], [ %skb.addr.0.i264, %if.then110.rx_drop_crit_edge ], [ %skb.addr.0.i264, %if.end139.rx_drop_crit_edge ], [ %skb.addr.0.i264, %if.end128.rx_drop_crit_edge ], [ %skb.addr.0.i264, %if.else146 ], [ %skb, %if.end43.rx_drop_crit_edge ], [ %skb, %if.end8.i.rx_drop_crit_edge ], [ %skb, %if.end.i240.rx_drop_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.addr.1, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %rx_drop, %if.end166, %if.then94, %if.end42
  %retval.0 = phi i32 [ 1, %rx_drop ], [ 0, %if.end42 ], [ 0, %if.end166 ], [ 1, %if.then94 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fr_timer(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %state.i = getelementptr i8, ptr %1, i32 2368
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state.i, align 4
  %dce = getelementptr inbounds %struct.fr_proto, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dce to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dce, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %request = getelementptr inbounds %struct.frad_state, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then.land.end_crit_edge, label %land.rhs

if.then.land.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_poll = getelementptr inbounds %struct.frad_state, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %last_poll to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_poll, align 4
  %t392 = getelementptr inbounds %struct.fr_proto, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %t392 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %t392, align 4
  %mul.neg = mul i32 %12, -100
  %add.neg = sub i32 %8, %10
  %sub = add i32 %add.neg, %mul.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.land.end_crit_edge
  %13 = phi i1 [ false, %if.then.land.end_crit_edge ], [ %cmp, %land.rhs ]
  %14 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %request, align 4
  br label %if.end31

if.else:                                          ; preds = %entry
  %last_errors = getelementptr inbounds %struct.frad_state, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %last_errors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_errors, align 4
  %shl = shl i32 %16, 1
  store i32 %shl, ptr %last_errors, align 4
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state.i, align 4
  %request12 = getelementptr inbounds %struct.frad_state, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %request12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %request12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not = icmp eq i32 %20, 0
  br i1 %tobool13.not, label %if.else.if.end21_crit_edge, label %if.then14

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then14:                                        ; preds = %if.else
  %reliable16 = getelementptr inbounds %struct.frad_state, ptr %18, i32 0, i32 6
  %21 = ptrtoint ptr %reliable16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reliable16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool17.not = icmp eq i32 %22, 0
  br i1 %tobool17.not, label %if.then14.if.end_crit_edge, label %if.then18

if.then14.if.end_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.1) #13
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then14.if.end_crit_edge
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state.i, align 4
  %last_errors20 = getelementptr inbounds %struct.frad_state, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %last_errors20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %last_errors20, align 4
  %or = or i32 %26, 1
  store i32 %or, ptr %last_errors20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.else.if.end21_crit_edge
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state.i, align 4
  %n393 = getelementptr inbounds %struct.fr_proto, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %n393 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n393, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp26131.not = icmp eq i32 %30, 0
  br i1 %cmp26131.not, label %if.end21.for.end_crit_edge, label %for.body.preheader

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end21
  %last_errors23 = getelementptr inbounds %struct.frad_state, ptr %28, i32 0, i32 10
  %31 = ptrtoint ptr %last_errors23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_errors23, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %list.0134 = phi i32 [ %shr, %for.body.for.body_crit_edge ], [ %32, %for.body.preheader ]
  %cnt.0133 = phi i32 [ %add27, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0132 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %and = and i32 %list.0134, 1
  %add27 = add i32 %and, %cnt.0133
  %inc = add nuw i32 %i.0132, 1
  %shr = lshr i32 %list.0134, 1
  %exitcond.not = icmp eq i32 %inc, %30
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end21.for.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %if.end21.for.end_crit_edge ], [ %add27, %for.body.for.end_crit_edge ]
  %n392 = getelementptr inbounds %struct.fr_proto, ptr %28, i32 0, i32 3
  %33 = ptrtoint ptr %n392 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n392, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0.lcssa, i32 %34)
  %cmp30 = icmp ult i32 %cnt.0.lcssa, %34
  br label %if.end31

if.end31:                                         ; preds = %for.end, %land.end
  %reliable.0.in = phi i1 [ %13, %land.end ], [ %cmp30, %for.end ]
  %reliable.0 = zext i1 %reliable.0.in to i32
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state.i, align 4
  %reliable33 = getelementptr inbounds %struct.frad_state, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %reliable33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reliable33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %reliable.0)
  %cmp34.not = icmp eq i32 %38, %reliable.0
  br i1 %cmp34.not, label %if.end31.if.end38_crit_edge, label %if.then36

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %cond = select i1 %reliable.0.in, ptr @.str.3, ptr @.str.4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond) #13
  tail call fastcc void @fr_set_link_state(i32 noundef %reliable.0, ptr noundef %1)
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end31.if.end38_crit_edge
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state.i, align 4
  %dce41 = getelementptr inbounds %struct.fr_proto, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %dce41 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %dce41, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool42.not = icmp eq i16 %42, 0
  br i1 %tobool42.not, label %if.else50, label %if.then43

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %t39246 = getelementptr inbounds %struct.fr_proto, ptr %40, i32 0, i32 1
  br label %if.end73

if.else50:                                        ; preds = %if.end38
  %n391cnt = getelementptr inbounds %struct.frad_state, ptr %40, i32 0, i32 11
  %43 = ptrtoint ptr %n391cnt to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %n391cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool52.not = icmp eq i8 %44, 0
  br i1 %tobool52.not, label %if.else50.if.end56_crit_edge, label %if.then53

if.else50.if.end56_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then53:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i8 %44, -1
  %45 = ptrtoint ptr %n391cnt to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %dec, ptr %n391cnt, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.else50.if.end56_crit_edge
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %state.i, align 4
  %n391cnt58 = getelementptr inbounds %struct.frad_state, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %n391cnt58 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %n391cnt58, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp60 = icmp eq i8 %49, 0
  %conv61 = zext i1 %cmp60 to i32
  tail call fastcc void @fr_lmi_send(ptr noundef %1, i32 noundef %conv61)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %51 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %state.i, align 4
  %last_poll63 = getelementptr inbounds %struct.frad_state, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %last_poll63 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %last_poll63, align 4
  %54 = load ptr, ptr %state.i, align 4
  %request65 = getelementptr inbounds %struct.frad_state, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %request65 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %request65, align 4
  %56 = load ptr, ptr %state.i, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end56, %if.then43
  %.sink137 = phi ptr [ %56, %if.end56 ], [ %t39246, %if.then43 ]
  %.sink = phi ptr [ %56, %if.end56 ], [ %40, %if.then43 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %.sink135 = load volatile i32, ptr @jiffies, align 128
  %57 = ptrtoint ptr %.sink137 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %.sink137, align 4
  %mul68 = mul i32 %58, 100
  %add69 = add i32 %mul68, %.sink135
  %expires72 = getelementptr inbounds %struct.frad_state, ptr %.sink, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %expires72 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add69, ptr %expires72, align 4
  %60 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %state.i, align 4
  %timer75 = getelementptr inbounds %struct.frad_state, ptr %61, i32 0, i32 3
  tail call void @add_timer(ptr noundef %timer75) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fr_set_link_state(i32 noundef %reliable, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %first_pvc = getelementptr inbounds %struct.frad_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %first_pvc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %first_pvc, align 4
  %reliable3 = getelementptr inbounds %struct.frad_state, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %reliable3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %reliable, ptr %reliable3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reliable)
  %tobool.not = icmp eq i32 %reliable, 0
  %state.i68 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %state.i68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.netif_dormant_off.exit_crit_edge, label %if.then.i

if.then.netif_dormant_off.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_dormant_off.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @linkwatch_fire_event(ptr noundef %dev) #9
  br label %netif_dormant_off.exit

netif_dormant_off.exit:                           ; preds = %if.then.i, %if.then.netif_dormant_off.exit_crit_edge
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state.i, align 4
  %n391cnt = getelementptr inbounds %struct.frad_state, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %n391cnt to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %n391cnt, align 4
  %8 = load ptr, ptr %state.i, align 4
  %dce_changed = getelementptr inbounds %struct.frad_state, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %dce_changed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %dce_changed, align 4
  %10 = load ptr, ptr %state.i, align 4
  %lmi = getelementptr inbounds %struct.fr_proto, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %lmi to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %lmi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp = icmp ne i16 %12, 1
  %tobool9.not77 = icmp eq ptr %3, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool9.not77
  br i1 %or.cond, label %netif_dormant_off.exit.if.end41_crit_edge, label %netif_dormant_off.exit.while.body_crit_edge

netif_dormant_off.exit.while.body_crit_edge:      ; preds = %netif_dormant_off.exit
  br label %while.body

netif_dormant_off.exit.if.end41_crit_edge:        ; preds = %netif_dormant_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

while.body:                                       ; preds = %pvc_carrier.exit.while.body_crit_edge, %netif_dormant_off.exit.while.body_crit_edge
  %pvc.078 = phi ptr [ %25, %pvc_carrier.exit.while.body_crit_edge ], [ %3, %netif_dormant_off.exit.while.body_crit_edge ]
  %main15.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.078, i32 0, i32 1
  %13 = ptrtoint ptr %main15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %main15.i, align 4
  %tobool16.not.i = icmp eq ptr %14, null
  br i1 %tobool16.not.i, label %while.body.if.end6.i_crit_edge, label %if.then2.i

while.body.if.end6.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then2.i:                                       ; preds = %while.body
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %if.then2.i.if.end6.i_crit_edge, label %if.then4.i

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_on(ptr noundef nonnull %14) #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then2.i.if.end6.i_crit_edge, %while.body.if.end6.i_crit_edge
  %ether.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.078, i32 0, i32 2
  %18 = ptrtoint ptr %ether.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ether.i, align 4
  %tobool7.not.i = icmp eq ptr %19, null
  br i1 %tobool7.not.i, label %if.end6.i.pvc_carrier.exit_crit_edge, label %if.then8.i

if.end6.i.pvc_carrier.exit_crit_edge:             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit

if.then8.i:                                       ; preds = %if.end6.i
  %state.i48.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %state.i48.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i48.i, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i49.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i49.i, label %if.then8.i.pvc_carrier.exit_crit_edge, label %if.then11.i

if.then8.i.pvc_carrier.exit_crit_edge:            ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_on(ptr noundef nonnull %19) #9
  br label %pvc_carrier.exit

pvc_carrier.exit:                                 ; preds = %if.then11.i, %if.then8.i.pvc_carrier.exit_crit_edge, %if.end6.i.pvc_carrier.exit_crit_edge
  %state = getelementptr inbounds %struct.pvc_device, ptr %pvc.078, i32 0, i32 6
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %state, align 4
  %bf.set13 = and i8 %bf.load, 31
  %bf.clear16 = or i8 %bf.set13, 96
  store i8 %bf.clear16, ptr %state, align 4
  %next = getelementptr inbounds %struct.pvc_device, ptr %pvc.078, i32 0, i32 3
  %24 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %next, align 4
  %tobool9.not = icmp eq ptr %25, null
  br i1 %tobool9.not, label %pvc_carrier.exit.if.end41_crit_edge, label %pvc_carrier.exit.while.body_crit_edge

pvc_carrier.exit.while.body_crit_edge:            ; preds = %pvc_carrier.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

pvc_carrier.exit.if.end41_crit_edge:              ; preds = %pvc_carrier.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.else:                                          ; preds = %entry
  %call.i69 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.then.i71, label %if.else.netif_dormant_on.exit_crit_edge

if.else.netif_dormant_on.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_dormant_on.exit

if.then.i71:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @linkwatch_fire_event(ptr noundef %dev) #9
  br label %netif_dormant_on.exit

netif_dormant_on.exit:                            ; preds = %if.then.i71, %if.else.netif_dormant_on.exit_crit_edge
  %tobool19.not79 = icmp eq ptr %3, null
  br i1 %tobool19.not79, label %netif_dormant_on.exit.if.end41_crit_edge, label %netif_dormant_on.exit.while.body20_crit_edge

netif_dormant_on.exit.while.body20_crit_edge:     ; preds = %netif_dormant_on.exit
  br label %while.body20

netif_dormant_on.exit.if.end41_crit_edge:         ; preds = %netif_dormant_on.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

while.body20:                                     ; preds = %if.end38.while.body20_crit_edge, %netif_dormant_on.exit.while.body20_crit_edge
  %pvc.180 = phi ptr [ %43, %if.end38.while.body20_crit_edge ], [ %3, %netif_dormant_on.exit.while.body20_crit_edge ]
  %main15.i72 = getelementptr inbounds %struct.pvc_device, ptr %pvc.180, i32 0, i32 1
  %26 = ptrtoint ptr %main15.i72 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %main15.i72, align 4
  %tobool16.not.i73 = icmp eq ptr %27, null
  br i1 %tobool16.not.i73, label %while.body20.if.end23.i_crit_edge, label %if.then17.i

while.body20.if.end23.i_crit_edge:                ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then17.i:                                      ; preds = %while.body20
  %state.i50.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %state.i50.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i50.i, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i51.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i51.i, label %if.then20.i, label %if.then17.i.if.end23.i_crit_edge

if.then17.i.if.end23.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_off(ptr noundef nonnull %27) #9
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.then17.i.if.end23.i_crit_edge, %while.body20.if.end23.i_crit_edge
  %ether24.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.180, i32 0, i32 2
  %31 = ptrtoint ptr %ether24.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ether24.i, align 4
  %tobool25.not.i = icmp eq ptr %32, null
  br i1 %tobool25.not.i, label %if.end23.i.pvc_carrier.exit74_crit_edge, label %if.then26.i

if.end23.i.pvc_carrier.exit74_crit_edge:          ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit74

if.then26.i:                                      ; preds = %if.end23.i
  %state.i52.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %state.i52.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state.i52.i, align 4
  %35 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i53.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i53.i, label %if.then29.i, label %if.then26.i.pvc_carrier.exit74_crit_edge

if.then26.i.pvc_carrier.exit74_crit_edge:         ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit74

if.then29.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_off(ptr noundef nonnull %32) #9
  br label %pvc_carrier.exit74

pvc_carrier.exit74:                               ; preds = %if.then29.i, %if.then26.i.pvc_carrier.exit74_crit_edge, %if.end23.i.pvc_carrier.exit74_crit_edge
  %state21 = getelementptr inbounds %struct.pvc_device, ptr %pvc.180, i32 0, i32 6
  %36 = ptrtoint ptr %state21 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load22 = load i8, ptr %state21, align 4
  %bf.clear31 = and i8 %bf.load22, 31
  store i8 %bf.clear31, ptr %state21, align 4
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %state.i, align 4
  %dce = getelementptr inbounds %struct.fr_proto, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %dce to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %dce, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool35.not = icmp eq i16 %40, 0
  br i1 %tobool35.not, label %if.then36, label %pvc_carrier.exit74.if.end38_crit_edge

pvc_carrier.exit74.if.end38_crit_edge:            ; preds = %pvc_carrier.exit74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then36:                                        ; preds = %pvc_carrier.exit74
  call void @__sanitizer_cov_trace_pc() #11
  %bandwidth = getelementptr inbounds %struct.pvc_device, ptr %pvc.180, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %bandwidth, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %pvc_carrier.exit74.if.end38_crit_edge
  %next39 = getelementptr inbounds %struct.pvc_device, ptr %pvc.180, i32 0, i32 3
  %42 = ptrtoint ptr %next39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %next39, align 4
  %tobool19.not = icmp eq ptr %43, null
  br i1 %tobool19.not, label %if.end38.if.end41_crit_edge, label %if.end38.while.body20_crit_edge

if.end38.while.body20_crit_edge:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body20

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end41:                                         ; preds = %if.end38.if.end41_crit_edge, %netif_dormant_on.exit.if.end41_crit_edge, %pvc_carrier.exit.if.end41_crit_edge, %netif_dormant_off.exit.if.end41_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fr_lmi_send(ptr noundef %dev, i32 noundef %fullrep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %first_pvc = getelementptr inbounds %struct.frad_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %first_pvc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %first_pvc, align 4
  %lmi3 = getelementptr inbounds %struct.fr_proto, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %lmi3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %lmi3, align 4
  %dce6 = getelementptr inbounds %struct.fr_proto, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dce6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dce6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp = icmp eq i16 %5, 2
  %cond = select i1 %cmp, i32 14, i32 13
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp9 = icmp eq i16 %5, 4
  %cond11 = select i1 %cmp9, i32 6, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fullrep)
  %tobool12.not = icmp eq i32 %fullrep, 0
  %or.cond = or i1 %tobool12.not, %tobool.not
  br i1 %or.cond, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %entry
  %dce_pvc_count = getelementptr inbounds %struct.frad_state, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dce_pvc_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dce_pvc_count, align 4
  %add = add nuw nsw i32 %cond11, 2
  %mul = mul i32 %9, %add
  %add14 = add i32 %mul, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %add14)
  %cmp15 = icmp sgt i32 %add14, 1600
  br i1 %cmp15, label %if.then17, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5) #13
  br label %cleanup

if.end18:                                         ; preds = %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  %len.0 = phi i32 [ %add14, %if.then.if.end18_crit_edge ], [ %cond, %entry.if.end18_crit_edge ]
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %len.0, i32 noundef 2592) #9
  %tobool20.not = icmp eq ptr %call.i.i, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %data23 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data23, align 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 %len.0)
  %13 = load ptr, ptr %data23, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  store ptr %add.ptr.i, ptr %data23, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %15, i32 4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %. = select i1 %cmp9, i16 1023, i16 0
  %call28 = tail call fastcc i32 @fr_hard_header(ptr noundef nonnull %call.i.i, i16 noundef zeroext %.)
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %17, align 1
  %conv33 = select i1 %tobool.not, i8 117, i8 125
  %arrayidx35 = getelementptr i8, ptr %17, i32 1
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv33, ptr %arrayidx35, align 1
  br i1 %cmp, label %if.then38, label %if.end22.if.end41_crit_edge

if.end22.if.end41_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then38:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx40 = getelementptr i8, ptr %17, i32 2
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -107, ptr %arrayidx40, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end22.if.end41_crit_edge
  %i.0 = phi i32 [ 3, %if.then38 ], [ 2, %if.end22.if.end41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp42 = icmp eq i16 %5, 3
  %conv45 = select i1 %cmp42, i8 81, i8 1
  %inc46 = add nuw nsw i32 %i.0, 1
  %arrayidx47 = getelementptr i8, ptr %17, i32 %i.0
  %21 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv45, ptr %arrayidx47, align 1
  %inc48 = add nuw nsw i32 %i.0, 2
  %arrayidx49 = getelementptr i8, ptr %17, i32 %inc46
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx49, align 1
  %conv52 = zext i1 %tobool12.not to i8
  %inc53 = add nuw nsw i32 %i.0, 3
  %arrayidx54 = getelementptr i8, ptr %17, i32 %inc48
  %23 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv52, ptr %arrayidx54, align 1
  %conv58 = select i1 %cmp42, i8 83, i8 3
  %inc59 = or i32 %i.0, 4
  %arrayidx60 = getelementptr i8, ptr %17, i32 %inc53
  %24 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv58, ptr %arrayidx60, align 1
  %inc61 = add nuw nsw i32 %i.0, 5
  %arrayidx62 = getelementptr i8, ptr %17, i32 %inc59
  %25 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %arrayidx62, align 1
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state.i, align 4
  %txseq = getelementptr inbounds %struct.frad_state, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %txseq to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %txseq, align 1
  %inc.i = add i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i)
  %tobool.not.i = icmp eq i8 %inc.i, 0
  %spec.select.i = select i1 %tobool.not.i, i8 1, i8 %inc.i
  %30 = ptrtoint ptr %txseq to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %spec.select.i, ptr %txseq, align 1
  %inc67 = add nuw nsw i32 %i.0, 6
  %arrayidx68 = getelementptr i8, ptr %17, i32 %inc61
  %31 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %spec.select.i, ptr %arrayidx68, align 1
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %state.i, align 4
  %rxseq = getelementptr inbounds %struct.frad_state, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %rxseq to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rxseq, align 2
  %inc70 = add nuw nsw i32 %i.0, 7
  %arrayidx71 = getelementptr i8, ptr %17, i32 %inc67
  %36 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx71, align 1
  %tobool76.not315 = icmp eq ptr %3, null
  %or.cond321 = select i1 %or.cond, i1 true, i1 %tobool76.not315
  br i1 %or.cond321, label %if.end41.if.end176_crit_edge, label %while.body.lr.ph

if.end41.if.end176_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end176

while.body.lr.ph:                                 ; preds = %if.end41
  %conv80 = select i1 %cmp42, i8 87, i8 7
  %conv83 = trunc i32 %cond11 to i8
  br label %while.body

while.body:                                       ; preds = %if.end174.while.body_crit_edge, %while.body.lr.ph
  %i.1319 = phi i32 [ %inc70, %while.body.lr.ph ], [ %add175, %if.end174.while.body_crit_edge ]
  %pvc.0316 = phi ptr [ %3, %while.body.lr.ph ], [ %106, %if.end174.while.body_crit_edge ]
  %inc81 = add i32 %i.1319, 1
  %arrayidx82 = getelementptr i8, ptr %17, i32 %i.1319
  %37 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv80, ptr %arrayidx82, align 1
  %inc84 = add i32 %i.1319, 2
  %arrayidx85 = getelementptr i8, ptr %17, i32 %inc81
  %38 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv83, ptr %arrayidx85, align 1
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state.i, align 4
  %reliable = getelementptr inbounds %struct.frad_state, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %reliable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reliable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool87.not = icmp eq i32 %42, 0
  br i1 %tobool87.not, label %while.body.if.end98_crit_edge, label %land.lhs.true88

while.body.if.end98_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

land.lhs.true88:                                  ; preds = %while.body
  %state = getelementptr inbounds %struct.pvc_device, ptr %pvc.0316, i32 0, i32 6
  %43 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %state, align 4
  %44 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool89.not = icmp eq i8 %44, 0
  br i1 %tobool89.not, label %if.then90, label %land.lhs.true88.if.end98_crit_edge

land.lhs.true88.if.end98_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then90:                                        ; preds = %land.lhs.true88
  %bf.set97 = or i8 %bf.load, -96
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %bf.set97, ptr %state, align 4
  %46 = ptrtoint ptr %pvc.0316 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pvc.0316, align 4
  %dlci.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.0316, i32 0, i32 4
  %48 = ptrtoint ptr %dlci.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dlci.i, align 4
  %main.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.0316, i32 0, i32 1
  %50 = ptrtoint ptr %main.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %main.i, align 4
  %tobool.not.i289 = icmp eq ptr %51, null
  br i1 %tobool.not.i289, label %if.then90.fr_log_dlci_active.exit_crit_edge, label %land.rhs.i

if.then90.fr_log_dlci_active.exit_crit_edge:      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %fr_log_dlci_active.exit

land.rhs.i:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  %ether.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.0316, i32 0, i32 2
  %52 = ptrtoint ptr %ether.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ether.i, align 4
  %tobool4.not.i = icmp eq ptr %53, null
  %phi.sel.i = select i1 %tobool4.not.i, ptr @.str.3, ptr @.str.7
  br label %fr_log_dlci_active.exit

fr_log_dlci_active.exit:                          ; preds = %land.rhs.i, %if.then90.fr_log_dlci_active.exit_crit_edge
  %spec.select.i290 = phi ptr [ %51, %land.rhs.i ], [ @.str.3, %if.then90.fr_log_dlci_active.exit_crit_edge ]
  %54 = phi ptr [ %phi.sel.i, %land.rhs.i ], [ @.str.3, %if.then90.fr_log_dlci_active.exit_crit_edge ]
  %ether6.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.0316, i32 0, i32 2
  %55 = ptrtoint ptr %ether6.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ether6.i, align 4
  %tobool7.not.i = icmp eq ptr %56, null
  %spec.select44.i = select i1 %tobool7.not.i, ptr @.str.3, ptr %56
  %57 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool29.not.i = icmp eq i8 %57, 0
  %cond30.i = select i1 %tobool29.not.i, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %47, ptr noundef nonnull @.str.6, i32 noundef %49, ptr noundef nonnull %spec.select.i290, ptr noundef nonnull %54, ptr noundef nonnull %spec.select44.i, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond30.i) #13
  br label %if.end98

if.end98:                                         ; preds = %fr_log_dlci_active.exit, %land.lhs.true88.if.end98_crit_edge, %while.body.if.end98_crit_edge
  %open_count = getelementptr inbounds %struct.pvc_device, ptr %pvc.0316, i32 0, i32 5
  %58 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool99.not = icmp eq i32 %59, 0
  br i1 %tobool99.not, label %if.end98.if.end125_crit_edge, label %land.lhs.true100

if.end98.if.end125_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

land.lhs.true100:                                 ; preds = %if.end98
  %state101 = getelementptr inbounds %struct.pvc_device, ptr %pvc.0316, i32 0, i32 6
  %60 = ptrtoint ptr %state101 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load102 = load i8, ptr %state101, align 4
  %61 = and i8 %bf.load102, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %61)
  %62 = icmp eq i8 %61, 32
  br i1 %62, label %if.then120, label %land.lhs.true100.if.end125_crit_edge

land.lhs.true100.if.end125_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.then120:                                       ; preds = %land.lhs.true100
  %main15.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.0316, i32 0, i32 1
  %63 = ptrtoint ptr %main15.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %main15.i, align 4
  %tobool16.not.i = icmp eq ptr %64, null
  br i1 %tobool16.not.i, label %if.then120.if.end6.i_crit_edge, label %if.then2.i

if.then120.if.end6.i_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.then120
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %state.i.i, align 4
  %67 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i, label %if.then2.i.if.end6.i_crit_edge, label %if.then4.i

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_on(ptr noundef nonnull %64) #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then2.i.if.end6.i_crit_edge, %if.then120.if.end6.i_crit_edge
  %ether.i292 = getelementptr inbounds %struct.pvc_device, ptr %pvc.0316, i32 0, i32 2
  %68 = ptrtoint ptr %ether.i292 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ether.i292, align 4
  %tobool7.not.i293 = icmp eq ptr %69, null
  br i1 %tobool7.not.i293, label %if.end6.i.pvc_carrier.exit_crit_edge, label %if.then8.i

if.end6.i.pvc_carrier.exit_crit_edge:             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit

if.then8.i:                                       ; preds = %if.end6.i
  %state.i48.i = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %state.i48.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %state.i48.i, align 4
  %72 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i49.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i49.i, label %if.then8.i.pvc_carrier.exit_crit_edge, label %if.then11.i

if.then8.i.pvc_carrier.exit_crit_edge:            ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_on(ptr noundef nonnull %69) #9
  br label %pvc_carrier.exit

pvc_carrier.exit:                                 ; preds = %if.then11.i, %if.then8.i.pvc_carrier.exit_crit_edge, %if.end6.i.pvc_carrier.exit_crit_edge
  %73 = ptrtoint ptr %state101 to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load122 = load i8, ptr %state101, align 4
  %bf.set124 = or i8 %bf.load122, 64
  store i8 %bf.set124, ptr %state101, align 4
  %74 = ptrtoint ptr %pvc.0316 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pvc.0316, align 4
  %dlci.i294 = getelementptr inbounds %struct.pvc_device, ptr %pvc.0316, i32 0, i32 4
  %76 = ptrtoint ptr %dlci.i294 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dlci.i294, align 4
  %78 = ptrtoint ptr %main15.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %main15.i, align 4
  %tobool.not.i296 = icmp eq ptr %79, null
  br i1 %tobool.not.i296, label %pvc_carrier.exit.fr_log_dlci_active.exit313_crit_edge, label %land.rhs.i300

pvc_carrier.exit.fr_log_dlci_active.exit313_crit_edge: ; preds = %pvc_carrier.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fr_log_dlci_active.exit313

land.rhs.i300:                                    ; preds = %pvc_carrier.exit
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %ether.i292 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ether.i292, align 4
  %tobool4.not.i298 = icmp eq ptr %81, null
  %phi.sel.i299 = select i1 %tobool4.not.i298, ptr @.str.3, ptr @.str.7
  br label %fr_log_dlci_active.exit313

fr_log_dlci_active.exit313:                       ; preds = %land.rhs.i300, %pvc_carrier.exit.fr_log_dlci_active.exit313_crit_edge
  %spec.select.i301 = phi ptr [ %79, %land.rhs.i300 ], [ @.str.3, %pvc_carrier.exit.fr_log_dlci_active.exit313_crit_edge ]
  %82 = phi ptr [ %phi.sel.i299, %land.rhs.i300 ], [ @.str.3, %pvc_carrier.exit.fr_log_dlci_active.exit313_crit_edge ]
  %83 = ptrtoint ptr %ether.i292 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ether.i292, align 4
  %tobool7.not.i303 = icmp eq ptr %84, null
  %spec.select44.i304 = select i1 %tobool7.not.i303, ptr @.str.3, ptr %84
  %85 = and i8 %bf.load122, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool21.not.i307 = icmp eq i8 %85, 0
  %cond32.i310 = select i1 %tobool21.not.i307, ptr @.str.9, ptr @.str.10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.set124)
  %tobool15.not.i311 = icmp sgt i8 %bf.set124, -1
  %cond16.i312 = select i1 %tobool15.not.i311, ptr @.str.3, ptr @.str.8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %75, ptr noundef nonnull @.str.6, i32 noundef %77, ptr noundef nonnull %spec.select.i301, ptr noundef nonnull %82, ptr noundef nonnull %spec.select44.i304, ptr noundef nonnull %cond16.i312, ptr noundef nonnull %cond32.i310) #13
  br label %if.end125

if.end125:                                        ; preds = %fr_log_dlci_active.exit313, %land.lhs.true100.if.end125_crit_edge, %if.end98.if.end125_crit_edge
  %dlci = getelementptr inbounds %struct.pvc_device, ptr %pvc.0316, i32 0, i32 4
  %86 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dlci, align 4
  br i1 %cmp9, label %if.then128, label %if.else135

if.then128:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  %88 = lshr i32 %87, 8
  %conv129 = trunc i32 %88 to i8
  %arrayidx130 = getelementptr i8, ptr %17, i32 %inc84
  %89 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv129, ptr %arrayidx130, align 1
  %90 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dlci, align 4
  %conv132 = trunc i32 %91 to i8
  br label %if.end148

if.else135:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  %92 = lshr i32 %87, 4
  %93 = trunc i32 %92 to i8
  %conv139 = and i8 %93, 63
  %arrayidx140 = getelementptr i8, ptr %17, i32 %inc84
  %94 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv139, ptr %arrayidx140, align 1
  %95 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dlci, align 4
  %.tr = trunc i32 %96 to i8
  %97 = shl i8 %.tr, 3
  %conv143 = or i8 %97, -128
  %add144 = add i32 %i.1319, 3
  %arrayidx145 = getelementptr i8, ptr %17, i32 %add144
  %98 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv143, ptr %arrayidx145, align 1
  br label %if.end148

if.end148:                                        ; preds = %if.else135, %if.then128
  %.sink323 = phi i32 [ 4, %if.else135 ], [ 3, %if.then128 ]
  %.sink322 = phi i8 [ -128, %if.else135 ], [ %conv132, %if.then128 ]
  %add146 = add i32 %i.1319, %.sink323
  %arrayidx147 = getelementptr i8, ptr %17, i32 %add146
  %99 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %.sink322, ptr %arrayidx147, align 1
  %state149 = getelementptr inbounds %struct.pvc_device, ptr %pvc.0316, i32 0, i32 6
  %100 = ptrtoint ptr %state149 to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load150 = load i8, ptr %state149, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load150)
  %tobool153.not = icmp sgt i8 %bf.load150, -1
  br i1 %tobool153.not, label %if.else160, label %if.end148.if.end174.sink.split_crit_edge

if.end148.if.end174.sink.split_crit_edge:         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end174.sink.split

if.else160:                                       ; preds = %if.end148
  %101 = and i8 %bf.load150, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool166.not = icmp eq i8 %101, 0
  br i1 %tobool166.not, label %if.else160.if.end174_crit_edge, label %if.else160.if.end174.sink.split_crit_edge

if.else160.if.end174.sink.split_crit_edge:        ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end174.sink.split

if.else160.if.end174_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end174

if.end174.sink.split:                             ; preds = %if.else160.if.end174.sink.split_crit_edge, %if.end148.if.end174.sink.split_crit_edge
  %.sink326 = phi i8 [ 8, %if.end148.if.end174.sink.split_crit_edge ], [ 2, %if.else160.if.end174.sink.split_crit_edge ]
  %add155 = add i32 %i.1319, 4
  %arrayidx156 = getelementptr i8, ptr %17, i32 %add155
  %102 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx156, align 1
  %104 = or i8 %103, %.sink326
  store i8 %104, ptr %arrayidx156, align 1
  br label %if.end174

if.end174:                                        ; preds = %if.end174.sink.split, %if.else160.if.end174_crit_edge
  %add175 = add i32 %inc84, %cond11
  %next = getelementptr inbounds %struct.pvc_device, ptr %pvc.0316, i32 0, i32 3
  %105 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %next, align 4
  %tobool76.not = icmp eq ptr %106, null
  br i1 %tobool76.not, label %if.end174.if.end176_crit_edge, label %if.end174.while.body_crit_edge

if.end174.while.body_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end174.if.end176_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end176

if.end176:                                        ; preds = %if.end174.if.end176_crit_edge, %if.end41.if.end176_crit_edge
  %i.2 = phi i32 [ %inc70, %if.end41.if.end176_crit_edge ], [ %add175, %if.end174.if.end176_crit_edge ]
  %call177 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %i.2) #9
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %107 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 7, ptr %priority, align 4
  %108 = getelementptr inbounds %struct.anon.0, ptr %call.i.i, i32 0, i32 2
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %dev, ptr %108, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %110 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 25, ptr %protocol, align 8
  %111 = ptrtoint ptr %data23 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data23, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %113 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %112 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %114 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %115 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv.i, ptr %network_header.i, align 4
  %call178 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end176, %if.end18.cleanup_crit_edge, %if.then17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fr_hard_header(ptr noundef %skb, i16 noundef zeroext %dlci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = zext i16 %dlci to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %dlci, label %if.then.return_crit_edge [
    i16 0, label %sw.bb
    i16 1023, label %sw.bb1
  ]

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %arrayidx, align 1
  br label %if.end55

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #9
  %data3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data3, align 4
  %arrayidx4 = getelementptr i8, ptr %8, i32 3
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 9, ptr %arrayidx4, align 1
  br label %if.end55

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 32
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %type, align 16
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %11, label %if.else.return_crit_edge [
    i16 15, label %if.then7
    i16 1, label %if.then37
  ]

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then7:                                         ; preds = %if.else
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol, align 8
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %14, label %sw.default17 [
    i16 2048, label %sw.bb9
    i16 -31011, label %sw.bb13
  ]

sw.bb9:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #9
  %data11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data11, align 4
  %arrayidx12 = getelementptr i8, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -52, ptr %arrayidx12, align 1
  br label %if.end55

sw.bb13:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #9
  %data15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data15, align 4
  %arrayidx16 = getelementptr i8, ptr %20, i32 3
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -114, ptr %arrayidx16, align 1
  br label %if.end55

sw.default17:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 10) #9
  %data19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data19, align 4
  %arrayidx20 = getelementptr i8, ptr %23, i32 3
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx20, align 1
  %25 = load ptr, ptr %data19, align 4
  %arrayidx22 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -128, ptr %arrayidx22, align 1
  %27 = load ptr, ptr %data19, align 4
  %arrayidx24 = getelementptr i8, ptr %27, i32 5
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx24, align 1
  %29 = load ptr, ptr %data19, align 4
  %arrayidx26 = getelementptr i8, ptr %29, i32 6
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx26, align 1
  %31 = load ptr, ptr %data19, align 4
  %arrayidx28 = getelementptr i8, ptr %31, i32 7
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx28, align 1
  %33 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %protocol, align 8
  %35 = load ptr, ptr %data19, align 4
  %add.ptr = getelementptr i8, ptr %35, i32 8
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %34, ptr %add.ptr, align 2
  br label %if.end55

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 10) #9
  %data39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data39, align 4
  %arrayidx40 = getelementptr i8, ptr %38, i32 3
  %39 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx40, align 1
  %40 = load ptr, ptr %data39, align 4
  %arrayidx42 = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -128, ptr %arrayidx42, align 1
  %42 = load ptr, ptr %data39, align 4
  %arrayidx44 = getelementptr i8, ptr %42, i32 5
  %43 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx44, align 1
  %44 = load ptr, ptr %data39, align 4
  %arrayidx46 = getelementptr i8, ptr %44, i32 6
  %45 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -128, ptr %arrayidx46, align 1
  %46 = load ptr, ptr %data39, align 4
  %arrayidx48 = getelementptr i8, ptr %46, i32 7
  %47 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -62, ptr %arrayidx48, align 1
  %48 = load ptr, ptr %data39, align 4
  %arrayidx50 = getelementptr i8, ptr %48, i32 8
  %49 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx50, align 1
  %50 = load ptr, ptr %data39, align 4
  %arrayidx52 = getelementptr i8, ptr %50, i32 9
  %51 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 7, ptr %arrayidx52, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then37, %sw.default17, %sw.bb13, %sw.bb9, %sw.bb1, %sw.bb
  %data56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %52 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data56, align 4
  %conv.i = trunc i16 %dlci to i8
  %54 = lshr i16 %dlci, 2
  %55 = trunc i16 %54 to i8
  %conv1.i = and i8 %55, -4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv1.i, ptr %53, align 1
  %shl.i = shl i8 %conv.i, 4
  %or.i = or i8 %shl.i, 1
  %arrayidx5.i = getelementptr i8, ptr %53, i32 1
  %57 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %or.i, ptr %arrayidx5.i, align 1
  %58 = load ptr, ptr %data56, align 4
  %arrayidx58 = getelementptr i8, ptr %58, i32 2
  %59 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 3, ptr %arrayidx58, align 1
  br label %return

return:                                           ; preds = %if.end55, %if.else.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ -22, %if.then.return_crit_edge ], [ -22, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @linkwatch_fire_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attach_hdlc_protocol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fr_add_pvc(ptr noundef %frad, i32 noundef %dlci, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %dlci to i16
  %state.i.i = getelementptr i8, ptr %frad, i32 2368
  %0 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i.i, align 4
  %first_pvc.i = getelementptr inbounds %struct.frad_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %first_pvc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %first_pvc.i, align 4
  %tobool.not36.i = icmp eq ptr %3, null
  br i1 %tobool.not36.i, label %entry.while.end.i_crit_edge, label %while.body.lr.ph.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %entry
  %conv.i = and i32 %dlci, 65535
  br label %while.body.i

while.body.i:                                     ; preds = %if.end9.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %4 = phi ptr [ %3, %while.body.lr.ph.i ], [ %8, %if.end9.i.while.body.i_crit_edge ]
  %pvc_p.037.i = phi ptr [ %first_pvc.i, %while.body.lr.ph.i ], [ %next.i, %if.end9.i.while.body.i_crit_edge ]
  %dlci2.i = getelementptr inbounds %struct.pvc_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %dlci2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dlci2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i)
  %cmp.i = icmp eq i32 %6, %conv.i
  br i1 %cmp.i, label %while.body.i.if.end_crit_edge, label %if.end.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i)
  %cmp6.i = icmp sgt i32 %6, %conv.i
  br i1 %cmp6.i, label %if.end.i.while.end.i_crit_edge, label %if.end9.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end9.i:                                        ; preds = %if.end.i
  %next.i = getelementptr inbounds %struct.pvc_device, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end9.i.while.end.i_crit_edge, label %if.end9.i.while.body.i_crit_edge

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end9.i.while.end.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %if.end9.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %pvc_p.0.lcssa.i = phi ptr [ %first_pvc.i, %entry.while.end.i_crit_edge ], [ %next.i, %if.end9.i.while.end.i_crit_edge ], [ %pvc_p.037.i, %if.end.i.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2848, i32 noundef 32) #14
  %tobool11.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool11.not.i, label %if.then, label %if.end13.i

if.end13.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv14.i = and i32 %dlci, 65535
  %dlci15.i = getelementptr inbounds %struct.pvc_device, ptr %call7.i.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %dlci15.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv14.i, ptr %dlci15.i, align 8
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %frad, ptr %call7.i.i.i, align 8
  %12 = ptrtoint ptr %pvc_p.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pvc_p.0.lcssa.i, align 4
  %next16.i = getelementptr inbounds %struct.pvc_device, ptr %call7.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %next16.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %next16.i, align 4
  store ptr %call7.i.i.i, ptr %pvc_p.0.lcssa.i, align 4
  br label %if.end

if.then:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %frad, ptr noundef nonnull @.str.15) #13
  br label %cleanup

if.end:                                           ; preds = %if.end13.i, %while.body.i.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ %call7.i.i.i, %if.end13.i ], [ %4, %while.body.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.i67 = icmp eq i32 %type, 1
  %ether.i = getelementptr inbounds %struct.pvc_device, ptr %retval.0.i.ph, i32 0, i32 2
  %main.i = getelementptr inbounds %struct.pvc_device, ptr %retval.0.i.ph, i32 0, i32 1
  %retval.0.i68 = select i1 %cmp.i67, ptr %ether.i, ptr %main.i
  %15 = ptrtoint ptr %retval.0.i68 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %retval.0.i68, align 4
  %tobool3.not = icmp eq ptr %16, null
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %17 = ptrtoint ptr %main.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %main.i, align 4
  %tobool.not.i70 = icmp eq ptr %18, null
  br i1 %tobool.not.i70, label %lor.rhs.i, label %if.end5.pvc_is_used.exit_crit_edge

if.end5.pvc_is_used.exit_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_is_used.exit

lor.rhs.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %ether.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ether.i, align 4
  %tobool1.i = icmp ne ptr %20, null
  %phi.cast.i = zext i1 %tobool1.i to i32
  br label %pvc_is_used.exit

pvc_is_used.exit:                                 ; preds = %lor.rhs.i, %if.end5.pvc_is_used.exit_crit_edge
  %21 = phi i32 [ 1, %if.end5.pvc_is_used.exit_crit_edge ], [ %phi.cast.i, %lor.rhs.i ]
  br i1 %cmp.i67, label %if.end11, label %if.end11.thread

if.end11:                                         ; preds = %pvc_is_used.exit
  %call9 = tail call ptr @alloc_netdev_mqs(i32 noundef 0, ptr noundef nonnull @.str.16, i8 noundef zeroext 0, ptr noundef nonnull @ether_setup, i32 noundef 1, i32 noundef 1) #9
  %tobool12.not = icmp eq ptr %call9, null
  br i1 %tobool12.not, label %if.end11.if.then13_crit_edge, label %if.then17

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end11.thread:                                  ; preds = %pvc_is_used.exit
  %call10 = tail call ptr @alloc_netdev_mqs(i32 noundef 0, ptr noundef nonnull @.str.17, i8 noundef zeroext 0, ptr noundef nonnull @pvc_setup, i32 noundef 1, i32 noundef 1) #9
  %tobool12.not110 = icmp eq ptr %call10, null
  br i1 %tobool12.not110, label %if.end11.thread.if.then13_crit_edge, label %if.else18

if.end11.thread.if.then13_crit_edge:              ; preds = %if.end11.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %if.end11.thread.if.then13_crit_edge, %if.end11.if.then13_crit_edge
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %frad, ptr noundef nonnull @.str.18) #13
  %22 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state.i.i, align 4
  %first_pvc.i73 = getelementptr inbounds %struct.frad_state, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %first_pvc.i73 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %first_pvc.i73, align 4
  %tobool.not1112.i = icmp eq ptr %25, null
  br i1 %tobool.not1112.i, label %if.then13.cleanup_crit_edge, label %if.then13.while.body.lr.ph.i74_crit_edge

if.then13.while.body.lr.ph.i74_crit_edge:         ; preds = %if.then13
  br label %while.body.lr.ph.i74

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph.i74:                             ; preds = %if.end.i78.while.body.lr.ph.i74_crit_edge, %if.then13.while.body.lr.ph.i74_crit_edge
  %26 = phi ptr [ %38, %if.end.i78.while.body.lr.ph.i74_crit_edge ], [ %25, %if.then13.while.body.lr.ph.i74_crit_edge ]
  %pvc_p.0.ph13.i = phi ptr [ %next3.i, %if.end.i78.while.body.lr.ph.i74_crit_edge ], [ %first_pvc.i73, %if.then13.while.body.lr.ph.i74_crit_edge ]
  br label %while.body.i75

while.body.i75:                                   ; preds = %if.then.i.while.body.i75_crit_edge, %while.body.lr.ph.i74
  %27 = phi ptr [ %26, %while.body.lr.ph.i74 ], [ %36, %if.then.i.while.body.i75_crit_edge ]
  %main.i.i = getelementptr inbounds %struct.pvc_device, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %main.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %main.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %pvc_is_used.exit.i, label %while.body.i75.if.end.i78_crit_edge

while.body.i75.if.end.i78_crit_edge:              ; preds = %while.body.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i78

pvc_is_used.exit.i:                               ; preds = %while.body.i75
  %ether.i.i = getelementptr inbounds %struct.pvc_device, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %ether.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ether.i.i, align 4
  %tobool1.i.not.i = icmp eq ptr %31, null
  br i1 %tobool1.i.not.i, label %if.then.i, label %pvc_is_used.exit.i.if.end.i78_crit_edge

pvc_is_used.exit.i.if.end.i78_crit_edge:          ; preds = %pvc_is_used.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i78

if.then.i:                                        ; preds = %pvc_is_used.exit.i
  %next.i76 = getelementptr inbounds %struct.pvc_device, ptr %27, i32 0, i32 3
  %32 = ptrtoint ptr %next.i76 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next.i76, align 4
  %34 = ptrtoint ptr %pvc_p.0.ph13.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %pvc_p.0.ph13.i, align 4
  tail call void @kfree(ptr noundef nonnull %27) #9
  %35 = ptrtoint ptr %pvc_p.0.ph13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pvc_p.0.ph13.i, align 4
  %tobool.not.i77 = icmp eq ptr %36, null
  br i1 %tobool.not.i77, label %if.then.i.cleanup_crit_edge, label %if.then.i.while.body.i75_crit_edge

if.then.i.while.body.i75_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i75

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i78:                                       ; preds = %pvc_is_used.exit.i.if.end.i78_crit_edge, %while.body.i75.if.end.i78_crit_edge
  %next3.i = getelementptr inbounds %struct.pvc_device, ptr %27, i32 0, i32 3
  %37 = ptrtoint ptr %next3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %next3.i, align 4
  %tobool.not11.i = icmp eq ptr %38, null
  br i1 %tobool.not11.i, label %if.end.i78.cleanup_crit_edge, label %if.end.i78.while.body.lr.ph.i74_crit_edge

if.end.i78.while.body.lr.ph.i74_crit_edge:        ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph.i74

if.end.i78.cleanup_crit_edge:                     ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 15
  %39 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %priv_flags, align 16
  %and = and i64 %40, -2049
  store i64 %and, ptr %priv_flags, align 16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #9
  %41 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #9
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %addr.i, align 1
  %44 = and i8 %43, -4
  %45 = or i8 %44, 2
  store i8 %45, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call9, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #9
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 55
  %46 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #9
  br label %if.end21

if.else18:                                        ; preds = %if.end11.thread
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr) #9
  %47 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv, ptr %addr, align 2
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 56
  %48 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %addr_len.i, align 1
  %conv.i80 = zext i8 %49 to i32
  call void @dev_addr_mod(ptr noundef nonnull %call10, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef %conv.i80) #9
  %broadcast = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 99
  %conv.i81 = trunc i32 %dlci to i8
  %50 = lshr i32 %dlci, 2
  %51 = trunc i32 %50 to i8
  %conv1.i = and i8 %51, -4
  %52 = ptrtoint ptr %broadcast to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv1.i, ptr %broadcast, align 1
  %shl.i = shl i8 %conv.i81, 4
  %or.i = or i8 %shl.i, 1
  %arrayidx5.i = getelementptr %struct.net_device, ptr %call10, i32 0, i32 99, i32 1
  %53 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %or.i, ptr %arrayidx5.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr) #9
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then17
  %dev.0112 = phi ptr [ %call10, %if.else18 ], [ %call9, %if.then17 ]
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev.0112, i32 0, i32 16
  %54 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @pvc_ops, ptr %netdev_ops, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev.0112, i32 0, i32 20
  %55 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1500, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev.0112, i32 0, i32 30
  %56 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev.0112, i32 0, i32 31
  %57 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1500, ptr %max_mtu, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev.0112, i32 0, i32 21
  %58 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 10, ptr %needed_headroom, align 8
  %priv_flags22 = getelementptr inbounds %struct.net_device, ptr %dev.0112, i32 0, i32 15
  %59 = ptrtoint ptr %priv_flags22 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %priv_flags22, align 16
  %or = or i64 %60, 524288
  store i64 %or, ptr %priv_flags22, align 16
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev.0112, i32 0, i32 128
  %61 = ptrtoint ptr %ml_priv to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %retval.0.i.ph, ptr %ml_priv, align 8
  %call23 = call i32 @register_netdevice(ptr noundef nonnull %dev.0112) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end21
  call void @free_netdev(ptr noundef nonnull %dev.0112) #9
  %62 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %state.i.i, align 4
  %first_pvc.i83 = getelementptr inbounds %struct.frad_state, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %first_pvc.i83 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %first_pvc.i83, align 4
  %tobool.not1112.i84 = icmp eq ptr %65, null
  br i1 %tobool.not1112.i84, label %if.then26.cleanup_crit_edge, label %if.then26.while.body.lr.ph.i86_crit_edge

if.then26.while.body.lr.ph.i86_crit_edge:         ; preds = %if.then26
  br label %while.body.lr.ph.i86

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph.i86:                             ; preds = %if.end.i98.while.body.lr.ph.i86_crit_edge, %if.then26.while.body.lr.ph.i86_crit_edge
  %66 = phi ptr [ %78, %if.end.i98.while.body.lr.ph.i86_crit_edge ], [ %65, %if.then26.while.body.lr.ph.i86_crit_edge ]
  %pvc_p.0.ph13.i85 = phi ptr [ %next3.i96, %if.end.i98.while.body.lr.ph.i86_crit_edge ], [ %first_pvc.i83, %if.then26.while.body.lr.ph.i86_crit_edge ]
  br label %while.body.i89

while.body.i89:                                   ; preds = %if.then.i95.while.body.i89_crit_edge, %while.body.lr.ph.i86
  %67 = phi ptr [ %66, %while.body.lr.ph.i86 ], [ %76, %if.then.i95.while.body.i89_crit_edge ]
  %main.i.i87 = getelementptr inbounds %struct.pvc_device, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %main.i.i87 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %main.i.i87, align 4
  %tobool.not.i.i88 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i88, label %pvc_is_used.exit.i92, label %while.body.i89.if.end.i98_crit_edge

while.body.i89.if.end.i98_crit_edge:              ; preds = %while.body.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i98

pvc_is_used.exit.i92:                             ; preds = %while.body.i89
  %ether.i.i90 = getelementptr inbounds %struct.pvc_device, ptr %67, i32 0, i32 2
  %70 = ptrtoint ptr %ether.i.i90 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ether.i.i90, align 4
  %tobool1.i.not.i91 = icmp eq ptr %71, null
  br i1 %tobool1.i.not.i91, label %if.then.i95, label %pvc_is_used.exit.i92.if.end.i98_crit_edge

pvc_is_used.exit.i92.if.end.i98_crit_edge:        ; preds = %pvc_is_used.exit.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i98

if.then.i95:                                      ; preds = %pvc_is_used.exit.i92
  %next.i93 = getelementptr inbounds %struct.pvc_device, ptr %67, i32 0, i32 3
  %72 = ptrtoint ptr %next.i93 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %next.i93, align 4
  %74 = ptrtoint ptr %pvc_p.0.ph13.i85 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %pvc_p.0.ph13.i85, align 4
  call void @kfree(ptr noundef nonnull %67) #9
  %75 = ptrtoint ptr %pvc_p.0.ph13.i85 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pvc_p.0.ph13.i85, align 4
  %tobool.not.i94 = icmp eq ptr %76, null
  br i1 %tobool.not.i94, label %if.then.i95.cleanup_crit_edge, label %if.then.i95.while.body.i89_crit_edge

if.then.i95.while.body.i89_crit_edge:             ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i89

if.then.i95.cleanup_crit_edge:                    ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i98:                                       ; preds = %pvc_is_used.exit.i92.if.end.i98_crit_edge, %while.body.i89.if.end.i98_crit_edge
  %next3.i96 = getelementptr inbounds %struct.pvc_device, ptr %67, i32 0, i32 3
  %77 = ptrtoint ptr %next3.i96 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %next3.i96, align 4
  %tobool.not11.i97 = icmp eq ptr %78, null
  br i1 %tobool.not11.i97, label %if.end.i98.cleanup_crit_edge, label %if.end.i98.while.body.lr.ph.i86_crit_edge

if.end.i98.while.body.lr.ph.i86_crit_edge:        ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph.i86

if.end.i98.cleanup_crit_edge:                     ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev.0112, i32 0, i32 124
  %79 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %needs_free_netdev, align 8
  %80 = ptrtoint ptr %retval.0.i68 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %dev.0112, ptr %retval.0.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool29.not = icmp eq i32 %21, 0
  br i1 %tobool29.not, label %if.then30, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %state.i.i, align 4
  %dce_changed = getelementptr inbounds %struct.frad_state, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %dce_changed to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %dce_changed, align 4
  %84 = load ptr, ptr %state.i.i, align 4
  %dce_pvc_count = getelementptr inbounds %struct.frad_state, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %dce_pvc_count to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dce_pvc_count, align 4
  %inc = add i32 %86, 1
  store i32 %inc, ptr %dce_pvc_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end27.cleanup_crit_edge, %if.end.i98.cleanup_crit_edge, %if.then.i95.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.end.i78.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -105, %if.then ], [ -17, %if.end.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %if.end27.cleanup_crit_edge ], [ -105, %if.then13.cleanup_crit_edge ], [ -5, %if.then26.cleanup_crit_edge ], [ -105, %if.then.i.cleanup_crit_edge ], [ -105, %if.end.i78.cleanup_crit_edge ], [ -5, %if.then.i95.cleanup_crit_edge ], [ -5, %if.end.i98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fr_del_pvc(ptr nocapture noundef readonly %hdlc, i32 noundef %dlci, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i.i = getelementptr inbounds %struct.hdlc_device, ptr %hdlc, i32 0, i32 6
  %0 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i.i, align 4
  %first_pvc.i = getelementptr inbounds %struct.frad_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %first_pvc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %pvc.014.i = load ptr, ptr %first_pvc.i, align 4
  %tobool.not15.i = icmp eq ptr %pvc.014.i, null
  br i1 %tobool.not15.i, label %entry.cleanup_crit_edge, label %while.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %entry
  %conv.i = and i32 %dlci, 65535
  br label %while.body.i

while.body.i:                                     ; preds = %if.end8.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pvc.016.i = phi ptr [ %pvc.014.i, %while.body.lr.ph.i ], [ %pvc.0.i, %if.end8.i.while.body.i_crit_edge ]
  %dlci1.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.016.i, i32 0, i32 4
  %3 = ptrtoint ptr %dlci1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dlci1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i)
  %cmp.i = icmp eq i32 %4, %conv.i
  br i1 %cmp.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i)
  %cmp5.i = icmp sgt i32 %4, %conv.i
  br i1 %cmp5.i, label %if.end.i.cleanup_crit_edge, label %if.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %next.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.016.i, i32 0, i32 3
  %5 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %pvc.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %pvc.0.i, null
  br i1 %tobool.not.i, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.while.body.i_crit_edge

if.end8.i.while.body.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.i25 = icmp eq i32 %type, 1
  %ether.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.016.i, i32 0, i32 2
  %main.i = getelementptr inbounds %struct.pvc_device, ptr %pvc.016.i, i32 0, i32 1
  %retval.0.i26 = select i1 %cmp.i25, ptr %ether.i, ptr %main.i
  %6 = ptrtoint ptr %retval.0.i26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %retval.0.i26, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  tail call void @unregister_netdevice_queue(ptr noundef nonnull %7, ptr noundef null) #9
  %10 = ptrtoint ptr %retval.0.i26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %retval.0.i26, align 4
  %11 = ptrtoint ptr %main.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %main.i, align 4
  %tobool.not.i32 = icmp eq ptr %12, null
  br i1 %tobool.not.i32, label %pvc_is_used.exit, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

pvc_is_used.exit:                                 ; preds = %if.end7
  %13 = ptrtoint ptr %ether.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ether.i, align 4
  %tobool1.i.not = icmp eq ptr %14, null
  br i1 %tobool1.i.not, label %if.then11, label %pvc_is_used.exit.if.end14_crit_edge

pvc_is_used.exit.if.end14_crit_edge:              ; preds = %pvc_is_used.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %pvc_is_used.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state.i.i, align 4
  %dce_pvc_count = getelementptr inbounds %struct.frad_state, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dce_pvc_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dce_pvc_count, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %dce_pvc_count, align 4
  %19 = load ptr, ptr %state.i.i, align 4
  %dce_changed = getelementptr inbounds %struct.frad_state, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %dce_changed to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %dce_changed, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %pvc_is_used.exit.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %21 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state.i.i, align 4
  %first_pvc.i36 = getelementptr inbounds %struct.frad_state, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %first_pvc.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %first_pvc.i36, align 4
  %tobool.not1112.i = icmp eq ptr %24, null
  br i1 %tobool.not1112.i, label %if.end14.cleanup_crit_edge, label %if.end14.while.body.lr.ph.i37_crit_edge

if.end14.while.body.lr.ph.i37_crit_edge:          ; preds = %if.end14
  br label %while.body.lr.ph.i37

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph.i37:                             ; preds = %if.end.i41.while.body.lr.ph.i37_crit_edge, %if.end14.while.body.lr.ph.i37_crit_edge
  %25 = phi ptr [ %37, %if.end.i41.while.body.lr.ph.i37_crit_edge ], [ %24, %if.end14.while.body.lr.ph.i37_crit_edge ]
  %pvc_p.0.ph13.i = phi ptr [ %next3.i, %if.end.i41.while.body.lr.ph.i37_crit_edge ], [ %first_pvc.i36, %if.end14.while.body.lr.ph.i37_crit_edge ]
  br label %while.body.i38

while.body.i38:                                   ; preds = %if.then.i.while.body.i38_crit_edge, %while.body.lr.ph.i37
  %26 = phi ptr [ %25, %while.body.lr.ph.i37 ], [ %35, %if.then.i.while.body.i38_crit_edge ]
  %main.i.i = getelementptr inbounds %struct.pvc_device, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %main.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %main.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %pvc_is_used.exit.i, label %while.body.i38.if.end.i41_crit_edge

while.body.i38.if.end.i41_crit_edge:              ; preds = %while.body.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i41

pvc_is_used.exit.i:                               ; preds = %while.body.i38
  %ether.i.i = getelementptr inbounds %struct.pvc_device, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %ether.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ether.i.i, align 4
  %tobool1.i.not.i = icmp eq ptr %30, null
  br i1 %tobool1.i.not.i, label %if.then.i, label %pvc_is_used.exit.i.if.end.i41_crit_edge

pvc_is_used.exit.i.if.end.i41_crit_edge:          ; preds = %pvc_is_used.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i41

if.then.i:                                        ; preds = %pvc_is_used.exit.i
  %next.i39 = getelementptr inbounds %struct.pvc_device, ptr %26, i32 0, i32 3
  %31 = ptrtoint ptr %next.i39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %next.i39, align 4
  %33 = ptrtoint ptr %pvc_p.0.ph13.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %pvc_p.0.ph13.i, align 4
  tail call void @kfree(ptr noundef nonnull %26) #9
  %34 = ptrtoint ptr %pvc_p.0.ph13.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pvc_p.0.ph13.i, align 4
  %tobool.not.i40 = icmp eq ptr %35, null
  br i1 %tobool.not.i40, label %if.then.i.cleanup_crit_edge, label %if.then.i.while.body.i38_crit_edge

if.then.i.while.body.i38_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i38

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i41:                                       ; preds = %pvc_is_used.exit.i.if.end.i41_crit_edge, %while.body.i38.if.end.i41_crit_edge
  %next3.i = getelementptr inbounds %struct.pvc_device, ptr %26, i32 0, i32 3
  %36 = ptrtoint ptr %next3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %next3.i, align 4
  %tobool.not11.i = icmp eq ptr %37, null
  br i1 %tobool.not11.i, label %if.end.i41.cleanup_crit_edge, label %if.end.i41.while.body.lr.ph.i37_crit_edge

if.end.i41.while.body.lr.ph.i37_crit_edge:        ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph.i37

if.end.i41.cleanup_crit_edge:                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i41.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end.cleanup_crit_edge ], [ -16, %if.end4.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.end.i41.cleanup_crit_edge ], [ -2, %if.end8.i.cleanup_crit_edge ], [ -2, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pvc_setup(ptr nocapture noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 15, ptr %type, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %flags, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %3 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %addr_len, align 1
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %5, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvc_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %open_count = getelementptr inbounds %struct.pvc_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %open_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %state.i = getelementptr i8, ptr %3, i32 2368
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 4
  %lmi = getelementptr inbounds %struct.fr_proto, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %lmi to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %lmi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp5 = icmp eq i16 %11, 1
  br i1 %cmp5, label %if.then7, label %if.then2.if.end11_crit_edge

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %state.i24 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %state.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i24, align 4
  %state = getelementptr inbounds %struct.pvc_device, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %state, align 4
  %15 = trunc i32 %13 to i8
  %16 = shl i8 %15, 4
  %17 = and i8 %16, 64
  %bf.clear = and i8 %bf.load, -65
  %18 = or i8 %17, %bf.clear
  %bf.set = xor i8 %18, 64
  store i8 %bf.set, ptr %state, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then2.if.end11_crit_edge
  %state12 = getelementptr inbounds %struct.pvc_device, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %state12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load13 = load i8, ptr %state12, align 4
  %20 = and i8 %bf.load13, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i25 = icmp eq i8 %20, 0
  %main15.i = getelementptr inbounds %struct.pvc_device, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %main15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %main15.i, align 4
  %tobool16.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i25, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end11
  br i1 %tobool16.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then2.i

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.then.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i.i, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %if.then2.i.if.end6.i_crit_edge, label %if.then4.i

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_on(ptr noundef nonnull %22) #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then2.i.if.end6.i_crit_edge, %if.then.i.if.end6.i_crit_edge
  %ether.i = getelementptr inbounds %struct.pvc_device, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %ether.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ether.i, align 4
  %tobool7.not.i = icmp eq ptr %27, null
  br i1 %tobool7.not.i, label %if.end6.i.pvc_carrier.exit_crit_edge, label %if.then8.i

if.end6.i.pvc_carrier.exit_crit_edge:             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit

if.then8.i:                                       ; preds = %if.end6.i
  %state.i48.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %state.i48.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i48.i, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i49.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i49.i, label %if.then8.i.pvc_carrier.exit_crit_edge, label %if.then11.i

if.then8.i.pvc_carrier.exit_crit_edge:            ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_on(ptr noundef nonnull %27) #9
  br label %pvc_carrier.exit

if.else.i:                                        ; preds = %if.end11
  br i1 %tobool16.not.i, label %if.else.i.if.end23.i_crit_edge, label %if.then17.i

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then17.i:                                      ; preds = %if.else.i
  %state.i50.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 6
  %31 = ptrtoint ptr %state.i50.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i50.i, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i51.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i51.i, label %if.then20.i, label %if.then17.i.if.end23.i_crit_edge

if.then17.i.if.end23.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_off(ptr noundef nonnull %22) #9
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.then17.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge
  %ether24.i = getelementptr inbounds %struct.pvc_device, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %ether24.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ether24.i, align 4
  %tobool25.not.i = icmp eq ptr %35, null
  br i1 %tobool25.not.i, label %if.end23.i.pvc_carrier.exit_crit_edge, label %if.then26.i

if.end23.i.pvc_carrier.exit_crit_edge:            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit

if.then26.i:                                      ; preds = %if.end23.i
  %state.i52.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %state.i52.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i52.i, align 4
  %38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i53.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i53.i, label %if.then29.i, label %if.then26.i.pvc_carrier.exit_crit_edge

if.then26.i.pvc_carrier.exit_crit_edge:           ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvc_carrier.exit

if.then29.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_off(ptr noundef nonnull %35) #9
  br label %pvc_carrier.exit

pvc_carrier.exit:                                 ; preds = %if.then29.i, %if.then26.i.pvc_carrier.exit_crit_edge, %if.end23.i.pvc_carrier.exit_crit_edge, %if.then11.i, %if.then8.i.pvc_carrier.exit_crit_edge, %if.end6.i.pvc_carrier.exit_crit_edge
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state.i, align 4
  %dce_changed = getelementptr inbounds %struct.frad_state, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %dce_changed to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %dce_changed, align 4
  br label %cleanup

cleanup:                                          ; preds = %pvc_carrier.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %pvc_carrier.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pvc_close(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %open_count = getelementptr inbounds %struct.pvc_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %state.i = getelementptr i8, ptr %5, i32 2368
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i, align 4
  %lmi = getelementptr inbounds %struct.fr_proto, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %lmi to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lmi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp2 = icmp eq i16 %9, 1
  br i1 %cmp2, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.pvc_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %state, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state.i, align 4
  %dce = getelementptr inbounds %struct.fr_proto, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %dce to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dce, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dce_changed = getelementptr inbounds %struct.frad_state, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %dce_changed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dce_changed, align 4
  %state9 = getelementptr inbounds %struct.pvc_device, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %state9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load10 = load i8, ptr %state9, align 4
  %bf.clear11 = and i8 %bf.load10, -65
  store i8 %bf.clear11, ptr %state9, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvc_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %state = getelementptr inbounds %struct.pvc_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %state, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.drop_crit_edge, label %if.end

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp = icmp eq i16 %5, 1
  br i1 %cmp, label %if.then2, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then2:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %sub = sub i32 60, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3 = icmp sgt i32 %sub, 0
  br i1 %cmp3, label %if.then5, label %if.then2.if.end11_crit_edge

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then5:                                         ; preds = %if.then2
  %call = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %if.then5.drop_crit_edge

if.then5.drop_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.end8:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %sub) #9
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.then2.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub.ptr.sub.i)
  %cmp13 = icmp ult i32 %sub.ptr.sub.i, 10
  br i1 %cmp13, label %if.then15, label %if.end11.if.end23_crit_edge

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then15:                                        ; preds = %if.end11
  %call16 = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef 10) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then15.drop_crit_edge, label %cleanup20.thread

if.then15.drop_crit_edge:                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

cleanup20.thread:                                 ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %if.end23

if.end23:                                         ; preds = %cleanup20.thread, %if.end11.if.end23_crit_edge
  %skb.addr.1 = phi ptr [ %skb, %if.end11.if.end23_crit_edge ], [ %call16, %cleanup20.thread ]
  %12 = getelementptr inbounds %struct.anon.0, ptr %skb.addr.1, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %12, align 8
  %dlci = getelementptr inbounds %struct.pvc_device, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dlci, align 4
  %conv24 = trunc i32 %15 to i16
  %call25 = tail call fastcc i32 @fr_hard_header(ptr noundef %skb.addr.1, i16 noundef zeroext %conv24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.drop_crit_edge

if.end23.drop_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.end28:                                         ; preds = %if.end23
  %len29 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %16 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len29, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %18 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %19, %17
  store i32 %add, ptr %tx_bytes, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %20 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %tx_packets, align 4
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load32 = load i8, ptr %state, align 4
  %23 = and i8 %bf.load32, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool36.not = icmp eq i8 %23, 0
  br i1 %tobool36.not, label %if.end28.if.end40_crit_edge, label %if.then37

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then37:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %tx_compressed = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 22
  %24 = ptrtoint ptr %tx_compressed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_compressed, align 8
  %inc39 = add i32 %25, 1
  store i32 %inc39, ptr %tx_compressed, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end28.if.end40_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %12, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 18
  %29 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 25, ptr %protocol, align 8
  %data.i74 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %30 = ptrtoint ptr %data.i74 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i74, align 4
  %head.i75 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 18
  %32 = ptrtoint ptr %head.i75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i75, align 8
  %sub.ptr.lhs.cast.i76 = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i77 = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i78 = sub i32 %sub.ptr.lhs.cast.i76, %sub.ptr.rhs.cast.i77
  %conv.i = trunc i32 %sub.ptr.sub.i78 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i, ptr %network_header.i, align 4
  %call41 = tail call i32 @dev_queue_xmit(ptr noundef %skb.addr.1) #9
  br label %cleanup44

drop:                                             ; preds = %if.end23.drop_crit_edge, %if.then15.drop_crit_edge, %if.then5.drop_crit_edge, %entry.drop_crit_edge
  %skb.addr.2 = phi ptr [ %skb.addr.1, %if.end23.drop_crit_edge ], [ %skb, %entry.drop_crit_edge ], [ %skb, %if.then5.drop_crit_edge ], [ %skb, %if.then15.drop_crit_edge ]
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %35 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_dropped, align 4
  %inc43 = add i32 %36, 1
  store i32 %inc43, ptr %tx_dropped, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.2, i32 noundef 0) #9
  br label %cleanup44

cleanup44:                                        ; preds = %drop, %if.end40
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvc_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %ifs) #2 align 64 {
entry:
  %info = alloca %struct.fr_proto_pvc_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info) #9
  %2 = getelementptr inbounds %struct.fr_proto_pvc_info, ptr %info, i32 0, i32 1
  %3 = call ptr @memset(ptr %info, i32 255, i32 20)
  %4 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %type1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %6 = ptrtoint ptr %type1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type1, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp2 = icmp eq i16 %7, 1
  %. = select i1 %cmp2, i32 8203, i32 8202
  %8 = ptrtoint ptr %ifs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %., ptr %ifs, align 4
  %size = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %10)
  %cmp7 = icmp ult i32 %10, 20
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 20, ptr %size, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.then
  %dlci = getelementptr inbounds %struct.pvc_device, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dlci, align 4
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %info, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = call ptr @memcpy(ptr %2, ptr %16, i32 16)
  %ifs_ifsu = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 2
  %18 = ptrtoint ptr %ifs_ifsu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ifs_ifsu, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end11.cleanup_crit_edge, label %if.end.i.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end11
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %19, i32 20, i32 -1226833920) #12, !srcloc !96
  %asmresult.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 20) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %19, ptr noundef nonnull %info, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %if.then9 ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end11.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fr_snap_parse(ptr noundef %skb, ptr nocapture noundef readonly %pvc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true:                                    ; preds = %entry
  %arrayidx3 = getelementptr i8, ptr %1, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp5 = icmp eq i8 %5, 0
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.land.lhs.true21_crit_edge

land.lhs.true.land.lhs.true21_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true21

land.lhs.true7:                                   ; preds = %land.lhs.true
  %arrayidx9 = getelementptr i8, ptr %1, i32 2
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp11 = icmp eq i8 %7, 0
  br i1 %cmp11, label %if.then, label %land.lhs.true21thread-pre-split

if.then:                                          ; preds = %land.lhs.true7
  %main = getelementptr inbounds %struct.pvc_device, ptr %pvc, i32 0, i32 1
  %8 = ptrtoint ptr %main to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %main, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %10 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %10, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 3
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr, align 2
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %protocol, align 8
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 5) #9
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %19 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %mac_header.i, align 2
  br label %return

land.lhs.true21thread-pre-split:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %.pr = load i8, ptr %arrayidx3, align 1
  br label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true21thread-pre-split, %land.lhs.true.land.lhs.true21_crit_edge
  %21 = phi i8 [ %.pr, %land.lhs.true21thread-pre-split ], [ %5, %land.lhs.true.land.lhs.true21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %21)
  %cmp25 = icmp eq i8 %21, -128
  br i1 %cmp25, label %land.lhs.true27, label %land.lhs.true21.return_crit_edge

land.lhs.true21.return_crit_edge:                 ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true27:                                  ; preds = %land.lhs.true21
  %arrayidx29 = getelementptr i8, ptr %1, i32 2
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -62, i8 %23)
  %cmp31 = icmp eq i8 %23, -62
  br i1 %cmp31, label %if.then33, label %land.lhs.true27.return_crit_edge

land.lhs.true27.return_crit_edge:                 ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then33:                                        ; preds = %land.lhs.true27
  %arrayidx35 = getelementptr i8, ptr %1, i32 3
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp37 = icmp eq i8 %25, 0
  br i1 %cmp37, label %land.lhs.true39, label %if.then33.return_crit_edge

if.then33.return_crit_edge:                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true39:                                  ; preds = %if.then33
  %arrayidx41 = getelementptr i8, ptr %1, i32 4
  %26 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %27)
  %cmp43 = icmp eq i8 %27, 7
  br i1 %cmp43, label %if.then45, label %land.lhs.true39.return_crit_edge

land.lhs.true39.return_crit_edge:                 ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then45:                                        ; preds = %land.lhs.true39
  %ether = getelementptr inbounds %struct.pvc_device, ptr %pvc, i32 0, i32 2
  %28 = ptrtoint ptr %ether to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ether, align 4
  %tobool46.not = icmp eq ptr %29, null
  br i1 %tobool46.not, label %if.then45.return_crit_edge, label %if.end48

if.then45.return_crit_edge:                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end48:                                         ; preds = %if.then45
  %call49 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 5) #9
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %31)
  %cmp50 = icmp ult i32 %31, 14
  br i1 %cmp50, label %if.end48.return_crit_edge, label %if.end53

if.end48.return_crit_edge:                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %ether to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ether, align 4
  %call55 = tail call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef %33) #9
  %protocol56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %34 = ptrtoint ptr %protocol56 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %call55, ptr %protocol56, align 8
  br label %return

return:                                           ; preds = %if.end53, %if.end48.return_crit_edge, %if.then45.return_crit_edge, %land.lhs.true39.return_crit_edge, %if.then33.return_crit_edge, %land.lhs.true27.return_crit_edge, %land.lhs.true21.return_crit_edge, %if.end, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.end53 ], [ -1, %if.then.return_crit_edge ], [ -1, %if.then45.return_crit_edge ], [ -1, %if.end48.return_crit_edge ], [ -1, %land.lhs.true39.return_crit_edge ], [ -1, %if.then33.return_crit_edge ], [ -1, %land.lhs.true27.return_crit_edge ], [ -1, %land.lhs.true21.return_crit_edge ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_hdlc_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_hdlc_fr__345_1295_hdlc_fr_init6, !1, !"__initcall__kmod_hdlc_fr__345_1295_hdlc_fr_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wan/hdlc_fr.c", i32 1295, i32 1}
!2 = !{ptr @__exitcall_hdlc_fr_exit, !3, !"__exitcall_hdlc_fr_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/wan/hdlc_fr.c", i32 1296, i32 1}
!4 = !{ptr @__UNIQUE_ID_author346, !5, !"__UNIQUE_ID_author346", i1 false, i1 false}
!5 = !{!"../drivers/net/wan/hdlc_fr.c", i32 1298, i32 1}
!6 = !{ptr @__UNIQUE_ID_description347, !7, !"__UNIQUE_ID_description347", i1 false, i1 false}
!7 = !{!"../drivers/net/wan/hdlc_fr.c", i32 1299, i32 1}
!8 = !{ptr @__UNIQUE_ID_file348, !9, !"__UNIQUE_ID_file348", i1 false, i1 false}
!9 = !{!"../drivers/net/wan/hdlc_fr.c", i32 1300, i32 1}
!10 = !{ptr @__UNIQUE_ID_license349, !9, !"__UNIQUE_ID_license349", i1 false, i1 false}
!11 = !{ptr @proto, !12, !"proto", i1 false, i1 false}
!12 = !{!"../drivers/net/wan/hdlc_fr.c", i32 1174, i32 26}
!13 = !{ptr @fr_start.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/wan/hdlc_fr.c", i32 1012, i32 3}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wan/hdlc_fr.c", i32 599, i32 22}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wan/hdlc_fr.c", i32 611, i32 20}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wan/hdlc_fr.c", i32 611, i32 52}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wan/hdlc_fr.c", i32 611, i32 57}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wan/hdlc_fr.c", i32 471, i32 21}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wan/hdlc_fr.c", i32 440, i32 25}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wan/hdlc_fr.c", i32 443, i32 33}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wan/hdlc_fr.c", i32 445, i32 24}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wan/hdlc_fr.c", i32 446, i32 27}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wan/hdlc_fr.c", i32 447, i32 27}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wan/hdlc_fr.c", i32 447, i32 38}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!40 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wan/hdlc_fr.c", i32 1071, i32 21}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wan/hdlc_fr.c", i32 1081, i32 9}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wan/hdlc_fr.c", i32 1084, i32 9}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wan/hdlc_fr.c", i32 1087, i32 21}
!53 = !{ptr @pvc_ops, !54, !"pvc_ops", i1 false, i1 false}
!54 = !{!"../drivers/net/wan/hdlc_fr.c", i32 1055, i32 36}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wan/hdlc_fr.c", i32 976, i32 21}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wan/hdlc_fr.c", i32 644, i32 20}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wan/hdlc_fr.c", i32 650, i32 20}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wan/hdlc_fr.c", i32 655, i32 20}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wan/hdlc_fr.c", i32 661, i32 20}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wan/hdlc_fr.c", i32 668, i32 21}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wan/hdlc_fr.c", i32 679, i32 20}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wan/hdlc_fr.c", i32 685, i32 20}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wan/hdlc_fr.c", i32 692, i32 20}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wan/hdlc_fr.c", i32 699, i32 20}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wan/hdlc_fr.c", i32 705, i32 20}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wan/hdlc_fr.c", i32 780, i32 21}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wan/hdlc_fr.c", i32 786, i32 21}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wan/hdlc_fr.c", i32 808, i32 21}
!83 = distinct !{null, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"auto-init"}
!96 = !{i64 2152369749, i64 2152369774}
!97 = !{i64 2152369068, i64 2152369093}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 4864623}
!100 = !{i64 4864820}
!101 = !{i64 2152350053}
!102 = !{!"branch_weights", i32 1, i32 2000}
