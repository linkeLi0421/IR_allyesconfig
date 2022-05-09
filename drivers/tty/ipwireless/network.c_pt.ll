; ModuleID = '/llk/IR_all_yes/drivers/tty/ipwireless/network.c_pt.bc'
source_filename = "../drivers/tty/ipwireless/network.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ppp_channel_ops = type { ptr, ptr, ptr }
%struct.ipw_network = type { ptr, ptr, [5 x [2 x ptr]], i32, i32, %struct.spinlock, %struct.mutex, i32, i32, [8 x i32], i32, i32, i32, i32, %struct.work_struct, %struct.work_struct }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ppp_channel = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ipwireless_network_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&network->lock\00", [17 x i8] zeroinitializer }, align 32
@ipwireless_network_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&network->close_lock\00", [43 x i8] zeroinitializer }, align 32
@ipwireless_network_create.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&network->work_go_online)\00", [52 x i8] zeroinitializer }, align 32
@ipwireless_network_create.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&network->work_go_offline)\00", [51 x i8] zeroinitializer }, align 32
@ipwireless_debug = external dso_local local_unnamed_addr global i32, align 4
@ipwireless_ppp_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017ipwireless: online\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipwireless_ppp_open\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/tty/ipwireless/network.c\00", [63 x i8] zeroinitializer }, align 32
@ipwireless_ppp_open._entry_ptr = internal global ptr @ipwireless_ppp_open._entry, section ".printk_index", align 4
@ipwireless_ppp_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.9, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017ipwireless: offline\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipwireless_ppp_close\00", [43 x i8] zeroinitializer }, align 32
@ipwireless_ppp_close._entry_ptr = internal global ptr @ipwireless_ppp_close._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@do_go_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.9, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ipwireless: unable to allocate PPP channel\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_go_online\00", [19 x i8] zeroinitializer }, align 32
@do_go_online._entry_ptr = internal global ptr @do_go_online._entry, section ".printk_index", align 4
@ipwireless_ppp_channel_ops = internal constant { %struct.ppp_channel_ops, [20 x i8] } { %struct.ppp_channel_ops { ptr @ipwireless_ppp_start_xmit, ptr @ipwireless_ppp_ioctl, ptr null }, [20 x i8] zeroinitializer }, align 32
@do_go_online._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.9, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ipwireless: unable to register PPP channel\0A\00", [50 x i8] zeroinitializer }, align 32
@do_go_online._entry_ptr.16 = internal global ptr @do_go_online._entry.14, section ".printk_index", align 4
@ipwireless_out_queue = external dso_local local_unnamed_addr global i32, align 4
@ipwireless_ppp_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.9, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017ipwireless: ppp blocked\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ipwireless_ppp_start_xmit\00", [38 x i8] zeroinitializer }, align 32
@ipwireless_ppp_start_xmit._entry_ptr = internal global ptr @ipwireless_ppp_start_xmit._entry, section ".printk_index", align 4
@notify_packet_sent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.9, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017ipwireless: ppp unblocked\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"notify_packet_sent\00", [45 x i8] zeroinitializer }, align 32
@notify_packet_sent._entry_ptr = internal global ptr @notify_packet_sent._entry, section ".printk_index", align 4
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 1074033746, i64 1074033748, i64 1074033751, i64 1074033753, i64 1075868751, i64 2147775571, i64 2147775573, i64 2147775576, i64 2147775578, i64 2149610576]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 424, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 425, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 429, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 430, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 476, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 484, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 262, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"ipwireless_ppp_channel_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 243, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 279, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 150, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private constant [36 x i8] c"../drivers/tty/ipwireless/network.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 80, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 174, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @do_go_online._entry, ptr @do_go_online._entry.14, ptr @do_go_online._entry_ptr, ptr @do_go_online._entry_ptr.16, ptr @ipwireless_ppp_close._entry, ptr @ipwireless_ppp_close._entry_ptr, ptr @ipwireless_ppp_open._entry, ptr @ipwireless_ppp_open._entry_ptr, ptr @ipwireless_ppp_start_xmit._entry, ptr @ipwireless_ppp_start_xmit._entry_ptr, ptr @notify_packet_sent._entry, ptr @notify_packet_sent._entry_ptr, ptr @ipwireless_network_create.__key, ptr @.str, ptr @ipwireless_network_create.__key.1, ptr @.str.2, ptr @ipwireless_network_create.__key.3, ptr @.str.4, ptr @ipwireless_network_create.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @ipwireless_ppp_channel_ops, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.23], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_network_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_network_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_network_create.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_network_create.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_ppp_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_ppp_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_go_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_ppp_channel_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_go_online._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_ppp_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notify_packet_sent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipwireless_network_notify_control_line_change(ptr nocapture noundef %network, i32 noundef %channel_idx, i32 noundef %control_lines, i32 noundef %changed_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel_idx)
  %cmp = icmp eq i32 %channel_idx, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ras_control_lines = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 13
  %0 = ptrtoint ptr %ras_control_lines to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %control_lines, ptr %ras_control_lines, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx2 = getelementptr %struct.ipw_network, ptr %network, i32 0, i32 2, i32 %channel_idx, i32 0
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ipwireless_tty_notify_control_line_change(ptr noundef nonnull %2, i32 noundef %channel_idx, i32 noundef %control_lines, i32 noundef %changed_mask) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %arrayidx2.1 = getelementptr %struct.ipw_network, ptr %network, i32 0, i32 2, i32 %channel_idx, i32 1
  %3 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx2.1, align 4
  %tobool.not.1 = icmp eq ptr %4, null
  br i1 %tobool.not.1, label %if.end4.if.end4.1_crit_edge, label %if.then3.1

if.end4.if.end4.1_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.1

if.then3.1:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ipwireless_tty_notify_control_line_change(ptr noundef nonnull %4, i32 noundef %channel_idx, i32 noundef %control_lines, i32 noundef %changed_mask) #11
  br label %if.end4.1

if.end4.1:                                        ; preds = %if.then3.1, %if.end4.if.end4.1_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_tty_notify_control_line_change(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipwireless_network_packet_received(ptr noundef %network, i32 noundef %channel_idx, ptr noundef %data, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel_idx)
  %cmp2 = icmp eq i32 %channel_idx, 0
  %ras_control_lines = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 13
  %close_lock = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 6
  %lock = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 5
  %ppp_channel = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length)
  %cmp.i = icmp ugt i32 %length, 2
  %arrayidx4.i = getelementptr i8, ptr %data, i32 1
  %sub.i = add i32 %length, -2
  %arrayidx1 = getelementptr %struct.ipw_network, ptr %network, i32 0, i32 2, i32 %channel_idx, i32 0
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.else25_crit_edge

if.end.if.else25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %ras_control_lines to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_control_lines, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3.not = icmp eq i32 %and, 0
  br i1 %cmp3.not, label %land.lhs.true.if.else25_crit_edge, label %land.lhs.true4

land.lhs.true.if.else25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call = tail call i32 @ipwireless_tty_is_modem(ptr noundef nonnull %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %land.lhs.true4.if.else25_crit_edge, label %if.then6

land.lhs.true4.if.else25_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25

if.then6:                                         ; preds = %land.lhs.true4
  tail call void @mutex_lock_nested(ptr noundef %close_lock, i32 noundef 0) #11
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %4 = ptrtoint ptr %ppp_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppp_channel, align 4
  %cmp13.not = icmp eq ptr %5, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #11
  br i1 %cmp13.not, label %if.then6.cleanup.thread_crit_edge, label %if.then15

if.then6.cleanup.thread_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then15:                                        ; preds = %if.then6
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then15.if.end.i_crit_edge

if.then15.if.end.i_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then15
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp1.i = icmp eq i8 %7, -1
  br i1 %cmp1.i, label %land.lhs.true3.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp6.i = icmp eq i8 %9, 3
  %spec.select.idx = select i1 %cmp6.i, i32 2, i32 0
  %spec.select = getelementptr i8, ptr %data, i32 %spec.select.idx
  %spec.select45 = select i1 %cmp6.i, i32 %sub.i, i32 %length
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true3.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then15.if.end.i_crit_edge
  %data.addr.0.i = phi ptr [ %data, %land.lhs.true.i.if.end.i_crit_edge ], [ %data, %if.then15.if.end.i_crit_edge ], [ %spec.select, %land.lhs.true3.i ]
  %length.addr.0.i = phi i32 [ %length, %land.lhs.true.i.if.end.i_crit_edge ], [ %length, %if.then15.if.end.i_crit_edge ], [ %spec.select45, %land.lhs.true3.i ]
  %add.i = add i32 %length.addr.0.i, 4
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i, i32 noundef 2592) #11
  %cmp8.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp8.i, label %if.end.i.cleanup.thread_crit_edge, label %if.then19

if.end.i.cleanup.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then19:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %13, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %length.addr.0.i) #11
  %14 = call ptr @memcpy(ptr %call.i.i, ptr %data.addr.0.i, i32 %length.addr.0.i)
  %15 = ptrtoint ptr %ppp_channel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ppp_channel, align 4
  tail call void @ppp_input(ptr noundef %16, ptr noundef nonnull %call.i.i.i) #11
  br label %cleanup.thread

if.else25:                                        ; preds = %land.lhs.true4.if.else25_crit_edge, %land.lhs.true.if.else25_crit_edge, %if.end.if.else25_crit_edge
  tail call void @ipwireless_tty_received(ptr noundef nonnull %1, ptr noundef %data, i32 noundef %length) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else25, %entry.cleanup_crit_edge
  %arrayidx1.1 = getelementptr %struct.ipw_network, ptr %network, i32 0, i32 2, i32 %channel_idx, i32 1
  %17 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx1.1, align 4
  %tobool.not.1 = icmp eq ptr %18, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.1

cleanup.thread:                                   ; preds = %if.then19, %if.end.i.cleanup.thread_crit_edge, %if.then6.cleanup.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %close_lock) #11
  %arrayidx1.146 = getelementptr %struct.ipw_network, ptr %network, i32 0, i32 2, i32 %channel_idx, i32 1
  %19 = ptrtoint ptr %arrayidx1.146 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx1.146, align 4
  %tobool.not.147 = icmp eq ptr %20, null
  br i1 %tobool.not.147, label %cleanup.thread.cleanup.1_crit_edge, label %cleanup.thread.land.lhs.true.1_crit_edge

cleanup.thread.land.lhs.true.1_crit_edge:         ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.1

cleanup.thread.cleanup.1_crit_edge:               ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  br i1 %cmp2, label %if.end.1.land.lhs.true.1_crit_edge, label %if.end.1.if.else25.1_crit_edge

if.end.1.if.else25.1_crit_edge:                   ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25.1

if.end.1.land.lhs.true.1_crit_edge:               ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %if.end.1.land.lhs.true.1_crit_edge, %cleanup.thread.land.lhs.true.1_crit_edge
  %21 = phi ptr [ %18, %if.end.1.land.lhs.true.1_crit_edge ], [ %20, %cleanup.thread.land.lhs.true.1_crit_edge ]
  %22 = ptrtoint ptr %ras_control_lines to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ras_control_lines, align 4
  %and.1 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp3.not.1 = icmp eq i32 %and.1, 0
  br i1 %cmp3.not.1, label %land.lhs.true.1.if.else25.1_crit_edge, label %land.lhs.true4.1

land.lhs.true.1.if.else25.1_crit_edge:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25.1

land.lhs.true4.1:                                 ; preds = %land.lhs.true.1
  %call.1 = tail call i32 @ipwireless_tty_is_modem(ptr noundef nonnull %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool5.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool5.not.1, label %land.lhs.true4.1.if.else25.1_crit_edge, label %if.then6.1

land.lhs.true4.1.if.else25.1_crit_edge:           ; preds = %land.lhs.true4.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25.1

if.then6.1:                                       ; preds = %land.lhs.true4.1
  tail call void @mutex_lock_nested(ptr noundef %close_lock, i32 noundef 0) #11
  %call10.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %24 = ptrtoint ptr %ppp_channel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ppp_channel, align 4
  %cmp13.not.1 = icmp eq ptr %25, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10.1) #11
  br i1 %cmp13.not.1, label %if.then6.1.if.end23.1_crit_edge, label %if.then15.1

if.then6.1.if.end23.1_crit_edge:                  ; preds = %if.then6.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.1

if.then15.1:                                      ; preds = %if.then6.1
  br i1 %cmp.i, label %land.lhs.true.i.1, label %if.then15.1.if.end.i.1_crit_edge

if.then15.1.if.end.i.1_crit_edge:                 ; preds = %if.then15.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.1

land.lhs.true.i.1:                                ; preds = %if.then15.1
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp1.i.1 = icmp eq i8 %27, -1
  br i1 %cmp1.i.1, label %land.lhs.true3.i.1, label %land.lhs.true.i.1.if.end.i.1_crit_edge

land.lhs.true.i.1.if.end.i.1_crit_edge:           ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.1

land.lhs.true3.i.1:                               ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp6.i.1 = icmp eq i8 %29, 3
  %spec.select.idx.1 = select i1 %cmp6.i.1, i32 2, i32 0
  %spec.select.1 = getelementptr i8, ptr %data, i32 %spec.select.idx.1
  %spec.select45.1 = select i1 %cmp6.i.1, i32 %sub.i, i32 %length
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %land.lhs.true3.i.1, %land.lhs.true.i.1.if.end.i.1_crit_edge, %if.then15.1.if.end.i.1_crit_edge
  %data.addr.0.i.1 = phi ptr [ %data, %land.lhs.true.i.1.if.end.i.1_crit_edge ], [ %data, %if.then15.1.if.end.i.1_crit_edge ], [ %spec.select.1, %land.lhs.true3.i.1 ]
  %length.addr.0.i.1 = phi i32 [ %length, %land.lhs.true.i.1.if.end.i.1_crit_edge ], [ %length, %if.then15.1.if.end.i.1_crit_edge ], [ %spec.select45.1, %land.lhs.true3.i.1 ]
  %add.i.1 = add i32 %length.addr.0.i.1, 4
  %call.i.i.i.1 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i.1, i32 noundef 2592) #11
  %cmp8.i.1 = icmp eq ptr %call.i.i.i.1, null
  br i1 %cmp8.i.1, label %if.end.i.1.if.end23.1_crit_edge, label %if.then19.1

if.end.i.1.if.end23.1_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.1

if.then19.1:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i.1 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.1, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.1, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %31, i32 2
  store ptr %add.ptr.i.i.1, ptr %data.i.i.1, align 4
  %tail.i.i.1 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.1, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.1, align 8
  %add.ptr1.i.i.1 = getelementptr i8, ptr %33, i32 2
  store ptr %add.ptr1.i.i.1, ptr %tail.i.i.1, align 8
  %call.i.i.1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.1, i32 noundef %length.addr.0.i.1) #11
  %34 = call ptr @memcpy(ptr %call.i.i.1, ptr %data.addr.0.i.1, i32 %length.addr.0.i.1)
  %35 = ptrtoint ptr %ppp_channel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ppp_channel, align 4
  tail call void @ppp_input(ptr noundef %36, ptr noundef nonnull %call.i.i.i.1) #11
  br label %if.end23.1

if.end23.1:                                       ; preds = %if.then19.1, %if.end.i.1.if.end23.1_crit_edge, %if.then6.1.if.end23.1_crit_edge
  tail call void @mutex_unlock(ptr noundef %close_lock) #11
  br label %cleanup.1

if.else25.1:                                      ; preds = %land.lhs.true4.1.if.else25.1_crit_edge, %land.lhs.true.1.if.else25.1_crit_edge, %if.end.1.if.else25.1_crit_edge
  %37 = phi ptr [ %21, %land.lhs.true4.1.if.else25.1_crit_edge ], [ %21, %land.lhs.true.1.if.else25.1_crit_edge ], [ %18, %if.end.1.if.else25.1_crit_edge ]
  tail call void @ipwireless_tty_received(ptr noundef nonnull %37, ptr noundef %data, i32 noundef %length) #11
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.else25.1, %if.end23.1, %cleanup.thread.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipwireless_tty_is_modem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_input(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_tty_received(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipwireless_network_create(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 336) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.ipw_network, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @ipwireless_network_create.__key, i16 noundef signext 3) #11
  %close_lock = getelementptr inbounds %struct.ipw_network, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %close_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @ipwireless_network_create.__key.1) #11
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hw, ptr %call7.i.i, align 8
  %work_go_online = getelementptr inbounds %struct.ipw_network, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_work(ptr noundef %work_go_online, i32 noundef 0) #11
  %2 = ptrtoint ptr %work_go_online to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %work_go_online, align 8
  %lockdep_map = getelementptr inbounds %struct.ipw_network, ptr %call7.i.i, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @ipwireless_network_create.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry9 = getelementptr inbounds %struct.ipw_network, ptr %call7.i.i, i32 0, i32 14, i32 1
  %3 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.ipw_network, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry9, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.ipw_network, ptr %call7.i.i, i32 0, i32 14, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @do_go_online, ptr %func, align 4
  %work_go_offline = getelementptr inbounds %struct.ipw_network, ptr %call7.i.i, i32 0, i32 15
  tail call void @__init_work(ptr noundef %work_go_offline, i32 noundef 0) #11
  %6 = ptrtoint ptr %work_go_offline to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %work_go_offline, align 4
  %lockdep_map19 = getelementptr inbounds %struct.ipw_network, ptr %call7.i.i, i32 0, i32 15, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map19, ptr noundef nonnull @.str.6, ptr noundef nonnull @ipwireless_network_create.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry21 = getelementptr inbounds %struct.ipw_network, ptr %call7.i.i, i32 0, i32 15, i32 1
  %7 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry21, ptr %entry21, align 8
  %prev.i42 = getelementptr inbounds %struct.ipw_network, ptr %call7.i.i, i32 0, i32 15, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry21, ptr %prev.i42, align 4
  %func23 = getelementptr inbounds %struct.ipw_network, ptr %call7.i.i, i32 0, i32 15, i32 2
  %9 = ptrtoint ptr %func23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @do_go_offline, ptr %func23, align 8
  tail call void @ipwireless_associate_network(ptr noundef %hw, ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_go_online(ptr noundef %work_go_online) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work_go_online, i32 -248
  %lock = getelementptr i8, ptr %work_go_online, i32 -192
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %ppp_channel = getelementptr i8, ptr %work_go_online, i32 -244
  %0 = ptrtoint ptr %ppp_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppp_channel, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end44_crit_edge

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #14
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %do.end12, label %if.end

do.end12:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #15
  br label %cleanup46

if.end:                                           ; preds = %if.then
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %call7.i.i, align 8
  %mtu = getelementptr inbounds %struct.ppp_channel, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16384, ptr %mtu, align 8
  %hdrlen = getelementptr inbounds %struct.ppp_channel, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %hdrlen, align 4
  %ops = getelementptr inbounds %struct.ppp_channel, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ipwireless_ppp_channel_ops, ptr %ops, align 4
  %flags15 = getelementptr i8, ptr %work_go_online, i32 -56
  %7 = ptrtoint ptr %flags15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags15, align 4
  %rbits = getelementptr i8, ptr %work_go_online, i32 -52
  %8 = ptrtoint ptr %rbits to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rbits, align 4
  %mru = getelementptr i8, ptr %work_go_online, i32 -12
  %9 = ptrtoint ptr %mru to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1500, ptr %mru, align 4
  %xaccm = getelementptr i8, ptr %work_go_online, i32 -48
  %10 = getelementptr i8, ptr %work_go_online, i32 -44
  %11 = call ptr @memset(ptr %10, i32 0, i32 28)
  %12 = ptrtoint ptr %xaccm to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %xaccm, align 4
  %arrayidx18 = getelementptr i8, ptr %work_go_online, i32 -36
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1610612736, ptr %arrayidx18, align 4
  %raccm = getelementptr i8, ptr %work_go_online, i32 -16
  %14 = ptrtoint ptr %raccm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %raccm, align 4
  %call19 = tail call i32 @ppp_register_channel(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end25, label %cleanup

do.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup46

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %15 = ptrtoint ptr %ppp_channel to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %ppp_channel, align 4
  br label %if.end44

if.end44:                                         ; preds = %cleanup, %entry.if.end44_crit_edge
  %flags.1 = phi i32 [ %call3, %entry.if.end44_crit_edge ], [ %call38, %cleanup ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #11
  br label %cleanup46

cleanup46:                                        ; preds = %if.end44, %do.end25, %do.end12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_go_offline(ptr noundef %work_go_offline) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %close_lock = getelementptr i8, ptr %work_go_offline, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %close_lock, i32 noundef 0) #11
  %lock = getelementptr i8, ptr %work_go_offline, i32 -236
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %ppp_channel = getelementptr i8, ptr %work_go_offline, i32 -288
  %0 = ptrtoint ptr %ppp_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppp_channel, align 4
  %cmp6.not = icmp eq ptr %1, null
  br i1 %cmp6.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %ppp_channel to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ppp_channel, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  tail call void @mutex_unlock(ptr noundef %close_lock) #11
  tail call void @ppp_unregister_channel(ptr noundef nonnull %1) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  tail call void @mutex_unlock(ptr noundef %close_lock) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_associate_network(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipwireless_network_free(ptr noundef %network) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shutting_down = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 12
  %0 = ptrtoint ptr %shutting_down to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %shutting_down, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipwireless_debug to i32))
  %1 = load i32, ptr @ipwireless_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.ipwireless_ppp_close.exit_crit_edge, label %do.end.i

entry.ipwireless_ppp_close.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipwireless_ppp_close.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %ipwireless_ppp_close.exit

ipwireless_ppp_close.exit:                        ; preds = %do.end.i, %entry.ipwireless_ppp_close.exit_crit_edge
  %work_go_offline.i = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work_go_offline.i) #11
  %work_go_online = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 14
  %call = tail call zeroext i1 @flush_work(ptr noundef %work_go_online) #11
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %work_go_offline.i) #11
  %3 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %network, align 4
  tail call void @ipwireless_stop_interrupts(ptr noundef %4) #11
  %5 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %network, align 4
  tail call void @ipwireless_associate_network(ptr noundef %6, ptr noundef null) #11
  tail call void @kfree(ptr noundef %network) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipwireless_ppp_close(ptr noundef %network) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipwireless_debug to i32))
  %0 = load i32, ptr @ipwireless_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %work_go_offline = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work_go_offline) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_stop_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipwireless_associate_network_tty(ptr nocapture noundef %network, i32 noundef %channel_idx, ptr noundef %tty) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx1 = getelementptr %struct.ipw_network, ptr %network, i32 0, i32 2, i32 %channel_idx, i32 0
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx1, align 4
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %entry.if.then_crit_edge, label %for.cond

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.cond:                                         ; preds = %entry
  %arrayidx1.1 = getelementptr %struct.ipw_network, ptr %network, i32 0, i32 2, i32 %channel_idx, i32 1
  %2 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1.1, align 4
  %cmp2.1 = icmp eq ptr %3, null
  br i1 %cmp2.1, label %for.cond.if.then_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx1.lcssa = phi ptr [ %arrayidx1, %entry.if.then_crit_edge ], [ %arrayidx1.1, %for.cond.if.then_crit_edge ]
  %4 = ptrtoint ptr %arrayidx1.lcssa to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tty, ptr %arrayidx1.lcssa, align 4
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @ipwireless_disassociate_network_ttys(ptr nocapture noundef writeonly %network, i32 noundef %channel_idx) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = shl i32 %channel_idx, 3
  %1 = add i32 %0, 8
  %uglygep = getelementptr i8, ptr %network, i32 %1
  %2 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %uglygep, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipwireless_ppp_open(ptr noundef %network) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipwireless_debug to i32))
  %0 = load i32, ptr @ipwireless_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %work_go_online = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work_go_online) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipwireless_ppp_channel_index(ptr noundef %network) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %ppp_channel = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 1
  %0 = ptrtoint ptr %ppp_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppp_channel, align 4
  %cmp5.not = icmp eq ptr %1, null
  br i1 %cmp5.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @ppp_channel_index(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then ], [ -1, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_channel_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipwireless_ppp_unit_number(ptr noundef %network) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %ppp_channel = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 1
  %0 = ptrtoint ptr %ppp_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppp_channel, align 4
  %cmp5.not = icmp eq ptr %1, null
  br i1 %cmp5.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @ppp_unit_number(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then ], [ -1, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_unit_number(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ipwireless_ppp_mru(ptr nocapture noundef readonly %network) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mru = getelementptr inbounds %struct.ipw_network, ptr %network, i32 0, i32 11
  %0 = ptrtoint ptr %mru to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mru, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_register_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipwireless_ppp_start_xmit(ptr nocapture noundef readonly %ppp_channel, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppp_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppp_channel, align 4
  %lock = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %outgoing_packets_queued = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %outgoing_packets_queued to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outgoing_packets_queued, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipwireless_out_queue to i32))
  %4 = load i32, ptr @ipwireless_out_queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp5 = icmp slt i32 %3, %4
  br i1 %cmp5, label %if.then, label %if.else35

if.then:                                          ; preds = %entry
  %inc = add nsw i32 %3, 1
  %5 = ptrtoint ptr %outgoing_packets_queued to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc, ptr %outgoing_packets_queued, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i)
  %cmp10 = icmp ugt i32 %sub.ptr.sub.i, 1
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  %call13 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 2) #11
  %10 = ptrtoint ptr %call13 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 -253, ptr %call13, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %call14 = tail call i32 @ipwireless_send_packet(ptr noundef %12, i32 noundef 0, ptr noundef %14, i32 noundef %16, ptr noundef nonnull @notify_packet_sent, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.then12.if.end33_crit_edge

if.then12.if.end33_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #11
  br label %cleanup45

if.else:                                          ; preds = %if.then
  %len19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len19, align 4
  %add = add i32 %18, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #16
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.else.cleanup45_crit_edge, label %if.end22

if.else.cleanup45_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.end22:                                         ; preds = %if.else
  %add.ptr = getelementptr i8, ptr %call9.i, i32 2
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %21 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len19, align 4
  %23 = call ptr @memcpy(ptr %add.ptr, ptr %20, i32 %22)
  %24 = ptrtoint ptr %call9.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -253, ptr %call9.i, align 128
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add27 = add i32 %22, 2
  %call28 = tail call i32 @ipwireless_send_packet(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %call9.i, i32 noundef %add27, ptr noundef nonnull @notify_packet_sent, ptr noundef %1) #11
  tail call void @kfree(ptr noundef nonnull %call9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end22.cleanup45_crit_edge, label %if.end22.if.end33_crit_edge

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end22.cleanup45_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.end33:                                         ; preds = %if.end22.if.end33_crit_edge, %if.then12.if.end33_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup45

if.else35:                                        ; preds = %entry
  %ppp_blocked = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %ppp_blocked to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %ppp_blocked, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipwireless_debug to i32))
  %28 = load i32, ptr @ipwireless_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool37.not = icmp eq i32 %28, 0
  br i1 %tobool37.not, label %if.else35.cleanup45_crit_edge, label %do.end41

if.else35.cleanup45_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

do.end41:                                         ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #15
  br label %cleanup45

cleanup45:                                        ; preds = %do.end41, %if.else35.cleanup45_crit_edge, %if.end33, %if.end22.cleanup45_crit_edge, %if.else.cleanup45_crit_edge, %if.then17
  %retval.1 = phi i32 [ 0, %if.then17 ], [ 1, %if.end33 ], [ 0, %if.else.cleanup45_crit_edge ], [ 0, %if.end22.cleanup45_crit_edge ], [ 0, %do.end41 ], [ 0, %if.else35.cleanup45_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipwireless_ppp_ioctl(ptr nocapture noundef readonly %ppp_channel, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %accm = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppp_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppp_channel, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %accm) #11
  %2 = getelementptr inbounds [8 x i32], ptr %accm, i32 0, i32 2
  %3 = getelementptr inbounds [8 x i32], ptr %accm, i32 0, i32 3
  %4 = inttoptr i32 %arg to ptr
  %5 = call ptr @memset(ptr %accm, i32 255, i32 32)
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 -2147191718, label %sw.bb
    i32 1074033753, label %sw.bb2
    i32 -2147191720, label %sw.bb19
    i32 1074033751, label %sw.bb38
    i32 -2147191723, label %sw.bb56
    i32 1074033748, label %sw.bb75
    i32 -2145356720, label %sw.bb92
    i32 1075868751, label %if.then.i202
    i32 -2147191725, label %sw.bb111
    i32 1074033746, label %sw.bb130
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %rbits = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %rbits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rbits, align 4
  %or = or i32 %10, %8
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 168) #11
  %11 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !63
  %and.i = and i32 %13, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %or, i32 -1226833921) #11, !srcloc !66
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 174) #11
  %15 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i179 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i179 to ptr
  %cpu_domain.i.i180 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i180) #9, !srcloc !63
  %and.i181 = and i32 %17, -13
  %or.i182 = or i32 %and.i181, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i182) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #11, !srcloc !67
  %asmresult = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool13.not = icmp eq i32 %asmresult, 0
  br i1 %tobool13.not, label %if.end15, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end15:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %asmresult11 = extractvalue { i32, i32 } %18, 1
  %and = and i32 %asmresult11, -251658241
  %flags16 = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %flags16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and, ptr %flags16, align 4
  %and17 = and i32 %asmresult11, 251658240
  %rbits18 = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %rbits18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and17, ptr %rbits18, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %xaccm = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %xaccm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xaccm, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 182) #11
  %23 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i183 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i183 to ptr
  %cpu_domain.i.i184 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i184) #9, !srcloc !63
  %and.i185 = and i32 %25, -13
  %or.i186 = or i32 %and.i185, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i186) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %22, i32 -1226833921) #11, !srcloc !68
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool35.not = icmp eq i32 %26, 0
  %spec.select173 = select i1 %tobool35.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 188) #11
  %27 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i187 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i187 to ptr
  %cpu_domain.i.i188 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i188) #9, !srcloc !63
  %and.i189 = and i32 %29, -13
  %or.i190 = or i32 %and.i189, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i190) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  %30 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #11, !srcloc !69
  %asmresult48 = extractvalue { i32, i32 } %30, 0
  %asmresult49 = extractvalue { i32, i32 } %30, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  %xaccm50 = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %xaccm50 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %asmresult49, ptr %xaccm50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult48)
  %tobool53.not = icmp eq i32 %asmresult48, 0
  %spec.select174 = select i1 %tobool53.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %raccm = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %raccm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %raccm, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 194) #11
  %34 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i191 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i191 to ptr
  %cpu_domain.i.i192 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i192) #9, !srcloc !63
  %and.i193 = and i32 %36, -13
  %or.i194 = or i32 %and.i193, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i194) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  %37 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %33, i32 -1226833921) #11, !srcloc !70
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool72.not = icmp eq i32 %37, 0
  %spec.select175 = select i1 %tobool72.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb75:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 200) #11
  %38 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i195 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i195 to ptr
  %cpu_domain.i.i196 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i196) #9, !srcloc !63
  %and.i197 = and i32 %40, -13
  %or.i198 = or i32 %and.i197, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i198) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  %41 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #11, !srcloc !71
  %asmresult85 = extractvalue { i32, i32 } %41, 0
  %asmresult86 = extractvalue { i32, i32 } %41, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  %raccm87 = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %raccm87 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %asmresult86, ptr %raccm87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult85)
  %tobool89.not = icmp eq i32 %asmresult85, 0
  %spec.select176 = select i1 %tobool89.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb92:                                          ; preds = %entry
  %xaccm93 = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 9
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %sw.bb92.sw.epilog_crit_edge, label %if.end.i.i

sw.bb92.sw.epilog_crit_edge:                      ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb92
  %43 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 32, i32 -1226833920) #17, !srcloc !72
  %asmresult.i.i = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.sw.epilog_crit_edge

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %xaccm93, i32 noundef 32) #11
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %xaccm93, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool95.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select220 = select i1 %tobool95.not, i32 0, i32 -14
  br label %sw.epilog

if.then.i202:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 156) #11
  %call.i.i201 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i201, label %if.then.i202.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i202.if.then11.i.i_crit_edge:             ; preds = %if.then.i202
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i202
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 32, i32 -1226833920) #17, !srcloc !73
  %asmresult.i.i203 = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i203)
  %cmp.i.i204 = icmp eq i32 %asmresult.i.i203, 0
  br i1 %cmp.i.i204, label %if.end.i.i206, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !74

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i206:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i205 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %accm, i32 noundef 32) #11
  %45 = call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !63
  %and.i.i.i.i = and i32 %47, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %accm, ptr noundef %4, i32 noundef 32) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #11, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end103, label %if.end.i.i206.if.then11.i.i_crit_edge, !prof !74

if.end.i.i206.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i206.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i202.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i206.if.then11.i.i_crit_edge ], [ 32, %if.then.i202.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %accm, i32 %sub.i.i
  %48 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %sw.epilog

if.end103:                                        ; preds = %if.end.i.i206
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %2, align 4
  %and105 = and i32 %50, -1073741825
  store i32 %and105, ptr %2, align 4
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %3, align 4
  %or107 = or i32 %52, 1610612736
  store i32 %or107, ptr %3, align 4
  %xaccm108 = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 9
  %53 = call ptr @memcpy(ptr %xaccm108, ptr %accm, i32 32)
  br label %sw.epilog

sw.bb111:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mru = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 11
  %54 = ptrtoint ptr %mru to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 222) #11
  %56 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i208 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i208 to ptr
  %cpu_domain.i.i209 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i209) #9, !srcloc !63
  %and.i210 = and i32 %58, -13
  %or.i211 = or i32 %and.i210, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i211) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  %59 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %55, i32 -1226833921) #11, !srcloc !75
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool127.not = icmp eq i32 %59, 0
  %spec.select178 = select i1 %tobool127.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb130:                                         ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 228) #11
  %60 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i212 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i212 to ptr
  %cpu_domain.i.i213 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i213) #9, !srcloc !63
  %and.i214 = and i32 %62, -13
  %or.i215 = or i32 %and.i214, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i215) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  %63 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #11, !srcloc !76
  %asmresult140 = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #11, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult140)
  %tobool143.not = icmp eq i32 %asmresult140, 0
  br i1 %tobool143.not, label %if.end145, label %sw.bb130.sw.epilog_crit_edge

sw.bb130.sw.epilog_crit_edge:                     ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end145:                                        ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #13
  %asmresult141 = extractvalue { i32, i32 } %63, 1
  %64 = tail call i32 @llvm.smax.i32(i32 %asmresult141, i32 1500)
  %mru148 = getelementptr inbounds %struct.ipw_network, ptr %1, i32 0, i32 11
  %65 = ptrtoint ptr %mru148 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %mru148, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end145, %sw.bb130.sw.epilog_crit_edge, %sw.bb111, %if.end103, %if.then11.i.i, %copy_to_user.exit, %if.end.i.i.sw.epilog_crit_edge, %sw.bb92.sw.epilog_crit_edge, %sw.bb75, %sw.bb56, %sw.bb38, %sw.bb19, %if.end15, %sw.bb2.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -14, %sw.bb130.sw.epilog_crit_edge ], [ 0, %if.end145 ], [ 0, %if.end103 ], [ -14, %sw.bb2.sw.epilog_crit_edge ], [ 0, %if.end15 ], [ %spec.select, %sw.bb ], [ %spec.select173, %sw.bb19 ], [ %spec.select174, %sw.bb38 ], [ %spec.select175, %sw.bb56 ], [ %spec.select176, %sw.bb75 ], [ %spec.select178, %sw.bb111 ], [ -25, %entry.sw.epilog_crit_edge ], [ -14, %sw.bb92.sw.epilog_crit_edge ], [ -14, %if.end.i.i.sw.epilog_crit_edge ], [ -14, %if.then11.i.i ], [ %spec.select220, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %accm) #11
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipwireless_send_packet(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @notify_packet_sent(ptr noundef %callback_data, i32 noundef %packet_length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ipw_network, ptr %callback_data, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %outgoing_packets_queued = getelementptr inbounds %struct.ipw_network, ptr %callback_data, i32 0, i32 4
  %0 = ptrtoint ptr %outgoing_packets_queued to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %outgoing_packets_queued, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %outgoing_packets_queued, align 4
  %ppp_channel = getelementptr inbounds %struct.ipw_network, ptr %callback_data, i32 0, i32 1
  %2 = ptrtoint ptr %ppp_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppp_channel, align 4
  %cmp5.not = icmp eq ptr %3, null
  br i1 %cmp5.not, label %if.else20, label %if.then

if.then:                                          ; preds = %entry
  %ppp_blocked = getelementptr inbounds %struct.ipw_network, ptr %callback_data, i32 0, i32 3
  %4 = ptrtoint ptr %ppp_blocked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ppp_blocked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  %6 = ptrtoint ptr %ppp_blocked to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ppp_blocked, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  %7 = ptrtoint ptr %ppp_channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ppp_channel, align 4
  tail call void @ppp_output_wakeup(ptr noundef %8) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipwireless_debug to i32))
  %9 = load i32, ptr @ipwireless_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %if.then7.if.end22_crit_edge, label %do.end15

if.then7.if.end22_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.end15:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  br label %if.end22

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  br label %if.end22

if.else20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.else, %do.end15, %if.then7.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_output_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_unregister_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !51}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @ipwireless_network_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/tty/ipwireless/network.c", i32 424, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ipwireless_network_create.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/tty/ipwireless/network.c", i32 425, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ipwireless_network_create.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/tty/ipwireless/network.c", i32 429, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ipwireless_network_create.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/tty/ipwireless/network.c", i32 430, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/ipwireless/network.c", i32 476, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ipwireless_ppp_open._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @ipwireless_ppp_open._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/tty/ipwireless/network.c", i32 484, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ipwireless_ppp_close._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @ipwireless_ppp_close._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/ipwireless/network.c", i32 262, i32 4}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @do_go_online._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @do_go_online._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/tty/ipwireless/network.c", i32 279, i32 4}
!30 = !{ptr @do_go_online._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @do_go_online._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @ipwireless_ppp_channel_ops, !33, !"ipwireless_ppp_channel_ops", i1 false, i1 false}
!33 = !{!"../drivers/tty/ipwireless/network.c", i32 243, i32 37}
!34 = distinct !{null, !35, !"header", i1 false, i1 false}
!35 = !{!"../drivers/tty/ipwireless/network.c", i32 100, i32 24}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/tty/ipwireless/network.c", i32 150, i32 4}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ipwireless_ppp_start_xmit._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ipwireless_ppp_start_xmit._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/ipwireless/network.c", i32 80, i32 5}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @notify_packet_sent._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @notify_packet_sent._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!48 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 6152817}
!64 = !{i64 6153014}
!65 = !{i64 2153638247}
!66 = !{i64 2156324611, i64 2156324891, i64 2156325225, i64 2156325559}
!67 = !{i64 2156336807, i64 2156337087, i64 2156337421, i64 2156337755}
!68 = !{i64 2156347206, i64 2156347486, i64 2156347820, i64 2156348154}
!69 = !{i64 2156359514, i64 2156359794, i64 2156360128, i64 2156360462}
!70 = !{i64 2156369719, i64 2156369999, i64 2156370333, i64 2156370667}
!71 = !{i64 2156382003, i64 2156382283, i64 2156382617, i64 2156382951}
!72 = !{i64 2153657943, i64 2153657968}
!73 = !{i64 2153657262, i64 2153657287}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 2156393695, i64 2156393975, i64 2156394309, i64 2156394643}
!76 = !{i64 2156405891, i64 2156406171, i64 2156406505, i64 2156406839}
