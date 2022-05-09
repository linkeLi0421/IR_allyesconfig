; ModuleID = '/llk/IR_all_yes/drivers/target/tcm_fc/tfc_sess.c_pt.bc'
source_filename = "../drivers/target/tcm_fc/tfc_sess.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fc4_prov = type { ptr, ptr, ptr, ptr }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ft_tport = type { ptr, ptr, i32, %struct.callback_head, [64 x %struct.hlist_head] }
%struct.callback_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.ft_tpg = type { i32, ptr, ptr, %struct.list_head, %struct.se_portal_group, ptr }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ft_sess = type { i32, i32, i16, i64, ptr, ptr, %struct.hlist_node, %struct.callback_head, %struct.kref }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.fc_els_spp = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.fc_rport_priv = type { ptr, ptr, %struct.kref, i32, %struct.fc_rport_identifiers, i16, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, %struct.delayed_work, i32, ptr, %struct.list_head, %struct.work_struct, i32, i16, %struct.callback_head, i16, i8, ptr }
%struct.fc_rport_identifiers = type { i64, i64, i32, i32 }
%struct.sk_buff = type { %union.anon.79, %union.anon.82, %union.anon.83, [48 x i8], %union.anon.84, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.86, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr, %union.anon.81 }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%union.anon.83 = type { i64 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, ptr }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.88, i32, i32, i32, i16, i16, %union.anon.90, i32, %union.anon.91, %union.anon.92, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.88 = type { i32 }
%union.anon.90 = type { i32 }
%union.anon.91 = type { i32 }
%union.anon.92 = type { i16 }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ft_lport_lock = external dso_local global %struct.mutex, align 4
@ft_sess_close.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tcm_fc\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ft_sess_close\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/target/tcm_fc/tfc_sess.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"host%u: rport %6.6x: port_id %x close session\0A\00", [49 x i8] zeroinitializer }, align 32
@ft_prov = dso_local global { %struct.fc4_prov, [16 x i8] } { %struct.fc4_prov { ptr @ft_prli, ptr @ft_prlo, ptr @ft_recv, ptr null }, [16 x i8] zeroinitializer }, align 32
@ft_tport_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ft_sess_delete_all.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ft_prli.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ft_prli\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"host%u: rport %6.6x: port_id %x flags %x ret %x\0A\00", [47 x i8] zeroinitializer }, align 32
@ft_sess_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ft_sess_alloc_cb.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ft_sess_alloc_cb\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"host%u: rport %6.6x: port_id %x sess %p\0A\00", [55 x i8] zeroinitializer }, align 32
@ft_prlo.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ft_sess_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ft_recv.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ft_recv\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"host%u: rport %6.6x: recv sid %x\0A\00", [62 x i8] zeroinitializer }, align 32
@ft_recv.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"host%u: rport %6.6x: sid %x sess lookup failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no session created\00", [45 x i8] zeroinitializer }, align 32
@ft_sess_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"not an FCP port\00", [16 x i8] zeroinitializer }, align 32
@ft_sess_get.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ft_sess_get.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ft_sess_get\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"host%u: rport %6.6x: port_id %x found %p\0A\00", [54 x i8] zeroinitializer }, align 32
@ft_sess_get.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"host%u: rport %6.6x: port_id %x not found, %s\0A\00", [49 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 320, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [8 x i8] c"ft_prov\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 498, i32 17 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 47, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 294, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 429, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 196, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 483, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 487, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 163, i32 17 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 166, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 168, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 177, i32 4 }
@___asan_gen_.81 = private constant [36 x i8] c"../drivers/target/tcm_fc/tfc_sess.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 184, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 695, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 723, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ft_prov, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_prov to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ft_lport_add(ptr noundef %lport, ptr nocapture readnone %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ft_lport_lock, i32 noundef 0) #8
  %call = tail call fastcc ptr @ft_tport_get(ptr noundef %lport)
  %service_params = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 21
  %0 = ptrtoint ptr %service_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %service_params, align 8
  %or = or i32 %1, 16
  store i32 %or, ptr %service_params, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @ft_lport_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ft_tport_get(ptr noundef %lport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ft_lport_lock, i32 0, i32 5), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b93 = load i1, ptr @ft_tport_get.__warned, align 1
  br i1 %.b93, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ft_tport_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 48, ptr noundef nonnull @.str.4) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %arrayidx = getelementptr %struct.fc_lport, ptr %lport, i32 0, i32 38, i32 8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end10, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %do.end
  %tpg7 = getelementptr inbounds %struct.ft_tport, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tpg7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpg7, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.end10.thread, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %call11 = tail call ptr @ft_lport_find_tpg(ptr noundef %lport) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end19

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.thread:                                  ; preds = %land.lhs.true6
  %call1194 = tail call ptr @ft_lport_find_tpg(ptr noundef %lport) #8
  %tobool12.not95 = icmp eq ptr %call1194, null
  br i1 %tobool12.not95, label %if.end10.thread.cleanup_crit_edge, label %if.then16

if.end10.thread.cleanup_crit_edge:                ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %tpg7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1194, ptr %tpg7, align 4
  %tport18 = getelementptr inbounds %struct.ft_tpg, ptr %call1194, i32 0, i32 2
  %5 = ptrtoint ptr %tport18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %tport18, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 276) #11
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %lport, ptr %call7.i.i, align 8
  %tpg25 = getelementptr inbounds %struct.ft_tport, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %tpg25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %tpg25, align 4
  %tport26 = getelementptr inbounds %struct.ft_tpg, ptr %call11, i32 0, i32 2
  %9 = ptrtoint ptr %tport26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %tport26, align 4
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 20
  %10 = call ptr @memset(ptr %uglygep, i32 0, i32 256)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %if.then16, %if.end10.thread.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.then16 ], [ %call7.i.i, %if.end23 ], [ %1, %land.lhs.true6.cleanup_crit_edge ], [ null, %if.end10.cleanup_crit_edge ], [ null, %if.end19.cleanup_crit_edge ], [ null, %if.end10.thread.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ft_lport_del(ptr nocapture noundef readonly %lport, ptr nocapture readnone %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ft_lport_lock, i32 noundef 0) #8
  %arrayidx = getelementptr %struct.fc_lport, ptr %lport, i32 0, i32 38, i32 8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %hash.i.i = getelementptr inbounds %struct.ft_tport, ptr %1, i32 0, i32 4
  %arrayidx.i.i = getelementptr %struct.ft_tport, ptr %1, i32 1
  %cmp49.i.i = icmp ult ptr %hash.i.i, %arrayidx.i.i
  br i1 %cmp49.i.i, label %if.then.do.body.i.i_crit_edge, label %if.then.ft_sess_delete_all.exit.i_crit_edge

if.then.ft_sess_delete_all.exit.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ft_sess_delete_all.exit.i

if.then.do.body.i.i_crit_edge:                    ; preds = %if.then
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc32.i.i.do.body.i.i_crit_edge, %if.then.do.body.i.i_crit_edge
  %head.050.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc32.i.i.do.body.i.i_crit_edge ], [ %hash.i.i, %if.then.do.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b43.i.i = load i1, ptr @ft_sess_delete_all.__warned, align 1
  br i1 %.b43.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ft_sess_delete_all.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 294, ptr noundef nonnull @.str.5) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %2 = ptrtoint ptr %head.050.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %head.050.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %3, null
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -32
  %tobool14.not4751.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool14.not47.i.i = or i1 %tobool11.not.i.i, %tobool14.not4751.i.i
  br i1 %tobool14.not47.i.i, label %do.end.i.i.for.inc32.i.i_crit_edge, label %do.end.i.i.for.body15.i.i_crit_edge

do.end.i.i.for.body15.i.i_crit_edge:              ; preds = %do.end.i.i
  br label %for.body15.i.i

do.end.i.i.for.inc32.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc32.i.i

for.body15.i.i:                                   ; preds = %ft_sess_unhash.exit.i.i.for.body15.i.i_crit_edge, %do.end.i.i.for.body15.i.i_crit_edge
  %sess.048.i.i = phi ptr [ %add.ptr28.i.i, %ft_sess_unhash.exit.i.i.for.body15.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body15.i.i_crit_edge ]
  %tport1.i.i.i = getelementptr inbounds %struct.ft_sess, ptr %sess.048.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %tport1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tport1.i.i.i, align 8
  %hash.i.i.i = getelementptr inbounds %struct.ft_sess, ptr %sess.048.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %hash.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hash.i.i.i, align 4
  %pprev2.i.i.i.i.i = getelementptr inbounds %struct.ft_sess, ptr %sess.048.i.i, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %pprev2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev2.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %7, ptr %9, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i.i.i, label %for.body15.i.i.hlist_del_rcu.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i.i

for.body15.i.i.hlist_del_rcu.exit.i.i.i_crit_edge: ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del_rcu.exit.i.i.i

do.body13.i.i.i.i.i:                              ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %pprev14.i.i.i.i.i, align 4
  br label %hlist_del_rcu.exit.i.i.i

hlist_del_rcu.exit.i.i.i:                         ; preds = %do.body13.i.i.i.i.i, %for.body15.i.i.hlist_del_rcu.exit.i.i.i_crit_edge
  %12 = ptrtoint ptr %pprev2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i.i, align 4
  %sess_count.i.i.i = getelementptr inbounds %struct.ft_tport, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %sess_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sess_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i, label %do.body5.i.i.i, label %ft_sess_unhash.exit.i.i, !prof !69

do.body5.i.i.i:                                   ; preds = %hlist_del_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/tcm_fc/tfc_sess.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 251, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

ft_sess_unhash.exit.i.i:                          ; preds = %hlist_del_rcu.exit.i.i.i
  %dec.i.i.i = add i32 %14, -1
  %15 = ptrtoint ptr %sess_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec.i.i.i, ptr %sess_count.i.i.i, align 4
  %16 = ptrtoint ptr %sess.048.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %sess.048.i.i, align 8
  %params.i.i.i = getelementptr inbounds %struct.ft_sess, ptr %sess.048.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %params.i.i.i, align 4
  %se_sess.i.i.i = getelementptr inbounds %struct.ft_sess, ptr %sess.048.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %se_sess.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %se_sess.i.i.i, align 4
  tail call void @target_stop_session(ptr noundef %19) #8
  %20 = ptrtoint ptr %se_sess.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %se_sess.i.i.i, align 4
  tail call void @target_wait_for_sess_cmds(ptr noundef %21) #8
  tail call void @ft_sess_put(ptr noundef nonnull %sess.048.i.i) #8
  %22 = ptrtoint ptr %hash.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hash.i.i.i, align 8
  %tobool24.not.i.i = icmp eq ptr %23, null
  %add.ptr28.i.i = getelementptr i8, ptr %23, i32 -32
  %tobool14.not52.i.i = icmp eq ptr %add.ptr28.i.i, null
  %tobool14.not.i.i = or i1 %tobool24.not.i.i, %tobool14.not52.i.i
  br i1 %tobool14.not.i.i, label %ft_sess_unhash.exit.i.i.for.inc32.i.i_crit_edge, label %ft_sess_unhash.exit.i.i.for.body15.i.i_crit_edge

ft_sess_unhash.exit.i.i.for.body15.i.i_crit_edge: ; preds = %ft_sess_unhash.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15.i.i

ft_sess_unhash.exit.i.i.for.inc32.i.i_crit_edge:  ; preds = %ft_sess_unhash.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc32.i.i

for.inc32.i.i:                                    ; preds = %ft_sess_unhash.exit.i.i.for.inc32.i.i_crit_edge, %do.end.i.i.for.inc32.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.hlist_head, ptr %head.050.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %arrayidx.i.i
  br i1 %cmp.i.i, label %for.inc32.i.i.do.body.i.i_crit_edge, label %for.inc32.i.i.ft_sess_delete_all.exit.i_crit_edge

for.inc32.i.i.ft_sess_delete_all.exit.i_crit_edge: ; preds = %for.inc32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ft_sess_delete_all.exit.i

for.inc32.i.i.do.body.i.i_crit_edge:              ; preds = %for.inc32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

ft_sess_delete_all.exit.i:                        ; preds = %for.inc32.i.i.ft_sess_delete_all.exit.i_crit_edge, %if.then.ft_sess_delete_all.exit.i_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %service_params.i = getelementptr inbounds %struct.fc_lport, ptr %25, i32 0, i32 21
  %26 = ptrtoint ptr %service_params.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %service_params.i, align 8
  %and.i = and i32 %27, -17
  store i32 %and.i, ptr %service_params.i, align 8
  %arrayidx.i = getelementptr %struct.fc_lport, ptr %25, i32 0, i32 38, i32 8
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 8
  %cmp.not.i = icmp eq ptr %29, %1
  br i1 %cmp.not.i, label %do.body14.i, label %do.body3.i, !prof !71

do.body3.i:                                       ; preds = %ft_sess_delete_all.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/tcm_fc/tfc_sess.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #8, !srcloc !72
  unreachable

do.body14.i:                                      ; preds = %ft_sess_delete_all.exit.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr null, ptr %arrayidx.i, align 8
  %tpg23.i = getelementptr inbounds %struct.ft_tport, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %tpg23.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tpg23.i, align 4
  %tobool24.not.i = icmp eq ptr %32, null
  br i1 %tobool24.not.i, label %do.body14.i.ft_tport_delete.exit_crit_edge, label %if.then25.i

do.body14.i.ft_tport_delete.exit_crit_edge:       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ft_tport_delete.exit

if.then25.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  %tport26.i = getelementptr inbounds %struct.ft_tpg, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %tport26.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %tport26.i, align 4
  %34 = ptrtoint ptr %tpg23.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %tpg23.i, align 4
  br label %ft_tport_delete.exit

ft_tport_delete.exit:                             ; preds = %if.then25.i, %do.body14.i.ft_tport_delete.exit_crit_edge
  %rcu.i = getelementptr inbounds %struct.ft_tport, ptr %1, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 12 to ptr)) #8
  br label %if.end

if.end:                                           ; preds = %ft_tport_delete.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ft_lport_lock) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ft_lport_notify(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @ft_lport_lock, i32 noundef 0) #8
  %call.i = tail call fastcc ptr @ft_tport_get(ptr noundef %arg) #8
  %service_params.i = getelementptr inbounds %struct.fc_lport, ptr %arg, i32 0, i32 21
  %1 = ptrtoint ptr %service_params.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %service_params.i, align 8
  %or.i = or i32 %2, 16
  store i32 %or.i, ptr %service_params.i, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @ft_lport_lock) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ft_lport_del(ptr noundef %arg, ptr undef)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ft_sess_close(ptr nocapture noundef readonly %se_sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %se_sess, i32 0, i32 6
  %0 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fabric_sess_ptr, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @ft_lport_lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @ft_lport_lock) #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_sess_close.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_sess_close, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !73

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %tport = getelementptr inbounds %struct.ft_sess, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tport, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_no, align 4
  %port_id7 = getelementptr inbounds %struct.fc_lport, ptr %7, i32 0, i32 18
  %12 = ptrtoint ptr %port_id7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_id7, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_sess_close.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %13, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %tport1.i = getelementptr inbounds %struct.ft_sess, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %tport1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tport1.i, align 8
  %hash.i = getelementptr inbounds %struct.ft_sess, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hash.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.ft_sess, ptr %1, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pprev2.i.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %17, ptr %19, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %do.end.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

do.end.hlist_del_rcu.exit.i_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %do.end.hlist_del_rcu.exit.i_crit_edge
  %22 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %sess_count.i = getelementptr inbounds %struct.ft_tport, ptr %15, i32 0, i32 2
  %23 = ptrtoint ptr %sess_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sess_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %do.body5.i, label %ft_sess_unhash.exit, !prof !69

do.body5.i:                                       ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/tcm_fc/tfc_sess.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 251, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

ft_sess_unhash.exit:                              ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i32 %24, -1
  %25 = ptrtoint ptr %sess_count.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %dec.i, ptr %sess_count.i, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %1, align 8
  %params.i = getelementptr inbounds %struct.ft_sess, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %params.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ft_lport_lock) #8
  %se_sess.i = getelementptr inbounds %struct.ft_sess, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %se_sess.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %se_sess.i, align 4
  tail call void @target_stop_session(ptr noundef %29) #8
  %30 = ptrtoint ptr %se_sess.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %se_sess.i, align 4
  tail call void @target_wait_for_sess_cmds(ptr noundef %31) #8
  tail call void @ft_sess_put(ptr noundef %1) #8
  tail call void @synchronize_rcu() #8
  br label %cleanup

cleanup:                                          ; preds = %ft_sess_unhash.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ft_sess_get_index(ptr nocapture noundef readonly %se_sess) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %se_sess, i32 0, i32 6
  %0 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fabric_sess_ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ft_sess_get_port_name(ptr nocapture noundef readonly %se_sess, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %se_sess, i32 0, i32 6
  %0 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fabric_sess_ptr, align 8
  %port_name = getelementptr inbounds %struct.ft_sess, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %port_name, align 8
  %call = tail call i32 @ft_format_wwn(ptr noundef %buf, i32 noundef %len, i64 noundef %3) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ft_format_wwn(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ft_sess_put(ptr noundef %sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.ft_sess, ptr %sess, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #8
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !69

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/tcm_fc/tfc_sess.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 446, 0\0A.popsection", ""() #8, !srcloc !74
  unreachable

do.end9:                                          ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #8, !srcloc !76
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !71

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #8
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !77
  %se_sess.i.i = getelementptr %struct.ft_sess, ptr %sess, i32 0, i32 5
  %3 = ptrtoint ptr %se_sess.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %se_sess.i.i, align 4
  tail call void @target_remove_session(ptr noundef %4) #8
  %tobool.not.i.i = icmp eq ptr %sess, null
  br i1 %tobool.not.i.i, label %if.then.i.kref_put.exit_crit_edge, label %do.end.i.i

if.then.i.kref_put.exit_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %rcu.i.i = getelementptr %struct.ft_sess, ptr %sess, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 40 to ptr)) #8
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %do.end.i.i, %if.then.i.kref_put.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ft_prli(ptr nocapture noundef %rdata, i32 noundef %spp_len, ptr noundef readonly %rspp, ptr nocapture noundef %spp) #0 align 64 {
entry:
  %initiatorname.i.i = alloca [224 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ft_lport_lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdata, align 8
  %call.i = tail call fastcc ptr @ft_tport_get(ptr noundef %1) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %not_target.i, label %if.end.i

if.end.i:                                         ; preds = %entry
  %tobool1.not.i = icmp eq ptr %rspp, null
  br i1 %tobool1.not.i, label %if.end.i.fill.i_crit_edge, label %if.end3.i

if.end.i.fill.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fill.i

if.end3.i:                                        ; preds = %if.end.i
  %spp_flags.i = getelementptr inbounds %struct.fc_els_spp, ptr %rspp, i32 0, i32 2
  %2 = ptrtoint ptr %spp_flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %spp_flags.i, align 2
  %conv.i = zext i8 %3 to i32
  %and.i = and i32 %conv.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end3.i.ft_prli_locked.exit_crit_edge

if.end3.i.ft_prli_locked.exit_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ft_prli_locked.exit

if.end6.i:                                        ; preds = %if.end3.i
  %spp_params.i = getelementptr inbounds %struct.fc_els_spp, ptr %rspp, i32 0, i32 6
  %4 = ptrtoint ptr %spp_params.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spp_params.i, align 4
  %and7.i = and i32 %5, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.ft_prli_locked.exit_crit_edge, label %if.end10.i

if.end6.i.ft_prli_locked.exit_crit_edge:          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ft_prli_locked.exit

if.end10.i:                                       ; preds = %if.end6.i
  %and13.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end10.i.fill.i_crit_edge, label %if.then15.i

if.end10.i.fill.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fill.i

if.then15.i:                                      ; preds = %if.end10.i
  %spp_flags16.i = getelementptr inbounds %struct.fc_els_spp, ptr %spp, i32 0, i32 2
  %6 = ptrtoint ptr %spp_flags16.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %spp_flags16.i, align 2
  %8 = or i8 %7, 32
  store i8 %8, ptr %spp_flags16.i, align 2
  %and19.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then15.i.ft_prli_locked.exit_crit_edge, label %if.end22.i

if.then15.i.ft_prli_locked.exit_crit_edge:        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ft_prli_locked.exit

if.end22.i:                                       ; preds = %if.then15.i
  %port_id.i = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_id.i, align 8
  %tpg.i.i = getelementptr inbounds %struct.ft_tport, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %tpg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tpg.i.i, align 4
  %se_tpg1.i.i = getelementptr inbounds %struct.ft_tpg, ptr %12, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %initiatorname.i.i) #8
  %13 = call ptr @memset(ptr %initiatorname.i.i, i32 255, i32 224)
  %port_name.i.i = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %port_name.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %port_name.i.i, align 8
  %call.i.i = call i32 @ft_format_wwn(ptr noundef nonnull %initiatorname.i.i, i32 noundef 224, i64 noundef %15) #8
  %mul.i.i.i.i.i = mul i32 %10, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 26
  %arrayidx3.i.i = getelementptr %struct.ft_tport, ptr %call.i, i32 0, i32 4, i32 %shr.i.i.i.i
  %call4.i.i = call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end22.i.do.end.i.i_crit_edge

if.end22.i.do.end.i.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end22.i
  %call5.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b75.i.i = load i1, ptr @ft_sess_create.__warned, align 1
  br i1 %.b75.i.i, label %land.lhs.true7.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ft_sess_create.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 218, ptr noundef nonnull @.str.5) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true7.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.end22.i.do.end.i.i_crit_edge
  %16 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx3.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %17, null
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -32
  %tobool16.not8083.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool16.not80.i.i = or i1 %tobool14.not.i.i, %tobool16.not8083.i.i
  br i1 %tobool16.not80.i.i, label %do.end.i.i.for.end.i.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.for.end.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %sess.081.i.i = phi ptr [ %add.ptr32.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %18 = ptrtoint ptr %sess.081.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sess.081.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %10)
  %cmp.i.i = icmp eq i32 %19, %10
  br i1 %cmp.i.i, label %for.body.i.i.ft_sess_create.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.ft_sess_create.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ft_sess_create.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hash25.i.i = getelementptr inbounds %struct.ft_sess, ptr %sess.081.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %hash25.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hash25.i.i, align 8
  %tobool28.not.i.i = icmp eq ptr %21, null
  %add.ptr32.i.i = getelementptr i8, ptr %21, i32 -32
  %tobool16.not85.i.i = icmp eq ptr %add.ptr32.i.i, null
  %tobool16.not.i.i = or i1 %tobool28.not.i.i, %tobool16.not85.i.i
  br i1 %tobool16.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %do.end.i.i.for.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 56) #11
  %tobool37.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool37.not.i.i, label %if.then25.thread.i, label %if.end40.i.i

if.then25.thread.i:                               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %initiatorname.i.i) #8
  br label %ft_prli_locked.exit

if.end40.i.i:                                     ; preds = %for.end.i.i
  %kref.i.i = getelementptr inbounds %struct.ft_sess, ptr %call7.i.i.i.i, i32 0, i32 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #8
  %23 = ptrtoint ptr %kref.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %kref.i.i, align 8
  %tport41.i.i = getelementptr inbounds %struct.ft_sess, ptr %call7.i.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %tport41.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %tport41.i.i, align 8
  %25 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %10, ptr %call7.i.i.i.i, align 8
  %call44.i.i = call ptr @target_setup_session(ptr noundef %se_tpg1.i.i, i32 noundef 512, i32 noundef 608, i32 noundef 0, ptr noundef nonnull %initiatorname.i.i, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @ft_sess_alloc_cb) #8
  %se_sess.i.i = getelementptr inbounds %struct.ft_sess, ptr %call7.i.i.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %se_sess.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call44.i.i, ptr %se_sess.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call44.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then47.i.i, label %if.end40.i.i.ft_sess_create.exit.i_crit_edge

if.end40.i.i.ft_sess_create.exit.i_crit_edge:     ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ft_sess_create.exit.i

if.then47.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %ft_sess_create.exit.i

ft_sess_create.exit.i:                            ; preds = %if.then47.i.i, %if.end40.i.i.ft_sess_create.exit.i_crit_edge, %for.body.i.i.ft_sess_create.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call44.i.i, %if.then47.i.i ], [ %call7.i.i.i.i, %if.end40.i.i.ft_sess_create.exit.i_crit_edge ], [ %sess.081.i.i, %for.body.i.i.ft_sess_create.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %initiatorname.i.i) #8
  %cmp.i1.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.then25.i, label %if.end33.i

if.then25.i:                                      ; preds = %ft_sess_create.exit.i
  %cmp.i = icmp eq ptr %retval.0.i.i, inttoptr (i32 -13 to ptr)
  br i1 %cmp.i, label %if.then28.i, label %if.then25.i.ft_prli_locked.exit_crit_edge

if.then25.i.ft_prli_locked.exit_crit_edge:        ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ft_prli_locked.exit

if.then28.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %spp_flags16.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %spp_flags16.i, align 2
  %29 = and i8 %28, -33
  store i8 %29, ptr %spp_flags16.i, align 2
  br label %ft_prli_locked.exit

if.end33.i:                                       ; preds = %ft_sess_create.exit.i
  %params.i = getelementptr inbounds %struct.ft_sess, ptr %retval.0.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool34.not.i = icmp eq i32 %31, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.end33.i.if.end36.i_crit_edge

if.end33.i.if.end36.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %prli_count.i = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 20
  %32 = ptrtoint ptr %prli_count.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %prli_count.i, align 8
  %inc.i = add i16 %33, 1
  store i16 %inc.i, ptr %prli_count.i, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %if.end33.i.if.end36.i_crit_edge
  %34 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %5, ptr %params.i, align 4
  %35 = ptrtoint ptr %port_name.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %port_name.i.i, align 8
  %port_name39.i = getelementptr inbounds %struct.ft_sess, ptr %retval.0.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %port_name39.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %port_name39.i, align 8
  %maxframe_size.i = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 8
  %38 = ptrtoint ptr %maxframe_size.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %maxframe_size.i, align 2
  %max_frame.i = getelementptr inbounds %struct.ft_sess, ptr %retval.0.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %max_frame.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %max_frame.i, align 8
  br label %fill.i

fill.i:                                           ; preds = %if.end36.i, %if.end10.i.fill.i_crit_edge, %if.end.i.fill.i_crit_edge
  %spp_params41.i = getelementptr inbounds %struct.fc_els_spp, ptr %spp, i32 0, i32 6
  %41 = ptrtoint ptr %spp_params41.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %spp_params41.i, align 4
  %and42.i = and i32 %42, -273
  %or43.i = or i32 %and42.i, 16
  store i32 %or43.i, ptr %spp_params41.i, align 4
  br label %ft_prli_locked.exit

not_target.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spp_params45.i = getelementptr inbounds %struct.fc_els_spp, ptr %spp, i32 0, i32 6
  %43 = ptrtoint ptr %spp_params45.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %spp_params45.i, align 4
  %and46.i = and i32 %44, -17
  store i32 %and46.i, ptr %spp_params45.i, align 4
  br label %ft_prli_locked.exit

ft_prli_locked.exit:                              ; preds = %not_target.i, %fill.i, %if.then28.i, %if.then25.i.ft_prli_locked.exit_crit_edge, %if.then25.thread.i, %if.then15.i.ft_prli_locked.exit_crit_edge, %if.end6.i.ft_prli_locked.exit_crit_edge, %if.end3.i.ft_prli_locked.exit_crit_edge
  %retval.0.i13 = phi i32 [ 5, %if.then28.i ], [ 1, %fill.i ], [ 0, %not_target.i ], [ 4, %if.end3.i.ft_prli_locked.exit_crit_edge ], [ 8, %if.end6.i.ft_prli_locked.exit_crit_edge ], [ 5, %if.then15.i.ft_prli_locked.exit_crit_edge ], [ 2, %if.then25.i.ft_prli_locked.exit_crit_edge ], [ 2, %if.then25.thread.i ]
  call void @mutex_unlock(ptr noundef nonnull @ft_lport_lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_prli.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_prli, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %ft_prli_locked.exit
  %45 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rdata, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %48, i32 0, i32 17
  %49 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %host_no, align 4
  %port_id = getelementptr inbounds %struct.fc_lport, ptr %46, i32 0, i32 18
  %51 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port_id, align 8
  %port_id5 = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 4, i32 2
  %53 = ptrtoint ptr %port_id5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port_id5, align 8
  %tobool6.not = icmp eq ptr %rspp, null
  br i1 %tobool6.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %spp_flags = getelementptr inbounds %struct.fc_els_spp, ptr %rspp, i32 0, i32 2
  %55 = ptrtoint ptr %spp_flags to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %spp_flags, align 2
  %conv = zext i8 %56 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %if.then.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_prli.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.7, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %cond, i32 noundef %retval.0.i13) #8
  br label %do.end

do.end:                                           ; preds = %cond.end, %ft_prli_locked.exit
  ret i32 %retval.0.i13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ft_prlo(ptr nocapture noundef %rdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ft_lport_lock, i32 noundef 0) #8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ft_lport_lock, i32 0, i32 5), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @ft_prlo.__warned, align 1
  br i1 %.b17, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ft_prlo.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 457, ptr noundef nonnull @.str.4) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdata, align 8
  %arrayidx = getelementptr %struct.fc_lport, ptr %1, i32 0, i32 38, i32 8
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @ft_lport_lock) #8
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %port_id = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_id, align 8
  %mul.i.i.i.i = mul i32 %5, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 26
  %arrayidx.i = getelementptr %struct.ft_tport, ptr %3, i32 0, i32 4, i32 %shr.i.i.i
  %call1.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end7.do.end.i_crit_edge

if.end7.do.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end7
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b42.i = load i1, ptr @ft_sess_delete.__warned, align 1
  br i1 %.b42.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ft_sess_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 267, ptr noundef nonnull @.str.5) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end7.do.end.i_crit_edge
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool11.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -32
  %tobool13.not4851.i = icmp eq ptr %add.ptr.i, null
  %tobool13.not48.i = or i1 %tobool11.not.i, %tobool13.not4851.i
  br i1 %tobool13.not48.i, label %do.end.i.if.then10_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.then10_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %sess.049.i = phi ptr [ %add.ptr29.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %sess.049.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sess.049.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp.i = icmp eq i32 %9, %5
  br i1 %cmp.i, label %if.then15.i, label %for.inc.i

if.then15.i:                                      ; preds = %for.body.i
  %tport1.i.i = getelementptr inbounds %struct.ft_sess, ptr %sess.049.i, i32 0, i32 4
  %10 = ptrtoint ptr %tport1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tport1.i.i, align 8
  %hash.i.i = getelementptr inbounds %struct.ft_sess, ptr %sess.049.i, i32 0, i32 6
  %12 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hash.i.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.ft_sess, ptr %sess.049.i, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %13, ptr %15, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i.i, label %if.then15.i.hlist_del_rcu.exit.i.i_crit_edge, label %do.body13.i.i.i.i

if.then15.i.hlist_del_rcu.exit.i.i_crit_edge:     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del_rcu.exit.i.i

do.body13.i.i.i.i:                                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del_rcu.exit.i.i

hlist_del_rcu.exit.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then15.i.hlist_del_rcu.exit.i.i_crit_edge
  %18 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %sess_count.i.i = getelementptr inbounds %struct.ft_tport, ptr %11, i32 0, i32 2
  %19 = ptrtoint ptr %sess_count.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sess_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %do.body5.i.i, label %if.end11, !prof !69

do.body5.i.i:                                     ; preds = %hlist_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/tcm_fc/tfc_sess.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 251, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

for.inc.i:                                        ; preds = %for.body.i
  %hash22.i = getelementptr inbounds %struct.ft_sess, ptr %sess.049.i, i32 0, i32 6
  %21 = ptrtoint ptr %hash22.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hash22.i, align 8
  %tobool25.not.i = icmp eq ptr %22, null
  %add.ptr29.i = getelementptr i8, ptr %22, i32 -32
  %tobool13.not53.i = icmp eq ptr %add.ptr29.i, null
  %tobool13.not.i = or i1 %tobool25.not.i, %tobool13.not53.i
  br i1 %tobool13.not.i, label %for.inc.i.if.then10_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.then10_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then10:                                        ; preds = %for.inc.i.if.then10_crit_edge, %do.end.i.if.then10_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ft_lport_lock) #8
  br label %cleanup

if.end11:                                         ; preds = %hlist_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i.i = add i32 %20, -1
  %23 = ptrtoint ptr %sess_count.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dec.i.i, ptr %sess_count.i.i, align 4
  %24 = ptrtoint ptr %sess.049.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %sess.049.i, align 8
  %params.i.i = getelementptr inbounds %struct.ft_sess, ptr %sess.049.i, i32 0, i32 1
  %25 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %params.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ft_lport_lock) #8
  %se_sess.i = getelementptr inbounds %struct.ft_sess, ptr %sess.049.i, i32 0, i32 5
  %26 = ptrtoint ptr %se_sess.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %se_sess.i, align 4
  tail call void @target_stop_session(ptr noundef %27) #8
  %28 = ptrtoint ptr %se_sess.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %se_sess.i, align 4
  tail call void @target_wait_for_sess_cmds(ptr noundef %29) #8
  tail call void @ft_sess_put(ptr noundef nonnull %sess.049.i) #8
  %prli_count = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata, i32 0, i32 20
  %30 = ptrtoint ptr %prli_count to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %prli_count, align 8
  %dec = add i16 %31, -1
  store i16 %dec, ptr %prli_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ft_recv(ptr noundef %lport, ptr noundef %fp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %fh_s_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fh_s_id.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fh_s_id.i, align 1
  %conv.i.i = zext i8 %3 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %arrayidx1.i.i = getelementptr %struct.fc_frame_header, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %5 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr %struct.fc_frame_header, ptr %1, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %7 to i32
  %or6.i.i = or i32 %or.i.i, %conv5.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_recv.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_recv, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lport, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_no, align 4
  %port_id = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 18
  %12 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_id, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_recv.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.11, i32 noundef %11, i32 noundef %13, i32 noundef %or6.i.i) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call fastcc ptr @ft_sess_get(ptr noundef %lport, i32 noundef %or6.i.i)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.body7, label %if.end26

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_recv.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_recv, %if.then19)) #8
          to label %do.end25 [label %if.then19], !srcloc !73

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lport, align 8
  %host_no21 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %host_no21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %host_no21, align 4
  %port_id22 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 18
  %18 = ptrtoint ptr %port_id22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_id22, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_recv.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.12, i32 noundef %17, i32 noundef %19, i32 noundef %or6.i.i) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %do.body7
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #8
  br label %cleanup

if.end26:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ft_recv_req(ptr noundef nonnull %call4, ptr noundef %fp) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ft_lport_find_tpg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_stop_session(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_wait_for_sess_cmds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_remove_session(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @target_setup_session(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ft_sess_alloc_cb(ptr nocapture noundef readnone %se_tpg, ptr nocapture noundef readnone %se_sess, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr inbounds %struct.ft_sess, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 8
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p, align 8
  %mul.i.i.i = mul i32 %3, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_sess_alloc_cb.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_sess_alloc_cb, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_no, align 4
  %port_id6 = getelementptr inbounds %struct.fc_lport, ptr %5, i32 0, i32 18
  %10 = ptrtoint ptr %port_id6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_id6, align 8
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_sess_alloc_cb.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.9, i32 noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef %p) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.ft_tport, ptr %1, i32 0, i32 4, i32 %shr.i.i
  %hash8 = getelementptr inbounds %struct.ft_sess, ptr %p, i32 0, i32 6
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %hash8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %hash8, align 4
  %pprev.i = getelementptr inbounds %struct.ft_sess, ptr %p, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %hash8, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.end.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

do.end.hlist_add_head_rcu.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %hash8, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %do.end.hlist_add_head_rcu.exit_crit_edge
  %sess_count = getelementptr inbounds %struct.ft_tport, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %sess_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sess_count, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %sess_count, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ft_sess_get(ptr noundef %lport, i32 noundef %port_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr %struct.fc_lport, ptr %lport, i32 0, i32 38, i32 8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 8
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b106 = load i1, ptr @ft_sess_get.__warned, align 1
  br i1 %.b106, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ft_sess_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 166, ptr noundef nonnull @.str.14) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.out_crit_edge, label %if.end11

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end11:                                         ; preds = %do.end7
  %mul.i.i.i = mul i32 %port_id, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  %arrayidx13 = getelementptr %struct.ft_tport, ptr %5, i32 0, i32 4, i32 %shr.i.i
  %call15 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %if.end11.do.end25_crit_edge

if.end11.do.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

land.lhs.true17:                                  ; preds = %if.end11
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true17.do.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %.b104105 = load i1, ptr @ft_sess_get.__warned.16, align 1
  br i1 %.b104105, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ft_sess_get.__warned.16, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 173, ptr noundef nonnull @.str.5) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true17.do.end25_crit_edge, %if.end11.do.end25_crit_edge
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx13, align 4
  %tobool32.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -32
  %tobool34.not136139 = icmp eq ptr %add.ptr, null
  %tobool34.not136 = or i1 %tobool32.not, %tobool34.not136139
  br i1 %tobool34.not136, label %do.end25.out_crit_edge, label %do.end25.for.body_crit_edge

do.end25.for.body_crit_edge:                      ; preds = %do.end25
  br label %for.body

do.end25.out_crit_edge:                           ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end25.for.body_crit_edge
  %sess.0137 = phi ptr [ %add.ptr61, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end25.for.body_crit_edge ]
  %8 = ptrtoint ptr %sess.0137 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sess.0137, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %port_id)
  %cmp = icmp eq i32 %9, %port_id
  br i1 %cmp, label %if.then36, label %for.inc

if.then36:                                        ; preds = %for.body
  %kref = getelementptr inbounds %struct.ft_sess, ptr %sess.0137, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #8, !srcloc !80
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then36.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !69

if.then36.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then36
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !71

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then36.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then36.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #8
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %call.i111 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i111, label %kref_get.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i114

kref_get.exit.rcu_read_unlock.exit_crit_edge:     ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i114:                               ; preds = %kref_get.exit
  %call1.i112 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i112)
  %tobool.not.i113 = icmp eq i32 %call1.i112, 0
  br i1 %tobool.not.i113, label %land.lhs.true.i114.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i116

land.lhs.true.i114.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i116:                              ; preds = %land.lhs.true.i114
  %.b4.i115 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i115, label %land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge, label %if.then.i117

land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i117:                                     ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i117, %land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i114.rcu_read_unlock.exit_crit_edge, %kref_get.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %12 = tail call i32 @llvm.read_register.i32(metadata !58) #8
  %and.i.i.i.i.i118 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i118 to ptr
  %preempt_count.i.i.i.i119 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i119, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i119, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_sess_get.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_sess_get, %if.then43)) #8
          to label %cleanup [label %if.then43], !srcloc !73

if.then43:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lport, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %host_no, align 4
  %port_id44 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 18
  %20 = ptrtoint ptr %port_id44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_id44, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_sess_get.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.18, i32 noundef %19, i32 noundef %21, i32 noundef %port_id, ptr noundef nonnull %sess.0137) #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %hash54 = getelementptr inbounds %struct.ft_sess, ptr %sess.0137, i32 0, i32 6
  %22 = ptrtoint ptr %hash54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hash54, align 8
  %tobool57.not = icmp eq ptr %23, null
  %add.ptr61 = getelementptr i8, ptr %23, i32 -32
  %tobool34.not141 = icmp eq ptr %add.ptr61, null
  %tobool34.not = or i1 %tobool57.not, %tobool34.not141
  br i1 %tobool34.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %do.end25.out_crit_edge, %do.end7.out_crit_edge
  %reason.0 = phi ptr [ @.str.15, %do.end7.out_crit_edge ], [ @.str.13, %do.end25.out_crit_edge ], [ @.str.13, %for.inc.out_crit_edge ]
  %call.i120 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i120, label %out.rcu_read_unlock.exit130_crit_edge, label %land.lhs.true.i123

out.rcu_read_unlock.exit130_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit130

land.lhs.true.i123:                               ; preds = %out
  %call1.i121 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121)
  %tobool.not.i122 = icmp eq i32 %call1.i121, 0
  br i1 %tobool.not.i122, label %land.lhs.true.i123.rcu_read_unlock.exit130_crit_edge, label %land.lhs.true2.i125

land.lhs.true.i123.rcu_read_unlock.exit130_crit_edge: ; preds = %land.lhs.true.i123
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit130

land.lhs.true2.i125:                              ; preds = %land.lhs.true.i123
  %.b4.i124 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i124, label %land.lhs.true2.i125.rcu_read_unlock.exit130_crit_edge, label %if.then.i126

land.lhs.true2.i125.rcu_read_unlock.exit130_crit_edge: ; preds = %land.lhs.true2.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit130

if.then.i126:                                     ; preds = %land.lhs.true2.i125
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #8
  br label %rcu_read_unlock.exit130

rcu_read_unlock.exit130:                          ; preds = %if.then.i126, %land.lhs.true2.i125.rcu_read_unlock.exit130_crit_edge, %land.lhs.true.i123.rcu_read_unlock.exit130_crit_edge, %out.rcu_read_unlock.exit130_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %24 = tail call i32 @llvm.read_register.i32(metadata !58) #8
  %and.i.i.i.i.i127 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i127 to ptr
  %preempt_count.i.i.i.i128 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i128, align 4
  %sub.i.i.i129 = add i32 %27, -1
  store volatile i32 %sub.i.i.i129, ptr %preempt_count.i.i.i.i128, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_sess_get.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_sess_get, %if.then77)) #8
          to label %cleanup [label %if.then77], !srcloc !73

if.then77:                                        ; preds = %rcu_read_unlock.exit130
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lport, align 8
  %host_no79 = getelementptr inbounds %struct.Scsi_Host, ptr %29, i32 0, i32 17
  %30 = ptrtoint ptr %host_no79 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %host_no79, align 4
  %port_id80 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 18
  %32 = ptrtoint ptr %port_id80 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port_id80, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_sess_get.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.19, i32 noundef %31, i32 noundef %33, i32 noundef %port_id, ptr noundef nonnull %reason.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %rcu_read_unlock.exit130, %if.then43, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %sess.0137, %if.then43 ], [ null, %if.then77 ], [ %sess.0137, %rcu_read_unlock.exit ], [ null, %rcu_read_unlock.exit130 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ft_recv_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !37, !39, !40, !42, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 320, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ft_sess_close.__UNIQUE_ID_ddebug333, !1, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!6 = !{ptr @ft_prov, !7, !"ft_prov", i1 false, i1 false}
!7 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 498, i32 17}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 47, i32 10}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 294, i32 3}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 429, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ft_prli.__UNIQUE_ID_ddebug334, !15, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 218, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 196, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ft_sess_alloc_cb.__UNIQUE_ID_ddebug320, !21, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 456, i32 10}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 267, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 483, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ft_recv.__UNIQUE_ID_ddebug336, !29, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 487, i32 3}
!34 = !{ptr @ft_recv.__UNIQUE_ID_ddebug337, !33, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 163, i32 17}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 166, i32 10}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 168, i32 12}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 173, i32 2}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 177, i32 4}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ft_sess_get.__UNIQUE_ID_ddebug318, !45, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/target/tcm_fc/tfc_sess.c", i32 184, i32 2}
!50 = !{ptr @ft_sess_get.__UNIQUE_ID_ddebug319, !49, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2155467282}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 2155529723, i64 2155530220, i64 2155529760, i64 2155529816, i64 2155529850, i64 2155529874, i64 2155529915, i64 2155529936, i64 2155529964, i64 2155529998}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2155470427, i64 2155470923, i64 2155470464, i64 2155470520, i64 2155470554, i64 2155470578, i64 2155470619, i64 2155470640, i64 2155470668, i64 2155470702}
!73 = !{i64 2148963068, i64 2148963073, i64 2148963086, i64 2148963130, i64 2148963164, i64 2148963185}
!74 = !{i64 2155580784, i64 2155581281, i64 2155580821, i64 2155580877, i64 2155580911, i64 2155580935, i64 2155580976, i64 2155580997, i64 2155581025, i64 2155581059}
!75 = !{i64 2148439246}
!76 = !{i64 2148353686, i64 2148353718, i64 2148353747, i64 2148353781, i64 2148353812, i64 2148353835}
!77 = !{i64 2149315360}
!78 = !{i64 2151723709}
!79 = !{i64 2149365850}
!80 = !{i64 2148351221, i64 2148351253, i64 2148351282, i64 2148351316, i64 2148351347, i64 2148351370}
!81 = !{i64 2149366116}
