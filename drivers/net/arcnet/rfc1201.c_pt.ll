; ModuleID = '/llk/IR_all_yes/drivers/net/arcnet/rfc1201.c_pt.bc'
source_filename = "../drivers/net/arcnet/rfc1201.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ArcProto = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.archdr = type { %struct.arc_hardware, %union.anon.114 }
%struct.arc_hardware = type { i8, i8, [2 x i8] }
%union.anon.114 = type { %struct.arc_rfc1201, [12 x i8] }
%struct.arc_rfc1201 = type { i8, i8, i16, [0 x i8] }
%struct.arcnet_local = type { i8, i8, i8, i8, i8, i8, i8, i8, [256 x i8], i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.spinlock, ptr, [22 x i8], ptr, [22 x i8], %struct.timer_list, ptr, i32, %struct.tasklet_struct, %struct.atomic_t, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, %struct.anon.121, %struct.Outgoing, %struct.anon.122, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.120, i32 }
%union.anon.120 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.anon.121 = type { i16, i16, [256 x %struct.Incoming] }
%struct.Incoming = type { ptr, i16, i8, i8 }
%struct.Outgoing = type { ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.anon.122 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
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

@__UNIQUE_ID_file337 = internal constant [40 x i8] c"rfc1201.file=drivers/net/arcnet/rfc1201\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [20 x i8] c"rfc1201.license=GPL\00", section ".modinfo", align 1
@rfc1201_proto = internal global { %struct.ArcProto, [32 x i8] } { %struct.ArcProto { i8 97, i32 1500, i32 1, ptr @rx, ptr @build_header, ptr @prepare_tx, ptr @continue_tx, ptr null }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_rfc1201__339_84_arcnet_rfc1201_init6 = internal global ptr @arcnet_rfc1201_init, section ".initcall6.init", align 4
@__exitcall_arcnet_rfc1201_exit = internal global ptr @arcnet_rfc1201_exit, section ".exitcall.exit", align 4
@arcnet_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/arcnet/rfc1201.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"short RFC1201 exception packet from %02Xh\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"aborting assembly (seq=%d) for unsplit packet (splitflag=%d, seq=%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ARP source address was 00h, set to %02Xh\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"funny-shaped ARP packet. (%Xh, %Xh)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"wrong seq number (saddr=%d, expected=%d, seq=%d, splitflag=%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"aborting previous (seq=%d) assembly (splitflag=%d, seq=%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"incoming packet more than 16 segments; dropping. (splitflag=%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(split) memory squeeze, dropping packet.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"can't continue split without starting first! (splitflag=%d, seq=%d, aborted=%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"duplicate splitpacket ignored! (splitflag=%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"out-of-order splitpacket, reassembly (seq=%d) aborted (splitflag=%d, seq=%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RFC1201: I don't understand protocol %d (%Xh)\0A\00", [49 x i8] zeroinitializer }, align 32
@arcnet_rfc1201_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016arcnet:rfc1201: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arcnet_rfc1201_init\00", [44 x i8] zeroinitializer }, align 32
@arcnet_rfc1201_init._entry_ptr = internal global ptr @arcnet_rfc1201_init._entry, section ".printk_index", align 4
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"RFC1201 \22standard\22 (`a') encapsulation support loaded\00", [42 x i8] zeroinitializer }, align 32
@arc_proto_map = external dso_local local_unnamed_addr global [256 x ptr], align 4
@arc_bcast_proto = external dso_local local_unnamed_addr global ptr, align 4
@arc_proto_default = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 4, i64 2048, i64 2054, i64 32821, i64 32923, i64 33079, i64 34525]
@__sancov_gen_cov_switch_values.31 = internal global [8 x i64] [i64 6, i64 8, i64 196, i64 212, i64 213, i64 214, i64 236, i64 250]
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"rfc1201_proto\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 49, i32 24 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 142, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 154, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 170, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 215, i32 6 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 225, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 259, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 272, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 284, i32 5 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 294, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 315, i32 6 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 329, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 336, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 408, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [32 x i8] c"../drivers/net/arcnet/rfc1201.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 62, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_license338, ptr @__exitcall_arcnet_rfc1201_exit, ptr @__initcall__kmod_rfc1201__339_84_arcnet_rfc1201_init6, ptr @arcnet_rfc1201_exit, ptr @arcnet_rfc1201_init._entry, ptr @arcnet_rfc1201_init._entry_ptr, ptr @rfc1201_proto, ptr @.str.2, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfc1201_proto to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcnet_rfc1201_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arcnet_rfc1201_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @arcnet_unregister_proto(ptr noundef nonnull @rfc1201_proto) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arcnet_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arcnet_rfc1201_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.30) #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 236) to i32))
  store ptr @rfc1201_proto, ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 236), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 250) to i32))
  store ptr @rfc1201_proto, ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 250), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 214) to i32))
  store ptr @rfc1201_proto, ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 214), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 213) to i32))
  store ptr @rfc1201_proto, ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 213), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 196) to i32))
  store ptr @rfc1201_proto, ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 196), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 212) to i32))
  store ptr @rfc1201_proto, ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 212), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arc_bcast_proto to i32))
  %0 = load ptr, ptr @arc_bcast_proto, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arc_proto_default to i32))
  %1 = load ptr, ptr @arc_proto_default, align 4
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arc_bcast_proto to i32))
  store ptr @rfc1201_proto, ptr @arc_bcast_proto, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx(ptr noundef %dev, i32 noundef %bufnum, ptr noundef %pkthdr, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %soft1 = getelementptr inbounds %struct.archdr, ptr %pkthdr, i32 0, i32 1
  %0 = ptrtoint ptr %pkthdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pkthdr, align 2
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %length)
  %cmp = icmp sgt i32 %length, 256
  %.pn = select i1 %cmp, i32 512, i32 256
  %ofs.0 = sub i32 %.pn, %length
  %split_flag = getelementptr inbounds %struct.archdr, ptr %pkthdr, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %split_flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %split_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp19 = icmp eq i8 %3, -1
  br i1 %cmp19, label %if.then21, label %entry.if.end62_crit_edge

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %length)
  %cmp22 = icmp sgt i32 %length, 7
  br i1 %cmp22, label %if.end59, label %do.body52

do.body52:                                        ; preds = %if.then21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %4 = load i32, ptr @arcnet_debug, align 4
  %and53 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.cleanup578_crit_edge, label %if.then55

do.body52.cleanup578_crit_edge:                   ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup578

if.then55:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %conv) #9
  br label %cleanup578

if.end59:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %sub60 = add nsw i32 %length, -4
  %add = add i32 %ofs.0, 4
  %copy_from_card = getelementptr i8, ptr %dev, i32 4996
  %5 = ptrtoint ptr %copy_from_card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %copy_from_card, align 4
  %sub61 = sub nsw i32 516, %length
  tail call void %6(ptr noundef %dev, i32 noundef %bufnum, i32 noundef %sub61, ptr noundef %soft1, i32 noundef 16) #6
  %7 = ptrtoint ptr %split_flag to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr = load i8, ptr %split_flag, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.end59, %entry.if.end62_crit_edge
  %8 = phi i8 [ %.pr, %if.end59 ], [ %3, %entry.if.end62_crit_edge ]
  %ofs.1 = phi i32 [ %add, %if.end59 ], [ %ofs.0, %entry.if.end62_crit_edge ]
  %length.addr.0 = phi i32 [ %sub60, %if.end59 ], [ %length, %entry.if.end62_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool64.not = icmp eq i8 %8, 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool95.not = icmp eq ptr %10, null
  br i1 %tobool64.not, label %do.end93, label %do.end247

do.end93:                                         ; preds = %if.end62
  br i1 %tobool95.not, label %do.end93.if.end115_crit_edge, label %do.body97

do.end93.if.end115_crit_edge:                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

do.body97:                                        ; preds = %do.end93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %11 = load i32, ptr @arcnet_debug, align 4
  %and98 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %do.body97.do.end108_crit_edge, label %if.then100

do.body97.do.end108_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end108

if.then100:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  %sequence = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv, i32 1
  %12 = ptrtoint ptr %sequence to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sequence, align 4
  %conv101 = zext i16 %13 to i32
  %sequence104 = getelementptr inbounds %struct.archdr, ptr %pkthdr, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %sequence104 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sequence104, align 2
  %conv105 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv101, i32 noundef 0, i32 noundef %conv105) #9
  br label %do.end108

do.end108:                                        ; preds = %if.then100, %do.body97.do.end108_crit_edge
  %sequence109 = getelementptr inbounds %struct.archdr, ptr %pkthdr, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %sequence109 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sequence109, align 2
  %aborted_seq = getelementptr i8, ptr %dev, i32 2886
  %18 = ptrtoint ptr %aborted_seq to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %aborted_seq, align 2
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %20, i32 noundef 1) #6
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %21 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %22, 1
  store i32 %inc, ptr %rx_errors, align 8
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %23 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_missed_errors, align 4
  %inc113 = add i32 %24, 1
  store i32 %inc113, ptr %rx_missed_errors, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end115

if.end115:                                        ; preds = %do.end108, %do.end93.if.end115_crit_edge
  %sequence116 = getelementptr inbounds %struct.archdr, ptr %pkthdr, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %sequence116 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sequence116, align 2
  %sequence117 = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv, i32 1
  %28 = ptrtoint ptr %sequence117 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %sequence117, align 4
  %add118 = add i32 %length.addr.0, 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add118, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool120.not = icmp eq ptr %call.i, null
  br i1 %tobool120.not, label %if.then121, label %if.end124

if.then121:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %29 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_dropped, align 8
  %inc123 = add i32 %30, 1
  store i32 %inc123, ptr %rx_dropped, align 8
  br label %cleanup578

if.end124:                                        ; preds = %if.end115
  %call126 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add118) #6
  %31 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev, ptr %31, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %soft127 = getelementptr inbounds %struct.archdr, ptr %34, i32 0, i32 1
  %35 = call ptr @memcpy(ptr %34, ptr %pkthdr, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %length.addr.0)
  %cmp128 = icmp ugt i32 %length.addr.0, 16
  br i1 %cmp128, label %if.then130, label %if.end124.if.end136_crit_edge

if.end124.if.end136_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

if.then130:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  %copy_from_card132 = getelementptr i8, ptr %dev, i32 4996
  %36 = ptrtoint ptr %copy_from_card132 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %copy_from_card132, align 4
  %add133 = add i32 %ofs.1, 16
  %add.ptr = getelementptr %struct.archdr, ptr %34, i32 1
  %sub135 = add i32 %length.addr.0, -16
  tail call void %37(ptr noundef %dev, i32 noundef %bufnum, i32 noundef %add133, ptr noundef %add.ptr, i32 noundef %sub135) #6
  br label %if.end136

if.end136:                                        ; preds = %if.then130, %if.end124.if.end136_crit_edge
  %38 = ptrtoint ptr %soft127 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %soft127, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -43, i8 %39)
  %cmp138 = icmp eq i8 %39, -43
  br i1 %cmp138, label %if.then140, label %if.end136.if.end214_crit_edge

if.end136.if.end214_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end214

if.then140:                                       ; preds = %if.end136
  %ar_hln = getelementptr inbounds %struct.archdr, ptr %34, i32 0, i32 1, i32 1, i32 4
  %40 = ptrtoint ptr %ar_hln to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ar_hln, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp143 = icmp eq i8 %41, 1
  br i1 %cmp143, label %land.lhs.true, label %if.then140.do.body192_crit_edge

if.then140.do.body192_crit_edge:                  ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body192

land.lhs.true:                                    ; preds = %if.then140
  %ar_pln = getelementptr inbounds %struct.archdr, ptr %34, i32 0, i32 1, i32 1, i32 5
  %42 = ptrtoint ptr %ar_pln to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ar_pln, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %cmp146 = icmp eq i8 %43, 4
  br i1 %cmp146, label %if.then148, label %land.lhs.true.do.body192_crit_edge

land.lhs.true.do.body192_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body192

if.then148:                                       ; preds = %land.lhs.true
  %add.ptr149 = getelementptr %struct.archdr, ptr %34, i32 0, i32 1, i32 1, i32 8
  %44 = ptrtoint ptr %add.ptr149 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr149, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool150.not = icmp eq i8 %45, 0
  br i1 %tobool150.not, label %do.body152, label %if.then148.if.end214_crit_edge

if.then148.if.end214_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end214

do.body152:                                       ; preds = %if.then148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %46 = load i32, ptr @arcnet_debug, align 4
  %and153 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %do.body152.do.end158_crit_edge, label %if.then155

do.body152.do.end158_crit_edge:                   ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end158

if.then155:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv) #9
  br label %do.end158

do.end158:                                        ; preds = %if.then155, %do.body152.do.end158_crit_edge
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %47 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_crc_errors, align 8
  %inc160 = add i32 %48, 1
  store i32 %inc160, ptr %rx_crc_errors, align 8
  %49 = ptrtoint ptr %add.ptr149 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %1, ptr %add.ptr149, align 1
  br label %if.end214

do.body192:                                       ; preds = %land.lhs.true.do.body192_crit_edge, %if.then140.do.body192_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %50 = load i32, ptr @arcnet_debug, align 4
  %and193 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %do.body192.do.end202_crit_edge, label %if.then195

do.body192.do.end202_crit_edge:                   ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end202

if.then195:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #8
  %conv197 = zext i8 %41 to i32
  %ar_pln198 = getelementptr inbounds %struct.archdr, ptr %34, i32 0, i32 1, i32 1, i32 5
  %51 = ptrtoint ptr %ar_pln198 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ar_pln198, align 1
  %conv199 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %conv197, i32 noundef %conv199) #9
  br label %do.end202

do.end202:                                        ; preds = %if.then195, %do.body192.do.end202_crit_edge
  %rx_errors204 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %53 = ptrtoint ptr %rx_errors204 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_errors204, align 8
  %inc205 = add i32 %54, 1
  store i32 %inc205, ptr %rx_errors204, align 8
  %rx_crc_errors207 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %55 = ptrtoint ptr %rx_crc_errors207 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_crc_errors207, align 8
  %inc208 = add i32 %56, 1
  store i32 %inc208, ptr %rx_crc_errors207, align 8
  br label %if.end214

if.end214:                                        ; preds = %do.end202, %do.end158, %if.then148.if.end214_crit_edge, %if.end136.if.end214_crit_edge
  %call215 = tail call fastcc zeroext i16 @type_trans(ptr noundef nonnull %call.i, ptr noundef %dev)
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %57 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %call215, ptr %protocol, align 8
  %call216 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #6
  br label %cleanup578

do.end247:                                        ; preds = %if.end62
  br i1 %tobool95.not, label %do.end247.if.end279_crit_edge, label %land.lhs.true250

do.end247.if.end279_crit_edge:                    ; preds = %do.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end279

land.lhs.true250:                                 ; preds = %do.end247
  %sequence251 = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv, i32 1
  %58 = ptrtoint ptr %sequence251 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %sequence251, align 4
  %conv252 = zext i16 %59 to i32
  %sequence253 = getelementptr inbounds %struct.archdr, ptr %pkthdr, i32 0, i32 1, i32 0, i32 2
  %60 = ptrtoint ptr %sequence253 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %sequence253, align 2
  %conv254 = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %61)
  %cmp255.not = icmp eq i16 %59, %61
  br i1 %cmp255.not, label %land.lhs.true250.if.end279_crit_edge, label %do.body258

land.lhs.true250.if.end279_crit_edge:             ; preds = %land.lhs.true250
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end279

do.body258:                                       ; preds = %land.lhs.true250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %62 = load i32, ptr @arcnet_debug, align 4
  %and259 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp eq i32 %and259, 0
  br i1 %tobool260.not, label %do.body258.do.end270_crit_edge, label %if.then261

do.body258.do.end270_crit_edge:                   ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end270

if.then261:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #8
  %conv267 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv252, i32 noundef %conv254, i32 noundef %conv267) #9
  br label %do.end270

do.end270:                                        ; preds = %if.then261, %do.body258.do.end270_crit_edge
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %64, i32 noundef 1) #6
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx, align 4
  %rx_errors274 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %66 = ptrtoint ptr %rx_errors274 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_errors274, align 8
  %inc275 = add i32 %67, 1
  store i32 %inc275, ptr %rx_errors274, align 8
  %rx_missed_errors277 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %68 = ptrtoint ptr %rx_missed_errors277 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_missed_errors277, align 4
  %inc278 = add i32 %69, 1
  store i32 %inc278, ptr %rx_missed_errors277, align 4
  %numpackets = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv, i32 3
  %70 = ptrtoint ptr %numpackets to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %numpackets, align 1
  %lastpacket = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv, i32 2
  %71 = ptrtoint ptr %lastpacket to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %lastpacket, align 2
  br label %if.end279

if.end279:                                        ; preds = %do.end270, %land.lhs.true250.if.end279_crit_edge, %do.end247.if.end279_crit_edge
  %72 = ptrtoint ptr %split_flag to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %split_flag, align 1
  %conv281 = zext i8 %73 to i32
  %and282 = and i32 %conv281, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282)
  %tobool283.not = icmp eq i32 %and282, 0
  br i1 %tobool283.not, label %if.else393, label %do.end312

do.end312:                                        ; preds = %if.end279
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx, align 4
  %tobool314.not = icmp eq ptr %75, null
  br i1 %tobool314.not, label %do.end312.if.end336_crit_edge, label %do.body316

do.end312.if.end336_crit_edge:                    ; preds = %do.end312
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end336

do.body316:                                       ; preds = %do.end312
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %76 = load i32, ptr @arcnet_debug, align 4
  %and317 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and317)
  %tobool318.not = icmp eq i32 %and317, 0
  br i1 %tobool318.not, label %do.body316.do.end328_crit_edge, label %if.then319

do.body316.do.end328_crit_edge:                   ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end328

if.then319:                                       ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #8
  %sequence320 = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv, i32 1
  %77 = ptrtoint ptr %sequence320 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %sequence320, align 4
  %conv321 = zext i16 %78 to i32
  %sequence324 = getelementptr inbounds %struct.archdr, ptr %pkthdr, i32 0, i32 1, i32 0, i32 2
  %79 = ptrtoint ptr %sequence324 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %sequence324, align 2
  %conv325 = zext i16 %80 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %conv321, i32 noundef %conv281, i32 noundef %conv325) #9
  br label %do.end328

do.end328:                                        ; preds = %if.then319, %do.body316.do.end328_crit_edge
  %rx_errors330 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %81 = ptrtoint ptr %rx_errors330 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rx_errors330, align 8
  %inc331 = add i32 %82, 1
  store i32 %inc331, ptr %rx_errors330, align 8
  %rx_missed_errors333 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %83 = ptrtoint ptr %rx_missed_errors333 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_missed_errors333, align 4
  %inc334 = add i32 %84, 1
  store i32 %inc334, ptr %rx_missed_errors333, align 4
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %86, i32 noundef 1) #6
  br label %if.end336

if.end336:                                        ; preds = %do.end328, %do.end312.if.end336_crit_edge
  %sequence337 = getelementptr inbounds %struct.archdr, ptr %pkthdr, i32 0, i32 1, i32 0, i32 2
  %87 = ptrtoint ptr %sequence337 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %sequence337, align 2
  %sequence338 = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv, i32 1
  %89 = ptrtoint ptr %sequence338 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %sequence338, align 4
  %90 = ptrtoint ptr %split_flag to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %split_flag, align 1
  %92 = lshr i8 %91, 1
  %narrow = add nuw i8 %92, 2
  %numpackets343 = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv, i32 3
  %93 = ptrtoint ptr %numpackets343 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %narrow, ptr %numpackets343, align 1
  %lastpacket344 = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv, i32 2
  %94 = ptrtoint ptr %lastpacket344 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %lastpacket344, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %91)
  %cmp347 = icmp ugt i8 %91, 29
  br i1 %cmp347, label %do.body350, label %if.end367

do.body350:                                       ; preds = %if.end336
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %95 = load i32, ptr @arcnet_debug, align 4
  %and351 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and351)
  %tobool352.not = icmp eq i32 %and351, 0
  br i1 %tobool352.not, label %do.body350.do.end358_crit_edge, label %if.then353

do.body350.do.end358_crit_edge:                   ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end358

if.then353:                                       ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %split_flag to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %split_flag, align 1
  %conv355 = zext i8 %97 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %conv355) #9
  br label %do.end358

do.end358:                                        ; preds = %if.then353, %do.body350.do.end358_crit_edge
  %98 = ptrtoint ptr %sequence337 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %sequence337, align 2
  %aborted_seq361 = getelementptr i8, ptr %dev, i32 2886
  %100 = ptrtoint ptr %aborted_seq361 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %aborted_seq361, align 2
  %rx_errors363 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %101 = ptrtoint ptr %rx_errors363 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rx_errors363, align 8
  %inc364 = add i32 %102, 1
  store i32 %inc364, ptr %rx_errors363, align 8
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %103 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_length_errors, align 8
  %inc366 = add i32 %104, 1
  store i32 %inc366, ptr %rx_length_errors, align 8
  br label %cleanup578

if.end367:                                        ; preds = %if.end336
  %conv346 = zext i8 %narrow to i32
  %mul = mul nuw nsw i32 %conv346, 508
  %add370 = add nuw nsw i32 %mul, 4
  %call.i772 = tail call ptr @__alloc_skb(i32 noundef %add370, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %105 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i772, ptr %arrayidx, align 4
  %tobool373.not = icmp eq ptr %call.i772, null
  br i1 %tobool373.not, label %do.body375, label %if.end388

do.body375:                                       ; preds = %if.end367
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %106 = load i32, ptr @arcnet_debug, align 4
  %and376 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and376)
  %tobool377.not = icmp eq i32 %and376, 0
  br i1 %tobool377.not, label %do.body375.do.end381_crit_edge, label %if.then378

do.body375.do.end381_crit_edge:                   ; preds = %do.body375
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end381

if.then378:                                       ; preds = %do.body375
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %do.end381

do.end381:                                        ; preds = %if.then378, %do.body375.do.end381_crit_edge
  %107 = ptrtoint ptr %sequence337 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %sequence337, align 2
  %aborted_seq384 = getelementptr i8, ptr %dev, i32 2886
  %109 = ptrtoint ptr %aborted_seq384 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %aborted_seq384, align 2
  %rx_dropped386 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %110 = ptrtoint ptr %rx_dropped386 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rx_dropped386, align 8
  %inc387 = add i32 %111, 1
  store i32 %inc387, ptr %rx_dropped386, align 8
  br label %cleanup578

if.end388:                                        ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #8
  %112 = getelementptr inbounds %struct.anon.0, ptr %call.i772, i32 0, i32 2
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %dev, ptr %112, align 8
  %data389 = getelementptr inbounds %struct.sk_buff, ptr %call.i772, i32 0, i32 19
  %114 = ptrtoint ptr %data389 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data389, align 4
  %116 = ptrtoint ptr %pkthdr to i32
  call void @__asan_loadN_noabort(i32 %116, i32 8)
  %117 = load i64, ptr %pkthdr, align 2
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 8)
  store i64 %117, ptr %115, align 2
  %call391 = tail call ptr @skb_put(ptr noundef nonnull %call.i772, i32 noundef 8) #6
  %split_flag392 = getelementptr inbounds %struct.archdr, ptr %115, i32 0, i32 1, i32 0, i32 1
  %119 = ptrtoint ptr %split_flag392 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %split_flag392, align 1
  br label %if.end489

if.else393:                                       ; preds = %if.end279
  %shr396 = lshr i32 %conv281, 1
  %120 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx, align 4
  %tobool399.not = icmp eq ptr %121, null
  br i1 %tobool399.not, label %if.then400, label %if.end430

if.then400:                                       ; preds = %if.else393
  %aborted_seq402 = getelementptr i8, ptr %dev, i32 2886
  %122 = ptrtoint ptr %aborted_seq402 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %aborted_seq402, align 2
  %conv403 = zext i16 %123 to i32
  %sequence404 = getelementptr inbounds %struct.archdr, ptr %pkthdr, i32 0, i32 1, i32 0, i32 2
  %124 = ptrtoint ptr %sequence404 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %sequence404, align 2
  %conv405 = zext i16 %125 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %123, i16 %125)
  %cmp406.not = icmp eq i16 %123, %125
  br i1 %cmp406.not, label %if.then400.cleanup578_crit_edge, label %do.body409

if.then400.cleanup578_crit_edge:                  ; preds = %if.then400
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup578

do.body409:                                       ; preds = %if.then400
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %126 = load i32, ptr @arcnet_debug, align 4
  %and410 = and i32 %126, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and410)
  %tobool411.not = icmp eq i32 %and410, 0
  br i1 %tobool411.not, label %do.body409.do.end422_crit_edge, label %if.then412

do.body409.do.end422_crit_edge:                   ; preds = %do.body409
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end422

if.then412:                                       ; preds = %do.body409
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %conv281, i32 noundef %conv405, i32 noundef %conv403) #9
  br label %do.end422

do.end422:                                        ; preds = %if.then412, %do.body409.do.end422_crit_edge
  %rx_errors424 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %127 = ptrtoint ptr %rx_errors424 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_errors424, align 8
  %inc425 = add i32 %128, 1
  store i32 %inc425, ptr %rx_errors424, align 8
  %rx_missed_errors427 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %129 = ptrtoint ptr %rx_missed_errors427 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rx_missed_errors427, align 4
  %inc428 = add i32 %130, 1
  store i32 %inc428, ptr %rx_missed_errors427, align 4
  br label %cleanup578

if.end430:                                        ; preds = %if.else393
  %add397 = add nuw nsw i32 %shr396, 1
  %lastpacket431 = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv, i32 2
  %131 = ptrtoint ptr %lastpacket431 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %lastpacket431, align 2
  %inc432 = add i8 %132, 1
  store i8 %inc432, ptr %lastpacket431, align 2
  %conv434 = zext i8 %inc432 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add397, i32 %conv434)
  %cmp435.not = icmp eq i32 %add397, %conv434
  br i1 %cmp435.not, label %if.end430.if.end489_crit_edge, label %if.then437

if.end430.if.end489_crit_edge:                    ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end489

if.then437:                                       ; preds = %if.end430
  %sub440 = add nsw i32 %conv434, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr396, i32 %sub440)
  %cmp441.not.not = icmp slt i32 %shr396, %sub440
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %133 = load i32, ptr @arcnet_debug, align 4
  %and445 = and i32 %133, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and445)
  %tobool446.not = icmp eq i32 %and445, 0
  br i1 %cmp441.not.not, label %do.body444, label %do.body459

do.body444:                                       ; preds = %if.then437
  br i1 %tobool446.not, label %do.body444.do.end452_crit_edge, label %if.then447

do.body444.do.end452_crit_edge:                   ; preds = %do.body444
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end452

if.then447:                                       ; preds = %do.body444
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %split_flag to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %split_flag, align 1
  %conv449 = zext i8 %135 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %conv449) #9
  br label %do.end452

do.end452:                                        ; preds = %if.then447, %do.body444.do.end452_crit_edge
  %rx_errors454 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %136 = ptrtoint ptr %rx_errors454 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rx_errors454, align 8
  %inc455 = add i32 %137, 1
  store i32 %inc455, ptr %rx_errors454, align 8
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %138 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rx_frame_errors, align 4
  %inc457 = add i32 %139, 1
  store i32 %inc457, ptr %rx_frame_errors, align 4
  br label %cleanup578

do.body459:                                       ; preds = %if.then437
  br i1 %tobool446.not, label %do.body459.do.end471_crit_edge, label %if.then462

do.body459.do.end471_crit_edge:                   ; preds = %do.body459
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end471

if.then462:                                       ; preds = %do.body459
  call void @__sanitizer_cov_trace_pc() #8
  %sequence463 = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv, i32 1
  %140 = ptrtoint ptr %sequence463 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %sequence463, align 4
  %conv464 = zext i16 %141 to i32
  %142 = ptrtoint ptr %split_flag to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %split_flag, align 1
  %conv466 = zext i8 %143 to i32
  %sequence467 = getelementptr inbounds %struct.archdr, ptr %pkthdr, i32 0, i32 1, i32 0, i32 2
  %144 = ptrtoint ptr %sequence467 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %sequence467, align 2
  %conv468 = zext i16 %145 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %conv464, i32 noundef %conv466, i32 noundef %conv468) #9
  br label %do.end471

do.end471:                                        ; preds = %if.then462, %do.body459.do.end471_crit_edge
  %sequence472 = getelementptr inbounds %struct.archdr, ptr %pkthdr, i32 0, i32 1, i32 0, i32 2
  %146 = ptrtoint ptr %sequence472 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %sequence472, align 2
  %aborted_seq474 = getelementptr i8, ptr %dev, i32 2886
  %148 = ptrtoint ptr %aborted_seq474 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %147, ptr %aborted_seq474, align 2
  %149 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %150, i32 noundef 1) #6
  %151 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %arrayidx, align 4
  %rx_errors478 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %152 = ptrtoint ptr %rx_errors478 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rx_errors478, align 8
  %inc479 = add i32 %153, 1
  store i32 %inc479, ptr %rx_errors478, align 8
  %rx_missed_errors481 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %154 = ptrtoint ptr %rx_missed_errors481 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %rx_missed_errors481, align 4
  %inc482 = add i32 %155, 1
  store i32 %inc482, ptr %rx_missed_errors481, align 4
  %numpackets483 = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv, i32 3
  %156 = ptrtoint ptr %numpackets483 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %numpackets483, align 1
  %157 = ptrtoint ptr %lastpacket431 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %lastpacket431, align 2
  br label %cleanup578

if.end489:                                        ; preds = %if.end430.if.end489_crit_edge, %if.end388
  %158 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx, align 4
  %copy_from_card492 = getelementptr i8, ptr %dev, i32 4996
  %160 = ptrtoint ptr %copy_from_card492 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %copy_from_card492, align 4
  %add493 = add i32 %ofs.1, 4
  %data494 = getelementptr inbounds %struct.sk_buff, ptr %159, i32 0, i32 19
  %162 = ptrtoint ptr %data494 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data494, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %159, i32 0, i32 6
  %164 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %len, align 4
  %add.ptr495 = getelementptr i8, ptr %163, i32 %165
  %sub496 = add i32 %length.addr.0, -4
  tail call void %161(ptr noundef %dev, i32 noundef %bufnum, i32 noundef %add493, ptr noundef %add.ptr495, i32 noundef %sub496) #6
  %call498 = tail call ptr @skb_put(ptr noundef %159, i32 noundef %sub496) #6
  %lastpacket499 = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv, i32 2
  %166 = ptrtoint ptr %lastpacket499 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %lastpacket499, align 2
  %numpackets501 = getelementptr %struct.arcnet_local, ptr %add.ptr.i, i32 0, i32 38, i32 2, i32 %conv, i32 3
  %168 = ptrtoint ptr %numpackets501 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %numpackets501, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %167, i8 %169)
  %cmp503 = icmp eq i8 %167, %169
  br i1 %cmp503, label %if.then505, label %if.end489.cleanup578_crit_edge

if.end489.cleanup578_crit_edge:                   ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup578

if.then505:                                       ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #8
  %170 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %arrayidx, align 4
  %171 = ptrtoint ptr %numpackets501 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 0, ptr %numpackets501, align 1
  %172 = ptrtoint ptr %lastpacket499 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %lastpacket499, align 2
  %call573 = tail call fastcc zeroext i16 @type_trans(ptr noundef %159, ptr noundef %dev)
  %protocol574 = getelementptr inbounds %struct.sk_buff, ptr %159, i32 0, i32 15, i32 0, i32 18
  %173 = ptrtoint ptr %protocol574 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %call573, ptr %protocol574, align 8
  %call575 = tail call i32 @netif_rx(ptr noundef %159) #6
  br label %cleanup578

cleanup578:                                       ; preds = %if.then505, %if.end489.cleanup578_crit_edge, %do.end471, %do.end452, %do.end422, %if.then400.cleanup578_crit_edge, %do.end381, %do.end358, %if.end214, %if.then121, %if.then55, %do.body52.cleanup578_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @build_header(ptr noundef %skb, ptr noundef %dev, i16 noundef zeroext %type, i8 noundef zeroext %daddr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #6
  %soft2 = getelementptr inbounds %struct.archdr, ptr %call1, i32 0, i32 1
  %conv = zext i16 %type to i32
  %0 = zext i16 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %type, label %do.body [
    i16 2048, label %entry.sw.epilog_crit_edge
    i16 -31011, label %sw.bb3
    i16 2054, label %sw.bb5
    i16 -32715, label %sw.bb7
    i16 -32457, label %entry.sw.bb9_crit_edge
    i16 1, label %entry.sw.bb9_crit_edge48
    i16 4, label %entry.sw.bb9_crit_edge49
    i16 -32613, label %sw.bb11
  ]

entry.sw.bb9_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.bb9_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge48, %entry.sw.bb9_crit_edge49
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %1 = load i32, ptr @arcnet_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %conv, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body.do.end_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %2 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %4 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_aborted_errors, align 8
  %inc16 = add i32 %5, 1
  store i32 %inc16, ptr %tx_aborted_errors, align 8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ -35, %sw.bb11 ], [ -6, %sw.bb9 ], [ -42, %sw.bb7 ], [ -43, %sw.bb5 ], [ -60, %sw.bb3 ], [ -44, %entry.sw.epilog_crit_edge ]
  %6 = ptrtoint ptr %soft2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %soft2, align 2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %call1, align 2
  %rfc1201 = getelementptr i8, ptr %dev, i32 2884
  %12 = ptrtoint ptr %rfc1201 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rfc1201, align 4
  %inc17 = add i16 %13, 1
  store i16 %inc17, ptr %rfc1201, align 4
  %sequence18 = getelementptr inbounds %struct.archdr, ptr %call1, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %sequence18 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %sequence18, align 2
  %split_flag = getelementptr inbounds %struct.archdr, ptr %call1, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %split_flag to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %split_flag, align 1
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %and19 = and i32 %17, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %dest25 = getelementptr inbounds %struct.arc_hardware, ptr %call1, i32 0, i32 1
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dest25 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %dest25, align 1
  br label %cleanup

if.end23:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dest25 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %daddr, ptr %dest25, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then21, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 8, %if.then21 ], [ 8, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prepare_tx(ptr noundef %dev, ptr noundef %pkt, i32 noundef %length, i32 noundef %bufnum) #2 align 64 {
entry:
  %excsoft.i = alloca %struct.arc_rfc1201, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %length, -4
  %split_flag = getelementptr inbounds %struct.archdr, ptr %pkt, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %split_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %split_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 508, i32 %sub)
  %cmp = icmp sgt i32 %sub, 508
  br i1 %cmp, label %if.then13, label %if.end54

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = trunc i32 %length to i16
  %conv = add i16 %1, -8
  %length15 = getelementptr i8, ptr %dev, i32 4948
  %2 = ptrtoint ptr %length15 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %length15, align 4
  %dataleft = getelementptr i8, ptr %dev, i32 4950
  %3 = ptrtoint ptr %dataleft to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %dataleft, align 2
  %conv19 = zext i16 %conv to i32
  %sub20 = add nuw nsw i32 %conv19, 503
  %div = udiv i32 %sub20, 504
  %conv21 = trunc i32 %div to i16
  %numsegs = getelementptr i8, ptr %dev, i32 4954
  %4 = ptrtoint ptr %numsegs to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv21, ptr %numsegs, align 2
  %segnum = getelementptr i8, ptr %dev, i32 4952
  %5 = ptrtoint ptr %segnum to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %segnum, align 4
  br label %cleanup

if.end54:                                         ; preds = %entry
  %soft = getelementptr inbounds %struct.archdr, ptr %pkt, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %sub)
  %cmp.i = icmp sgt i32 %sub, 257
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %offset.i = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 2
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %offset.i, align 1
  %sub.i = sub nuw nsw i32 516, %length
  %conv.i = trunc i32 %sub.i to i8
  %arrayidx2.i = getelementptr %struct.arc_hardware, ptr %pkt, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %arrayidx2.i, align 1
  br label %load_pkt.exit

if.else.i:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %sub)
  %cmp3.i = icmp sgt i32 %sub, 253
  br i1 %cmp3.i, label %if.then5.i, label %if.else15.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %excsoft.i) #6
  %8 = getelementptr inbounds %struct.arc_rfc1201, ptr %excsoft.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.arc_rfc1201, ptr %excsoft.i, i32 0, i32 2
  %10 = ptrtoint ptr %soft to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %soft, align 2
  %12 = ptrtoint ptr %excsoft.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %excsoft.i, align 2
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %8, align 1
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %9, align 2
  %offset7.i = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 2
  %15 = ptrtoint ptr %offset7.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %offset7.i, align 1
  %sub9.i = sub nuw nsw i32 516, %length
  %sub10.i = sub nuw nsw i32 512, %length
  %conv11.i = trunc i32 %sub10.i to i8
  %arrayidx13.i = getelementptr %struct.arc_hardware, ptr %pkt, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv11.i, ptr %arrayidx13.i, align 1
  %copy_to_card.i = getelementptr i8, ptr %dev, i32 4992
  %17 = ptrtoint ptr %copy_to_card.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %copy_to_card.i, align 4
  call void %18(ptr noundef %dev, i32 noundef %bufnum, i32 noundef %sub10.i, ptr noundef nonnull %excsoft.i, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %excsoft.i) #6
  br label %load_pkt.exit

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub16.i = sub i32 260, %length
  %conv17.i = trunc i32 %sub16.i to i8
  %offset18.i = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 2
  %19 = ptrtoint ptr %offset18.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv17.i, ptr %offset18.i, align 1
  br label %load_pkt.exit

load_pkt.exit:                                    ; preds = %if.else15.i, %if.then5.i, %if.then.i
  %ofs.0.i = phi i32 [ %sub.i, %if.then.i ], [ %sub9.i, %if.then5.i ], [ %sub16.i, %if.else15.i ]
  %copy_to_card22.i = getelementptr i8, ptr %dev, i32 4992
  %20 = ptrtoint ptr %copy_to_card22.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %copy_to_card22.i, align 4
  call void %21(ptr noundef %dev, i32 noundef %bufnum, i32 noundef 0, ptr noundef %pkt, i32 noundef 4) #6
  %22 = ptrtoint ptr %copy_to_card22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %copy_to_card22.i, align 4
  call void %23(ptr noundef %dev, i32 noundef %bufnum, i32 noundef %ofs.0.i, ptr noundef %soft, i32 noundef %sub) #6
  %dest.i = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 1
  %24 = ptrtoint ptr %dest.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dest.i, align 1
  %conv25.i = zext i8 %25 to i32
  %lastload_dest.i = getelementptr i8, ptr %dev, i32 2580
  %26 = ptrtoint ptr %lastload_dest.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv25.i, ptr %lastload_dest.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %load_pkt.exit, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 1, %load_pkt.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @continue_tx(ptr noundef %dev, i32 noundef %bufnum) #2 align 64 {
entry:
  %excsoft.i = alloca %struct.arc_rfc1201, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt = getelementptr i8, ptr %dev, i32 4944
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %soft3 = getelementptr inbounds %struct.archdr, ptr %1, i32 0, i32 1
  %length = getelementptr i8, ptr %dev, i32 4948
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 4
  %conv20 = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %soft3, i32 %conv20
  %dataleft = getelementptr i8, ptr %dev, i32 4950
  %4 = ptrtoint ptr %dataleft to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dataleft, align 2
  %conv21 = zext i16 %5 to i32
  %idx.neg = sub nsw i32 0, %conv21
  %add.ptr22 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %segnum23 = getelementptr i8, ptr %dev, i32 4952
  %6 = ptrtoint ptr %segnum23 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %segnum23, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool24.not = icmp eq i16 %7, 0
  br i1 %tobool24.not, label %if.then25, label %if.else

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %numsegs26 = getelementptr i8, ptr %dev, i32 4954
  %8 = ptrtoint ptr %numsegs26 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %numsegs26, align 2
  %conv27 = trunc i16 %9 to i8
  %sub = shl i8 %conv27, 1
  %or = add i8 %sub, -3
  %split_flag = getelementptr inbounds %struct.arc_rfc1201, ptr %add.ptr22, i32 0, i32 1
  %10 = ptrtoint ptr %split_flag to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or, ptr %split_flag, align 1
  br label %if.end37

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv30 = trunc i16 %7 to i8
  %shl31 = shl i8 %conv30, 1
  %split_flag33 = getelementptr inbounds %struct.arc_rfc1201, ptr %add.ptr22, i32 0, i32 1
  %11 = ptrtoint ptr %split_flag33 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %shl31, ptr %split_flag33, align 1
  %12 = ptrtoint ptr %soft3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %soft3, align 2
  %14 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %add.ptr22, align 2
  %sequence35 = getelementptr inbounds %struct.archdr, ptr %1, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %sequence35 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sequence35, align 2
  %sequence36 = getelementptr inbounds %struct.arc_rfc1201, ptr %add.ptr22, i32 0, i32 2
  %17 = ptrtoint ptr %sequence36 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %sequence36, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then25
  %18 = ptrtoint ptr %dataleft to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dataleft, align 2
  %20 = tail call i16 @llvm.umin.i16(i16 %19, i16 504)
  %conv48 = sub i16 %19, %20
  %21 = ptrtoint ptr %dataleft to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv48, ptr %dataleft, align 2
  %narrow = add nuw nsw i16 %20, 4
  %add = zext i16 %narrow to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 253, i16 %20)
  %cmp.i = icmp ugt i16 %20, 253
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %offset.i = getelementptr inbounds %struct.arc_hardware, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %offset.i, align 1
  %sub.i = sub nuw nsw i32 512, %add
  %conv.i = trunc i32 %sub.i to i8
  %arrayidx2.i = getelementptr %struct.arc_hardware, ptr %1, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %arrayidx2.i, align 1
  br label %load_pkt.exit

if.else.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp2(i16 249, i16 %20)
  %cmp3.i = icmp ugt i16 %20, 249
  br i1 %cmp3.i, label %if.then5.i, label %if.else15.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %excsoft.i) #6
  %24 = getelementptr inbounds %struct.arc_rfc1201, ptr %excsoft.i, i32 0, i32 1
  %25 = getelementptr inbounds %struct.arc_rfc1201, ptr %excsoft.i, i32 0, i32 2
  %26 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr22, align 2
  %28 = ptrtoint ptr %excsoft.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %excsoft.i, align 2
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %24, align 1
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %25, align 2
  %offset7.i = getelementptr inbounds %struct.arc_hardware, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %offset7.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %offset7.i, align 1
  %sub9.i = sub nuw nsw i32 512, %add
  %sub10.i = sub nuw nsw i32 508, %add
  %conv11.i = trunc i32 %sub10.i to i8
  %arrayidx13.i = getelementptr %struct.arc_hardware, ptr %1, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv11.i, ptr %arrayidx13.i, align 1
  %copy_to_card.i = getelementptr i8, ptr %dev, i32 4992
  %33 = ptrtoint ptr %copy_to_card.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %copy_to_card.i, align 4
  call void %34(ptr noundef %dev, i32 noundef %bufnum, i32 noundef %sub10.i, ptr noundef nonnull %excsoft.i, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %excsoft.i) #6
  br label %load_pkt.exit

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub16.i = sub nuw nsw i32 256, %add
  %conv17.i = trunc i32 %sub16.i to i8
  %offset18.i = getelementptr inbounds %struct.arc_hardware, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %offset18.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv17.i, ptr %offset18.i, align 1
  br label %load_pkt.exit

load_pkt.exit:                                    ; preds = %if.else15.i, %if.then5.i, %if.then.i
  %ofs.0.i = phi i32 [ %sub.i, %if.then.i ], [ %sub9.i, %if.then5.i ], [ %sub16.i, %if.else15.i ]
  %copy_to_card22.i = getelementptr i8, ptr %dev, i32 4992
  %36 = ptrtoint ptr %copy_to_card22.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %copy_to_card22.i, align 4
  call void %37(ptr noundef %dev, i32 noundef %bufnum, i32 noundef 0, ptr noundef %1, i32 noundef 4) #6
  %38 = ptrtoint ptr %copy_to_card22.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %copy_to_card22.i, align 4
  call void %39(ptr noundef %dev, i32 noundef %bufnum, i32 noundef %ofs.0.i, ptr noundef %add.ptr22, i32 noundef %add) #6
  %dest.i = getelementptr inbounds %struct.arc_hardware, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %dest.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dest.i, align 1
  %conv25.i = zext i8 %41 to i32
  %lastload_dest.i = getelementptr i8, ptr %dev, i32 2580
  %42 = ptrtoint ptr %lastload_dest.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv25.i, ptr %lastload_dest.i, align 4
  %43 = ptrtoint ptr %segnum23 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %segnum23, align 4
  %inc = add i16 %44, 1
  store i16 %inc, ptr %segnum23, align 4
  %numsegs52 = getelementptr i8, ptr %dev, i32 4954
  %45 = ptrtoint ptr %numsegs52 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %numsegs52, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %46)
  %cmp54.not = icmp uge i16 %inc, %46
  %retval.0 = zext i1 %cmp54.not to i32
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @type_trans(ptr noundef %skb, ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %soft1 = getelementptr inbounds %struct.archdr, ptr %1, i32 0, i32 1
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #6
  %dest = getelementptr inbounds %struct.arc_hardware, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %entry.if.end16.sink.split_crit_edge, label %if.else

entry.if.end16.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.sink.split

if.else:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.if.end16_crit_edge, label %if.then3

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then3:                                         ; preds = %if.else
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %12)
  %cmp8.not = icmp eq i8 %6, %12
  br i1 %cmp8.not, label %if.then3.if.end16_crit_edge, label %if.then3.if.end16.sink.split_crit_edge

if.then3.if.end16.sink.split_crit_edge:           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.sink.split

if.then3.if.end16_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16.sink.split:                              ; preds = %if.then3.if.end16.sink.split_crit_edge, %entry.if.end16.sink.split_crit_edge
  %.sink = phi i16 [ 8192, %entry.if.end16.sink.split_crit_edge ], [ 24576, %if.then3.if.end16.sink.split_crit_edge ]
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %13 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load12 = load i16, ptr %pkt_type, align 8
  %bf.clear13 = and i16 %bf.load12, 8191
  %bf.set14 = or i16 %bf.clear13, %.sink
  store i16 %bf.set14, ptr %pkt_type, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.then3.if.end16_crit_edge, %if.else.if.end16_crit_edge
  %14 = ptrtoint ptr %soft1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %soft1, align 2
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %15, label %sw.default [
    i8 -44, label %if.end16.cleanup_crit_edge
    i8 -60, label %sw.bb18
    i8 -43, label %sw.bb19
    i8 -42, label %sw.bb20
    i8 -6, label %if.end16.sw.bb21_crit_edge
    i8 -20, label %if.end16.sw.bb21_crit_edge36
  ]

if.end16.sw.bb21_crit_edge36:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb21

if.end16.sw.bb21_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb18:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb19:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb20:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb21:                                          ; preds = %if.end16.sw.bb21_crit_edge, %if.end16.sw.bb21_crit_edge36
  br label %cleanup

sw.default:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %17 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %rx_errors, align 8
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %19 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_crc_errors, align 8
  %inc23 = add i32 %20, 1
  store i32 %inc23, ptr %rx_crc_errors, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %if.end16.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %sw.default ], [ 1, %sw.bb21 ], [ -32715, %sw.bb20 ], [ 2054, %sw.bb19 ], [ -31011, %sw.bb18 ], [ 2048, %if.end16.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !17, !18, !20, !22, !23, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !58, !60, !62, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75, !76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__UNIQUE_ID_file337, !1, !"__UNIQUE_ID_file337", i1 false, i1 false}
!1 = !{!"../drivers/net/arcnet/rfc1201.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_license338, !1, !"__UNIQUE_ID_license338", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_rfc1201__339_84_arcnet_rfc1201_init6, !4, !"__initcall__kmod_rfc1201__339_84_arcnet_rfc1201_init6", i1 false, i1 false}
!4 = !{!"../drivers/net/arcnet/rfc1201.c", i32 84, i32 1}
!5 = !{ptr @__exitcall_arcnet_rfc1201_exit, !6, !"__exitcall_arcnet_rfc1201_exit", i1 false, i1 false}
!6 = !{!"../drivers/net/arcnet/rfc1201.c", i32 85, i32 1}
!7 = !{ptr @rfc1201_proto, !8, !"rfc1201_proto", i1 false, i1 false}
!8 = !{!"../drivers/net/arcnet/rfc1201.c", i32 49, i32 24}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/arcnet/rfc1201.c", i32 142, i32 2}
!11 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !10, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/arcnet/rfc1201.c", i32 152, i32 4}
!17 = distinct !{null, !16, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/arcnet/rfc1201.c", i32 154, i32 4}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/arcnet/rfc1201.c", i32 166, i32 3}
!22 = distinct !{null, !21, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/arcnet/rfc1201.c", i32 170, i32 4}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/arcnet/rfc1201.c", i32 215, i32 6}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/arcnet/rfc1201.c", i32 221, i32 6}
!29 = distinct !{null, !28, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/arcnet/rfc1201.c", i32 225, i32 5}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/arcnet/rfc1201.c", i32 255, i32 3}
!34 = distinct !{null, !33, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/arcnet/rfc1201.c", i32 259, i32 4}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/arcnet/rfc1201.c", i32 269, i32 4}
!39 = distinct !{null, !38, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/arcnet/rfc1201.c", i32 272, i32 5}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/arcnet/rfc1201.c", i32 284, i32 5}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/arcnet/rfc1201.c", i32 294, i32 5}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/arcnet/rfc1201.c", i32 315, i32 6}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/arcnet/rfc1201.c", i32 329, i32 6}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/arcnet/rfc1201.c", i32 336, i32 5}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/arcnet/rfc1201.c", i32 363, i32 4}
!54 = distinct !{null, !53, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!55 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/arcnet/rfc1201.c", i32 365, i32 4}
!57 = distinct !{null, !56, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/arcnet/rfc1201.c", i32 408, i32 3}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/arcnet/rfc1201.c", i32 482, i32 2}
!62 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !61, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/arcnet/rfc1201.c", i32 498, i32 3}
!66 = distinct !{null, !65, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!67 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/arcnet/rfc1201.c", i32 519, i32 2}
!69 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !68, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/arcnet/rfc1201.c", i32 62, i32 2}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @arcnet_rfc1201_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @arcnet_rfc1201_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
