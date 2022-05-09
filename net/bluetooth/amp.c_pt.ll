; ModuleID = '/llk/IR_all_yes/net/bluetooth/amp.c_pt.bc'
source_filename = "../net/bluetooth/amp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.amp_ctrl = type { %struct.list_head, %struct.kref, i8, i16, i16, i16, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.amp_mgr = type { %struct.list_head, ptr, ptr, ptr, %struct.kref, i8, i8, i32, i32, %struct.list_head, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.sk_buff_head = type { %union.anon.1, i32, %struct.spinlock }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.link_key = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, [16 x i8], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.hci_cp_read_local_amp_assoc = type <{ i8, i16, i16 }>
%struct.hci_request = type { ptr, %struct.sk_buff_head, i32 }
%struct.sk_buff = type { %union.anon.2, %union.anon.106, %union.anon.107, [48 x i8], %union.anon.108, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.110, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.106 = type { ptr }
%union.anon.107 = type { i64 }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { i32, ptr }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.112, i32, i32, i32, i16, i16, %union.anon.114, i32, %union.anon.115, %union.anon.116, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.112 = type { i32 }
%union.anon.114 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i16 }
%struct.hci_rp_read_local_amp_assoc = type { i8, i8, i16, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hci_cp_write_remote_amp_assoc = type <{ i8, i16, i16, [0 x i8] }>
%struct.hci_cp_create_phy_link = type { i8, i8, i8, [32 x i8] }
%struct.hci_cp_accept_phy_link = type { i8, i8, i8, [32 x i8] }
%struct.l2cap_chan = type { ptr, ptr, ptr, %struct.kref, %struct.atomic_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [64 x i8], i8, i8, i8, i8, i16, i16, i16, i8, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, ptr, ptr, i16, i8, i16, i8, i8, i16, i32, i32, i32, i8, i8, i16, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.l2cap_seq_list, %struct.l2cap_seq_list, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex }
%struct.l2cap_seq_list = type { i16, i16, i16, ptr }
%struct.l2cap_conn = type { ptr, ptr, i32, i32, i8, i8, i8, i8, %struct.delayed_work, ptr, i32, i8, %struct.mutex, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, i8, ptr, %struct.list_head, %struct.mutex, %struct.kref, %struct.list_head }
%struct.hci_cp_create_accept_logical_link = type <{ i8, %struct.ext_flow_spec, %struct.ext_flow_spec }>
%struct.ext_flow_spec = type { i8, i8, i16, i32, i32, i32 }
%struct.hci_cp_disconn_logical_link = type { i16 }
%struct.hci_chan = type { %struct.list_head, i16, ptr, %struct.sk_buff_head, i32, i8, i8 }
%struct.hci_rp_write_remote_amp_assoc = type { i8, i8 }

@amp_ctrl_get.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bluetooth\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amp_ctrl_get\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/bluetooth/amp.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ctrl %p orig refcnt %d\0A\00", [40 x i8] zeroinitializer }, align 32
@amp_ctrl_put.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amp_ctrl_put\00", [19 x i8] zeroinitializer }, align 32
@amp_ctrl_add.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amp_ctrl_add\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mgr %p ctrl %p\0A\00", [16 x i8] zeroinitializer }, align 32
@amp_ctrl_list_flush.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amp_ctrl_list_flush\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mgr %p\0A\00", [24 x i8] zeroinitializer }, align 32
@amp_ctrl_lookup.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amp_ctrl_lookup\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mgr %p id %u\0A\00", [18 x i8] zeroinitializer }, align 32
@phylink_add.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"phylink_add\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hcon %p dst %pMR\0A\00", [46 x i8] zeroinitializer }, align 32
@phylink_gen_key.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"phylink_gen_key\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"conn %p key_type %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: legacy key type %u\0A\00", [40 x i8] zeroinitializer }, align 32
@phylink_gen_key.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No Link key for conn %p dst %pMR\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gamp\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: could not derive Generic AMP Key: err %d\0A\00", [50 x i8] zeroinitializer }, align 32
@phylink_gen_key.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.19, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Use Generic AMP Key (gamp)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"802b\00", [27 x i8] zeroinitializer }, align 32
@amp_read_loc_assoc_frag.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amp_read_loc_assoc_frag\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s handle %u\0A\00", [18 x i8] zeroinitializer }, align 32
@amp_write_rem_assoc_continue.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amp_write_rem_assoc_continue\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s phy handle 0x%2.2x\0A\00", [41 x i8] zeroinitializer }, align 32
@amp_write_remote_assoc.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.24, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amp_write_remote_assoc\00", [41 x i8] zeroinitializer }, align 32
@amp_write_remote_assoc.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s phy handle 0x%2.2x hcon %p\0A\00", [33 x i8] zeroinitializer }, align 32
@amp_create_phylink.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amp_create_phylink\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s hcon %p phy handle 0x%2.2x\0A\00", [33 x i8] zeroinitializer }, align 32
@amp_create_phylink.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.29, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot create link key\0A\00", [40 x i8] zeroinitializer }, align 32
@amp_accept_phylink.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.28, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amp_accept_phylink\00", [45 x i8] zeroinitializer }, align 32
@amp_accept_phylink.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.29, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@amp_physical_cfm.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amp_physical_cfm\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bredr_hcon %p hs_hcon %p mgr %p\0A\00", [63 x i8] zeroinitializer }, align 32
@amp_create_logical_link.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amp_create_logical_link\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"chan %p hs_hcon %p dst %pMR\0A\00", [35 x i8] zeroinitializer }, align 32
@amp_disconnect_logical_link.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amp_disconnect_logical_link\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hchan %p not connected\0A\00", [40 x i8] zeroinitializer }, align 32
@amp_destroy_logical_link.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amp_destroy_logical_link\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hchan %p\0A\00", [22 x i8] zeroinitializer }, align 32
@amp_ctrl_destroy.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amp_ctrl_destroy\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctrl %p\0A\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmac(sha256)\00", [19 x i8] zeroinitializer }, align 32
@hmac_sha256.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hmac_sha256\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"crypto_alloc_ahash failed: err %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@hmac_sha256.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.44, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"crypto_ahash_setkey failed: err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@read_local_amp_assoc_complete.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"read_local_amp_assoc_complete\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s status 0x%2.2x\0A\00", [45 x i8] zeroinitializer }, align 32
@read_local_amp_assoc_complete.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"frag_len %zu rem_len %zu\0A\00", [38 x i8] zeroinitializer }, align 32
@hci_conn_hash_lookup_handle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/net/bluetooth/hci_core.h\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@amp_write_rem_assoc_frag.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amp_write_rem_assoc_frag\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"all fragments are written\0A\00", [37 x i8] zeroinitializer }, align 32
@amp_write_rem_assoc_frag.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.55, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"hcon %p ctrl %p frag_len %u assoc_len %u rem_len %u\0A\00", [43 x i8] zeroinitializer }, align 32
@write_remote_amp_assoc_complete.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"write_remote_amp_assoc_complete\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s status 0x%2.2x phy_handle 0x%2.2x\0A\00", [58 x i8] zeroinitializer }, align 32
@create_phylink_complete.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.46, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"create_phylink_complete\00", [40 x i8] zeroinitializer }, align 32
@accept_phylink_complete.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.46, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"accept_phylink_complete\00", [40 x i8] zeroinitializer }, align 32
@hci_dev_hold.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.48, ptr @.str.61, i8 1, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hci_dev_hold\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s orig refcnt %d\0A\00", [45 x i8] zeroinitializer }, align 32
@hci_dev_put.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.48, ptr @.str.61, i8 1, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hci_dev_put\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 19, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 37, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 58, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 67, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 81, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 116, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 178, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 182, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 191, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 200, i32 51 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 202, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 207, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 213, i32 54 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 260, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 389, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 404, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 410, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 449, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 454, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 488, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 508, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 536, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 578, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 588, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 29, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 137, i32 27 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 139, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 145, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 223, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 232, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1014, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 695, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 723, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 346, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 363, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 322, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 420, i32 2 }
@___asan_gen_.241 = private constant [23 x i8] c"../net/bluetooth/amp.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 468, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1232, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [36 x i8] c"../include/net/bluetooth/hci_core.h\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1224, i32 2 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amp_ctrl_get(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_ctrl_get.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_ctrl_get, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %kref = getelementptr inbounds %struct.amp_ctrl, ptr %ctrl, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #9
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_ctrl_get.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.3, ptr noundef %ctrl, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %kref4 = getelementptr inbounds %struct.amp_ctrl, ptr %ctrl, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref4, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref4, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref4, ptr %kref4, i32 1, ptr elementtype(i32) %kref4) #9, !srcloc !151
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !152

do.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !153

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref4, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amp_ctrl_put(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_ctrl_put.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_ctrl_put, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %kref = getelementptr inbounds %struct.amp_ctrl, ptr %ctrl, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #9
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_ctrl_put.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.3, ptr noundef %ctrl, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %kref4 = getelementptr inbounds %struct.amp_ctrl, ptr %ctrl, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref4, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %kref4, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref4, ptr %kref4, i32 1, ptr elementtype(i32) %kref4) #9, !srcloc !155
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !153

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref4, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_ctrl_destroy.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_ctrl_put, %if.then.i.i)) #9
          to label %amp_ctrl_destroy.exit.i [label %if.then.i.i], !srcloc !150

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_ctrl_destroy.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.40, ptr noundef %ctrl) #9
  br label %amp_ctrl_destroy.exit.i

amp_ctrl_destroy.exit.i:                          ; preds = %if.then.i.i, %if.then.i
  %assoc.i.i = getelementptr %struct.amp_ctrl, ptr %ctrl, i32 0, i32 6
  %3 = ptrtoint ptr %assoc.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %assoc.i.i, align 4
  tail call void @kfree(ptr noundef %4) #9
  tail call void @kfree(ptr noundef %ctrl) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %amp_ctrl_destroy.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %retval.0.i8 = phi i32 [ 1, %amp_ctrl_destroy.exit.i ], [ 0, %if.end5.i.i.i.i.kref_put.exit_crit_edge ], [ 0, %if.then10.i.i.i.i ]
  ret i32 %retval.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amp_ctrl_add(ptr noundef %mgr, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds %struct.amp_ctrl, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  %1 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %kref, align 8
  %id1 = getelementptr inbounds %struct.amp_ctrl, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %id1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %id, ptr %id1, align 4
  %amp_ctrls_lock = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %amp_ctrls_lock, i32 noundef 0) #9
  %amp_ctrls = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 9
  %3 = ptrtoint ptr %amp_ctrls to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %amp_ctrls, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %amp_ctrls, ptr noundef %4) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %amp_ctrls, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %amp_ctrls to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i.i, ptr %amp_ctrls, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %amp_ctrls_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_ctrl_add.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_ctrl_add, %if.then7)) #9
          to label %cleanup [label %if.then7], !srcloc !150

if.then7:                                         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_ctrl_add.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.6, ptr noundef %mgr, ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %list_add.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amp_ctrl_list_flush(ptr noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_ctrl_list_flush.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_ctrl_list_flush, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_ctrl_list_flush.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.8, ptr noundef %mgr) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %amp_ctrls_lock = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %amp_ctrls_lock, i32 noundef 0) #9
  %amp_ctrls = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 9
  %0 = ptrtoint ptr %amp_ctrls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %amp_ctrls, align 4
  %cmp.not29 = icmp eq ptr %1, %amp_ctrls
  br i1 %cmp.not29, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %ctrl.030 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %1, %do.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %ctrl.030 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %ctrl.030, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ctrl.030) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ctrl.030, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %ctrl.030 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl.030, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %ctrl.030 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %ctrl.030, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ctrl.030, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call13 = tail call i32 @amp_ctrl_put(ptr noundef %ctrl.030)
  %cmp.not = icmp eq ptr %n.0, %amp_ctrls
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %amp_ctrls_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amp_ctrl_lookup(ptr noundef %mgr, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_ctrl_lookup.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_ctrl_lookup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %id to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_ctrl_lookup.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.10, ptr noundef %mgr, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %amp_ctrls_lock = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %amp_ctrls_lock, i32 noundef 0) #9
  %amp_ctrls = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %ctrl.0.in = phi ptr [ %amp_ctrls, %do.end ], [ %ctrl.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ctrl.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ctrl.0 = load ptr, ptr %ctrl.0.in, align 4
  %cmp.not = icmp eq ptr %ctrl.0, %amp_ctrls
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %id8 = getelementptr inbounds %struct.amp_ctrl, ptr %ctrl.0, i32 0, i32 2
  %1 = ptrtoint ptr %id8 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %id8, align 4
  %cmp11 = icmp eq i8 %2, %id
  br i1 %cmp11, label %if.then13, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then13:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_ctrl_get.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_ctrl_lookup, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !150

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %kref.i = getelementptr inbounds %struct.amp_ctrl, ptr %ctrl.0, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_ctrl_get.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.3, ptr noundef %ctrl.0, i32 noundef %4) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then13
  %kref4.i = getelementptr inbounds %struct.amp_ctrl, ptr %ctrl.0, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref4.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref4.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref4.i, ptr %kref4.i, i32 1, ptr elementtype(i32) %kref4.i) #9, !srcloc !151
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !152

do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !153

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref4.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %ctrl.0, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ %ctrl.0, %if.end15.sink.split.i.i.i.i.i ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %amp_ctrls_lock) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @phylink_add(ptr noundef %hdev, ptr noundef %mgr, i8 noundef zeroext %remote_id, i1 noundef zeroext %out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %l2cap_conn = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 1
  %0 = ptrtoint ptr %l2cap_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l2cap_conn, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dst1 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 2
  %not.out = xor i1 %out, true
  %conv = zext i1 %not.out to i8
  %call = tail call ptr @hci_conn_add(ptr noundef %hdev, i32 noundef 129, ptr noundef %dst1, i8 noundef zeroext %conv) #9
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phylink_add.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phylink_add, %if.then9)) #9
          to label %do.end [label %if.then9], !srcloc !150

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phylink_add.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.12, ptr noundef nonnull %call, ptr noundef %dst1) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %state = getelementptr inbounds %struct.hci_conn, ptr %call, i32 0, i32 12
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 5, ptr %state, align 4
  %attempt = getelementptr inbounds %struct.hci_conn, ptr %call, i32 0, i32 17
  %5 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %attempt, align 2
  %inc = add i8 %6, 1
  store i8 %inc, ptr %attempt, align 2
  %handle.i = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 6
  %7 = ptrtoint ptr %handle.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %handle.i, align 1
  %inc.i = add i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i)
  %cmp.i = icmp eq i8 %inc.i, 0
  %spec.select.i = select i1 %cmp.i, i8 1, i8 %inc.i
  %9 = ptrtoint ptr %handle.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select.i, ptr %handle.i, align 1
  %conv12 = zext i8 %spec.select.i to i16
  %handle = getelementptr inbounds %struct.hci_conn, ptr %call, i32 0, i32 11
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv12, ptr %handle, align 2
  %remote_id13 = getelementptr inbounds %struct.hci_conn, ptr %call, i32 0, i32 54
  %11 = ptrtoint ptr %remote_id13 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %remote_id, ptr %remote_id13, align 2
  %call14 = tail call ptr @amp_mgr_get(ptr noundef %mgr) #9
  %amp_mgr = getelementptr inbounds %struct.hci_conn, ptr %call, i32 0, i32 68
  %12 = ptrtoint ptr %amp_mgr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call14, ptr %amp_mgr, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_conn_add(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amp_mgr_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phylink_gen_key(ptr noundef %conn, ptr noundef %data, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %type) local_unnamed_addr #0 align 64 {
entry:
  %keybuf = alloca [32 x i8], align 1
  %gamp_key = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %keybuf) #9
  %2 = getelementptr inbounds [32 x i8], ptr %keybuf, i32 0, i32 16
  %3 = call ptr @memset(ptr %keybuf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gamp_key) #9
  %4 = call ptr @memset(ptr %gamp_key, i32 255, i32 32)
  %call = tail call i32 @hci_conn_check_link_mode(ptr noundef %conn) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phylink_gen_key.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phylink_gen_key, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !150

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %key_type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 22
  %5 = ptrtoint ptr %key_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %key_type, align 2
  %conv = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phylink_gen_key.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.14, ptr noundef %conn, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %key_type8 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 22
  %7 = ptrtoint ptr %key_type8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %key_type8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp = icmp ult i8 %8, 3
  br i1 %cmp, label %if.then11, label %if.end14

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv9 = zext i8 %8 to i32
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %conv9) #9
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %type, align 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %len, align 1
  %dst = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2
  %call16 = tail call ptr @hci_find_link_key(ptr noundef %1, ptr noundef %dst) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.body19, label %if.end36

do.body19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phylink_gen_key.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phylink_gen_key, %if.then31)) #9
          to label %cleanup [label %if.then31], !srcloc !150

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phylink_gen_key.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.16, ptr noundef %conn, ptr noundef %dst) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end14
  %val = getelementptr inbounds %struct.link_key, ptr %call16, i32 0, i32 4
  %11 = call ptr @memcpy(ptr %keybuf, ptr %val, i32 16)
  %12 = call ptr @memcpy(ptr %2, ptr %val, i32 16)
  %call43 = call fastcc i32 @hmac_sha256(ptr noundef nonnull %keybuf, ptr noundef nonnull @.str.17, ptr noundef nonnull %gamp_key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end48, label %if.then45

if.then45:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %name46 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18, ptr noundef %name46, i32 noundef %call43) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end36
  %13 = ptrtoint ptr %key_type8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %key_type8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp51 = icmp eq i8 %14, 3
  br i1 %cmp51, label %do.body54, label %if.end71

do.body54:                                        ; preds = %if.end48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phylink_gen_key.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phylink_gen_key, %if.then66)) #9
          to label %do.end69 [label %if.then66], !srcloc !150

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phylink_gen_key.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.19) #9
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %do.body54
  %15 = call ptr @memcpy(ptr %data, ptr %gamp_key, i32 32)
  br label %cleanup

if.end71:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %call73 = call fastcc i32 @hmac_sha256(ptr noundef nonnull %gamp_key, ptr noundef nonnull @.str.20, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end69, %if.then45, %if.then31, %do.body19, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %if.then11 ], [ %call43, %if.then45 ], [ 0, %do.end69 ], [ %call73, %if.end71 ], [ -13, %entry.cleanup_crit_edge ], [ -13, %if.then31 ], [ -13, %do.body19 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gamp_key) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %keybuf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_conn_check_link_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_link_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hmac_sha256(ptr noundef %key, ptr noundef %plaintext, ptr noundef %output) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hmac_sha256.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hmac_sha256, %if.then7)) #9
          to label %do.end [label %if.then7], !srcloc !150

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hmac_sha256.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.43, i32 noundef %0) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end11:                                         ; preds = %entry
  %call12 = tail call i32 @crypto_shash_setkey(ptr noundef %call, ptr noundef %key, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end8.i.i, label %do.body15

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hmac_sha256.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hmac_sha256, %if.then27)) #9
          to label %failed [label %if.then27], !srcloc !150

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hmac_sha256.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.44, i32 noundef %call12) #9
  br label %failed

if.end8.i.i:                                      ; preds = %if.end11
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 128
  %add = add i32 %3, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #13
  %tobool34.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool34.not, label %if.end8.i.i.failed_crit_edge, label %if.end36

if.end8.i.i.failed_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end36:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %call9.i.i, align 128
  %call39 = tail call i32 @crypto_shash_digest(ptr noundef nonnull %call9.i.i, ptr noundef %plaintext, i32 noundef 4, ptr noundef %output) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %failed

failed:                                           ; preds = %if.end36, %if.end8.i.i.failed_crit_edge, %if.then27, %do.body15
  %ret.0 = phi i32 [ %call12, %if.then27 ], [ %call39, %if.end36 ], [ -12, %if.end8.i.i.failed_crit_edge ], [ %call12, %do.body15 ]
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %failed, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ %ret.0, %failed ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amp_read_loc_assoc_frag(ptr noundef %hdev, i8 noundef zeroext %phy_handle) local_unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_read_local_amp_assoc, align 1
  %req = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cp) #9
  %0 = getelementptr inbounds %struct.hci_cp_read_local_amp_assoc, ptr %cp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hci_cp_read_local_amp_assoc, ptr %cp, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #9
  %2 = call ptr @memset(ptr %req, i32 255, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_read_loc_assoc_frag.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_read_loc_assoc_frag, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv = zext i8 %phy_handle to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_read_loc_assoc_frag.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.22, ptr noundef %name, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %phy_handle, ptr %cp, align 1
  %amp_assoc_size = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 112
  %4 = ptrtoint ptr %amp_assoc_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %amp_assoc_size, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %1, align 1
  %offset = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 115, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %offset, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %0, align 1
  call void @hci_req_init(ptr noundef nonnull %req, ptr noundef %hdev) #9
  call void @hci_req_add(ptr noundef nonnull %req, i16 noundef zeroext 5130, i32 noundef 5, ptr noundef nonnull %cp) #9
  %call5 = call i32 @hci_req_run_skb(ptr noundef nonnull %req, ptr noundef nonnull @read_local_amp_assoc_complete) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then7, label %do.end.if.end8_crit_edge

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @a2mp_send_getampassoc_rsp(ptr noundef %hdev, i8 noundef zeroext 1) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cp) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_req_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_req_add(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_req_run_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_local_amp_assoc_complete(ptr noundef %hdev, i8 noundef zeroext %status, i16 noundef zeroext %opcode, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %loc_assoc = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_local_amp_assoc_complete.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_local_amp_assoc_complete, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_local_amp_assoc_complete.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.46, ptr noundef %name, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.send_rsp_crit_edge

do.end.send_rsp_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %send_rsp

if.end7:                                          ; preds = %do.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %sub = add i32 %7, -4
  %rem_len8 = getelementptr inbounds %struct.hci_rp_read_local_amp_assoc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rem_len8 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %rem_len8, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv9 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv9)
  %cmp = icmp ult i32 %sub, %conv9
  br i1 %cmp, label %do.body12, label %if.end35

do.body12:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_local_amp_assoc_complete.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_local_amp_assoc_complete, %if.then24)) #9
          to label %do.end27 [label %if.then24], !srcloc !150

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_local_amp_assoc_complete.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.47, i32 noundef %sub, i32 noundef %conv9) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body12
  %data28 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 115, i32 4
  %offset = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 115, i32 1
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %offset, align 2
  %conv30 = zext i16 %12 to i32
  %add.ptr = getelementptr i8, ptr %data28, i32 %conv30
  %frag = getelementptr inbounds %struct.hci_rp_read_local_amp_assoc, ptr %1, i32 0, i32 3
  %13 = call ptr @memcpy(ptr %add.ptr, ptr %frag, i32 %sub)
  %14 = load i16, ptr %offset, align 2
  %15 = trunc i32 %sub to i16
  %conv34 = add i16 %14, %15
  store i16 %conv34, ptr %offset, align 2
  %phy_handle = getelementptr inbounds %struct.hci_rp_read_local_amp_assoc, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %phy_handle to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %phy_handle, align 1
  tail call void @amp_read_loc_assoc_frag(ptr noundef %hdev, i8 noundef zeroext %17)
  br label %cleanup

if.end35:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %data36 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 115, i32 4
  %offset38 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 115, i32 1
  %18 = ptrtoint ptr %offset38 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %offset38, align 2
  %conv39 = zext i16 %19 to i32
  %add.ptr40 = getelementptr i8, ptr %data36, i32 %conv39
  %frag41 = getelementptr inbounds %struct.hci_rp_read_local_amp_assoc, ptr %1, i32 0, i32 3
  %20 = call ptr @memcpy(ptr %add.ptr40, ptr %frag41, i32 %conv9)
  %21 = load i16, ptr %offset38, align 2
  %add45 = add i16 %21, %10
  %22 = ptrtoint ptr %loc_assoc to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %add45, ptr %loc_assoc, align 2
  store i16 0, ptr %offset38, align 2
  br label %send_rsp

send_rsp:                                         ; preds = %if.end35, %do.end.send_rsp_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 1
  tail call void @a2mp_send_getampassoc_rsp(ptr noundef %hdev, i8 noundef zeroext %24) #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %1, align 1
  tail call void @a2mp_send_create_phy_link_req(ptr noundef %hdev, i8 noundef zeroext %26) #9
  br label %cleanup

cleanup:                                          ; preds = %send_rsp, %do.end27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @a2mp_send_getampassoc_rsp(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amp_read_loc_assoc(ptr noundef %hdev, ptr noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_read_local_amp_assoc, align 1
  %req = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cp) #9
  %0 = getelementptr inbounds %struct.hci_cp_read_local_amp_assoc, ptr %cp, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #9
  %1 = call ptr @memset(ptr %req, i32 255, i32 64)
  %loc_assoc = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 115
  %2 = call ptr @memset(ptr %loc_assoc, i32 0, i32 680)
  %3 = call ptr @memset(ptr %cp, i32 0, i32 3)
  %amp_assoc_size = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 112
  %4 = ptrtoint ptr %amp_assoc_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %amp_assoc_size, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %0, align 1
  %state = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #9
  call void @hci_req_init(ptr noundef nonnull %req, ptr noundef %hdev) #9
  call void @hci_req_add(ptr noundef nonnull %req, i16 noundef zeroext 5130, i32 noundef 5, ptr noundef nonnull %cp) #9
  %call = call i32 @hci_req_run_skb(ptr noundef nonnull %req, ptr noundef nonnull @read_local_amp_assoc_complete) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @a2mp_send_getampassoc_rsp(ptr noundef %hdev, i8 noundef zeroext 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amp_read_loc_assoc_final_data(ptr noundef %hdev, ptr nocapture noundef readonly %hcon) local_unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_read_local_amp_assoc, align 1
  %req = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cp) #9
  %amp_mgr = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 68
  %0 = ptrtoint ptr %amp_mgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %amp_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #9
  %2 = call ptr @memset(ptr %req, i32 255, i32 64)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.hci_cp_read_local_amp_assoc, ptr %cp, i32 0, i32 2
  %4 = getelementptr inbounds %struct.hci_cp_read_local_amp_assoc, ptr %cp, i32 0, i32 1
  %handle = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 11
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %handle, align 2
  %conv = trunc i16 %6 to i8
  %7 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %cp, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 0, ptr %4, align 1
  %amp_assoc_size = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 112
  %9 = ptrtoint ptr %amp_assoc_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %amp_assoc_size, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %3, align 1
  %state = getelementptr inbounds %struct.amp_mgr, ptr %1, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #9
  call void @hci_req_init(ptr noundef nonnull %req, ptr noundef %hdev) #9
  call void @hci_req_add(ptr noundef nonnull %req, i16 noundef zeroext 5130, i32 noundef 5, ptr noundef nonnull %cp) #9
  %call = call i32 @hci_req_run_skb(ptr noundef nonnull %req, ptr noundef nonnull @read_local_amp_assoc_complete) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @a2mp_send_getampassoc_rsp(ptr noundef %hdev, i8 noundef zeroext 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cp) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amp_write_rem_assoc_continue(ptr noundef %hdev, i8 noundef zeroext %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_write_rem_assoc_continue.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_write_rem_assoc_continue, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv = zext i8 %handle to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_write_rem_assoc_continue.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv3 = zext i8 %handle to i16
  %call4 = tail call fastcc ptr @hci_conn_hash_lookup_handle(ptr noundef %hdev, i16 noundef zeroext %conv3)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %call8 = tail call fastcc zeroext i1 @amp_write_rem_assoc_frag(ptr noundef %hdev, ptr noundef nonnull %call4)
  br i1 %call8, label %if.then9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @a2mp_send_create_phy_link_rsp(ptr noundef %hdev, i8 noundef zeroext 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hci_conn_hash_lookup_handle(ptr noundef %hdev, i16 noundef zeroext %handle) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %conn_hash = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183
  %0 = tail call i32 @llvm.read_register.i32(metadata !140) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !157
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 696, ptr noundef nonnull @.str.51) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.for.cond.preheader_crit_edge

rcu_read_lock.exit.for.cond.preheader_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true3

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @hci_conn_hash_lookup_handle.__warned, align 1
  br i1 %.b31, label %land.lhs.true3.for.cond.preheader_crit_edge, label %if.then

land.lhs.true3.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @hci_conn_hash_lookup_handle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 1014, ptr noundef nonnull @.str.49) #9
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true3.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %rcu_read_lock.exit.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %c.0.in = phi ptr [ %c.0, %for.body.for.cond_crit_edge ], [ %conn_hash, %for.cond.preheader ]
  %4 = ptrtoint ptr %c.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %c.0 = load volatile ptr, ptr %c.0.in, align 4
  %cmp.not = icmp eq ptr %c.0, %conn_hash
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %handle11 = getelementptr inbounds %struct.hci_conn, ptr %c.0, i32 0, i32 11
  %5 = ptrtoint ptr %handle11 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %handle11, align 2
  %cmp13 = icmp eq i16 %6, %handle
  br i1 %cmp13, label %if.then15, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then15:                                        ; preds = %for.body
  %call.i32 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i32, label %if.then15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i35

if.then15.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i35:                                ; preds = %if.then15
  %call1.i33 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i37

land.lhs.true.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %.b4.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36, label %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, label %if.then.i38

land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i38:                                      ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 724, ptr noundef nonnull @.str.52) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i38, %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, %if.then15.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !158
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call.i41 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i41, label %for.end.rcu_read_unlock.exit51_crit_edge, label %land.lhs.true.i44

for.end.rcu_read_unlock.exit51_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit51

land.lhs.true.i44:                                ; preds = %for.end
  %call1.i42 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool.not.i43, label %land.lhs.true.i44.rcu_read_unlock.exit51_crit_edge, label %land.lhs.true2.i46

land.lhs.true.i44.rcu_read_unlock.exit51_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit51

land.lhs.true2.i46:                               ; preds = %land.lhs.true.i44
  %.b4.i45 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i45, label %land.lhs.true2.i46.rcu_read_unlock.exit51_crit_edge, label %if.then.i47

land.lhs.true2.i46.rcu_read_unlock.exit51_crit_edge: ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit51

if.then.i47:                                      ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 724, ptr noundef nonnull @.str.52) #9
  br label %rcu_read_unlock.exit51

rcu_read_unlock.exit51:                           ; preds = %if.then.i47, %land.lhs.true2.i46.rcu_read_unlock.exit51_crit_edge, %land.lhs.true.i44.rcu_read_unlock.exit51_crit_edge, %for.end.rcu_read_unlock.exit51_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !158
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit51, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %c.0, %rcu_read_unlock.exit ], [ null, %rcu_read_unlock.exit51 ]
  %7 = tail call i32 @llvm.read_register.i32(metadata !140) #9
  %and.i.i.i.i.i48 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i48 to ptr
  %preempt_count.i.i.i.i49 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i49, align 4
  %sub.i.i.i50 = add i32 %10, -1
  store volatile i32 %sub.i.i.i50, ptr %preempt_count.i.i.i.i49, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @amp_write_rem_assoc_frag(ptr noundef %hdev, ptr noundef %hcon) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %amp_mgr = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 68
  %0 = ptrtoint ptr %amp_mgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %amp_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #9
  %2 = call ptr @memset(ptr %req, i32 255, i32 64)
  %remote_id = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 54
  %3 = ptrtoint ptr %remote_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %remote_id, align 2
  %call = tail call ptr @amp_ctrl_lookup(ptr noundef %1, i8 noundef zeroext %4)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %assoc_rem_len = getelementptr inbounds %struct.amp_ctrl, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %assoc_rem_len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %assoc_rem_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool1.not = icmp eq i16 %6, 0
  br i1 %tobool1.not, label %do.body, label %if.end11

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_write_rem_assoc_frag.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_write_rem_assoc_frag, %if.then7)) #9
          to label %do.end [label %if.then7], !srcloc !150

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_write_rem_assoc_frag.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.54) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %assoc_len = getelementptr inbounds %struct.amp_ctrl, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %assoc_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %assoc_len, align 2
  %9 = ptrtoint ptr %assoc_rem_len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %assoc_rem_len, align 4
  %assoc_len_so_far = getelementptr inbounds %struct.amp_ctrl, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %assoc_len_so_far to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %assoc_len_so_far, align 2
  %call10 = tail call i32 @amp_ctrl_put(ptr noundef nonnull %call)
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %11 = tail call i16 @llvm.umin.i16(i16 %6, i16 248)
  %cond = zext i16 %11 to i32
  %conv20 = add nuw nsw i32 %cond, 5
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv20, i32 noundef 3520) #13
  %tobool23.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool23.not, label %if.then24, label %do.body27

if.then24:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 @amp_ctrl_put(ptr noundef nonnull %call)
  br label %cleanup

do.body27:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_write_rem_assoc_frag.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_write_rem_assoc_frag, %if.then39)) #9
          to label %do.end47 [label %if.then39], !srcloc !150

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %assoc_len41 = getelementptr inbounds %struct.amp_ctrl, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %assoc_len41 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %assoc_len41, align 2
  %conv42 = zext i16 %13 to i32
  %14 = ptrtoint ptr %assoc_rem_len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %assoc_rem_len, align 4
  %conv44 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_write_rem_assoc_frag.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.55, ptr noundef %hcon, ptr noundef nonnull %call, i32 noundef %cond, i32 noundef %conv42, i32 noundef %conv44) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then39, %do.body27
  %handle = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 11
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %handle, align 2
  %conv48 = trunc i16 %17 to i8
  %18 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv48, ptr %call9.i.i, align 128
  %assoc_len_so_far49 = getelementptr inbounds %struct.amp_ctrl, ptr %call, i32 0, i32 3
  %19 = ptrtoint ptr %assoc_len_so_far49 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %assoc_len_so_far49, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %len_so_far = getelementptr inbounds %struct.hci_cp_write_remote_amp_assoc, ptr %call9.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %len_so_far to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %len_so_far, align 1
  %23 = ptrtoint ptr %assoc_rem_len to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %assoc_rem_len, align 4
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %rem_len = getelementptr inbounds %struct.hci_cp_write_remote_amp_assoc, ptr %call9.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %rem_len to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %rem_len, align 1
  %frag = getelementptr inbounds %struct.hci_cp_write_remote_amp_assoc, ptr %call9.i.i, i32 0, i32 3
  %assoc = getelementptr inbounds %struct.amp_ctrl, ptr %call, i32 0, i32 6
  %27 = ptrtoint ptr %assoc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %assoc, align 4
  %29 = call ptr @memcpy(ptr %frag, ptr %28, i32 %cond)
  %30 = ptrtoint ptr %assoc_len_so_far49 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %assoc_len_so_far49, align 2
  %conv56 = add i16 %31, %11
  store i16 %conv56, ptr %assoc_len_so_far49, align 2
  %32 = ptrtoint ptr %assoc_rem_len to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %assoc_rem_len, align 4
  %conv60 = sub i16 %33, %11
  store i16 %conv60, ptr %assoc_rem_len, align 4
  %call61 = tail call i32 @amp_ctrl_put(ptr noundef nonnull %call)
  call void @hci_req_init(ptr noundef nonnull %req, ptr noundef %hdev) #9
  call void @hci_req_add(ptr noundef nonnull %req, i16 noundef zeroext 5131, i32 noundef %conv20, ptr noundef nonnull %call9.i.i) #9
  %call63 = call i32 @hci_req_run_skb(ptr noundef nonnull %req, ptr noundef nonnull @write_remote_amp_assoc_complete) #9
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.then24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end47 ], [ false, %if.then24 ], [ true, %do.end ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #9
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @a2mp_send_create_phy_link_rsp(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amp_write_remote_assoc(ptr noundef %hdev, i8 noundef zeroext %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_write_remote_assoc.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_write_remote_assoc, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv = zext i8 %handle to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_write_remote_assoc.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv3 = zext i8 %handle to i16
  %call4 = tail call fastcc ptr @hci_conn_hash_lookup_handle(ptr noundef %hdev, i16 noundef zeroext %conv3)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %do.body8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body8:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_write_remote_assoc.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_write_remote_assoc, %if.then20)) #9
          to label %do.end26 [label %if.then20], !srcloc !150

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %name21 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv23 = zext i8 %handle to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_write_remote_assoc.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.26, ptr noundef %name21, i32 noundef %conv23, ptr noundef nonnull %call4) #9
  br label %do.end26

do.end26:                                         ; preds = %if.then20, %do.body8
  %call27 = tail call fastcc zeroext i1 @amp_write_rem_assoc_frag(ptr noundef %hdev, ptr noundef nonnull %call4)
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amp_create_phylink(ptr noundef %hdev, ptr nocapture noundef readonly %mgr, ptr noundef %hcon) local_unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_create_phy_link, align 1
  %req = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %cp) #9
  %0 = getelementptr inbounds i8, ptr %cp, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 34)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #9
  %2 = call ptr @memset(ptr %req, i32 255, i32 64)
  %handle = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 11
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %handle, align 2
  %conv = trunc i16 %4 to i8
  %5 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %cp, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_create_phylink.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_create_phylink, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %handle, align 2
  %conv4 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_create_phylink.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.28, ptr noundef %name, ptr noundef %hcon, i32 noundef %conv4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %l2cap_conn = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 1
  %8 = ptrtoint ptr %l2cap_conn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %l2cap_conn, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %key = getelementptr inbounds %struct.hci_cp_create_phy_link, ptr %cp, i32 0, i32 3
  %key_len = getelementptr inbounds %struct.hci_cp_create_phy_link, ptr %cp, i32 0, i32 1
  %key_type = getelementptr inbounds %struct.hci_cp_create_phy_link, ptr %cp, i32 0, i32 2
  %call7 = call i32 @phylink_gen_key(ptr noundef %11, ptr noundef %key, ptr noundef %key_len, ptr noundef %key_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end26, label %do.body10

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_create_phylink.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_create_phylink, %if.then22)) #9
          to label %cleanup [label %if.then22], !srcloc !150

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_create_phylink.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end26:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @hci_req_init(ptr noundef nonnull %req, ptr noundef %hdev) #9
  call void @hci_req_add(ptr noundef nonnull %req, i16 noundef zeroext 1077, i32 noundef 35, ptr noundef nonnull %cp) #9
  %call27 = call i32 @hci_req_run(ptr noundef nonnull %req, ptr noundef nonnull @create_phylink_complete) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then22, %do.body10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %cp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_req_run(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @create_phylink_complete(ptr noundef %hdev, i8 noundef zeroext %status, i16 noundef zeroext %opcode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_phylink_complete.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_phylink_complete, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv = zext i8 %status to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_phylink_complete.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.46, ptr noundef %name, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call ptr @hci_sent_cmd_data(ptr noundef %hdev, i16 noundef zeroext 1077) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %lock = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool7.not = icmp eq i8 %status, 0
  %0 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call3, align 1
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %conv9 = zext i8 %1 to i16
  %call10 = tail call fastcc ptr @hci_conn_hash_lookup_handle(ptr noundef %hdev, i16 noundef zeroext %conv9)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then8.if.end16_crit_edge, label %if.then12

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @hci_conn_del(ptr noundef nonnull %call10) #9
  br label %if.end16

if.else:                                          ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_write_remote_assoc.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_phylink_complete, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !150

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv.i = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_write_remote_assoc.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.24, ptr noundef %name.i, i32 noundef %conv.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.else
  %conv3.i = zext i8 %1 to i16
  %call4.i = tail call fastcc ptr @hci_conn_hash_lookup_handle(ptr noundef %hdev, i16 noundef zeroext %conv3.i) #9
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %do.end.i.if.end16_crit_edge, label %do.body8.i

do.end.i.if.end16_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.body8.i:                                       ; preds = %do.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_write_remote_assoc.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_phylink_complete, %if.then20.i)) #9
          to label %do.end26.i [label %if.then20.i], !srcloc !150

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %name21.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv23.i = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_write_remote_assoc.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.26, ptr noundef %name21.i, i32 noundef %conv23.i, ptr noundef nonnull %call4.i) #9
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then20.i, %do.body8.i
  %call27.i = tail call fastcc zeroext i1 @amp_write_rem_assoc_frag(ptr noundef %hdev, ptr noundef nonnull %call4.i) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end26.i, %do.end.i.if.end16_crit_edge, %if.then12, %if.then8.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amp_accept_phylink(ptr noundef %hdev, ptr nocapture noundef readonly %mgr, ptr noundef %hcon) local_unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_accept_phy_link, align 1
  %req = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %cp) #9
  %0 = getelementptr inbounds i8, ptr %cp, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 34)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #9
  %2 = call ptr @memset(ptr %req, i32 255, i32 64)
  %handle = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 11
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %handle, align 2
  %conv = trunc i16 %4 to i8
  %5 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %cp, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_accept_phylink.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_accept_phylink, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %handle, align 2
  %conv4 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_accept_phylink.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.28, ptr noundef %name, ptr noundef %hcon, i32 noundef %conv4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %l2cap_conn = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 1
  %8 = ptrtoint ptr %l2cap_conn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %l2cap_conn, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %key = getelementptr inbounds %struct.hci_cp_accept_phy_link, ptr %cp, i32 0, i32 3
  %key_len = getelementptr inbounds %struct.hci_cp_accept_phy_link, ptr %cp, i32 0, i32 1
  %key_type = getelementptr inbounds %struct.hci_cp_accept_phy_link, ptr %cp, i32 0, i32 2
  %call7 = call i32 @phylink_gen_key(ptr noundef %11, ptr noundef %key, ptr noundef %key_len, ptr noundef %key_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end26, label %do.body10

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_accept_phylink.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_accept_phylink, %if.then22)) #9
          to label %cleanup [label %if.then22], !srcloc !150

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_accept_phylink.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end26:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @hci_req_init(ptr noundef nonnull %req, ptr noundef %hdev) #9
  call void @hci_req_add(ptr noundef nonnull %req, i16 noundef zeroext 1078, i32 noundef 35, ptr noundef nonnull %cp) #9
  %call27 = call i32 @hci_req_run(ptr noundef nonnull %req, ptr noundef nonnull @accept_phylink_complete) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then22, %do.body10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %cp) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @accept_phylink_complete(ptr noundef %hdev, i8 noundef zeroext %status, i16 noundef zeroext %opcode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @accept_phylink_complete.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@accept_phylink_complete, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv = zext i8 %status to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @accept_phylink_complete.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.46, ptr noundef %name, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool3.not = icmp eq i8 %status, 0
  br i1 %tobool3.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %call6 = tail call ptr @hci_sent_cmd_data(ptr noundef %hdev, i16 noundef zeroext 1078) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %0 = ptrtoint ptr %call6 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call6, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_write_remote_assoc.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@accept_phylink_complete, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !150

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv.i = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_write_remote_assoc.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.24, ptr noundef %name.i, i32 noundef %conv.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end9
  %conv3.i = zext i8 %1 to i16
  %call4.i = tail call fastcc ptr @hci_conn_hash_lookup_handle(ptr noundef %hdev, i16 noundef zeroext %conv3.i) #9
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %do.end.i.cleanup_crit_edge, label %do.body8.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body8.i:                                       ; preds = %do.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_write_remote_assoc.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@accept_phylink_complete, %if.then20.i)) #9
          to label %do.end26.i [label %if.then20.i], !srcloc !150

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %name21.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv23.i = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_write_remote_assoc.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.26, ptr noundef %name21.i, i32 noundef %conv23.i, ptr noundef nonnull %call4.i) #9
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then20.i, %do.body8.i
  %call27.i = tail call fastcc zeroext i1 @amp_write_rem_assoc_frag(ptr noundef %hdev, ptr noundef nonnull %call4.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end26.i, %do.end.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amp_physical_cfm(ptr noundef %bredr_hcon, ptr noundef %hs_hcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %bredr_hcon, i32 0, i32 65
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_hold.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_physical_cfm, %if.then.i)) #9
          to label %hci_dev_hold.exit [label %if.then.i], !srcloc !150

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_hold.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.61, ptr noundef %name.i, i32 noundef %3) #9
  br label %hci_dev_hold.exit

hci_dev_hold.exit:                                ; preds = %if.then.i, %entry
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204
  %call5.i = tail call ptr @get_device(ptr noundef %dev4.i) #9
  %amp_mgr = getelementptr inbounds %struct.hci_conn, ptr %hs_hcon, i32 0, i32 68
  %4 = ptrtoint ptr %amp_mgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %amp_mgr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_physical_cfm.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_physical_cfm, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %hci_dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_physical_cfm.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.32, ptr noundef %bredr_hcon, ptr noundef %hs_hcon, ptr noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %hci_dev_hold.exit
  %tobool4.not = icmp eq ptr %1, null
  %tobool5.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %lor.lhs.false6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false6:                                   ; preds = %do.end
  %bredr_chan7 = getelementptr inbounds %struct.amp_mgr, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bredr_chan7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bredr_chan7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end10

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %lock.i = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 86
  %nesting.i = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nesting.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %nesting.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %nesting.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef %9) #9
  %flags = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 40
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #9
  %remote_id = getelementptr inbounds %struct.hci_conn, ptr %hs_hcon, i32 0, i32 54
  %10 = ptrtoint ptr %remote_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %remote_id, align 2
  %remote_amp_id = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 41
  %12 = ptrtoint ptr %remote_amp_id to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %remote_amp_id, align 4
  %hdev12 = getelementptr inbounds %struct.hci_conn, ptr %hs_hcon, i32 0, i32 65
  %13 = ptrtoint ptr %hdev12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev12, align 4
  %id = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %id, align 8
  %conv = trunc i16 %16 to i8
  %local_amp_id = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 42
  %17 = ptrtoint ptr %local_amp_id to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %local_amp_id, align 1
  %hs_hcon13 = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %hs_hcon13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hs_hcon, ptr %hs_hcon13, align 4
  %19 = load ptr, ptr %hdev12, align 4
  %block_mtu = getelementptr inbounds %struct.hci_dev, ptr %19, i32 0, i32 130
  %20 = ptrtoint ptr %block_mtu to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %block_mtu, align 2
  %conv15 = zext i16 %21 to i32
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %7, align 4
  %mtu = getelementptr inbounds %struct.l2cap_conn, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv15, ptr %mtu, align 4
  tail call void @__l2cap_physical_cfm(ptr noundef nonnull %7, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_physical_cfm, %if.then.i40)) #9
          to label %hci_dev_put.exit [label %if.then.i40], !srcloc !150

if.then.i40:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %name.i37 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %kref.i38 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i39 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i38, i32 noundef 4) #9
  %25 = ptrtoint ptr %kref.i38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %kref.i38, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.61, ptr noundef %name.i37, i32 noundef %26) #9
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i40, %if.end10
  tail call void @put_device(ptr noundef %dev4.i) #9
  br label %cleanup

cleanup:                                          ; preds = %hci_dev_put.exit, %lor.lhs.false6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__l2cap_physical_cfm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amp_create_logical_link(ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_create_accept_logical_link, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hs_hcon1 = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %hs_hcon1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hs_hcon1, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %cp) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_create_logical_link.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_create_logical_link, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dst = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_create_logical_link.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.34, ptr noundef %chan, ptr noundef %1, ptr noundef %dst) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %6 = ptrtoint ptr %hs_hcon1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hs_hcon1, align 4
  %hdev8 = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %hdev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev8, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_hold.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_create_logical_link, %if.then.i)) #9
          to label %hci_dev_hold.exit [label %if.then.i], !srcloc !150

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_hold.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.61, ptr noundef %name.i, i32 noundef %11) #9
  br label %hci_dev_hold.exit

hci_dev_hold.exit:                                ; preds = %if.then.i, %if.end6
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 204
  %call5.i = tail call ptr @get_device(ptr noundef %dev4.i) #9
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %hci_dev_hold.exit.cleanup_crit_edge, label %if.end12

hci_dev_hold.exit.cleanup_crit_edge:              ; preds = %hci_dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %hci_dev_hold.exit
  %handle = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %handle, align 2
  %conv = trunc i16 %13 to i8
  %14 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %cp, align 1
  %local_id = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 61
  %15 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %local_id, align 2
  %tx_flow_spec = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, ptr %cp, i32 0, i32 1
  %17 = ptrtoint ptr %tx_flow_spec to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tx_flow_spec, align 1
  %local_stype = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 62
  %18 = ptrtoint ptr %local_stype to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %local_stype, align 1
  %stype = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, ptr %cp, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %stype to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %stype, align 1
  %local_msdu = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 63
  %21 = ptrtoint ptr %local_msdu to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %local_msdu, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %msdu = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, ptr %cp, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %msdu to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %msdu, align 1
  %local_sdu_itime = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 64
  %25 = ptrtoint ptr %local_sdu_itime to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %local_sdu_itime, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %sdu_itime = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, ptr %cp, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %sdu_itime to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %sdu_itime, align 1
  %local_acc_lat = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 65
  %29 = ptrtoint ptr %local_acc_lat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %local_acc_lat, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %acc_lat = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, ptr %cp, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %acc_lat to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %acc_lat, align 1
  %local_flush_to = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 66
  %33 = ptrtoint ptr %local_flush_to to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %local_flush_to, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %flush_to = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, ptr %cp, i32 0, i32 1, i32 5
  %36 = ptrtoint ptr %flush_to to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %flush_to, align 1
  %remote_id = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 67
  %37 = ptrtoint ptr %remote_id to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %remote_id, align 4
  %rx_flow_spec = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, ptr %cp, i32 0, i32 2
  %39 = ptrtoint ptr %rx_flow_spec to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %rx_flow_spec, align 1
  %remote_stype = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 68
  %40 = ptrtoint ptr %remote_stype to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %remote_stype, align 1
  %stype20 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, ptr %cp, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %stype20 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %stype20, align 1
  %remote_msdu = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 69
  %43 = ptrtoint ptr %remote_msdu to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %remote_msdu, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %msdu22 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, ptr %cp, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %msdu22 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %msdu22, align 1
  %remote_sdu_itime = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 70
  %47 = ptrtoint ptr %remote_sdu_itime to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %remote_sdu_itime, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %sdu_itime24 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, ptr %cp, i32 0, i32 2, i32 3
  %50 = ptrtoint ptr %sdu_itime24 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %sdu_itime24, align 1
  %remote_acc_lat = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 71
  %51 = ptrtoint ptr %remote_acc_lat to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %remote_acc_lat, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %acc_lat26 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, ptr %cp, i32 0, i32 2, i32 4
  %54 = ptrtoint ptr %acc_lat26 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %acc_lat26, align 1
  %remote_flush_to = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 72
  %55 = ptrtoint ptr %remote_flush_to to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %remote_flush_to, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %flush_to28 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, ptr %cp, i32 0, i32 2, i32 5
  %58 = ptrtoint ptr %flush_to28 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %57, ptr %flush_to28, align 1
  %out = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 16
  %59 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %out, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool29.not = icmp eq i8 %60, 0
  %. = select i1 %tobool29.not, i16 1081, i16 1080
  %call32 = call i32 @hci_send_cmd(ptr noundef nonnull %9, i16 noundef zeroext %., i32 noundef 33, ptr noundef nonnull %cp) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_create_logical_link, %if.then.i60)) #9
          to label %hci_dev_put.exit [label %if.then.i60], !srcloc !150

if.then.i60:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %name.i57 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  %kref.i58 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i59 = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i58, i32 noundef 4) #9
  %61 = ptrtoint ptr %kref.i58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %kref.i58, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.61, ptr noundef %name.i57, i32 noundef %62) #9
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i60, %if.end12
  call void @put_device(ptr noundef %dev4.i) #9
  br label %cleanup

cleanup:                                          ; preds = %hci_dev_put.exit, %hci_dev_hold.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %cp) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_send_cmd(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amp_disconnect_logical_link(ptr noundef %hchan) local_unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_disconn_logical_link, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conn = getelementptr inbounds %struct.hci_chan, ptr %hchan, i32 0, i32 2
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cp) #9
  %state = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not = icmp eq i16 %3, 1
  br i1 %cmp.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_disconnect_logical_link.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_disconnect_logical_link, %if.then4)) #9
          to label %cleanup [label %if.then4], !srcloc !150

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_disconnect_logical_link.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.36, ptr noundef %hchan) #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %handle = getelementptr inbounds %struct.hci_chan, ptr %hchan, i32 0, i32 1
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %handle, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %cp to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %cp, align 2
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 4
  %call6 = call i32 @hci_send_cmd(ptr noundef %9, i16 noundef zeroext 1082, i32 noundef 2, ptr noundef nonnull %cp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %do.body
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cp) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amp_destroy_logical_link(ptr noundef %hchan, i8 noundef zeroext %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_destroy_logical_link.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_destroy_logical_link, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_destroy_logical_link.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.38, ptr noundef %hchan) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @hci_chan_del(ptr noundef %hchan) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_chan_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @a2mp_send_create_phy_link_req(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_remote_amp_assoc_complete(ptr noundef %hdev, i8 noundef zeroext %status, i16 noundef zeroext %opcode, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_remote_amp_assoc_complete.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_remote_amp_assoc_complete, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %phy_handle = getelementptr inbounds %struct.hci_rp_write_remote_amp_assoc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %phy_handle to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %phy_handle, align 1
  %conv4 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_remote_amp_assoc_complete.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.57, ptr noundef %name, i32 noundef %conv, i32 noundef %conv4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %phy_handle9 = getelementptr inbounds %struct.hci_rp_write_remote_amp_assoc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %phy_handle9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %phy_handle9, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_write_rem_assoc_continue.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_remote_amp_assoc_complete, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !150

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_write_rem_assoc_continue.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.24, ptr noundef %name.i, i32 noundef %conv.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end8
  %conv3.i = zext i8 %9 to i16
  %call4.i = tail call fastcc ptr @hci_conn_hash_lookup_handle(ptr noundef %hdev, i16 noundef zeroext %conv3.i) #9
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %do.end.i.cleanup_crit_edge, label %if.end7.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %do.end.i
  %call8.i = tail call fastcc zeroext i1 @amp_write_rem_assoc_frag(ptr noundef %hdev, ptr noundef nonnull %call4.i) #9
  br i1 %call8.i, label %if.then9.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @a2mp_send_create_phy_link_rsp(ptr noundef %hdev, i8 noundef zeroext 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then9.i, %if.end7.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_sent_cmd_data(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_conn_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !34, !36, !38, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !129, !130, !132, !133, !135, !136, !137, !139}
!llvm.named.register.sp = !{!140}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/amp.c", i32 19, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @amp_ctrl_get.__UNIQUE_ID_ddebug476, !1, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/amp.c", i32 37, i32 2}
!8 = !{ptr @amp_ctrl_put.__UNIQUE_ID_ddebug478, !7, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/bluetooth/amp.c", i32 58, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @amp_ctrl_add.__UNIQUE_ID_ddebug479, !10, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/bluetooth/amp.c", i32 67, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @amp_ctrl_list_flush.__UNIQUE_ID_ddebug480, !14, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/bluetooth/amp.c", i32 81, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @amp_ctrl_lookup.__UNIQUE_ID_ddebug481, !18, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/bluetooth/amp.c", i32 116, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @phylink_add.__UNIQUE_ID_ddebug482, !22, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/bluetooth/amp.c", i32 178, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @phylink_gen_key.__UNIQUE_ID_ddebug485, !26, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/bluetooth/amp.c", i32 182, i32 3}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/bluetooth/amp.c", i32 191, i32 3}
!33 = !{ptr @phylink_gen_key.__UNIQUE_ID_ddebug486, !32, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/bluetooth/amp.c", i32 200, i32 51}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/bluetooth/amp.c", i32 202, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/bluetooth/amp.c", i32 207, i32 3}
!40 = !{ptr @phylink_gen_key.__UNIQUE_ID_ddebug487, !39, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/bluetooth/amp.c", i32 213, i32 54}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/bluetooth/amp.c", i32 260, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @amp_read_loc_assoc_frag.__UNIQUE_ID_ddebug490, !44, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/bluetooth/amp.c", i32 389, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @amp_write_rem_assoc_continue.__UNIQUE_ID_ddebug496, !48, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/bluetooth/amp.c", i32 404, i32 2}
!53 = !{ptr @amp_write_remote_assoc.__UNIQUE_ID_ddebug497, !52, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/bluetooth/amp.c", i32 410, i32 2}
!56 = !{ptr @amp_write_remote_assoc.__UNIQUE_ID_ddebug498, !55, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/bluetooth/amp.c", i32 449, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @amp_create_phylink.__UNIQUE_ID_ddebug500, !58, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/bluetooth/amp.c", i32 454, i32 3}
!63 = !{ptr @amp_create_phylink.__UNIQUE_ID_ddebug501, !62, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/bluetooth/amp.c", i32 488, i32 2}
!66 = !{ptr @amp_accept_phylink.__UNIQUE_ID_ddebug503, !65, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!67 = !{ptr @amp_accept_phylink.__UNIQUE_ID_ddebug504, !68, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!68 = !{!"../net/bluetooth/amp.c", i32 493, i32 3}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/bluetooth/amp.c", i32 508, i32 2}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @amp_physical_cfm.__UNIQUE_ID_ddebug505, !70, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/bluetooth/amp.c", i32 536, i32 2}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @amp_create_logical_link.__UNIQUE_ID_ddebug506, !74, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/bluetooth/amp.c", i32 578, i32 3}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @amp_disconnect_logical_link.__UNIQUE_ID_ddebug507, !78, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/bluetooth/amp.c", i32 588, i32 2}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @amp_destroy_logical_link.__UNIQUE_ID_ddebug508, !82, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/bluetooth/amp.c", i32 29, i32 2}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @amp_ctrl_destroy.__UNIQUE_ID_ddebug477, !86, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/bluetooth/amp.c", i32 137, i32 27}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/bluetooth/amp.c", i32 139, i32 3}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @hmac_sha256.__UNIQUE_ID_ddebug483, !92, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/bluetooth/amp.c", i32 145, i32 3}
!97 = !{ptr @hmac_sha256.__UNIQUE_ID_ddebug484, !96, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/bluetooth/amp.c", i32 223, i32 2}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @read_local_amp_assoc_complete.__UNIQUE_ID_ddebug488, !99, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/bluetooth/amp.c", i32 232, i32 3}
!104 = !{ptr @read_local_amp_assoc_complete.__UNIQUE_ID_ddebug489, !103, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/net/bluetooth/hci_core.h", i32 1014, i32 2}
!107 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!111 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!115 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/bluetooth/amp.c", i32 346, i32 3}
!118 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @amp_write_rem_assoc_frag.__UNIQUE_ID_ddebug492, !117, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/bluetooth/amp.c", i32 363, i32 2}
!122 = !{ptr @amp_write_rem_assoc_frag.__UNIQUE_ID_ddebug495, !121, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/bluetooth/amp.c", i32 322, i32 2}
!125 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @write_remote_amp_assoc_complete.__UNIQUE_ID_ddebug491, !124, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/bluetooth/amp.c", i32 420, i32 2}
!129 = !{ptr @create_phylink_complete.__UNIQUE_ID_ddebug499, !128, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/bluetooth/amp.c", i32 468, i32 2}
!132 = !{ptr @accept_phylink_complete.__UNIQUE_ID_ddebug502, !131, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/net/bluetooth/hci_core.h", i32 1232, i32 2}
!135 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @hci_dev_hold.__UNIQUE_ID_ddebug474, !134, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/net/bluetooth/hci_core.h", i32 1224, i32 2}
!139 = !{ptr @hci_dev_put.__UNIQUE_ID_ddebug473, !138, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!140 = !{!"sp"}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i64 2148792508, i64 2148792513, i64 2148792526, i64 2148792570, i64 2148792604, i64 2148792625}
!151 = !{i64 2148236833, i64 2148236865, i64 2148236894, i64 2148236928, i64 2148236959, i64 2148236982}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{!"branch_weights", i32 2000, i32 1}
!154 = !{i64 2148324834}
!155 = !{i64 2148239298, i64 2148239330, i64 2148239359, i64 2148239393, i64 2148239424, i64 2148239447}
!156 = !{i64 2150442522}
!157 = !{i64 2149567951}
!158 = !{i64 2149568217}
!159 = !{i8 0, i8 2}
