; ModuleID = '/llk/IR_all_yes/net/bluetooth/hci_conn.c_pt.bc'
source_filename = "../net/bluetooth/hci_conn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hci_get_route\22, \22a\22\09"
module asm "\09.weak\09__crc_hci_get_route\09\09\09\09"
module asm "\09.long\09__crc_hci_get_route\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_get_route:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_get_route\22\09\09\09\09\09"
module asm "__kstrtabns_hci_get_route:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hci_conn_security\22, \22a\22\09"
module asm "\09.weak\09__crc_hci_conn_security\09\09\09\09"
module asm "\09.long\09__crc_hci_conn_security\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_conn_security:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_conn_security\22\09\09\09\09\09"
module asm "__kstrtabns_hci_conn_security:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hci_conn_check_secure\22, \22a\22\09"
module asm "\09.weak\09__crc_hci_conn_check_secure\09\09\09\09"
module asm "\09.long\09__crc_hci_conn_check_secure\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_conn_check_secure:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_conn_check_secure\22\09\09\09\09\09"
module asm "__kstrtabns_hci_conn_check_secure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hci_conn_switch_role\22, \22a\22\09"
module asm "\09.weak\09__crc_hci_conn_switch_role\09\09\09\09"
module asm "\09.long\09__crc_hci_conn_switch_role\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_conn_switch_role:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_conn_switch_role\22\09\09\09\09\09"
module asm "__kstrtabns_hci_conn_switch_role:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sco_param = type { i16, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hci_cp_read_clock_offset = type { i16 }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.sk_buff_head = type { %union.anon, i32, %struct.spinlock }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hci_cp_enhanced_setup_sync_conn = type <{ i16, i32, i32, %struct.hci_coding_format, %struct.hci_coding_format, i16, i16, i32, i32, %struct.hci_coding_format, %struct.hci_coding_format, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8 }>
%struct.hci_coding_format = type <{ i8, i16, i16 }>
%struct.hci_cp_setup_sync_conn = type <{ i16, i32, i32, i16, i16, i8, i16 }>
%struct.hci_cp_le_conn_update = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.hci_conn_params = type { %struct.list_head, %struct.list_head, %struct.bdaddr_t, i8, i16, i16, i16, i16, i32, ptr, i8, [1 x i32], i8 }
%struct.hci_cp_le_start_enc = type <{ i16, i64, i16, [16 x i8] }>
%struct.hci_cp_add_sco = type { i16, i16 }
%struct.hci_cb = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_cp_sniff_subrate = type { i16, i16, i16, i16 }
%struct.hci_cp_sniff_mode = type { i16, i16, i16, i16, i16 }
%struct.hci_cp_le_set_ext_adv_enable = type { i8, i8, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.smp_irk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, %struct.bdaddr_t, i8, [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.hci_cp_create_conn = type <{ %struct.bdaddr_t, i16, i8, i8, i16, i8 }>
%struct.inquiry_entry = type { %struct.list_head, %struct.list_head, i32, i32, %struct.inquiry_data }
%struct.inquiry_data = type { %struct.bdaddr_t, i8, i8, i8, [3 x i8], i16, i8, i8 }
%struct.hci_cp_exit_sniff_mode = type { i16 }
%struct.hci_cp_set_conn_encrypt = type <{ i16, i8 }>
%struct.hci_cp_auth_requested = type { i16 }
%struct.hci_cp_switch_role = type { %struct.bdaddr_t, i8 }
%struct.hci_conn_list_req = type { i16, i16, [0 x %struct.hci_conn_info] }
%struct.hci_conn_info = type { i16, %struct.bdaddr_t, i8, i8, i16, i32 }
%struct.hci_conn_info_req = type { %struct.bdaddr_t, i8, [0 x %struct.hci_conn_info] }
%struct.hci_auth_info_req = type { %struct.bdaddr_t, i8 }
%struct.hci_chan = type { %struct.list_head, i16, ptr, %struct.sk_buff_head, i32, i8, i8 }

@hci_disconnect.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bluetooth\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hci_disconnect\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/bluetooth/hci_conn.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hcon %p\0A\00", [23 x i8] zeroinitializer }, align 32
@hci_le_start_enc.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hci_le_start_enc\00", [47 x i8] zeroinitializer }, align 32
@hci_sco_setup.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci_sco_setup\00", [18 x i8] zeroinitializer }, align 32
@hci_conn_add.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hci_conn_add\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s dst %pMR\0A\00", [19 x i8] zeroinitializer }, align 32
@hci_conn_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&conn->disc_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@hci_conn_add.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&conn->disc_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@hci_conn_add.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&conn->auto_accept_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@hci_conn_add.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&conn->auto_accept_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@hci_conn_add.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&conn->idle_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@hci_conn_add.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&conn->idle_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@hci_conn_add.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&conn->le_conn_timeout)->work)\00", [45 x i8] zeroinitializer }, align 32
@hci_conn_add.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&conn->le_conn_timeout)->timer\00", [63 x i8] zeroinitializer }, align 32
@hci_conn_add.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&conn->le_scan_cleanup)\00", [54 x i8] zeroinitializer }, align 32
@hci_conn_del.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hci_conn_del\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s hcon %p handle %d\0A\00", [42 x i8] zeroinitializer }, align 32
@hci_get_route.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci_get_route\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%pMR -> %pMR\0A\00", [18 x i8] zeroinitializer }, align 32
@hci_dev_list_lock = external dso_local global %struct.rwlock_t, align 4
@hci_dev_list = external dso_local global %struct.list_head, align 4
@__kstrtab_hci_get_route = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_get_route = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_get_route = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_get_route to i32), ptr @__kstrtab_hci_get_route, ptr @__kstrtabns_hci_get_route }, section "___ksymtab+hci_get_route", align 4
@hci_connect_le_scan.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 1, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hci_connect_le_scan\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"requesting refresh of dst_addr\0A\00", [32 x i8] zeroinitializer }, align 32
@hci_conn_check_link_mode.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.3, i8 1, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hci_conn_check_link_mode\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Invalid security: Missing AES-CCM usage\0A\00", [51 x i8] zeroinitializer }, align 32
@hci_conn_security.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.3, i8 1, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hci_conn_security\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_hci_conn_security = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_conn_security = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_conn_security = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_conn_security to i32), ptr @__kstrtab_hci_conn_security, ptr @__kstrtabns_hci_conn_security }, section "___ksymtab+hci_conn_security", align 4
@hci_conn_check_secure.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.3, i8 1, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hci_conn_check_secure\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_hci_conn_check_secure = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_conn_check_secure = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_conn_check_secure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_conn_check_secure to i32), ptr @__kstrtab_hci_conn_check_secure, ptr @__kstrtabns_hci_conn_check_secure }, section "___ksymtab+hci_conn_check_secure", align 4
@hci_conn_switch_role.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.3, i8 1, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hci_conn_switch_role\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_hci_conn_switch_role = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_conn_switch_role = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_conn_switch_role = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_conn_switch_role to i32), ptr @__kstrtab_hci_conn_switch_role, ptr @__kstrtabns_hci_conn_switch_role }, section "___ksymtab+hci_conn_switch_role", align 4
@hci_conn_enter_active_mode.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hci_conn_enter_active_mode\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hcon %p mode %d\0A\00", [47 x i8] zeroinitializer }, align 32
@hci_conn_hash_flush.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hci_conn_hash_flush\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdev %s\0A\00", [23 x i8] zeroinitializer }, align 32
@hci_conn_check_pending.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.39, i8 1, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hci_conn_check_pending\00", [41 x i8] zeroinitializer }, align 32
@hci_chan_create.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 1, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hci_chan_create\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s hcon %p\0A\00", [20 x i8] zeroinitializer }, align 32
@hci_chan_create.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.43, i8 1, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Refusing to create new hci_chan\0A\00", [63 x i8] zeroinitializer }, align 32
@hci_chan_del.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 1, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hci_chan_del\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s hcon %p chan %p\0A\00", [44 x i8] zeroinitializer }, align 32
@hci_chan_list_flush.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.3, i8 1, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hci_chan_list_flush\00", [44 x i8] zeroinitializer }, align 32
@hci_chan_lookup_handle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@hci_enhanced_setup_sync_conn.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hci_enhanced_setup_sync_conn\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: hcon %p\0A\00", [19 x i8] zeroinitializer }, align 32
@esco_param_msbc = internal constant { [2 x %struct.sco_param], [20 x i8] } { [2 x %struct.sco_param] [%struct.sco_param { i16 896, i16 13, i8 2 }, %struct.sco_param { i16 968, i16 8, i8 2 }], [20 x i8] zeroinitializer }, align 32
@esco_param_cvsd = internal constant { [5 x %struct.sco_param], [34 x i8] } { [5 x %struct.sco_param] [%struct.sco_param { i16 896, i16 10, i8 1 }, %struct.sco_param { i16 896, i16 7, i8 1 }, %struct.sco_param { i16 968, i16 7, i8 1 }, %struct.sco_param { i16 964, i16 -1, i8 1 }, %struct.sco_param { i16 961, i16 -1, i8 1 }], [34 x i8] zeroinitializer }, align 32
@sco_param_cvsd = internal constant { [2 x %struct.sco_param], [20 x i8] } { [2 x %struct.sco_param] [%struct.sco_param { i16 964, i16 -1, i8 -1 }, %struct.sco_param { i16 961, i16 -1, i8 -1 }], [20 x i8] zeroinitializer }, align 32
@find_next_esco_param.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"find_next_esco_param\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"hcon %p skipped attempt %d, eSCO 2M not supported\0A\00", [45 x i8] zeroinitializer }, align 32
@hci_setup_sync_conn.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.49, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hci_setup_sync_conn\00", [44 x i8] zeroinitializer }, align 32
@hci_add_sco.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.3, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hci_add_sco\00", [20 x i8] zeroinitializer }, align 32
@hci_cb_list_lock = external dso_local global %struct.mutex, align 4
@hci_cb_list = external dso_local global %struct.list_head, align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@hci_conn_timeout.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hci_conn_timeout\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hcon %p state %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BT_CONNECTED\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BT_OPEN\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BT_BOUND\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BT_LISTEN\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BT_CONNECT\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BT_CONNECT2\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BT_CONFIG\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BT_DISCONN\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BT_CLOSED\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid state\00", [18 x i8] zeroinitializer }, align 32
@hci_connect_le_scan_remove.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.42, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hci_connect_le_scan_remove\00", [37 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@hci_conn_idle.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.37, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci_conn_idle\00", [18 x i8] zeroinitializer }, align 32
@le_conn_timeout.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"le_conn_timeout\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@le_scan_cleanup.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.42, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"le_scan_cleanup\00", [16 x i8] zeroinitializer }, align 32
@le_scan_cleanup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hci_dev_hold.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.73, ptr @.str.74, i8 1, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hci_dev_hold\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/net/bluetooth/hci_core.h\00", [63 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s orig refcnt %d\0A\00", [45 x i8] zeroinitializer }, align 32
@hci_conn_drop.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.73, ptr @.str.76, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci_conn_drop\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hcon %p orig refcnt %d\0A\00", [40 x i8] zeroinitializer }, align 32
@hci_lookup_le_connect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hci_conn_hash_lookup_le.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hci_conn_hold.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.73, ptr @.str.76, i8 1, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci_conn_hold\00", [18 x i8] zeroinitializer }, align 32
@hci_connect_le_sync.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 0, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hci_connect_le_sync\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: conn %p\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: request failed to create LE connection: err %d\0A\00", [44 x i8] zeroinitializer }, align 32
@hci_explicit_conn_params_set.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 1, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hci_explicit_conn_params_set\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"addr %pMR (type %u) auto_connect %u\0A\00", [59 x i8] zeroinitializer }, align 32
@hci_conn_hash_lookup_ba.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hci_acl_create_connection.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.3, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hci_acl_create_connection\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hci_conn_auth.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.3, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci_conn_auth\00", [18 x i8] zeroinitializer }, align 32
@hci_conn_encrypt.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.3, i8 1, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hci_conn_encrypt\00", [47 x i8] zeroinitializer }, align 32
@hci_conn_hash_lookup_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hci_dev_put.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.73, ptr @.str.74, i8 1, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hci_dev_put\00", [20 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.92 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@switch.table.hci_conn_timeout = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 7]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 128]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 128]
@__sancov_gen_cov_switch_values.97 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 128, i64 129]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 128]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 128, i64 129]
@__sancov_gen_cov_switch_values.101 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 128, i64 129]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 9]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 9]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.108 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 4, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 128]
@__sancov_gen_cov_switch_values.110 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 258, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 532, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 552, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 684, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 738, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 739, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 740, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 741, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 742, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 768, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 816, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1108, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1215, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1240, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1307, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1384, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1403, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1424, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1450, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1465, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1604, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1607, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1629, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1648, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1675, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 316, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [16 x i8] c"esco_param_msbc\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 57, i32 31 }
@___asan_gen_.267 = private unnamed_addr constant [16 x i8] c"esco_param_cvsd\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 44, i32 31 }
@___asan_gen_.270 = private unnamed_addr constant [15 x i8] c"sco_param_cvsd\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 52, i32 31 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 303, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 436, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 283, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1984, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 571, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 239, i32 10 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 241, i32 10 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 243, i32 10 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 245, i32 10 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 247, i32 10 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 249, i32 10 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 251, i32 10 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 253, i32 10 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 255, i32 10 }
@___asan_gen_.325 = private unnamed_addr constant [37 x i8] c"../include/net/bluetooth/bluetooth.h\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 258, i32 9 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 178, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 602, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 662, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 154, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1232, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1188, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1180, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 940, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 925, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1070, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 204, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1255, i32 2 }
@___asan_gen_.382 = private constant [28 x i8] c"../net/bluetooth/hci_conn.c\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1292, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 230, i32 6 }
@___asan_gen_.388 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 214, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 156, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [36 x i8] c"../include/net/bluetooth/hci_core.h\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1224, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 695, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 723, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [30 x i8] c"switch.table.hci_conn_timeout\00", align 1
@llvm.compiler.used = appending global [103 x ptr] [ptr @__ksymtab_hci_conn_check_secure, ptr @__ksymtab_hci_conn_security, ptr @__ksymtab_hci_conn_switch_role, ptr @__ksymtab_hci_get_route, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @hci_conn_add.__key, ptr @.str.8, ptr @hci_conn_add.__key.9, ptr @.str.10, ptr @hci_conn_add.__key.11, ptr @.str.12, ptr @hci_conn_add.__key.13, ptr @.str.14, ptr @hci_conn_add.__key.15, ptr @.str.16, ptr @hci_conn_add.__key.17, ptr @.str.18, ptr @hci_conn_add.__key.19, ptr @.str.20, ptr @hci_conn_add.__key.21, ptr @.str.22, ptr @hci_conn_add.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @esco_param_msbc, ptr @esco_param_cvsd, ptr @sco_param_cvsd, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @skb_queue_head_init.__key, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @switch.table.hci_conn_timeout], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_conn_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_conn_add.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_conn_add.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_conn_add.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_conn_add.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_conn_add.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_conn_add.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_conn_add.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_conn_add.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esco_param_msbc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esco_param_cvsd to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sco_param_cvsd to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hci_conn_timeout to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_disconnect(ptr noundef %conn, i8 noundef zeroext %reason) local_unnamed_addr #0 align 64 {
entry:
  %clkoff_cp = alloca %struct.hci_cp_read_clock_offset, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_disconnect.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_disconnect, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_disconnect.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.3, ptr noundef %conn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 14
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end19_crit_edge

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %do.end
  %role = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 15
  %2 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5 = icmp eq i8 %3, 0
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true7:                                   ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 12
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %state, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %land.lhs.true7.if.end19_crit_edge [
    i16 1, label %land.lhs.true7.if.then15_crit_edge
    i16 7, label %land.lhs.true7.if.then15_crit_edge29
  ]

land.lhs.true7.if.then15_crit_edge29:             ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

land.lhs.true7.if.then15_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

land.lhs.true7.if.end19_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true7.if.then15_crit_edge, %land.lhs.true7.if.then15_crit_edge29
  %hdev16 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %7 = ptrtoint ptr %hdev16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev16, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %clkoff_cp) #11
  %handle = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 11
  %9 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %handle, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %12 = ptrtoint ptr %clkoff_cp to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %clkoff_cp, align 2
  %call18 = call i32 @hci_send_cmd(ptr noundef %8, i16 noundef zeroext 1055, i32 noundef 2, ptr noundef nonnull %clkoff_cp) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %clkoff_cp) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true7.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %do.end.if.end19_crit_edge
  %call20 = call i32 @hci_abort_conn(ptr noundef %conn, i8 noundef zeroext %reason) #11
  ret i32 %call20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_send_cmd(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_abort_conn(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hci_setup_sync(ptr noundef %conn, i16 noundef zeroext %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %arrayidx = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 27, i32 29
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc zeroext i1 @hci_enhanced_setup_sync_conn(ptr noundef %conn, i16 noundef zeroext %handle)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call fastcc zeroext i1 @hci_setup_sync_conn(ptr noundef %conn, i16 noundef zeroext %handle)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %call, %if.then ], [ %call1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hci_enhanced_setup_sync_conn(ptr noundef %conn, i16 noundef zeroext %handle) unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_enhanced_setup_sync_conn, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  call void @llvm.lifetime.start.p0(i64 59, ptr nonnull %cp) #11
  %2 = call ptr @memset(ptr %cp, i32 255, i32 59)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_enhanced_setup_sync_conn.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_enhanced_setup_sync_conn, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_enhanced_setup_sync_conn.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.49, ptr noundef %name, ptr noundef %conn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %codec = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 70
  %data_path = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 70, i32 3
  %3 = ptrtoint ptr %data_path to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data_path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %do.end.if.end8_crit_edge, label %if.then5

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @hci_req_configure_datapath(ptr noundef %1, ptr noundef %codec) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.end.if.end8_crit_edge
  %state = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 5, ptr %state, align 4
  %out = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 16
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %out, align 1
  %attempt = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 17
  %7 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %attempt, align 2
  %inc = add i8 %8, 1
  store i8 %inc, ptr %attempt, align 2
  %9 = getelementptr inbounds i8, ptr %cp, i32 10
  %10 = call ptr @memset(ptr %9, i32 0, i32 49)
  %11 = tail call i16 @llvm.bswap.i16(i16 %handle)
  %12 = ptrtoint ptr %cp to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %cp, align 2
  %tx_bandwidth = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 1
  %13 = ptrtoint ptr %tx_bandwidth to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 1075773440, ptr %tx_bandwidth, align 2
  %rx_bandwidth = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 2
  %14 = ptrtoint ptr %rx_bandwidth to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 1075773440, ptr %rx_bandwidth, align 2
  %15 = ptrtoint ptr %codec to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %codec, align 8
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %16, label %if.end8.cleanup_crit_edge [
    i8 5, label %sw.bb
    i8 3, label %sw.bb24
    i8 2, label %sw.bb58
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  %link.i = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 69
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc)
  %cmp.not31.i = icmp ugt i8 %inc, 2
  br i1 %cmp.not31.i, label %sw.bb.cleanup_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %18 = phi i8 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %inc, %sw.bb.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link.i, align 4
  %arrayidx2.i = getelementptr %struct.hci_conn, ptr %20, i32 0, i32 19, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx2.i, align 1
  %23 = and i8 %22, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.i.if.end13_crit_edge

for.body.i.if.end13_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

lor.lhs.false.i:                                  ; preds = %for.body.i
  %conv32.i = zext i8 %18 to i32
  %sub.i = add nsw i32 %conv32.i, -1
  %arrayidx6.i = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %sub.i
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx6.i, align 2
  %26 = and i16 %25, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool9.not.i = icmp eq i16 %26, 0
  br i1 %tobool9.not.i, label %do.body.i, label %lor.lhs.false.i.if.end13_crit_edge

lor.lhs.false.i.if.end13_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

do.body.i:                                        ; preds = %lor.lhs.false.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_next_esco_param.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_enhanced_setup_sync_conn, %if.then13.i)) #11
          to label %for.inc.i [label %if.then13.i], !srcloc !229

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %attempt, align 2
  %conv15.i = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_next_esco_param.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.51, ptr noundef %conn, i32 noundef %conv15.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then13.i, %do.body.i
  %29 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %attempt, align 2
  %inc.i = add i8 %30, 1
  store i8 %inc.i, ptr %attempt, align 2
  %cmp.not.i = icmp ugt i8 %inc.i, 2
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false.i.if.end13_crit_edge, %for.body.i.if.end13_crit_edge
  %31 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %attempt, align 2
  %conv15 = zext i8 %32 to i32
  %sub = add nsw i32 %conv15, -1
  %arrayidx = getelementptr [2 x %struct.sco_param], ptr @esco_param_msbc, i32 0, i32 %sub
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end8
  %link.i143 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 69
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc)
  %cmp.not31.i146 = icmp ugt i8 %inc, 2
  br i1 %cmp.not31.i146, label %sw.bb24.cleanup_crit_edge, label %sw.bb24.for.body.i150_crit_edge

sw.bb24.for.body.i150_crit_edge:                  ; preds = %sw.bb24
  br label %for.body.i150

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i150:                                    ; preds = %for.inc.i161.for.body.i150_crit_edge, %sw.bb24.for.body.i150_crit_edge
  %33 = phi i8 [ %inc.i158, %for.inc.i161.for.body.i150_crit_edge ], [ %inc, %sw.bb24.for.body.i150_crit_edge ]
  %34 = ptrtoint ptr %link.i143 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link.i143, align 4
  %arrayidx2.i148 = getelementptr %struct.hci_conn, ptr %35, i32 0, i32 19, i32 0, i32 5
  %36 = ptrtoint ptr %arrayidx2.i148 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx2.i148, align 1
  %38 = and i8 %37, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i149 = icmp eq i8 %38, 0
  br i1 %tobool.not.i149, label %lor.lhs.false.i154, label %for.body.i150.if.end27_crit_edge

for.body.i150.if.end27_crit_edge:                 ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

lor.lhs.false.i154:                               ; preds = %for.body.i150
  %conv32.i147 = zext i8 %33 to i32
  %sub.i151 = add nsw i32 %conv32.i147, -1
  %arrayidx6.i152 = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %sub.i151
  %39 = ptrtoint ptr %arrayidx6.i152 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx6.i152, align 2
  %41 = and i16 %40, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool9.not.i153 = icmp eq i16 %41, 0
  br i1 %tobool9.not.i153, label %do.body.i155, label %lor.lhs.false.i154.if.end27_crit_edge

lor.lhs.false.i154.if.end27_crit_edge:            ; preds = %lor.lhs.false.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

do.body.i155:                                     ; preds = %lor.lhs.false.i154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_next_esco_param.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_enhanced_setup_sync_conn, %if.then13.i157)) #11
          to label %for.inc.i161 [label %if.then13.i157], !srcloc !229

if.then13.i157:                                   ; preds = %do.body.i155
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %attempt, align 2
  %conv15.i156 = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_next_esco_param.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.51, ptr noundef %conn, i32 noundef %conv15.i156) #11
  br label %for.inc.i161

for.inc.i161:                                     ; preds = %if.then13.i157, %do.body.i155
  %44 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %attempt, align 2
  %inc.i158 = add i8 %45, 1
  store i8 %inc.i158, ptr %attempt, align 2
  %cmp.not.i160 = icmp ugt i8 %inc.i158, 2
  br i1 %cmp.not.i160, label %for.inc.i161.cleanup_crit_edge, label %for.inc.i161.for.body.i150_crit_edge

for.inc.i161.for.body.i150_crit_edge:             ; preds = %for.inc.i161
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i150

for.inc.i161.cleanup_crit_edge:                   ; preds = %for.inc.i161
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false.i154.if.end27_crit_edge, %for.body.i150.if.end27_crit_edge
  %46 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %attempt, align 2
  %conv29 = zext i8 %47 to i32
  %sub30 = add nsw i32 %conv29, -1
  %arrayidx31 = getelementptr [2 x %struct.sco_param], ptr @esco_param_msbc, i32 0, i32 %sub30
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end8
  %link = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 69
  %48 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %link, align 4
  %arrayidx60 = getelementptr %struct.hci_conn, ptr %49, i32 0, i32 19, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %51)
  %tobool62.not = icmp sgt i8 %51, -1
  br i1 %tobool62.not, label %if.else, label %if.then63

if.then63:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc)
  %cmp.not31.i171 = icmp ugt i8 %inc, 5
  br i1 %cmp.not31.i171, label %if.then63.cleanup_crit_edge, label %if.then63.for.body.i175_crit_edge

if.then63.for.body.i175_crit_edge:                ; preds = %if.then63
  br label %for.body.i175

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i175:                                    ; preds = %for.inc.i186.for.body.i175_crit_edge, %if.then63.for.body.i175_crit_edge
  %52 = phi i8 [ %inc.i183, %for.inc.i186.for.body.i175_crit_edge ], [ %inc, %if.then63.for.body.i175_crit_edge ]
  %53 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %link, align 4
  %arrayidx2.i173 = getelementptr %struct.hci_conn, ptr %54, i32 0, i32 19, i32 0, i32 5
  %55 = ptrtoint ptr %arrayidx2.i173 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx2.i173, align 1
  %57 = and i8 %56, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i174 = icmp eq i8 %57, 0
  br i1 %tobool.not.i174, label %lor.lhs.false.i179, label %for.body.i175.if.end66_crit_edge

for.body.i175.if.end66_crit_edge:                 ; preds = %for.body.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

lor.lhs.false.i179:                               ; preds = %for.body.i175
  %conv32.i172 = zext i8 %52 to i32
  %sub.i176 = add nsw i32 %conv32.i172, -1
  %arrayidx6.i177 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %sub.i176
  %58 = ptrtoint ptr %arrayidx6.i177 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx6.i177, align 2
  %60 = and i16 %59, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool9.not.i178 = icmp eq i16 %60, 0
  br i1 %tobool9.not.i178, label %do.body.i180, label %lor.lhs.false.i179.if.end66_crit_edge

lor.lhs.false.i179.if.end66_crit_edge:            ; preds = %lor.lhs.false.i179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

do.body.i180:                                     ; preds = %lor.lhs.false.i179
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_next_esco_param.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_enhanced_setup_sync_conn, %if.then13.i182)) #11
          to label %for.inc.i186 [label %if.then13.i182], !srcloc !229

if.then13.i182:                                   ; preds = %do.body.i180
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %attempt, align 2
  %conv15.i181 = zext i8 %62 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_next_esco_param.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.51, ptr noundef %conn, i32 noundef %conv15.i181) #11
  br label %for.inc.i186

for.inc.i186:                                     ; preds = %if.then13.i182, %do.body.i180
  %63 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %attempt, align 2
  %inc.i183 = add i8 %64, 1
  store i8 %inc.i183, ptr %attempt, align 2
  %cmp.not.i185 = icmp ugt i8 %inc.i183, 5
  br i1 %cmp.not.i185, label %for.inc.i186.cleanup_crit_edge, label %for.inc.i186.for.body.i175_crit_edge

for.inc.i186.for.body.i175_crit_edge:             ; preds = %for.inc.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i175

for.inc.i186.cleanup_crit_edge:                   ; preds = %for.inc.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end66:                                         ; preds = %lor.lhs.false.i179.if.end66_crit_edge, %for.body.i175.if.end66_crit_edge
  %65 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %attempt, align 2
  %conv68 = zext i8 %66 to i32
  %sub69 = add nsw i32 %conv68, -1
  %arrayidx70 = getelementptr [5 x %struct.sco_param], ptr @esco_param_cvsd, i32 0, i32 %sub69
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc)
  %cmp = icmp ugt i8 %inc, 2
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end75

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end75:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv72 = zext i8 %inc to i32
  %sub78 = add nsw i32 %conv72, -1
  %arrayidx79 = getelementptr [2 x %struct.sco_param], ptr @sco_param_cvsd, i32 0, i32 %sub78
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end75, %if.end66, %if.end27, %if.end13
  %.sink213 = phi i32 [ 1075773440, %if.end27 ], [ 8192000, %if.end13 ], [ -2143420416, %if.end75 ], [ -2143420416, %if.end66 ]
  %.sink211 = phi i8 [ 3, %if.end27 ], [ 4, %if.end13 ], [ 4, %if.end75 ], [ 4, %if.end66 ]
  %.sink208 = phi i8 [ 1, %if.end27 ], [ 1, %if.end13 ], [ 16, %if.end75 ], [ 16, %if.end66 ]
  %param.1 = phi ptr [ %arrayidx31, %if.end27 ], [ %arrayidx, %if.end13 ], [ %arrayidx79, %if.end75 ], [ %arrayidx70, %if.end66 ]
  %tx_coding_format81 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 3
  %67 = ptrtoint ptr %tx_coding_format81 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %16, ptr %tx_coding_format81, align 2
  %rx_coding_format83 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 4
  %68 = ptrtoint ptr %rx_coding_format83 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %16, ptr %rx_coding_format83, align 1
  %tx_codec_frame_size85 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 5
  %69 = ptrtoint ptr %tx_codec_frame_size85 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 15360, ptr %tx_codec_frame_size85, align 2
  %rx_codec_frame_size86 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 6
  %70 = ptrtoint ptr %rx_codec_frame_size86 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 15360, ptr %rx_codec_frame_size86, align 2
  %in_bandwidth87 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 7
  %71 = ptrtoint ptr %in_bandwidth87 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %.sink213, ptr %in_bandwidth87, align 2
  %out_bandwidth88 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 8
  %72 = ptrtoint ptr %out_bandwidth88 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %.sink213, ptr %out_bandwidth88, align 2
  %in_coding_format89 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 9
  %73 = ptrtoint ptr %in_coding_format89 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %.sink211, ptr %in_coding_format89, align 2
  %out_coding_format91 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 10
  %74 = ptrtoint ptr %out_coding_format91 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %.sink211, ptr %out_coding_format91, align 1
  %in_coded_data_size93 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 11
  %75 = ptrtoint ptr %in_coded_data_size93 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 4096, ptr %in_coded_data_size93, align 2
  %out_coded_data_size94 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 12
  %76 = ptrtoint ptr %out_coded_data_size94 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 4096, ptr %out_coded_data_size94, align 2
  %in_pcm_data_format95 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 13
  %77 = ptrtoint ptr %in_pcm_data_format95 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 2, ptr %in_pcm_data_format95, align 2
  %out_pcm_data_format96 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 14
  %78 = ptrtoint ptr %out_pcm_data_format96 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 2, ptr %out_pcm_data_format96, align 1
  %in_pcm_sample_payload_msb_pos97 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 15
  %79 = ptrtoint ptr %in_pcm_sample_payload_msb_pos97 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %in_pcm_sample_payload_msb_pos97, align 2
  %out_pcm_sample_payload_msb_pos98 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 16
  %80 = ptrtoint ptr %out_pcm_sample_payload_msb_pos98 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %out_pcm_sample_payload_msb_pos98, align 1
  %81 = ptrtoint ptr %data_path to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %data_path, align 1
  %in_data_path101 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 17
  %83 = ptrtoint ptr %in_data_path101 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %in_data_path101, align 2
  %out_data_path104 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 18
  %84 = ptrtoint ptr %out_data_path104 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %82, ptr %out_data_path104, align 1
  %in_transport_unit_size105 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 19
  %85 = ptrtoint ptr %in_transport_unit_size105 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %.sink208, ptr %in_transport_unit_size105, align 2
  %out_transport_unit_size106 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 20
  %86 = ptrtoint ptr %out_transport_unit_size106 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %.sink208, ptr %out_transport_unit_size106, align 1
  %retrans_effort = getelementptr inbounds %struct.sco_param, ptr %param.1, i32 0, i32 2
  %87 = ptrtoint ptr %retrans_effort to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %retrans_effort, align 2
  %retrans_effort107 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 23
  %89 = ptrtoint ptr %retrans_effort107 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %retrans_effort107, align 2
  %90 = ptrtoint ptr %param.1 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %param.1, align 2
  %92 = tail call i16 @llvm.bswap.i16(i16 %91)
  %pkt_type108 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 22
  %93 = ptrtoint ptr %pkt_type108 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %pkt_type108, align 2
  %max_latency = getelementptr inbounds %struct.sco_param, ptr %param.1, i32 0, i32 1
  %94 = ptrtoint ptr %max_latency to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %max_latency, align 2
  %96 = tail call i16 @llvm.bswap.i16(i16 %95)
  %max_latency109 = getelementptr inbounds %struct.hci_cp_enhanced_setup_sync_conn, ptr %cp, i32 0, i32 21
  %97 = ptrtoint ptr %max_latency109 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %max_latency109, align 2
  %call110 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 1085, i32 noundef 59, ptr noundef nonnull %cp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call110)
  %cmp111 = icmp sgt i32 %call110, -1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.else.cleanup_crit_edge, %for.inc.i186.cleanup_crit_edge, %if.then63.cleanup_crit_edge, %for.inc.i161.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.else.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ %cmp111, %sw.epilog ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.bb24.cleanup_crit_edge ], [ false, %if.then63.cleanup_crit_edge ], [ false, %for.inc.i.cleanup_crit_edge ], [ false, %for.inc.i161.cleanup_crit_edge ], [ false, %for.inc.i186.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 59, ptr nonnull %cp) #11
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hci_setup_sync_conn(ptr noundef %conn, i16 noundef zeroext %handle) unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_setup_sync_conn, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %cp) #11
  %2 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, ptr %cp, i32 0, i32 1
  %3 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, ptr %cp, i32 0, i32 2
  %4 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, ptr %cp, i32 0, i32 3
  %5 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, ptr %cp, i32 0, i32 4
  %6 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, ptr %cp, i32 0, i32 5
  %7 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, ptr %cp, i32 0, i32 6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_setup_sync_conn.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_setup_sync_conn, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_setup_sync_conn.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.49, ptr noundef %name, ptr noundef %conn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 12
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 5, ptr %state, align 4
  %out = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 16
  %9 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %out, align 1
  %attempt = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 17
  %10 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %attempt, align 2
  %inc = add i8 %11, 1
  store i8 %inc, ptr %attempt, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %handle)
  %13 = ptrtoint ptr %cp to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %cp, align 2
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 1075773440, ptr %2, align 2
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 1075773440, ptr %3, align 2
  %setting = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 33
  %16 = ptrtoint ptr %setting to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %setting, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %5, align 2
  %20 = and i16 %17, 3
  %and = zext i16 %20 to i32
  %21 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %and, label %do.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 0, label %sw.bb11
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %link.i = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 69
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc)
  %cmp.not31.i = icmp ugt i8 %inc, 2
  br i1 %cmp.not31.i, label %sw.bb.cleanup_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %22 = phi i8 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %inc, %sw.bb.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link.i, align 4
  %arrayidx2.i = getelementptr %struct.hci_conn, ptr %24, i32 0, i32 19, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx2.i, align 1
  %27 = and i8 %26, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.i.if.end8_crit_edge

for.body.i.if.end8_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

lor.lhs.false.i:                                  ; preds = %for.body.i
  %conv32.i = zext i8 %22 to i32
  %sub.i = add nsw i32 %conv32.i, -1
  %arrayidx6.i = getelementptr %struct.sco_param, ptr @esco_param_msbc, i32 %sub.i
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx6.i, align 2
  %30 = and i16 %29, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool9.not.i = icmp eq i16 %30, 0
  br i1 %tobool9.not.i, label %do.body.i, label %lor.lhs.false.i.if.end8_crit_edge

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.body.i:                                        ; preds = %lor.lhs.false.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_next_esco_param.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_setup_sync_conn, %if.then13.i)) #11
          to label %for.inc.i [label %if.then13.i], !srcloc !229

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %attempt, align 2
  %conv15.i = zext i8 %32 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_next_esco_param.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.51, ptr noundef %conn, i32 noundef %conv15.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then13.i, %do.body.i
  %33 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %attempt, align 2
  %inc.i = add i8 %34, 1
  store i8 %inc.i, ptr %attempt, align 2
  %cmp.not.i = icmp ugt i8 %inc.i, 2
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false.i.if.end8_crit_edge, %for.body.i.if.end8_crit_edge
  %35 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %attempt, align 2
  %conv10 = zext i8 %36 to i32
  %sub = add nsw i32 %conv10, -1
  %arrayidx = getelementptr [2 x %struct.sco_param], ptr @esco_param_msbc, i32 0, i32 %sub
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  %link = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 69
  %37 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %link, align 4
  %arrayidx13 = getelementptr %struct.hci_conn, ptr %38, i32 0, i32 19, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %40)
  %tobool16.not = icmp sgt i8 %40, -1
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc)
  %cmp.not31.i64 = icmp ugt i8 %inc, 5
  br i1 %cmp.not31.i64, label %if.then17.cleanup_crit_edge, label %if.then17.for.body.i68_crit_edge

if.then17.for.body.i68_crit_edge:                 ; preds = %if.then17
  br label %for.body.i68

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i68:                                     ; preds = %for.inc.i79.for.body.i68_crit_edge, %if.then17.for.body.i68_crit_edge
  %41 = phi i8 [ %inc.i76, %for.inc.i79.for.body.i68_crit_edge ], [ %inc, %if.then17.for.body.i68_crit_edge ]
  %42 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %link, align 4
  %arrayidx2.i66 = getelementptr %struct.hci_conn, ptr %43, i32 0, i32 19, i32 0, i32 5
  %44 = ptrtoint ptr %arrayidx2.i66 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx2.i66, align 1
  %46 = and i8 %45, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i67 = icmp eq i8 %46, 0
  br i1 %tobool.not.i67, label %lor.lhs.false.i72, label %for.body.i68.if.end20_crit_edge

for.body.i68.if.end20_crit_edge:                  ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

lor.lhs.false.i72:                                ; preds = %for.body.i68
  %conv32.i65 = zext i8 %41 to i32
  %sub.i69 = add nsw i32 %conv32.i65, -1
  %arrayidx6.i70 = getelementptr %struct.sco_param, ptr @esco_param_cvsd, i32 %sub.i69
  %47 = ptrtoint ptr %arrayidx6.i70 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx6.i70, align 2
  %49 = and i16 %48, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool9.not.i71 = icmp eq i16 %49, 0
  br i1 %tobool9.not.i71, label %do.body.i73, label %lor.lhs.false.i72.if.end20_crit_edge

lor.lhs.false.i72.if.end20_crit_edge:             ; preds = %lor.lhs.false.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.body.i73:                                      ; preds = %lor.lhs.false.i72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_next_esco_param.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_setup_sync_conn, %if.then13.i75)) #11
          to label %for.inc.i79 [label %if.then13.i75], !srcloc !229

if.then13.i75:                                    ; preds = %do.body.i73
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %attempt, align 2
  %conv15.i74 = zext i8 %51 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_next_esco_param.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.51, ptr noundef %conn, i32 noundef %conv15.i74) #11
  br label %for.inc.i79

for.inc.i79:                                      ; preds = %if.then13.i75, %do.body.i73
  %52 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %attempt, align 2
  %inc.i76 = add i8 %53, 1
  store i8 %inc.i76, ptr %attempt, align 2
  %cmp.not.i78 = icmp ugt i8 %inc.i76, 5
  br i1 %cmp.not.i78, label %for.inc.i79.cleanup_crit_edge, label %for.inc.i79.for.body.i68_crit_edge

for.inc.i79.for.body.i68_crit_edge:               ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i68

for.inc.i79.cleanup_crit_edge:                    ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false.i72.if.end20_crit_edge, %for.body.i68.if.end20_crit_edge
  %54 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %attempt, align 2
  %conv22 = zext i8 %55 to i32
  %sub23 = add nsw i32 %conv22, -1
  %arrayidx24 = getelementptr [5 x %struct.sco_param], ptr @esco_param_cvsd, i32 0, i32 %sub23
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc)
  %cmp = icmp ugt i8 %inc, 2
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end29

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv26 = zext i8 %inc to i32
  %sub32 = add nsw i32 %conv26, -1
  %arrayidx33 = getelementptr [2 x %struct.sco_param], ptr @sco_param_cvsd, i32 0, i32 %sub32
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end29, %if.end20, %if.end8
  %param.0 = phi ptr [ %arrayidx24, %if.end20 ], [ %arrayidx33, %if.end29 ], [ %arrayidx, %if.end8 ]
  %retrans_effort = getelementptr inbounds %struct.sco_param, ptr %param.0, i32 0, i32 2
  %56 = ptrtoint ptr %retrans_effort to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %retrans_effort, align 2
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %6, align 2
  %59 = ptrtoint ptr %param.0 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %param.0, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  %62 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %61, ptr %7, align 1
  %max_latency = getelementptr inbounds %struct.sco_param, ptr %param.0, i32 0, i32 1
  %63 = ptrtoint ptr %max_latency to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %max_latency, align 2
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %4, align 2
  %call38 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 1064, i32 noundef 17, ptr noundef nonnull %cp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call38)
  %cmp39 = icmp sgt i32 %call38, -1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.else.cleanup_crit_edge, %for.inc.i79.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.else.cleanup_crit_edge ], [ false, %do.end.cleanup_crit_edge ], [ %cmp39, %sw.epilog ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %if.then17.cleanup_crit_edge ], [ false, %for.inc.i.cleanup_crit_edge ], [ false, %for.inc.i79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %cp) #11
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @hci_le_conn_update(ptr noundef %conn, i16 noundef zeroext %min, i16 noundef zeroext %max, i16 noundef zeroext %latency, i16 noundef zeroext %to_multiplier) local_unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_le_conn_update, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %cp) #11
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %dst = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 3
  %2 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dst_type, align 2
  %call = tail call ptr @hci_conn_params_lookup(ptr noundef %1, ptr noundef %dst, i8 noundef zeroext %3) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conn_min_interval = getelementptr inbounds %struct.hci_conn_params, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %conn_min_interval to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %min, ptr %conn_min_interval, align 4
  %conn_max_interval = getelementptr inbounds %struct.hci_conn_params, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %conn_max_interval to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %max, ptr %conn_max_interval, align 2
  %conn_latency = getelementptr inbounds %struct.hci_conn_params, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %conn_latency to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %latency, ptr %conn_latency, align 4
  %supervision_timeout = getelementptr inbounds %struct.hci_conn_params, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %supervision_timeout to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %to_multiplier, ptr %supervision_timeout, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = getelementptr inbounds %struct.hci_cp_le_conn_update, ptr %cp, i32 0, i32 6
  %9 = getelementptr inbounds %struct.hci_cp_le_conn_update, ptr %cp, i32 0, i32 5
  %10 = getelementptr inbounds %struct.hci_cp_le_conn_update, ptr %cp, i32 0, i32 4
  %11 = getelementptr inbounds %struct.hci_cp_le_conn_update, ptr %cp, i32 0, i32 3
  %12 = getelementptr inbounds %struct.hci_cp_le_conn_update, ptr %cp, i32 0, i32 2
  %13 = getelementptr inbounds %struct.hci_cp_le_conn_update, ptr %cp, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %handle = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 11
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %handle, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %17 = ptrtoint ptr %cp to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %cp, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %min)
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %13, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %max)
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %12, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %latency)
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %11, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %to_multiplier)
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %10, align 2
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %9, align 2
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %8, align 2
  %call6 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 8211, i32 noundef 14, ptr noundef nonnull %cp) #11
  %not.tobool.not = xor i1 %tobool.not, true
  %. = zext i1 %not.tobool.not to i8
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %cp) #11
  ret i8 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_conn_params_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_le_start_enc(ptr noundef %conn, i16 noundef zeroext %ediv, i64 noundef %rand, ptr nocapture noundef readonly %ltk, i8 noundef zeroext %key_size) local_unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_le_start_enc, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cp) #11
  %2 = call ptr @memset(ptr %cp, i32 255, i32 28)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_le_start_enc.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_le_start_enc, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_le_start_enc.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.3, ptr noundef %conn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = getelementptr inbounds %struct.hci_cp_le_start_enc, ptr %cp, i32 0, i32 3
  %4 = getelementptr inbounds %struct.hci_cp_le_start_enc, ptr %cp, i32 0, i32 2
  %5 = getelementptr inbounds %struct.hci_cp_le_start_enc, ptr %cp, i32 0, i32 1
  %6 = getelementptr inbounds i8, ptr %cp, i32 12
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %handle = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 11
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %handle, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = ptrtoint ptr %cp to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %cp, align 2
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %rand, ptr %5, align 2
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %ediv, ptr %4, align 2
  %conv = zext i8 %key_size to i32
  %14 = call ptr @memcpy(ptr %3, ptr %ltk, i32 %conv)
  %call8 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 8217, i32 noundef 28, ptr noundef nonnull %cp) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cp) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_sco_setup(ptr noundef %conn, i8 noundef zeroext %status) local_unnamed_addr #0 align 64 {
entry:
  %cp.i = alloca %struct.hci_cp_add_sco, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 69
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_sco_setup.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sco_setup, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !229

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_sco_setup.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.3, ptr noundef %conn) #11
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool6.not = icmp eq i8 %status, 0
  br i1 %tobool6.not, label %if.then7, label %if.else14

if.then7:                                         ; preds = %do.end
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %arrayidx8 = getelementptr %struct.hci_dev, ptr %3, i32 0, i32 21, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool9.not = icmp sgt i8 %5, -1
  %handle12 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 11
  %6 = ptrtoint ptr %handle12 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %handle12, align 2
  %hdev1.i = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %8 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev1.i, align 4
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then7
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %9, i32 0, i32 27, i32 29
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = and i8 %11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call fastcc zeroext i1 @hci_enhanced_setup_sync_conn(ptr noundef nonnull %1, i16 noundef zeroext %7) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call fastcc zeroext i1 @hci_setup_sync_conn(ptr noundef nonnull %1, i16 noundef zeroext %7) #11
  br label %cleanup

if.else:                                          ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_add_sco.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_sco_setup, %if.then.i27)) #11
          to label %hci_add_sco.exit [label %if.then.i27], !srcloc !229

if.then.i27:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_add_sco.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.3, ptr noundef nonnull %1) #11
  br label %hci_add_sco.exit

hci_add_sco.exit:                                 ; preds = %if.then.i27, %if.else
  %13 = getelementptr inbounds %struct.hci_cp_add_sco, ptr %cp.i, i32 0, i32 1
  %state.i = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 5, ptr %state.i, align 4
  %out.i = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %out.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %out.i, align 1
  %attempt.i = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %attempt.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %attempt.i, align 2
  %inc.i = add i8 %17, 1
  store i8 %inc.i, ptr %attempt.i, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %7) #11
  %19 = ptrtoint ptr %cp.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %cp.i, align 2
  %pkt_type.i = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pkt_type.i, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #11
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %13, align 2
  %call6.i = call i32 @hci_send_cmd(ptr noundef %9, i16 noundef zeroext 1031, i32 noundef 4, ptr noundef nonnull %cp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp.i) #11
  br label %cleanup

if.else14:                                        ; preds = %do.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @hci_cb_list_lock, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hci_cb_list to i32))
  %cb.018.i = load ptr, ptr @hci_cb_list, align 4
  %cmp.not19.i = icmp eq ptr %cb.018.i, @hci_cb_list
  br i1 %cmp.not19.i, label %if.else14.for.end.i_crit_edge, label %if.else14.for.body.i_crit_edge

if.else14.for.body.i_crit_edge:                   ; preds = %if.else14
  br label %for.body.i

if.else14.for.end.i_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else14.for.body.i_crit_edge
  %cb.020.i = phi ptr [ %cb.0.i, %for.inc.i.for.body.i_crit_edge ], [ %cb.018.i, %if.else14.for.body.i_crit_edge ]
  %connect_cfm.i = getelementptr inbounds %struct.hci_cb, ptr %cb.020.i, i32 0, i32 2
  %24 = ptrtoint ptr %connect_cfm.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %connect_cfm.i, align 4
  %tobool.not.i28 = icmp eq ptr %25, null
  br i1 %tobool.not.i28, label %for.body.i.for.inc.i_crit_edge, label %if.then.i29

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i29:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %25(ptr noundef nonnull %1, i8 noundef zeroext %status) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i29, %for.body.i.for.inc.i_crit_edge
  %26 = ptrtoint ptr %cb.020.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %cb.0.i = load ptr, ptr %cb.020.i, align 4
  %cmp.not.i = icmp eq ptr %cb.0.i, @hci_cb_list
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.else14.for.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #11
  %connect_cfm_cb.i = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 71
  %27 = ptrtoint ptr %connect_cfm_cb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %connect_cfm_cb.i, align 8
  %tobool6.not.i = icmp eq ptr %28, null
  br i1 %tobool6.not.i, label %for.end.i.hci_connect_cfm.exit_crit_edge, label %if.then7.i

for.end.i.hci_connect_cfm.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hci_connect_cfm.exit

if.then7.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %28(ptr noundef nonnull %1, i8 noundef zeroext %status) #11
  br label %hci_connect_cfm.exit

hci_connect_cfm.exit:                             ; preds = %if.then7.i, %for.end.i.hci_connect_cfm.exit_crit_edge
  %call15 = tail call i32 @hci_conn_del(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %hci_connect_cfm.exit, %hci_add_sco.exit, %if.end.i, %if.then.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_conn_del(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_del.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_del, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %handle = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 11
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %handle, align 2
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_del.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.26, ptr noundef %name, ptr noundef %conn, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %disc_work = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 58
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %disc_work) #11
  %auto_accept_work = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 59
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %auto_accept_work) #11
  %idle_work = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 60
  %call6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #11
  %type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 14
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %5, label %if.else29 [
    i8 1, label %if.then9
    i8 -128, label %if.then18
  ]

if.then9:                                         ; preds = %do.end
  %link = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 69
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %link, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %if.then9.if.end13_crit_edge, label %if.then11

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %link12 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 69
  %9 = ptrtoint ptr %link12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %link12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9.if.end13_crit_edge
  %sent = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 55
  %10 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sent, align 4
  %acl_cnt = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 120
  %12 = ptrtoint ptr %acl_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %acl_cnt, align 8
  %add = add i32 %13, %11
  store i32 %add, ptr %acl_cnt, align 8
  br label %if.end36

if.then18:                                        ; preds = %do.end
  %le_conn_timeout = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 61
  %call19 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %le_conn_timeout) #11
  %le_pkts = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 128
  %14 = ptrtoint ptr %le_pkts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %le_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not = icmp eq i32 %15, 0
  %sent25 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 55
  %16 = ptrtoint ptr %sent25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sent25, align 4
  br i1 %tobool20.not, label %if.else24, label %if.then21

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %le_cnt = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 122
  %18 = ptrtoint ptr %le_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %le_cnt, align 8
  %add23 = add i32 %19, %17
  store i32 %add23, ptr %le_cnt, align 8
  br label %if.end36

if.else24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %acl_cnt26 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 120
  %20 = ptrtoint ptr %acl_cnt26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %acl_cnt26, align 8
  %add27 = add i32 %21, %17
  store i32 %add27, ptr %acl_cnt26, align 8
  br label %if.end36

if.else29:                                        ; preds = %do.end
  %link30 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 69
  %22 = ptrtoint ptr %link30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link30, align 4
  %tobool31.not = icmp eq ptr %23, null
  br i1 %tobool31.not, label %if.else29.if.end36_crit_edge, label %if.then32

if.else29.if.end36_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #13
  %link33 = getelementptr inbounds %struct.hci_conn, ptr %23, i32 0, i32 69
  %24 = ptrtoint ptr %link33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %link33, align 4
  tail call fastcc void @hci_conn_drop(ptr noundef nonnull %23)
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.else29.if.end36_crit_edge, %if.else24, %if.then21, %if.end13
  %amp_mgr = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 68
  %25 = ptrtoint ptr %amp_mgr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %amp_mgr, align 8
  %tobool37.not = icmp eq ptr %26, null
  br i1 %tobool37.not, label %if.end36.if.end41_crit_edge, label %if.then38

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = tail call i32 @amp_mgr_put(ptr noundef nonnull %26) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end36.if.end41_crit_edge
  %data_q = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 56
  tail call void @skb_queue_purge(ptr noundef %data_q) #11
  tail call fastcc void @hci_conn_cleanup(ptr noundef %conn)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hci_conn_add(ptr noundef %hdev, i32 noundef %type, ptr noundef %dst, i8 noundef zeroext %role) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_add.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_add, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_add.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.7, ptr noundef %name, ptr noundef %dst) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1672) #14
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %dst7 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 2
  %1 = call ptr @memcpy(ptr %dst7, ptr %dst, i32 6)
  %src = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 4
  %bdaddr = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %src, ptr %bdaddr, i32 6)
  %hdev8 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 65
  %3 = ptrtoint ptr %hdev8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hdev, ptr %hdev8, align 4
  %conv = trunc i32 %type to i8
  %type9 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 14
  %4 = ptrtoint ptr %type9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %type9, align 1
  %role10 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 15
  %5 = ptrtoint ptr %role10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %role, ptr %role10, align 8
  %mode = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %mode, align 2
  %state = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %state, align 4
  %auth_type = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 23
  %8 = ptrtoint ptr %auth_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %auth_type, align 1
  %io_capability = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 37
  %9 = ptrtoint ptr %io_capability to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %io_capability, align 2
  %io_capability11 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 28
  %11 = ptrtoint ptr %io_capability11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %io_capability11, align 8
  %remote_auth = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 53
  %12 = ptrtoint ptr %remote_auth to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %remote_auth, align 1
  %key_type = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 22
  %13 = ptrtoint ptr %key_type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %key_type, align 2
  %rssi = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 44
  %14 = ptrtoint ptr %rssi to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 127, ptr %rssi, align 2
  %tx_power = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 45
  %15 = ptrtoint ptr %tx_power to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 127, ptr %tx_power, align 1
  %max_tx_power = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 46
  %16 = ptrtoint ptr %max_tx_power to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 127, ptr %max_tx_power, align 8
  %flags = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags) #11
  %disc_timeout = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 31
  %17 = ptrtoint ptr %disc_timeout to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 200, ptr %disc_timeout, align 2
  %auth_payload_timeout = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 34
  %18 = ptrtoint ptr %auth_payload_timeout to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 3000, ptr %auth_payload_timeout, align 8
  %19 = ptrtoint ptr %role10 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %role10, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  br i1 %cmp, label %if.then17, label %if.end6.if.end18_crit_edge

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %out = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %out, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end6.if.end18_crit_edge
  %22 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %type, label %if.end18.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 128, label %sw.bb22
    i32 0, label %sw.bb24
    i32 2, label %sw.bb43
  ]

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %pkt_type = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 98
  %23 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pkt_type, align 4
  %25 = and i16 %24, -225
  %pkt_type21 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 20
  %26 = ptrtoint ptr %pkt_type21 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %pkt_type21, align 2
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %src_type = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 5
  tail call void @hci_copy_identity_address(ptr noundef %hdev, ptr noundef %src, ptr noundef %src_type) #11
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end18
  %arrayidx25 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 21, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %tobool28.not = icmp sgt i8 %28, -1
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #13
  %esco_type = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 99
  %29 = ptrtoint ptr %esco_type to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %esco_type, align 2
  %31 = and i16 %30, 967
  %pkt_type36 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 20
  %32 = ptrtoint ptr %pkt_type36 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %pkt_type36, align 2
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #13
  %pkt_type37 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 98
  %33 = ptrtoint ptr %pkt_type37 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %pkt_type37, align 4
  %35 = and i16 %34, 224
  %pkt_type41 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 20
  %36 = ptrtoint ptr %pkt_type41 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %pkt_type41, align 2
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %esco_type44 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 99
  %37 = ptrtoint ptr %esco_type44 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %esco_type44, align 2
  %39 = and i16 %38, -961
  %pkt_type48 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 20
  %40 = ptrtoint ptr %pkt_type48 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %pkt_type48, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %if.else, %if.then29, %sw.bb22, %sw.bb, %if.end18.sw.epilog_crit_edge
  %data_q = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 56
  %lock.i = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 56, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %41 = ptrtoint ptr %data_q to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %data_q, ptr %data_q, align 8
  %prev.i.i = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 56, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %data_q, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 56, i32 1
  %43 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %qlen.i.i, align 8
  %chan_list = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 57
  %44 = ptrtoint ptr %chan_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %chan_list, ptr %chan_list, align 8
  %prev.i = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 57, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %chan_list, ptr %prev.i, align 4
  %disc_work = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 58
  tail call void @__init_work(ptr noundef %disc_work, i32 noundef 0) #11
  %46 = ptrtoint ptr %disc_work to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -64, ptr %disc_work, align 8
  %lockdep_map = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 58, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @hci_conn_add.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry57 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 58, i32 0, i32 1
  %47 = ptrtoint ptr %entry57 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %entry57, ptr %entry57, align 4
  %prev.i254 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 58, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %prev.i254 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %entry57, ptr %prev.i254, align 8
  %func = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 58, i32 0, i32 2
  %49 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @hci_conn_timeout, ptr %func, align 4
  %timer = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 58, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @hci_conn_add.__key.9) #11
  %auto_accept_work = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 59
  tail call void @__init_work(ptr noundef %auto_accept_work, i32 noundef 0) #11
  %50 = ptrtoint ptr %auto_accept_work to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -64, ptr %auto_accept_work, align 4
  %lockdep_map78 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 59, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map78, ptr noundef nonnull @.str.12, ptr noundef nonnull @hci_conn_add.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry81 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 59, i32 0, i32 1
  %51 = ptrtoint ptr %entry81 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %entry81, ptr %entry81, align 8
  %prev.i255 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 59, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %prev.i255 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %entry81, ptr %prev.i255, align 4
  %func84 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 59, i32 0, i32 2
  %53 = ptrtoint ptr %func84 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @hci_conn_auto_accept, ptr %func84, align 8
  %timer89 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 59, i32 1
  tail call void @init_timer_key(ptr noundef %timer89, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @hci_conn_add.__key.13) #11
  %idle_work = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 60
  tail call void @__init_work(ptr noundef %idle_work, i32 noundef 0) #11
  %54 = ptrtoint ptr %idle_work to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -64, ptr %idle_work, align 8
  %lockdep_map104 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 60, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map104, ptr noundef nonnull @.str.16, ptr noundef nonnull @hci_conn_add.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry107 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 60, i32 0, i32 1
  %55 = ptrtoint ptr %entry107 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %entry107, ptr %entry107, align 4
  %prev.i256 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 60, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %prev.i256 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %entry107, ptr %prev.i256, align 8
  %func110 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 60, i32 0, i32 2
  %57 = ptrtoint ptr %func110 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @hci_conn_idle, ptr %func110, align 4
  %timer115 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 60, i32 1
  tail call void @init_timer_key(ptr noundef %timer115, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.18, ptr noundef nonnull @hci_conn_add.__key.17) #11
  %le_conn_timeout = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 61
  tail call void @__init_work(ptr noundef %le_conn_timeout, i32 noundef 0) #11
  %58 = ptrtoint ptr %le_conn_timeout to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -64, ptr %le_conn_timeout, align 4
  %lockdep_map130 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 61, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map130, ptr noundef nonnull @.str.20, ptr noundef nonnull @hci_conn_add.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry133 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 61, i32 0, i32 1
  %59 = ptrtoint ptr %entry133 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %entry133, ptr %entry133, align 8
  %prev.i257 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 61, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %entry133, ptr %prev.i257, align 4
  %func136 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 61, i32 0, i32 2
  %61 = ptrtoint ptr %func136 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @le_conn_timeout, ptr %func136, align 8
  %timer141 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 61, i32 1
  tail call void @init_timer_key(ptr noundef %timer141, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.22, ptr noundef nonnull @hci_conn_add.__key.21) #11
  %le_scan_cleanup = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 62
  tail call void @__init_work(ptr noundef %le_scan_cleanup, i32 noundef 0) #11
  %62 = ptrtoint ptr %le_scan_cleanup to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -64, ptr %le_scan_cleanup, align 8
  %lockdep_map152 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 62, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map152, ptr noundef nonnull @.str.24, ptr noundef nonnull @hci_conn_add.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry154 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 62, i32 1
  %63 = ptrtoint ptr %entry154 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %entry154, ptr %entry154, align 4
  %prev.i258 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 62, i32 1, i32 1
  %64 = ptrtoint ptr %prev.i258 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %entry154, ptr %prev.i258, align 8
  %func156 = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 62, i32 2
  %65 = ptrtoint ptr %func156 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @le_scan_cleanup, ptr %func156, align 4
  %refcnt = getelementptr inbounds %struct.hci_conn, ptr %call7.i.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  %66 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 0, ptr %refcnt, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_hold.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_add, %if.then.i)) #11
          to label %hci_dev_hold.exit [label %if.then.i], !srcloc !229

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %67 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_hold.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.74, ptr noundef %name.i, i32 noundef %68) #11
  br label %hci_dev_hold.exit

hci_dev_hold.exit:                                ; preds = %if.then.i, %sw.epilog
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204
  %call5.i = tail call ptr @get_device(ptr noundef %dev4.i) #11
  %conn_hash.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183
  %69 = ptrtoint ptr %conn_hash.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %conn_hash.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %conn_hash.i, ptr noundef %70) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %hci_dev_hold.exit.list_add_rcu.exit.i_crit_edge

hci_dev_hold.exit.list_add_rcu.exit.i_crit_edge:  ; preds = %hci_dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_rcu.exit.i

if.end.i.i.i:                                     ; preds = %hci_dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %call7.i.i, align 8
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %conn_hash.i, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !230
  %73 = ptrtoint ptr %conn_hash.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %call7.i.i, ptr %conn_hash.i, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %74 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i, ptr %prev37.i.i.i, align 4
  br label %list_add_rcu.exit.i

list_add_rcu.exit.i:                              ; preds = %if.end.i.i.i, %hci_dev_hold.exit.list_add_rcu.exit.i_crit_edge
  %75 = ptrtoint ptr %type9 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %type9, align 1
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %76, label %list_add_rcu.exit.i.if.then168_crit_edge [
    i8 1, label %sw.bb.i
    i8 -127, label %sw.bb2.i
    i8 -128, label %sw.bb4.i
    i8 0, label %list_add_rcu.exit.i.sw.epilog.sink.split.i_crit_edge
    i8 2, label %list_add_rcu.exit.i.sw.epilog.sink.split.i_crit_edge263
  ]

list_add_rcu.exit.i.sw.epilog.sink.split.i_crit_edge263: ; preds = %list_add_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

list_add_rcu.exit.i.sw.epilog.sink.split.i_crit_edge: ; preds = %list_add_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

list_add_rcu.exit.i.if.then168_crit_edge:         ; preds = %list_add_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then168

sw.bb.i:                                          ; preds = %list_add_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %acl_num.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183, i32 1
  br label %sw.epilog.sink.split.i.thread

sw.bb2.i:                                         ; preds = %list_add_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %amp_num.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183, i32 2
  br label %sw.epilog.sink.split.i.thread

sw.bb4.i:                                         ; preds = %list_add_rcu.exit.i
  %le_num.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183, i32 4
  %78 = ptrtoint ptr %le_num.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %le_num.i, align 4
  %inc5.i = add i32 %79, 1
  store i32 %inc5.i, ptr %le_num.i, align 4
  %80 = ptrtoint ptr %role10 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %role10, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %81)
  %cmp.i = icmp eq i8 %81, 1
  br i1 %cmp.i, label %if.then.i259, label %sw.bb4.i.if.then168_crit_edge

sw.bb4.i.if.then168_crit_edge:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then168

if.then.i259:                                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  %le_num_peripheral.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183, i32 5
  br label %sw.epilog.sink.split.i.thread

sw.epilog.sink.split.i.thread:                    ; preds = %if.then.i259, %sw.bb2.i, %sw.bb.i
  %le_num_peripheral.sink18.i.ph = phi ptr [ %acl_num.i, %sw.bb.i ], [ %amp_num.i, %sw.bb2.i ], [ %le_num_peripheral.i, %if.then.i259 ]
  %82 = ptrtoint ptr %le_num_peripheral.sink18.i.ph to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %le_num_peripheral.sink18.i.ph, align 4
  %inc8.i262 = add i32 %83, 1
  store i32 %inc8.i262, ptr %le_num_peripheral.sink18.i.ph, align 4
  br label %if.then168

sw.epilog.sink.split.i:                           ; preds = %list_add_rcu.exit.i.sw.epilog.sink.split.i_crit_edge, %list_add_rcu.exit.i.sw.epilog.sink.split.i_crit_edge263
  %sco_num.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183, i32 3
  %84 = ptrtoint ptr %sco_num.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sco_num.i, align 4
  %inc8.i = add i32 %85, 1
  store i32 %inc8.i, ptr %sco_num.i, align 4
  %86 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %76, label %sw.epilog.sink.split.i.if.then168_crit_edge [
    i8 0, label %sw.epilog.sink.split.i.if.end173_crit_edge
    i8 2, label %sw.epilog.sink.split.i.if.end173_crit_edge264
  ]

sw.epilog.sink.split.i.if.end173_crit_edge264:    ; preds = %sw.epilog.sink.split.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

sw.epilog.sink.split.i.if.end173_crit_edge:       ; preds = %sw.epilog.sink.split.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

sw.epilog.sink.split.i.if.then168_crit_edge:      ; preds = %sw.epilog.sink.split.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then168

if.then168:                                       ; preds = %sw.epilog.sink.split.i.if.then168_crit_edge, %sw.epilog.sink.split.i.thread, %sw.bb4.i.if.then168_crit_edge, %list_add_rcu.exit.i.if.then168_crit_edge
  %notify = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 238
  %87 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %notify, align 8
  %tobool169.not = icmp eq ptr %88, null
  br i1 %tobool169.not, label %if.then168.if.end173_crit_edge, label %if.then170

if.then168.if.end173_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

if.then170:                                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %88(ptr noundef %hdev, i32 noundef 1) #11
  br label %if.end173

if.end173:                                        ; preds = %if.then170, %if.then168.if.end173_crit_edge, %sw.epilog.sink.split.i.if.end173_crit_edge, %sw.epilog.sink.split.i.if.end173_crit_edge264
  tail call void @hci_conn_init_sysfs(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end173, %do.end.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_copy_identity_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_conn_timeout(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -248
  %refcnt1 = getelementptr i8, ptr %work, i32 -240
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt1, i32 noundef 4) #11
  %0 = ptrtoint ptr %refcnt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_timeout.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_timeout, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  %state = getelementptr i8, ptr %work, i32 -204
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %state, align 4
  %switch.tableidx = add i16 %3, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %switch.tableidx)
  %4 = icmp ult i16 %switch.tableidx, 9
  br i1 %4, label %switch.lookup, label %if.then.state_to_string.exit_crit_edge

if.then.state_to_string.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %state_to_string.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %5 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.hci_conn_timeout, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %state_to_string.exit

state_to_string.exit:                             ; preds = %switch.lookup, %if.then.state_to_string.exit_crit_edge
  %retval.0.i67 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.66, %if.then.state_to_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_timeout.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.56, ptr noundef %add.ptr, ptr noundef nonnull %retval.0.i67) #11
  br label %do.end

do.end:                                           ; preds = %state_to_string.exit, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.end29.thread, label %if.end29, !prof !231

if.end29.thread:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 573, i32 noundef 9, ptr noundef null) #11
  br label %if.end40

if.end29:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp37.not = icmp eq i32 %1, 0
  br i1 %cmp37.not, label %if.end29.if.end40_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29.if.end40_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.end40:                                         ; preds = %if.end29.if.end40_crit_edge, %if.end29.thread
  %state41 = getelementptr i8, ptr %work, i32 -204
  %7 = ptrtoint ptr %state41 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %state41, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %8)
  %cmp43 = icmp eq i16 %8, 5
  br i1 %cmp43, label %land.lhs.true, label %if.end40.if.end52_crit_edge

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end40
  %type = getelementptr i8, ptr %work, i32 -201
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %10)
  %cmp46 = icmp eq i8 %10, -128
  br i1 %cmp46, label %land.lhs.true48, label %land.lhs.true.if.end52_crit_edge

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true48:                                  ; preds = %land.lhs.true
  %flags = getelementptr i8, ptr %work, i32 -92
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool50.not = icmp eq i32 %13, 0
  br i1 %tobool50.not, label %land.lhs.true48.if.end52_crit_edge, label %if.then51

land.lhs.true48.if.end52_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hci_connect_le_scan_remove(ptr noundef %add.ptr)
  br label %cleanup

if.end52:                                         ; preds = %land.lhs.true48.if.end52_crit_edge, %land.lhs.true.if.end52_crit_edge, %if.end40.if.end52_crit_edge
  %type.i = getelementptr i8, ptr %work, i32 -201
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type.i, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %15, label %if.end52.hci_proto_disconn_ind.exit_crit_edge [
    i8 1, label %if.end52.if.end.i_crit_edge
    i8 -128, label %if.end52.if.end.i_crit_edge71
  ]

if.end52.if.end.i_crit_edge71:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end52.if.end.i_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end52.hci_proto_disconn_ind.exit_crit_edge:    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %hci_proto_disconn_ind.exit

if.end.i:                                         ; preds = %if.end52.if.end.i_crit_edge, %if.end52.if.end.i_crit_edge71
  %call.i = tail call i32 @l2cap_disconn_ind(ptr noundef %add.ptr) #11
  %phi.cast = trunc i32 %call.i to i8
  br label %hci_proto_disconn_ind.exit

hci_proto_disconn_ind.exit:                       ; preds = %if.end.i, %if.end52.hci_proto_disconn_ind.exit_crit_edge
  %retval.0.i68 = phi i8 [ %phi.cast, %if.end.i ], [ 19, %if.end52.hci_proto_disconn_ind.exit_crit_edge ]
  %call55 = tail call i32 @hci_abort_conn(ptr noundef %add.ptr, i8 noundef zeroext %retval.0.i68) #11
  br label %cleanup

cleanup:                                          ; preds = %hci_proto_disconn_ind.exit, %if.then51, %if.end29.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_conn_auto_accept(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr i8, ptr %work, i32 1280
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %dst = getelementptr i8, ptr %work, i32 -336
  %call = tail call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 1068, i32 noundef 6, ptr noundef %dst) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_conn_idle(ptr noundef %work) #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_sniff_subrate, align 2
  %cp44 = alloca %struct.hci_cp_sniff_mode, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr i8, ptr %work, i32 1180
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_idle.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_idle, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %work, i32 -448
  %mode = getelementptr i8, ptr %work, i32 -402
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 2
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_idle.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.37, ptr noundef %add.ptr, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %features = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %features, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool7.not = icmp sgt i8 %5, -1
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %features8 = getelementptr i8, ptr %work, i32 -394
  %6 = ptrtoint ptr %features8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %features8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool13.not = icmp sgt i8 %7, -1
  br i1 %tobool13.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %mode16 = getelementptr i8, ptr %work, i32 -402
  %8 = ptrtoint ptr %mode16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode16, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not = icmp eq i8 %9, 0
  br i1 %cmp.not, label %lor.lhs.false19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false19:                                  ; preds = %if.end15
  %link_policy = getelementptr i8, ptr %work, i32 -368
  %10 = ptrtoint ptr %link_policy to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %link_policy, align 8
  %12 = and i16 %11, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool22.not = icmp eq i16 %12, 0
  br i1 %tobool22.not, label %lor.lhs.false19.cleanup_crit_edge, label %if.end24

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false19
  %arrayidx27 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx27, align 1
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool30.not = icmp eq i8 %15, 0
  br i1 %tobool30.not, label %if.end24.if.end40_crit_edge, label %land.lhs.true

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end24
  %arrayidx33 = getelementptr i8, ptr %work, i32 -389
  %16 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx33, align 1
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool36.not = icmp eq i8 %18, 0
  br i1 %tobool36.not, label %land.lhs.true.if.end40_crit_edge, label %if.then37

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cp) #11
  %19 = getelementptr inbounds %struct.hci_cp_sniff_subrate, ptr %cp, i32 0, i32 1
  %20 = getelementptr inbounds %struct.hci_cp_sniff_subrate, ptr %cp, i32 0, i32 2
  %21 = getelementptr inbounds %struct.hci_cp_sniff_subrate, ptr %cp, i32 0, i32 3
  %handle = getelementptr i8, ptr %work, i32 -406
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %handle, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %25 = ptrtoint ptr %cp to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %cp, align 2
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %19, align 2
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %20, align 2
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %21, align 2
  %call39 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 2065, i32 noundef 8, ptr noundef nonnull %cp) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cp) #11
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %land.lhs.true.if.end40_crit_edge, %if.end24.if.end40_crit_edge
  %flags = getelementptr i8, ptr %work, i32 -292
  %call41 = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cp44) #11
  %29 = getelementptr inbounds %struct.hci_cp_sniff_mode, ptr %cp44, i32 0, i32 1
  %30 = getelementptr inbounds %struct.hci_cp_sniff_mode, ptr %cp44, i32 0, i32 2
  %31 = getelementptr inbounds %struct.hci_cp_sniff_mode, ptr %cp44, i32 0, i32 3
  %32 = getelementptr inbounds %struct.hci_cp_sniff_mode, ptr %cp44, i32 0, i32 4
  %handle45 = getelementptr i8, ptr %work, i32 -406
  %33 = ptrtoint ptr %handle45 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %handle45, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %36 = ptrtoint ptr %cp44 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %cp44, align 2
  %sniff_max_interval = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 104
  %37 = ptrtoint ptr %sniff_max_interval to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sniff_max_interval, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %29, align 2
  %sniff_min_interval = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 103
  %41 = ptrtoint ptr %sniff_min_interval to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %sniff_min_interval, align 8
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %44 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %30, align 2
  %45 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1024, ptr %31, align 2
  %46 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 256, ptr %32, align 2
  %call47 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 2051, i32 noundef 10, ptr noundef nonnull %cp44) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cp44) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end40.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @le_conn_timeout(ptr noundef %work) #0 align 64 {
entry:
  %cp.i = alloca %struct.hci_cp_le_set_ext_adv_enable, align 1
  %enable1.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -548
  %hdev1 = getelementptr i8, ptr %work, i32 1080
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @le_conn_timeout.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@le_conn_timeout, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @le_conn_timeout.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.70) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %role = getelementptr i8, ptr %work, i32 -500
  %2 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.end
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = and i8 %5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cp.i) #11
  %7 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %cp.i, i32 0, i32 1
  %8 = ptrtoint ptr %cp.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %cp.i, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %7, align 1
  %call.i = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 8249, i32 noundef 2, ptr noundef nonnull %cp.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cp.i) #11
  br label %le_disable_advertising.exit

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable1.i) #11
  %10 = ptrtoint ptr %enable1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %enable1.i, align 1
  %call2.i = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 8202, i32 noundef 1, ptr noundef nonnull %enable1.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable1.i) #11
  br label %le_disable_advertising.exit

le_disable_advertising.exit:                      ; preds = %if.else.i, %if.then.i
  call void @hci_le_conn_failed(ptr noundef %add.ptr, i8 noundef zeroext 60)
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @hci_abort_conn(ptr noundef %add.ptr, i8 noundef zeroext 19) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %le_disable_advertising.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @le_scan_cleanup(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -648
  %hdev1 = getelementptr i8, ptr %work, i32 980
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @le_scan_cleanup.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@le_scan_cleanup, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @le_scan_cleanup.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.42, ptr noundef %name, ptr noundef %add.ptr) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !232
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %do.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end.rcu_read_lock.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 696, ptr noundef nonnull @.str.91) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end.rcu_read_lock.exit_crit_edge
  %call6 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end15_crit_edge

rcu_read_lock.exit.do.end15_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b56 = load i1, ptr @le_scan_cleanup.__warned, align 1
  br i1 %.b56, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @le_scan_cleanup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 160, ptr noundef nonnull @.str.47) #11
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %rcu_read_lock.exit.do.end15_crit_edge
  %conn_hash = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %do.end15
  %c.0.in = phi ptr [ %conn_hash, %do.end15 ], [ %c.0, %for.cond.for.cond_crit_edge ]
  %6 = ptrtoint ptr %c.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %c.0 = load volatile ptr, ptr %c.0.in, align 4
  %cmp.not = icmp eq ptr %c.0, %conn_hash
  %cmp26 = icmp eq ptr %c.0, %add.ptr
  %or.cond = or i1 %cmp.not, %cmp26
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call.i57 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i57, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i60

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i60:                                ; preds = %for.end
  %call1.i58 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 724, ptr noundef nonnull @.str.92) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !233
  %7 = tail call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i64 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i65, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br i1 %cmp26, label %if.then39, label %rcu_read_unlock.exit.if.end40_crit_edge

rcu_read_unlock.exit.if.end40_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then39:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hci_connect_le_scan_cleanup(ptr noundef %add.ptr)
  tail call fastcc void @hci_conn_cleanup(ptr noundef %add.ptr)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %rcu_read_unlock.exit.if.end40_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@le_scan_cleanup, %if.then.i66)) #11
          to label %hci_dev_put.exit [label %if.then.i66], !srcloc !229

if.then.i66:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %11 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.74, ptr noundef %name.i, i32 noundef %12) #11
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i66, %if.end40
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4.i) #11
  %dev.i = getelementptr i8, ptr %work, i32 48
  tail call void @put_device(ptr noundef %dev.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_conn_init_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_conn_drop(ptr noundef %conn) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_drop.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_drop, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %refcnt = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #11
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_drop.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.76, ptr noundef %conn, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %refcnt4 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 1
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !234
  tail call void @llvm.prefetch.p0(ptr %refcnt4, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4, ptr %refcnt4, i32 1, ptr elementtype(i32) %refcnt4) #11, !srcloc !235
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then6, label %do.end.if.end22_crit_edge

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then6:                                         ; preds = %do.end
  %type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 14
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %4, label %if.then6.sw.epilog_crit_edge [
    i8 1, label %if.then6.sw.bb_crit_edge
    i8 -128, label %if.then6.sw.bb_crit_edge37
    i8 -127, label %sw.bb16
  ]

if.then6.sw.bb_crit_edge37:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then6.sw.bb_crit_edge:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then6.sw.epilog_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then6.sw.bb_crit_edge, %if.then6.sw.bb_crit_edge37
  %idle_work = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 60
  %call7 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %idle_work) #11
  %state = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 12
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp = icmp eq i16 %7, 1
  br i1 %cmp, label %if.then10, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %disc_timeout = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 31
  %8 = ptrtoint ptr %disc_timeout to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %disc_timeout, align 2
  %conv11 = zext i16 %9 to i32
  %out = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 16
  %10 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %out, align 1, !range !237
  %12 = xor i8 %11, 1
  %13 = zext i8 %12 to i32
  %spec.select = shl nuw nsw i32 %conv11, %13
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %disc_timeout17 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 31
  %14 = ptrtoint ptr %disc_timeout17 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %disc_timeout17, align 2
  %conv18 = zext i16 %15 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %if.then10, %sw.bb.sw.epilog_crit_edge, %if.then6.sw.epilog_crit_edge
  %timeo.0 = phi i32 [ %conv18, %sw.bb16 ], [ %spec.select, %if.then10 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then6.sw.epilog_crit_edge ]
  %disc_work = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 58
  %call19 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %disc_work) #11
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %16 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev, align 4
  %workqueue = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 138
  %18 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %workqueue, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %disc_work, i32 noundef %timeo.0) #11
  br label %if.end22

if.end22:                                         ; preds = %sw.epilog, %do.end.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amp_mgr_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_conn_cleanup(ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %flags = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 47
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dst = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 3
  %5 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dst_type, align 2
  tail call void @hci_conn_params_del(ptr noundef %1, ptr noundef %dst, i8 noundef zeroext %6) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_chan_list_flush.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_cleanup, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !229

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_chan_list_flush.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.3, ptr noundef %conn) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %chan_list.i = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 57
  %7 = ptrtoint ptr %chan_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan_list.i, align 8
  %cmp.not23.i = icmp eq ptr %8, %chan_list.i
  br i1 %cmp.not23.i, label %do.end.i.hci_chan_list_flush.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.hci_chan_list_flush.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hci_chan_list_flush.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %chan.024.i = phi ptr [ %n.0.i, %for.body.i.for.body.i_crit_edge ], [ %8, %do.end.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %chan.024.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %n.0.i = load ptr, ptr %chan.024.i, align 4
  tail call void @hci_chan_del(ptr noundef %chan.024.i) #11
  %cmp.not.i = icmp eq ptr %n.0.i, %chan_list.i
  br i1 %cmp.not.i, label %for.body.i.hci_chan_list_flush.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.hci_chan_list_flush.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hci_chan_list_flush.exit

hci_chan_list_flush.exit:                         ; preds = %for.body.i.hci_chan_list_flush.exit_crit_edge, %do.end.i.hci_chan_list_flush.exit_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %conn) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %hci_chan_list_flush.exit.list_del_rcu.exit.i_crit_edge

hci_chan_list_flush.exit.list_del_rcu.exit.i_crit_edge: ; preds = %hci_chan_list_flush.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %hci_chan_list_flush.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %conn, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conn, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %hci_chan_list_flush.exit.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %conn, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @synchronize_rcu() #11
  %type.i = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 14
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type.i, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %18, label %list_del_rcu.exit.i.hci_conn_hash_del.exit_crit_edge [
    i8 1, label %sw.bb.i
    i8 -127, label %sw.bb1.i
    i8 -128, label %sw.bb3.i
    i8 0, label %list_del_rcu.exit.i.sw.bb8.i_crit_edge
    i8 2, label %list_del_rcu.exit.i.sw.bb8.i_crit_edge43
  ]

list_del_rcu.exit.i.sw.bb8.i_crit_edge43:         ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8.i

list_del_rcu.exit.i.sw.bb8.i_crit_edge:           ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8.i

list_del_rcu.exit.i.hci_conn_hash_del.exit_crit_edge: ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hci_conn_hash_del.exit

sw.bb.i:                                          ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %acl_num.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183, i32 1
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %amp_num.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183, i32 2
  br label %sw.epilog.sink.split.i

sw.bb3.i:                                         ; preds = %list_del_rcu.exit.i
  %le_num.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183, i32 4
  %20 = ptrtoint ptr %le_num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %le_num.i, align 4
  %dec4.i = add i32 %21, -1
  store i32 %dec4.i, ptr %le_num.i, align 4
  %role.i = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 15
  %22 = ptrtoint ptr %role.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %role.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp.i = icmp eq i8 %23, 1
  br i1 %cmp.i, label %if.then.i40, label %sw.bb3.i.hci_conn_hash_del.exitthread-pre-split_crit_edge

sw.bb3.i.hci_conn_hash_del.exitthread-pre-split_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hci_conn_hash_del.exitthread-pre-split

if.then.i40:                                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  %le_num_peripheral.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183, i32 5
  br label %sw.epilog.sink.split.i

sw.bb8.i:                                         ; preds = %list_del_rcu.exit.i.sw.bb8.i_crit_edge, %list_del_rcu.exit.i.sw.bb8.i_crit_edge43
  %sco_num.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183, i32 3
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb8.i, %if.then.i40, %sw.bb1.i, %sw.bb.i
  %le_num_peripheral.sink16.i = phi ptr [ %le_num_peripheral.i, %if.then.i40 ], [ %sco_num.i, %sw.bb8.i ], [ %amp_num.i, %sw.bb1.i ], [ %acl_num.i, %sw.bb.i ]
  %24 = ptrtoint ptr %le_num_peripheral.sink16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %le_num_peripheral.sink16.i, align 4
  %dec7.i = add i32 %25, -1
  store i32 %dec7.i, ptr %le_num_peripheral.sink16.i, align 4
  br label %hci_conn_hash_del.exitthread-pre-split

hci_conn_hash_del.exitthread-pre-split:           ; preds = %sw.epilog.sink.split.i, %sw.bb3.i.hci_conn_hash_del.exitthread-pre-split_crit_edge
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %.pr = load i8, ptr %type.i, align 1
  br label %hci_conn_hash_del.exit

hci_conn_hash_del.exit:                           ; preds = %hci_conn_hash_del.exitthread-pre-split, %list_del_rcu.exit.i.hci_conn_hash_del.exit_crit_edge
  %27 = phi i8 [ %.pr, %hci_conn_hash_del.exitthread-pre-split ], [ %18, %list_del_rcu.exit.i.hci_conn_hash_del.exit_crit_edge ]
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %27, label %if.else [
    i8 0, label %hci_conn_hash_del.exit.if.then8_crit_edge
    i8 2, label %hci_conn_hash_del.exit.if.then8_crit_edge44
  ]

hci_conn_hash_del.exit.if.then8_crit_edge44:      ; preds = %hci_conn_hash_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

hci_conn_hash_del.exit.if.then8_crit_edge:        ; preds = %hci_conn_hash_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %hci_conn_hash_del.exit.if.then8_crit_edge, %hci_conn_hash_del.exit.if.then8_crit_edge44
  %setting = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 33
  %29 = ptrtoint ptr %setting to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %setting, align 2
  %31 = and i16 %30, 3
  %and = zext i16 %31 to i32
  %32 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %and, label %if.then8.if.end19_crit_edge [
    i32 0, label %if.then8.sw.bb_crit_edge
    i32 3, label %if.then8.sw.bb_crit_edge45
  ]

if.then8.sw.bb_crit_edge45:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then8.sw.bb_crit_edge:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then8.if.end19_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

sw.bb:                                            ; preds = %if.then8.sw.bb_crit_edge, %if.then8.sw.bb_crit_edge45
  %notify = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 238
  %33 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %notify, align 8
  %tobool10.not = icmp eq ptr %34, null
  br i1 %tobool10.not, label %sw.bb.if.end19_crit_edge, label %if.then11

sw.bb.if.end19_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then11:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %34(ptr noundef %1, i32 noundef 6) #11
  br label %if.end19

if.else:                                          ; preds = %hci_conn_hash_del.exit
  %notify14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 238
  %35 = ptrtoint ptr %notify14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %notify14, align 8
  %tobool15.not = icmp eq ptr %36, null
  br i1 %tobool15.not, label %if.else.if.end19_crit_edge, label %if.then16

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %36(ptr noundef %1, i32 noundef 2) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.else.if.end19_crit_edge, %if.then11, %sw.bb.if.end19_crit_edge, %if.then8.if.end19_crit_edge
  tail call void @hci_conn_del_sysfs(ptr noundef %conn) #11
  %debugfs = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 64
  %37 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %debugfs, align 8
  tail call void @debugfs_remove(ptr noundef %38) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_cleanup, %if.then.i41)) #11
          to label %hci_dev_put.exit [label %if.then.i41], !srcloc !229

if.then.i41:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %39 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.74, ptr noundef %name.i, i32 noundef %40) #11
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i41, %if.end19
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4.i) #11
  %dev.i = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 63
  tail call void @put_device(ptr noundef %dev.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hci_get_route(ptr noundef %dst, ptr noundef %src, i8 noundef zeroext %src_type) #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.bdaddr_t, align 1
  %id_addr = alloca %struct.bdaddr_t, align 1
  %id_addr_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %.compoundliteral, i32 0, i32 6)
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %src, ptr noundef nonnull dereferenceable(6) %.compoundliteral, i32 6) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_get_route.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_get_route, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_get_route.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.28, ptr noundef %src, ptr noundef %dst) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hci_dev_list to i32))
  %d.0101 = load ptr, ptr @hci_dev_list, align 4
  %cmp.not102 = icmp eq ptr %d.0101, @hci_dev_list
  br i1 %cmp.not102, label %do.end.if.end69_crit_edge, label %for.body.lr.ph

do.end.if.end69_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

for.body.lr.ph:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool20.not = icmp eq i32 %bcmp, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %src_type)
  %cmp23 = icmp eq i8 %src_type, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %d.0103 = phi ptr [ %d.0101, %for.body.lr.ph ], [ %d.0, %for.inc.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.hci_dev, ptr %d.0103, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool12.not = icmp eq i32 %and1.i, 0
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %d.0103, i32 0, i32 206
  %3 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dev_flags, align 4
  %5 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool14.not = icmp eq i32 %5, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %dev_type = getelementptr inbounds %struct.hci_dev, ptr %d.0103, i32 0, i32 6
  %6 = ptrtoint ptr %dev_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dev_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp16.not = icmp eq i8 %7, 0
  br i1 %cmp16.not, label %if.end19, label %lor.lhs.false15.for.inc_crit_edge

lor.lhs.false15.for.inc_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end19:                                         ; preds = %lor.lhs.false15
  br i1 %tobool20.not, label %if.else55, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %id_addr) #11
  %8 = call ptr @memset(ptr %id_addr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id_addr_type) #11
  %9 = ptrtoint ptr %id_addr_type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %id_addr_type, align 1, !annotation !238
  %arrayidx26 = getelementptr %struct.hci_dev, ptr %d.0103, i32 0, i32 21, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx26, align 2
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then21
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool28.not = icmp eq i8 %12, 0
  br i1 %tobool28.not, label %if.end30, label %if.then25.cleanup.thread_crit_edge

if.then25.cleanup.thread_crit_edge:               ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end30:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %bdaddr = getelementptr inbounds %struct.hci_dev, ptr %d.0103, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %id_addr, ptr %bdaddr, i32 6)
  %14 = ptrtoint ptr %id_addr_type to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %id_addr_type, align 1
  br label %if.end45

if.else:                                          ; preds = %if.then21
  %15 = and i8 %11, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool36.not = icmp eq i8 %15, 0
  br i1 %tobool36.not, label %if.else.cleanup.thread_crit_edge, label %if.end38

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end38:                                         ; preds = %if.else
  call void @hci_copy_identity_address(ptr noundef %d.0103, ptr noundef nonnull %id_addr, ptr noundef nonnull %id_addr_type) #11
  %16 = ptrtoint ptr %id_addr_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id_addr_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp40 = icmp eq i8 %17, 0
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %id_addr_type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %id_addr_type, align 1
  br label %if.end45

if.else43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %id_addr_type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %id_addr_type, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then42, %if.end30
  %bcmp98 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %id_addr, ptr noundef dereferenceable(6) %src, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp98)
  %tobool47.not = icmp eq i32 %bcmp98, 0
  br i1 %tobool47.not, label %land.lhs.true, label %if.end45.cleanup.thread_crit_edge

if.end45.cleanup.thread_crit_edge:                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

land.lhs.true:                                    ; preds = %if.end45
  %20 = ptrtoint ptr %id_addr_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %id_addr_type, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %src_type)
  %cmp50 = icmp eq i8 %21, %src_type
  br i1 %cmp50, label %cleanup, label %land.lhs.true.cleanup.thread_crit_edge

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %land.lhs.true.cleanup.thread_crit_edge, %if.end45.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge, %if.then25.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id_addr_type) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %id_addr) #11
  br label %for.inc

cleanup:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id_addr_type) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %id_addr) #11
  br label %for.end

if.else55:                                        ; preds = %if.end19
  %bdaddr56 = getelementptr inbounds %struct.hci_dev, ptr %d.0103, i32 0, i32 7
  %bcmp99 = call i32 @bcmp(ptr noundef dereferenceable(6) %bdaddr56, ptr noundef dereferenceable(6) %dst, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp99)
  %tobool58.not = icmp eq i32 %bcmp99, 0
  br i1 %tobool58.not, label %if.else55.for.inc_crit_edge, label %if.else55.for.end_crit_edge

if.else55.for.end_crit_edge:                      ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.else55.for.inc_crit_edge:                      ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.else55.for.inc_crit_edge, %cleanup.thread, %lor.lhs.false15.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %d.0103 to i32
  call void @__asan_load4_noabort(i32 %22)
  %d.0 = load ptr, ptr %d.0103, align 4
  %cmp.not = icmp eq ptr %d.0, @hci_dev_list
  br i1 %cmp.not, label %for.inc.if.end69_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end69_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

for.end:                                          ; preds = %if.else55.for.end_crit_edge, %cleanup
  %tobool66.not = icmp eq ptr %d.0103, null
  br i1 %tobool66.not, label %for.end.if.end69_crit_edge, label %if.then67

for.end.if.end69_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then67:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_hold.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_get_route, %if.then.i)) #11
          to label %hci_dev_hold.exit [label %if.then.i], !srcloc !229

if.then.i:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %d.0103, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %d.0103, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %23 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %kref.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_hold.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.74, ptr noundef %name.i, i32 noundef %24) #11
  br label %hci_dev_hold.exit

hci_dev_hold.exit:                                ; preds = %if.then.i, %if.then67
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %d.0103, i32 0, i32 204
  %call5.i = call ptr @get_device(ptr noundef %dev4.i) #11
  br label %if.end69

if.end69:                                         ; preds = %hci_dev_hold.exit, %for.end.if.end69_crit_edge, %for.inc.if.end69_crit_edge, %do.end.if.end69_crit_edge
  %hdev.3109 = phi ptr [ %d.0103, %hci_dev_hold.exit ], [ null, %for.end.if.end69_crit_edge ], [ null, %do.end.if.end69_crit_edge ], [ null, %for.inc.if.end69_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @hci_dev_list_lock) #11
  ret ptr %hdev.3109
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_le_conn_failed(ptr noundef %conn, i8 noundef zeroext %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %pend_le_conns = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 195
  %dst = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 3
  %2 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dst_type, align 2
  %call = tail call ptr @hci_pend_le_action_lookup(ptr noundef %pend_le_conns, ptr noundef %dst, i8 noundef zeroext %3) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %conn2 = getelementptr inbounds %struct.hci_conn_params, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %conn2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hci_conn_drop(ptr noundef nonnull %5)
  %6 = ptrtoint ptr %conn2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn2, align 4
  %dev.i = getelementptr inbounds %struct.hci_conn, ptr %7, i32 0, i32 63
  tail call void @put_device(ptr noundef %dev.i) #11
  %8 = ptrtoint ptr %conn2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %conn2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %state = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 12
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 9, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %status)
  %cmp.not = icmp eq i8 %status, 2
  br i1 %cmp.not, label %land.lhs.true9.critedge, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end.thread:                                    ; preds = %entry
  %state38 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 12
  %10 = ptrtoint ptr %state38 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 9, ptr %state38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %status)
  %cmp.not39 = icmp eq i8 %status, 2
  br i1 %cmp.not39, label %if.end.thread.if.end15_crit_edge, label %if.end.thread.if.then12_crit_edge

if.end.thread.if.then12_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end.thread.if.end15_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true9.critedge:                          ; preds = %if.end
  %explicit_connect = getelementptr inbounds %struct.hci_conn_params, ptr %call, i32 0, i32 10
  %11 = ptrtoint ptr %explicit_connect to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %explicit_connect, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %land.lhs.true9.critedge.if.end15_crit_edge, label %land.lhs.true9.critedge.if.then12_crit_edge

land.lhs.true9.critedge.if.then12_crit_edge:      ; preds = %land.lhs.true9.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

land.lhs.true9.critedge.if.end15_crit_edge:       ; preds = %land.lhs.true9.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12:                                        ; preds = %land.lhs.true9.critedge.if.then12_crit_edge, %if.end.thread.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 14
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type, align 1
  %15 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dst_type, align 2
  tail call void @mgmt_connect_failed(ptr noundef %1, ptr noundef %dst, i8 noundef zeroext %14, i8 noundef zeroext %16, i8 noundef zeroext %status) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %land.lhs.true9.critedge.if.end15_crit_edge, %if.end.thread.if.end15_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @hci_cb_list_lock, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hci_cb_list to i32))
  %cb.018.i = load ptr, ptr @hci_cb_list, align 4
  %cmp.not19.i = icmp eq ptr %cb.018.i, @hci_cb_list
  br i1 %cmp.not19.i, label %if.end15.for.end.i_crit_edge, label %if.end15.for.body.i_crit_edge

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

if.end15.for.end.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %cb.020.i = phi ptr [ %cb.0.i, %for.inc.i.for.body.i_crit_edge ], [ %cb.018.i, %if.end15.for.body.i_crit_edge ]
  %connect_cfm.i = getelementptr inbounds %struct.hci_cb, ptr %cb.020.i, i32 0, i32 2
  %17 = ptrtoint ptr %connect_cfm.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %connect_cfm.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %18(ptr noundef %conn, i8 noundef zeroext %status) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %cb.020.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %cb.0.i = load ptr, ptr %cb.020.i, align 4
  %cmp.not.i = icmp eq ptr %cb.0.i, @hci_cb_list
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end15.for.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #11
  %connect_cfm_cb.i = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 71
  %20 = ptrtoint ptr %connect_cfm_cb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %connect_cfm_cb.i, align 8
  %tobool6.not.i = icmp eq ptr %21, null
  br i1 %tobool6.not.i, label %for.end.i.hci_connect_cfm.exit_crit_edge, label %if.then7.i

for.end.i.hci_connect_cfm.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hci_connect_cfm.exit

if.then7.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %21(ptr noundef %conn, i8 noundef zeroext %status) #11
  br label %hci_connect_cfm.exit

hci_connect_cfm.exit:                             ; preds = %if.then7.i, %for.end.i.hci_connect_cfm.exit_crit_edge
  %call16 = tail call i32 @hci_conn_del(ptr noundef %conn)
  %call17 = tail call i32 @hci_update_passive_scan(ptr noundef %1) #11
  %call18 = tail call i32 @hci_enable_advertising(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_pend_le_action_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_connect_failed(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_passive_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_enable_advertising(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hci_connect_le(ptr noundef %hdev, ptr noundef %dst, i8 noundef zeroext %dst_type, i1 noundef zeroext %dst_resolved, i8 noundef zeroext %sec_level, i16 noundef zeroext %conn_timeout, i8 noundef zeroext %role) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 206
  %0 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dev_flags, align 4
  %2 = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 21, i32 0, i32 4
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1, align 2
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %spec.select89 = select i1 %tobool2.not, ptr inttoptr (i32 -95 to ptr), ptr inttoptr (i32 -111 to ptr)
  br label %cleanup

if.end6:                                          ; preds = %entry
  %conn_hash.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183
  %6 = tail call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !232
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end6.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end6.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end6
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 696, ptr noundef nonnull @.str.91) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end6.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b38.i = load i1, ptr @hci_lookup_le_connect.__warned, align 1
  br i1 %.b38.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @hci_lookup_le_connect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.73, i32 noundef 1096, ptr noundef nonnull @.str.47) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %10 = ptrtoint ptr %conn_hash.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %c.060.i = load volatile ptr, ptr %conn_hash.i, align 4
  %cmp.not61.i = icmp eq ptr %c.060.i, %conn_hash.i
  br i1 %cmp.not61.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %c.062.i = phi ptr [ %c.0.i, %for.inc.i.for.body.i_crit_edge ], [ %c.060.i, %do.end.i.for.body.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.hci_conn, ptr %c.062.i, i32 0, i32 14
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %12)
  %cmp11.i = icmp eq i8 %12, -128
  br i1 %cmp11.i, label %land.lhs.true13.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true13.i:                                ; preds = %for.body.i
  %state.i = getelementptr inbounds %struct.hci_conn, ptr %c.062.i, i32 0, i32 12
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %14)
  %cmp15.i = icmp eq i16 %14, 5
  br i1 %cmp15.i, label %land.lhs.true17.i, label %land.lhs.true13.i.for.inc.i_crit_edge

land.lhs.true13.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true17.i:                                ; preds = %land.lhs.true13.i
  %flags.i = getelementptr inbounds %struct.hci_conn, ptr %c.062.i, i32 0, i32 47
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %17 = and i32 %16, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool19.not.i = icmp eq i32 %17, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %land.lhs.true17.i.for.inc.i_crit_edge

land.lhs.true17.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then20.i:                                      ; preds = %land.lhs.true17.i
  %call.i39.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i39.i, label %if.then20.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i42.i

if.then20.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i42.i:                              ; preds = %if.then20.i
  %call1.i40.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40.i)
  %tobool.not.i41.i = icmp eq i32 %call1.i40.i, 0
  br i1 %tobool.not.i41.i, label %land.lhs.true.i42.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i44.i

land.lhs.true.i42.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i44.i:                             ; preds = %land.lhs.true.i42.i
  %.b4.i43.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i43.i, label %land.lhs.true2.i44.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i45.i

land.lhs.true2.i44.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i45.i:                                    ; preds = %land.lhs.true2.i44.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 724, ptr noundef nonnull @.str.92) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i45.i, %land.lhs.true2.i44.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i42.i.rcu_read_unlock.exit.i_crit_edge, %if.then20.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !233
  br label %hci_lookup_le_connect.exit

for.inc.i:                                        ; preds = %land.lhs.true17.i.for.inc.i_crit_edge, %land.lhs.true13.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %18 = ptrtoint ptr %c.062.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %c.0.i = load volatile ptr, ptr %c.062.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, %conn_hash.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i48.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i48.i, label %for.end.i.rcu_read_unlock.exit58.i_crit_edge, label %land.lhs.true.i51.i

for.end.i.rcu_read_unlock.exit58.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit58.i

land.lhs.true.i51.i:                              ; preds = %for.end.i
  %call1.i49.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49.i)
  %tobool.not.i50.i = icmp eq i32 %call1.i49.i, 0
  br i1 %tobool.not.i50.i, label %land.lhs.true.i51.i.rcu_read_unlock.exit58.i_crit_edge, label %land.lhs.true2.i53.i

land.lhs.true.i51.i.rcu_read_unlock.exit58.i_crit_edge: ; preds = %land.lhs.true.i51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit58.i

land.lhs.true2.i53.i:                             ; preds = %land.lhs.true.i51.i
  %.b4.i52.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52.i, label %land.lhs.true2.i53.i.rcu_read_unlock.exit58.i_crit_edge, label %if.then.i54.i

land.lhs.true2.i53.i.rcu_read_unlock.exit58.i_crit_edge: ; preds = %land.lhs.true2.i53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit58.i

if.then.i54.i:                                    ; preds = %land.lhs.true2.i53.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 724, ptr noundef nonnull @.str.92) #11
  br label %rcu_read_unlock.exit58.i

rcu_read_unlock.exit58.i:                         ; preds = %if.then.i54.i, %land.lhs.true2.i53.i.rcu_read_unlock.exit58.i_crit_edge, %land.lhs.true.i51.i.rcu_read_unlock.exit58.i_crit_edge, %for.end.i.rcu_read_unlock.exit58.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !233
  br label %hci_lookup_le_connect.exit

hci_lookup_le_connect.exit:                       ; preds = %rcu_read_unlock.exit58.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %c.062.i, %rcu_read_unlock.exit.i ], [ null, %rcu_read_unlock.exit58.i ]
  %19 = tail call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i55.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i55.i to ptr
  %preempt_count.i.i.i.i56.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i56.i, align 4
  %sub.i.i.i57.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i57.i, ptr %preempt_count.i.i.i.i56.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tobool8.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool8.not, label %if.end11, label %hci_lookup_le_connect.exit.cleanup_crit_edge

hci_lookup_le_connect.exit.cleanup_crit_edge:     ; preds = %hci_lookup_le_connect.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %hci_lookup_le_connect.exit
  %call12 = tail call fastcc ptr @hci_conn_hash_lookup_le(ptr noundef %hdev, ptr noundef %dst, i8 noundef zeroext %dst_type)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %land.lhs.true

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end11
  %flags = getelementptr inbounds %struct.hci_conn, ptr %call12, i32 0, i32 47
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %25 = and i32 %24, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool15.not = icmp eq i32 %25, 0
  br i1 %tobool15.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  br i1 %dst_resolved, label %if.end18.if.end33_crit_edge, label %if.then20

if.end18.if.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then20:                                        ; preds = %if.end18
  %call21 = tail call ptr @hci_find_irk_by_addr(ptr noundef %hdev, ptr noundef %dst, i8 noundef zeroext %dst_type) #11
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then20.if.end33_crit_edge, label %land.lhs.true23

if.then20.if.end33_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true23:                                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %rpa = getelementptr inbounds %struct.smp_irk, ptr %call21, i32 0, i32 2
  %26 = call ptr @memset(ptr %.compoundliteral, i32 0, i32 6)
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %rpa, ptr noundef nonnull dereferenceable(6) %.compoundliteral, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool29.not = icmp eq i32 %bcmp, 0
  %spec.select = select i1 %tobool29.not, i8 %dst_type, i8 1
  %spec.select83 = select i1 %tobool29.not, ptr %dst, ptr %rpa
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true23, %if.then20.if.end33_crit_edge, %if.end18.if.end33_crit_edge
  %dst_type.addr.0 = phi i8 [ %dst_type, %if.end18.if.end33_crit_edge ], [ %dst_type, %if.then20.if.end33_crit_edge ], [ %spec.select, %land.lhs.true23 ]
  %dst.addr.0 = phi ptr [ %dst, %if.end18.if.end33_crit_edge ], [ %dst, %if.then20.if.end33_crit_edge ], [ %spec.select83, %land.lhs.true23 ]
  br i1 %tobool13.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %dst36 = getelementptr inbounds %struct.hci_conn, ptr %call12, i32 0, i32 2
  %27 = call ptr @memcpy(ptr %dst36, ptr %dst.addr.0, i32 6)
  br label %if.end42

if.else:                                          ; preds = %if.end33
  %call37 = tail call ptr @hci_conn_add(ptr noundef %hdev, i32 noundef 128, ptr noundef %dst.addr.0, i8 noundef zeroext %role)
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.else.cleanup_crit_edge, label %if.end41

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41:                                         ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_hold.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_connect_le, %if.then.i87)) #11
          to label %hci_conn_hold.exit [label %if.then.i87], !srcloc !229

if.then.i87:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %refcnt.i = getelementptr inbounds %struct.hci_conn, ptr %call37, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #11
  %28 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %refcnt.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_hold.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.76, ptr noundef nonnull %call37, i32 noundef %29) #11
  br label %hci_conn_hold.exit

hci_conn_hold.exit:                               ; preds = %if.then.i87, %if.end41
  %refcnt4.i = getelementptr inbounds %struct.hci_conn, ptr %call37, i32 0, i32 1
  %call.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #11
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #11, !srcloc !239
  %disc_work.i = getelementptr inbounds %struct.hci_conn, ptr %call37, i32 0, i32 58
  %call5.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %disc_work.i) #11
  %pending_sec_level = getelementptr inbounds %struct.hci_conn, ptr %call37, i32 0, i32 25
  %31 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %sec_level, ptr %pending_sec_level, align 1
  br label %if.end42

if.end42:                                         ; preds = %hci_conn_hold.exit, %if.then35
  %conn.0 = phi ptr [ %call12, %if.then35 ], [ %call37, %hci_conn_hold.exit ]
  %dst_type43 = getelementptr inbounds %struct.hci_conn, ptr %conn.0, i32 0, i32 3
  %32 = ptrtoint ptr %dst_type43 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %dst_type.addr.0, ptr %dst_type43, align 2
  %sec_level44 = getelementptr inbounds %struct.hci_conn, ptr %conn.0, i32 0, i32 24
  %33 = ptrtoint ptr %sec_level44 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %sec_level44, align 4
  %conn_timeout45 = getelementptr inbounds %struct.hci_conn, ptr %conn.0, i32 0, i32 32
  %34 = ptrtoint ptr %conn_timeout45 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conn_timeout, ptr %conn_timeout45, align 4
  %state = getelementptr inbounds %struct.hci_conn, ptr %conn.0, i32 0, i32 12
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 5, ptr %state, align 4
  %flags46 = getelementptr inbounds %struct.hci_conn, ptr %conn.0, i32 0, i32 47
  tail call void @_clear_bit(i32 noundef 21, ptr noundef %flags46) #11
  %call47 = tail call i32 @hci_cmd_sync_queue(ptr noundef %hdev, ptr noundef nonnull @hci_connect_le_sync, ptr noundef nonnull %conn.0, ptr noundef nonnull @create_le_conn_complete) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end42.cleanup_crit_edge, label %if.then49

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %call50 = tail call i32 @hci_conn_del(ptr noundef nonnull %conn.0)
  %36 = inttoptr i32 %call47 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end42.cleanup_crit_edge, %if.else.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %hci_lookup_le_connect.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %36, %if.then49 ], [ %conn.0, %if.end42.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %hci_lookup_le_connect.exit.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %land.lhs.true.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.cleanup_crit_edge ], [ %spec.select89, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hci_conn_hash_lookup_le(ptr noundef %hdev, ptr nocapture noundef readonly %ba, i8 noundef zeroext %ba_type) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conn_hash = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !232
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 696, ptr noundef nonnull @.str.91) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @hci_conn_hash_lookup_le.__warned, align 1
  br i1 %.b40, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @hci_conn_hash_lookup_le.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.73, i32 noundef 1054, ptr noundef nonnull @.str.47) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %4 = ptrtoint ptr %conn_hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %c.063 = load volatile ptr, ptr %conn_hash, align 4
  %cmp.not64 = icmp eq ptr %c.063, %conn_hash
  br i1 %cmp.not64, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %c.065 = phi ptr [ %c.0, %for.inc.for.body_crit_edge ], [ %c.063, %do.end.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.hci_conn, ptr %c.065, i32 0, i32 14
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %6)
  %cmp11.not = icmp eq i8 %6, -128
  br i1 %cmp11.not, label %if.end14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %c.065, i32 0, i32 3
  %7 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dst_type, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %ba_type)
  %cmp17 = icmp eq i8 %8, %ba_type
  br i1 %cmp17, label %land.lhs.true19, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true19:                                  ; preds = %if.end14
  %dst = getelementptr inbounds %struct.hci_conn, ptr %c.065, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst, ptr noundef dereferenceable(6) %ba, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool21.not = icmp eq i32 %bcmp, 0
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then22:                                        ; preds = %land.lhs.true19
  %call.i42 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i42, label %if.then22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i45

if.then22.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i45:                                ; preds = %if.then22
  %call1.i43 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i47

land.lhs.true.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i47:                               ; preds = %land.lhs.true.i45
  %.b4.i46 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46, label %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, label %if.then.i48

land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i48:                                      ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 724, ptr noundef nonnull @.str.92) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i48, %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, %if.then22.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !233
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true19.for.inc_crit_edge, %if.end14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %c.065 to i32
  call void @__asan_load4_noabort(i32 %9)
  %c.0 = load volatile ptr, ptr %c.065, align 4
  %cmp.not = icmp eq ptr %c.0, %conn_hash
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i51 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i51, label %for.end.rcu_read_unlock.exit61_crit_edge, label %land.lhs.true.i54

for.end.rcu_read_unlock.exit61_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit61

land.lhs.true.i54:                                ; preds = %for.end
  %call1.i52 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit61_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit61_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit61

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit61_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit61_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit61

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 724, ptr noundef nonnull @.str.92) #11
  br label %rcu_read_unlock.exit61

rcu_read_unlock.exit61:                           ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit61_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit61_crit_edge, %for.end.rcu_read_unlock.exit61_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !233
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit61, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %c.065, %rcu_read_unlock.exit ], [ null, %rcu_read_unlock.exit61 ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i58 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i58 to ptr
  %preempt_count.i.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i59, align 4
  %sub.i.i.i60 = add i32 %13, -1
  store volatile i32 %sub.i.i.i60, ptr %preempt_count.i.i.i.i59, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_irk_by_addr(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_cmd_sync_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_connect_le_sync(ptr noundef %hdev, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_connect_le_sync.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_connect_le_sync, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_connect_le_sync.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.79, ptr noundef %name, ptr noundef %data) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @hci_le_create_conn_sync(ptr noundef %hdev, ptr noundef %data) #11
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @create_le_conn_complete(ptr noundef %hdev, ptr noundef %data, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hci_connect_le_scan_cleanup(ptr noundef %data)
  br label %done

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.80, ptr noundef %name, i32 noundef %err) #11
  %tobool1.not = icmp eq ptr %data, null
  br i1 %tobool1.not, label %if.end.done_crit_edge, label %if.end3

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %err to i8
  tail call void @hci_le_conn_failed(ptr noundef nonnull %data, i8 noundef zeroext %conv)
  br label %done

done:                                             ; preds = %if.end3, %if.end.done_crit_edge, %if.then
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hci_connect_le_scan(ptr noundef %hdev, ptr noundef %dst, i8 noundef zeroext %dst_type, i8 noundef zeroext %sec_level, i16 noundef zeroext %conn_timeout, i32 noundef %conn_reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 206
  %0 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dev_flags, align 4
  %2 = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 21, i32 0, i32 4
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1, align 2
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool2.not, ptr inttoptr (i32 -95 to ptr), ptr inttoptr (i32 -111 to ptr)
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call fastcc ptr @hci_conn_hash_lookup_le(ptr noundef %hdev, ptr noundef %dst, i8 noundef zeroext %dst_type)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.body, label %if.then9

if.then9:                                         ; preds = %if.end6
  %pending_sec_level = getelementptr inbounds %struct.hci_conn, ptr %call7, i32 0, i32 25
  %6 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pending_sec_level, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %sec_level)
  %cmp = icmp ult i8 %7, %sec_level
  br i1 %cmp, label %if.then13, label %if.then9.done_crit_edge

if.then9.done_crit_edge:                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %sec_level, ptr %pending_sec_level, align 1
  br label %done

do.body:                                          ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_connect_le_scan.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_connect_le_scan, %if.then21)) #11
          to label %do.end [label %if.then21], !srcloc !229

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_connect_le_scan.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.30) #11
  br label %do.end

do.end:                                           ; preds = %if.then21, %do.body
  %call23 = tail call ptr @hci_conn_add(ptr noundef %hdev, i32 noundef 128, ptr noundef %dst, i8 noundef zeroext 0)
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end.cleanup_crit_edge, label %if.end27

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %do.end
  %call28 = tail call fastcc i32 @hci_explicit_conn_params_set(ptr noundef %hdev, ptr noundef %dst, i8 noundef zeroext %dst_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = tail call i32 @hci_conn_del(ptr noundef nonnull %call23)
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %state = getelementptr inbounds %struct.hci_conn, ptr %call23, i32 0, i32 12
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 5, ptr %state, align 4
  %flags = getelementptr inbounds %struct.hci_conn, ptr %call23, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 21, ptr noundef %flags) #11
  %dst_type35 = getelementptr inbounds %struct.hci_conn, ptr %call23, i32 0, i32 3
  %10 = ptrtoint ptr %dst_type35 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %dst_type, ptr %dst_type35, align 2
  %sec_level36 = getelementptr inbounds %struct.hci_conn, ptr %call23, i32 0, i32 24
  %11 = ptrtoint ptr %sec_level36 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %sec_level36, align 4
  %pending_sec_level37 = getelementptr inbounds %struct.hci_conn, ptr %call23, i32 0, i32 25
  %12 = ptrtoint ptr %pending_sec_level37 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %sec_level, ptr %pending_sec_level37, align 1
  %conn_timeout38 = getelementptr inbounds %struct.hci_conn, ptr %call23, i32 0, i32 32
  %13 = ptrtoint ptr %conn_timeout38 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conn_timeout, ptr %conn_timeout38, align 4
  %conn_reason39 = getelementptr inbounds %struct.hci_conn, ptr %call23, i32 0, i32 48
  %14 = ptrtoint ptr %conn_reason39 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conn_reason, ptr %conn_reason39, align 8
  %call40 = tail call i32 @hci_update_passive_scan(ptr noundef %hdev) #11
  br label %done

done:                                             ; preds = %if.end34, %if.then13, %if.then9.done_crit_edge
  %conn.0 = phi ptr [ %call7, %if.then13 ], [ %call7, %if.then9.done_crit_edge ], [ %call23, %if.end34 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_hold.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_connect_le_scan, %if.then.i)) #11
          to label %hci_conn_hold.exit [label %if.then.i], !srcloc !229

if.then.i:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  %refcnt.i = getelementptr inbounds %struct.hci_conn, ptr %conn.0, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #11
  %15 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %refcnt.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_hold.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.76, ptr noundef nonnull %conn.0, i32 noundef %16) #11
  br label %hci_conn_hold.exit

hci_conn_hold.exit:                               ; preds = %if.then.i, %done
  %refcnt4.i = getelementptr inbounds %struct.hci_conn, ptr %conn.0, i32 0, i32 1
  %call.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #11, !srcloc !239
  %disc_work.i = getelementptr inbounds %struct.hci_conn, ptr %conn.0, i32 0, i32 58
  %call5.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %disc_work.i) #11
  br label %cleanup

cleanup:                                          ; preds = %hci_conn_hold.exit, %if.then31, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %conn.0, %hci_conn_hold.exit ], [ inttoptr (i32 -16 to ptr), %if.then31 ], [ inttoptr (i32 -12 to ptr), %do.end.cleanup_crit_edge ], [ %spec.select, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hci_explicit_conn_params_set(ptr noundef %hdev, ptr noundef %addr, i8 noundef zeroext %addr_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @hci_conn_hash_lookup_le(ptr noundef %hdev, ptr noundef %addr, i8 noundef zeroext %addr_type) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %is_connected.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

is_connected.exit:                                ; preds = %entry
  %state.i = getelementptr inbounds %struct.hci_conn, ptr %call.i, i32 0, i32 12
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp.not.i = icmp eq i16 %1, 1
  br i1 %cmp.not.i, label %is_connected.exit.cleanup_crit_edge, label %is_connected.exit.if.end_crit_edge

is_connected.exit.if.end_crit_edge:               ; preds = %is_connected.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

is_connected.exit.cleanup_crit_edge:              ; preds = %is_connected.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %is_connected.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call ptr @hci_conn_params_lookup(ptr noundef %hdev, ptr noundef %addr, i8 noundef zeroext %addr_type) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @hci_conn_params_add(ptr noundef %hdev, ptr noundef %addr, i8 noundef zeroext %addr_type) #11
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %auto_connect = getelementptr inbounds %struct.hci_conn_params, ptr %call3, i32 0, i32 8
  %2 = ptrtoint ptr %auto_connect to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %auto_connect, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end.if.end7_crit_edge
  %params.0 = phi ptr [ %call1, %if.end.if.end7_crit_edge ], [ %call3, %if.end6 ]
  %auto_connect8 = getelementptr inbounds %struct.hci_conn_params, ptr %params.0, i32 0, i32 8
  %3 = ptrtoint ptr %auto_connect8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %auto_connect8, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %4, label %if.end7.if.end16_crit_edge [
    i32 0, label %if.end7.if.then14_crit_edge
    i32 1, label %if.end7.if.then14_crit_edge47
    i32 5, label %if.end7.if.then14_crit_edge48
  ]

if.end7.if.then14_crit_edge48:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end7.if.then14_crit_edge47:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end7.if.then14_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %if.end7.if.then14_crit_edge, %if.end7.if.then14_crit_edge47, %if.end7.if.then14_crit_edge48
  %action = getelementptr inbounds %struct.hci_conn_params, ptr %params.0, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %action) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.list_del_init.exit_crit_edge

if.then14.list_del_init.exit_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.hci_conn_params, ptr %params.0, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %action, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then14.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %action, ptr %action, align 4
  %prev.i3.i = getelementptr inbounds %struct.hci_conn_params, ptr %params.0, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %action, ptr %prev.i3.i, align 4
  %pend_le_conns = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 195
  %14 = ptrtoint ptr %pend_le_conns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pend_le_conns, align 4
  %call.i.i43 = tail call zeroext i1 @__list_add_valid(ptr noundef %action, ptr noundef %pend_le_conns, ptr noundef %15) #11
  br i1 %call.i.i43, label %if.end.i.i44, label %list_del_init.exit.if.end16_crit_edge

list_del_init.exit.if.end16_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end.i.i44:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %action, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %action, align 4
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pend_le_conns, ptr %prev.i3.i, align 4
  %19 = ptrtoint ptr %pend_le_conns to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %action, ptr %pend_le_conns, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end.i.i44, %list_del_init.exit.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %explicit_connect = getelementptr inbounds %struct.hci_conn_params, ptr %params.0, i32 0, i32 10
  %20 = ptrtoint ptr %explicit_connect to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %explicit_connect, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_explicit_conn_params_set.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_explicit_conn_params_set, %if.then21)) #11
          to label %cleanup [label %if.then21], !srcloc !229

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %addr_type to i32
  %21 = ptrtoint ptr %auto_connect8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %auto_connect8, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_explicit_conn_params_set.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.82, ptr noundef %addr, i32 noundef %conv, i32 noundef %22) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end16, %if.then2.cleanup_crit_edge, %is_connected.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -106, %is_connected.exit.cleanup_crit_edge ], [ -12, %if.then2.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hci_connect_acl(ptr noundef %hdev, ptr noundef %dst, i8 noundef zeroext %sec_level, i8 noundef zeroext %auth_type, i32 noundef %conn_reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 206, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 21, i32 0, i32 4
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 2
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %spec.select = select i1 %tobool2.not, ptr inttoptr (i32 -111 to ptr), ptr inttoptr (i32 -95 to ptr)
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call fastcc ptr @hci_conn_hash_lookup_ba(ptr noundef %hdev, i8 noundef zeroext 1, ptr noundef %dst)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then9:                                         ; preds = %if.end6
  %call10 = tail call ptr @hci_conn_add(ptr noundef %hdev, i32 noundef 1, ptr noundef %dst, i8 noundef zeroext 0)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %if.then9.if.end15_crit_edge

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %acl.0 = phi ptr [ %call7, %if.end6.if.end15_crit_edge ], [ %call10, %if.then9.if.end15_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_hold.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_connect_acl, %if.then.i)) #11
          to label %hci_conn_hold.exit [label %if.then.i], !srcloc !229

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %refcnt.i = getelementptr inbounds %struct.hci_conn, ptr %acl.0, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #11
  %5 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %refcnt.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_hold.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.76, ptr noundef nonnull %acl.0, i32 noundef %6) #11
  br label %hci_conn_hold.exit

hci_conn_hold.exit:                               ; preds = %if.then.i, %if.end15
  %refcnt4.i = getelementptr inbounds %struct.hci_conn, ptr %acl.0, i32 0, i32 1
  %call.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #11, !srcloc !239
  %disc_work.i = getelementptr inbounds %struct.hci_conn, ptr %acl.0, i32 0, i32 58
  %call5.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %disc_work.i) #11
  %conn_reason16 = getelementptr inbounds %struct.hci_conn, ptr %acl.0, i32 0, i32 48
  %8 = ptrtoint ptr %conn_reason16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conn_reason, ptr %conn_reason16, align 8
  %state = getelementptr inbounds %struct.hci_conn, ptr %acl.0, i32 0, i32 12
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %state, align 4
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %10, label %hci_conn_hold.exit.cleanup_crit_edge [
    i16 2, label %hci_conn_hold.exit.if.then23_crit_edge
    i16 9, label %hci_conn_hold.exit.if.then23_crit_edge41
  ]

hci_conn_hold.exit.if.then23_crit_edge41:         ; preds = %hci_conn_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

hci_conn_hold.exit.if.then23_crit_edge:           ; preds = %hci_conn_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

hci_conn_hold.exit.cleanup_crit_edge:             ; preds = %hci_conn_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then23:                                        ; preds = %hci_conn_hold.exit.if.then23_crit_edge, %hci_conn_hold.exit.if.then23_crit_edge41
  %sec_level24 = getelementptr inbounds %struct.hci_conn, ptr %acl.0, i32 0, i32 24
  %12 = ptrtoint ptr %sec_level24 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %sec_level24, align 4
  %pending_sec_level = getelementptr inbounds %struct.hci_conn, ptr %acl.0, i32 0, i32 25
  %13 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %sec_level, ptr %pending_sec_level, align 1
  %auth_type25 = getelementptr inbounds %struct.hci_conn, ptr %acl.0, i32 0, i32 23
  %14 = ptrtoint ptr %auth_type25 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %auth_type, ptr %auth_type25, align 1
  tail call fastcc void @hci_acl_create_connection(ptr noundef nonnull %acl.0)
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %hci_conn_hold.exit.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %acl.0, %hci_conn_hold.exit.cleanup_crit_edge ], [ %acl.0, %if.then23 ], [ inttoptr (i32 -12 to ptr), %if.then9.cleanup_crit_edge ], [ %spec.select, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hci_conn_hash_lookup_ba(ptr noundef %hdev, i8 noundef zeroext %type, ptr nocapture noundef readonly %ba) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conn_hash = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !232
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 696, ptr noundef nonnull @.str.91) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @hci_conn_hash_lookup_ba.__warned, align 1
  br i1 %.b35, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @hci_conn_hash_lookup_ba.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.73, i32 noundef 1033, ptr noundef nonnull @.str.47) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %4 = ptrtoint ptr %conn_hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %c.058 = load volatile ptr, ptr %conn_hash, align 4
  %cmp.not59 = icmp eq ptr %c.058, %conn_hash
  br i1 %cmp.not59, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %c.060 = phi ptr [ %c.0, %for.inc.for.body_crit_edge ], [ %c.058, %do.end.for.body_crit_edge ]
  %type11 = getelementptr inbounds %struct.hci_conn, ptr %c.060, i32 0, i32 14
  %5 = ptrtoint ptr %type11 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %type)
  %cmp13 = icmp eq i8 %6, %type
  br i1 %cmp13, label %land.lhs.true15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true15:                                  ; preds = %for.body
  %dst = getelementptr inbounds %struct.hci_conn, ptr %c.060, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst, ptr noundef dereferenceable(6) %ba, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool17.not = icmp eq i32 %bcmp, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true15
  %call.i37 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i37, label %if.then18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i40

if.then18.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i40:                                ; preds = %if.then18
  %call1.i38 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool.not.i39, label %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i42

land.lhs.true.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i42:                               ; preds = %land.lhs.true.i40
  %.b4.i41 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41, label %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, label %if.then.i43

land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i43:                                      ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 724, ptr noundef nonnull @.str.92) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i43, %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, %if.then18.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !233
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %c.060 to i32
  call void @__asan_load4_noabort(i32 %7)
  %c.0 = load volatile ptr, ptr %c.060, align 4
  %cmp.not = icmp eq ptr %c.0, %conn_hash
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i46 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i46, label %for.end.rcu_read_unlock.exit56_crit_edge, label %land.lhs.true.i49

for.end.rcu_read_unlock.exit56_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit56

land.lhs.true.i49:                                ; preds = %for.end
  %call1.i47 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool.not.i48, label %land.lhs.true.i49.rcu_read_unlock.exit56_crit_edge, label %land.lhs.true2.i51

land.lhs.true.i49.rcu_read_unlock.exit56_crit_edge: ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit56

land.lhs.true2.i51:                               ; preds = %land.lhs.true.i49
  %.b4.i50 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i50, label %land.lhs.true2.i51.rcu_read_unlock.exit56_crit_edge, label %if.then.i52

land.lhs.true2.i51.rcu_read_unlock.exit56_crit_edge: ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit56

if.then.i52:                                      ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 724, ptr noundef nonnull @.str.92) #11
  br label %rcu_read_unlock.exit56

rcu_read_unlock.exit56:                           ; preds = %if.then.i52, %land.lhs.true2.i51.rcu_read_unlock.exit56_crit_edge, %land.lhs.true.i49.rcu_read_unlock.exit56_crit_edge, %for.end.rcu_read_unlock.exit56_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !233
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit56, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %c.060, %rcu_read_unlock.exit ], [ null, %rcu_read_unlock.exit56 ]
  %8 = tail call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i53 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i53 to ptr
  %preempt_count.i.i.i.i54 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i54, align 4
  %sub.i.i.i55 = add i32 %11, -1
  store volatile i32 %sub.i.i.i55, ptr %preempt_count.i.i.i.i54, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_acl_create_connection(ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_create_conn, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %cp) #11
  %2 = getelementptr inbounds %struct.hci_cp_create_conn, ptr %cp, i32 0, i32 1
  %3 = getelementptr inbounds %struct.hci_cp_create_conn, ptr %cp, i32 0, i32 2
  %4 = getelementptr inbounds %struct.hci_cp_create_conn, ptr %cp, i32 0, i32 3
  %5 = getelementptr inbounds %struct.hci_cp_create_conn, ptr %cp, i32 0, i32 4
  %6 = getelementptr inbounds %struct.hci_cp_create_conn, ptr %cp, i32 0, i32 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_acl_create_connection.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_acl_create_connection, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_acl_create_connection.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.3, ptr noundef %conn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  %state9 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 12
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %state9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 6, ptr %state9, align 4
  %call7 = tail call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 1026, i32 noundef 0, ptr noundef null) #11
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %11 = ptrtoint ptr %state9 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 5, ptr %state9, align 4
  %out = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 16
  %12 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %out, align 1
  %role = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 15
  %13 = ptrtoint ptr %role to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %role, align 8
  %attempt = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 17
  %14 = ptrtoint ptr %attempt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %attempt, align 2
  %inc = add i8 %15, 1
  store i8 %inc, ptr %attempt, align 2
  %link_policy = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 100
  %16 = ptrtoint ptr %link_policy to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %link_policy, align 8
  %link_policy10 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 21
  %18 = ptrtoint ptr %link_policy10 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %link_policy10, align 8
  %dst = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2
  %19 = getelementptr inbounds i8, ptr %cp, i32 9
  %20 = call ptr @memset(ptr %19, i32 0, i32 3)
  %21 = call ptr @memcpy(ptr %cp, ptr %dst, i32 6)
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %3, align 1
  %call12 = tail call ptr @hci_inquiry_cache_lookup(ptr noundef %1, ptr noundef %dst) #11
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end8.if.end28_crit_edge, label %if.then14

if.end8.if.end28_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then14:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %timestamp.i = getelementptr inbounds %struct.inquiry_entry, ptr %call12, i32 0, i32 3
  %24 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timestamp.i, align 4
  %sub.i = sub i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 6001, i32 %sub.i)
  %cmp = icmp slt i32 %sub.i, 6001
  br i1 %cmp, label %if.then16, label %if.then14.if.end24_crit_edge

if.then14.if.end24_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %pscan_rep_mode17 = getelementptr inbounds %struct.inquiry_entry, ptr %call12, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %pscan_rep_mode17 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pscan_rep_mode17, align 2
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %3, align 1
  %pscan_mode = getelementptr inbounds %struct.inquiry_entry, ptr %call12, i32 0, i32 4, i32 3
  %29 = ptrtoint ptr %pscan_mode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pscan_mode, align 4
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %4, align 1
  %clock_offset = getelementptr inbounds %struct.inquiry_entry, ptr %call12, i32 0, i32 4, i32 5
  %32 = ptrtoint ptr %clock_offset to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %clock_offset, align 4
  %34 = or i16 %33, 128
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %5, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %if.then14.if.end24_crit_edge
  %dev_class = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 18
  %dev_class26 = getelementptr inbounds %struct.inquiry_entry, ptr %call12, i32 0, i32 4, i32 4
  %36 = call ptr @memcpy(ptr %dev_class, ptr %dev_class26, i32 3)
  br label %if.end28

if.end28:                                         ; preds = %if.end24, %if.end8.if.end28_crit_edge
  %pkt_type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 20
  %37 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %pkt_type, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %2, align 1
  %features = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 21
  %41 = ptrtoint ptr %features to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %features, align 2
  %43 = and i8 %42, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool32.not = icmp eq i8 %43, 0
  br i1 %tobool32.not, label %if.end28.if.else_crit_edge, label %land.lhs.true

if.end28.if.else_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end28
  %link_mode = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 101
  %44 = ptrtoint ptr %link_mode to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %link_mode, align 2
  %46 = and i16 %45, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool35.not = icmp eq i16 %46, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end28.if.else_crit_edge
  br label %if.end38

if.end38:                                         ; preds = %if.else, %land.lhs.true.if.end38_crit_edge
  %storemerge = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true.if.end38_crit_edge ]
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %storemerge, ptr %6, align 1
  %call39 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 1029, i32 noundef 13, ptr noundef nonnull %cp) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then6
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %cp) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hci_connect_sco(ptr noundef %hdev, i32 noundef %type, ptr noundef %dst, i16 noundef zeroext %setting, ptr nocapture noundef readonly %codec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hci_connect_acl(ptr noundef %hdev, ptr noundef %dst, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 2)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %type to i8
  %call2 = tail call fastcc ptr @hci_conn_hash_lookup_ba(ptr noundef %hdev, i8 noundef zeroext %conv, ptr noundef %dst)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @hci_conn_add(ptr noundef %hdev, i32 noundef %type, ptr noundef %dst, i8 noundef zeroext 0)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hci_conn_drop(ptr noundef %call)
  br label %cleanup

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %sco.0 = phi ptr [ %call2, %if.end.if.end9_crit_edge ], [ %call4, %if.then3.if.end9_crit_edge ]
  %link = getelementptr inbounds %struct.hci_conn, ptr %call, i32 0, i32 69
  %0 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sco.0, ptr %link, align 4
  %link10 = getelementptr inbounds %struct.hci_conn, ptr %sco.0, i32 0, i32 69
  %1 = ptrtoint ptr %link10 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %link10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_hold.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_connect_sco, %if.then.i)) #11
          to label %hci_conn_hold.exit [label %if.then.i], !srcloc !229

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %refcnt.i = getelementptr inbounds %struct.hci_conn, ptr %sco.0, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcnt.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_hold.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.76, ptr noundef nonnull %sco.0, i32 noundef %3) #11
  br label %hci_conn_hold.exit

hci_conn_hold.exit:                               ; preds = %if.then.i, %if.end9
  %refcnt4.i = getelementptr inbounds %struct.hci_conn, ptr %sco.0, i32 0, i32 1
  %call.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #11, !srcloc !239
  %disc_work.i = getelementptr inbounds %struct.hci_conn, ptr %sco.0, i32 0, i32 58
  %call5.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %disc_work.i) #11
  %setting11 = getelementptr inbounds %struct.hci_conn, ptr %sco.0, i32 0, i32 33
  %5 = ptrtoint ptr %setting11 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %setting, ptr %setting11, align 2
  %codec12 = getelementptr inbounds %struct.hci_conn, ptr %sco.0, i32 0, i32 70
  %6 = call ptr @memcpy(ptr %codec12, ptr %codec, i32 7)
  %state = getelementptr inbounds %struct.hci_conn, ptr %call, i32 0, i32 12
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp = icmp eq i16 %8, 1
  br i1 %cmp, label %land.lhs.true, label %hci_conn_hold.exit.cleanup_crit_edge

hci_conn_hold.exit.cleanup_crit_edge:             ; preds = %hci_conn_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %hci_conn_hold.exit
  %state15 = getelementptr inbounds %struct.hci_conn, ptr %sco.0, i32 0, i32 12
  %9 = ptrtoint ptr %state15 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %state15, align 4
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.106)
  switch i16 %10, label %land.lhs.true.cleanup_crit_edge [
    i16 2, label %land.lhs.true.if.then23_crit_edge
    i16 9, label %land.lhs.true.if.then23_crit_edge57
  ]

land.lhs.true.if.then23_crit_edge57:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

land.lhs.true.if.then23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then23:                                        ; preds = %land.lhs.true.if.then23_crit_edge, %land.lhs.true.if.then23_crit_edge57
  %flags = getelementptr inbounds %struct.hci_conn, ptr %call, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags) #11
  tail call void @hci_conn_enter_active_mode(ptr noundef %call, i8 noundef zeroext 1)
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool26.not = icmp eq i32 %14, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #11
  br label %cleanup

if.end29:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @hci_sco_setup(ptr noundef %call, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then27, %land.lhs.true.cleanup_crit_edge, %hci_conn_hold.exit.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %sco.0, %if.then27 ], [ inttoptr (i32 -12 to ptr), %if.then6 ], [ %call, %entry.cleanup_crit_edge ], [ %sco.0, %land.lhs.true.cleanup_crit_edge ], [ %sco.0, %if.end29 ], [ %sco.0, %hci_conn_hold.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_conn_enter_active_mode(ptr noundef %conn, i8 noundef zeroext %force_active) local_unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_exit_sniff_mode, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_enter_active_mode.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_enter_active_mode, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 13
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 2
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_enter_active_mode.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.37, ptr noundef %conn, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mode4 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 13
  %4 = ptrtoint ptr %mode4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.not = icmp eq i8 %5, 2
  br i1 %cmp.not, label %if.end8, label %do.end.timer_crit_edge

do.end.timer_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %timer

if.end8:                                          ; preds = %do.end
  %flags = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 47
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %force_active)
  %tobool11.not = icmp eq i8 %force_active, 0
  %or.cond = and i1 %tobool11.not, %tobool10.not
  br i1 %or.cond, label %if.end8.timer_crit_edge, label %if.end13

if.end8.timer_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %timer

if.end13:                                         ; preds = %if.end8
  %call15 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end13.timer_crit_edge

if.end13.timer_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %timer

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cp) #11
  %handle = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 11
  %9 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %handle, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %12 = ptrtoint ptr %cp to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %cp, align 2
  %call19 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 2052, i32 noundef 2, ptr noundef nonnull %cp) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cp) #11
  br label %timer

timer:                                            ; preds = %if.then17, %if.end13.timer_crit_edge, %if.end8.timer_crit_edge, %do.end.timer_crit_edge
  %idle_timeout = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 102
  %13 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idle_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp21.not = icmp eq i32 %14, 0
  br i1 %cmp21.not, label %timer.if.end27_crit_edge, label %if.then23

timer.if.end27_crit_edge:                         ; preds = %timer
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then23:                                        ; preds = %timer
  call void @__sanitizer_cov_trace_pc() #13
  %workqueue = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 138
  %15 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %workqueue, align 4
  %idle_work = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 60
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %14) #11
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %idle_work, i32 noundef %call2.i) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %timer.if.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_conn_check_link_mode(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_check_link_mode.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_check_link_mode, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_check_link_mode.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.3, ptr noundef %conn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %2 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_flags, align 4
  %4 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %do.end.if.end13_crit_edge, label %if.then5

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then5:                                         ; preds = %do.end
  %5 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dev_flags, align 4
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then5.return_crit_edge, label %hci_conn_sc_enabled.exit

if.then5.return_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

hci_conn_sc_enabled.exit:                         ; preds = %if.then5
  %flags.i = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 47
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.i.not = icmp eq i32 %10, 0
  br i1 %tobool3.i.not, label %hci_conn_sc_enabled.exit.return_crit_edge, label %lor.lhs.false

hci_conn_sc_enabled.exit.return_crit_edge:        ; preds = %hci_conn_sc_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %hci_conn_sc_enabled.exit
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i, align 4
  %13 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false9

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %key_type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 22
  %14 = ptrtoint ptr %key_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %key_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %15)
  %cmp.not = icmp eq i8 %15, 8
  br i1 %cmp.not, label %lor.lhs.false9.if.end13_crit_edge, label %lor.lhs.false9.return_crit_edge

lor.lhs.false9.return_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false9.if.end13_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end13:                                         ; preds = %lor.lhs.false9.if.end13_crit_edge, %do.end.if.end13_crit_edge
  %sec_level = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 24
  %16 = ptrtoint ptr %sec_level to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sec_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp15 = icmp eq i8 %17, 4
  br i1 %cmp15, label %land.lhs.true, label %if.end13.if.end23_crit_edge

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end13
  %flags17 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 47
  %18 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags17, align 4
  %20 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not = icmp eq i32 %20, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.32, ptr noundef %name) #11
  br label %return

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  %21 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %dev_flags, align 4
  %23 = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i49 = icmp eq i32 %23, 0
  br i1 %tobool.not.i49, label %if.end23.if.end31_crit_edge, label %hci_conn_ssp_enabled.exit

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

hci_conn_ssp_enabled.exit:                        ; preds = %if.end23
  %flags.i50 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 47
  %24 = ptrtoint ptr %flags.i50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i50, align 4
  %26 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool3.i51.not = icmp eq i32 %26, 0
  br i1 %tobool3.i51.not, label %hci_conn_ssp_enabled.exit.if.end31_crit_edge, label %land.lhs.true26

hci_conn_ssp_enabled.exit.if.end31_crit_edge:     ; preds = %hci_conn_ssp_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true26:                                  ; preds = %hci_conn_ssp_enabled.exit
  %27 = ptrtoint ptr %flags.i50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i50, align 4
  %29 = and i32 %28, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool29.not = icmp eq i32 %29, 0
  br i1 %tobool29.not, label %land.lhs.true26.return_crit_edge, label %land.lhs.true26.if.end31_crit_edge

land.lhs.true26.if.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true26.return_crit_edge:                 ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end31:                                         ; preds = %land.lhs.true26.if.end31_crit_edge, %hci_conn_ssp_enabled.exit.if.end31_crit_edge, %if.end23.if.end31_crit_edge
  br label %return

return:                                           ; preds = %if.end31, %land.lhs.true26.return_crit_edge, %if.then20, %lor.lhs.false9.return_crit_edge, %lor.lhs.false.return_crit_edge, %hci_conn_sc_enabled.exit.return_crit_edge, %if.then5.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end31 ], [ 0, %if.then20 ], [ 0, %lor.lhs.false9.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %hci_conn_sc_enabled.exit.return_crit_edge ], [ 0, %land.lhs.true26.return_crit_edge ], [ 0, %if.then5.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_conn_security(ptr noundef %conn, i8 noundef zeroext %sec_level, i8 noundef zeroext %auth_type, i1 noundef zeroext %initiator) #0 align 64 {
entry:
  %cp.i = alloca %struct.hci_cp_set_conn_encrypt, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_security.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_security, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_security.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.3, ptr noundef %conn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 14
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %1)
  %cmp = icmp eq i8 %1, -128
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @smp_conn_security(ptr noundef %conn, i8 noundef zeroext %sec_level) #11
  br label %return

if.end7:                                          ; preds = %do.end
  %2 = zext i8 %sec_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.107)
  switch i8 %sec_level, label %if.end7.if.end18_crit_edge [
    i8 0, label %if.end7.return_crit_edge
    i8 1, label %land.lhs.true
  ]

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end7
  %hdev1.i = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %3 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev1.i, align 4
  %dev_flags.i = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 206
  %5 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dev_flags.i, align 4
  %7 = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %land.lhs.true.return_crit_edge, label %hci_conn_ssp_enabled.exit

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

hci_conn_ssp_enabled.exit:                        ; preds = %land.lhs.true
  %flags.i = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 47
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %10 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.i.not = icmp eq i32 %10, 0
  br i1 %tobool3.i.not, label %hci_conn_ssp_enabled.exit.return_crit_edge, label %hci_conn_ssp_enabled.exit.if.end18_crit_edge

hci_conn_ssp_enabled.exit.if.end18_crit_edge:     ; preds = %hci_conn_ssp_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

hci_conn_ssp_enabled.exit.return_crit_edge:       ; preds = %hci_conn_ssp_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end18:                                         ; preds = %hci_conn_ssp_enabled.exit.if.end18_crit_edge, %if.end7.if.end18_crit_edge
  %flags = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 47
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %if.end18.auth_crit_edge, label %if.end22

if.end18.auth_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %auth

if.end22:                                         ; preds = %if.end18
  %key_type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 22
  %14 = ptrtoint ptr %key_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %key_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %15)
  %cmp24 = icmp eq i8 %15, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %sec_level)
  %cmp28 = icmp eq i8 %sec_level, 4
  %or.cond = and i1 %cmp28, %cmp24
  br i1 %or.cond, label %if.end22.encrypt_crit_edge, label %if.end31

if.end22.encrypt_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %encrypt

if.end31:                                         ; preds = %if.end22
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %15, label %if.end31.auth_crit_edge [
    i8 5, label %if.end31.land.lhs.true40_crit_edge
    i8 8, label %if.end31.land.lhs.true40_crit_edge141
    i8 4, label %if.end31.land.lhs.true55_crit_edge
    i8 7, label %if.end31.land.lhs.true55_crit_edge142
    i8 0, label %land.lhs.true69
  ]

if.end31.land.lhs.true55_crit_edge142:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true55

if.end31.land.lhs.true55_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true55

if.end31.land.lhs.true40_crit_edge141:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true40

if.end31.land.lhs.true40_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true40

if.end31.auth_crit_edge:                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %auth

land.lhs.true40:                                  ; preds = %if.end31.land.lhs.true40_crit_edge, %if.end31.land.lhs.true40_crit_edge141
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %sec_level)
  %cmp42 = icmp eq i8 %sec_level, 3
  br i1 %cmp42, label %land.lhs.true40.encrypt_crit_edge, label %if.end45

land.lhs.true40.encrypt_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %encrypt

if.end45:                                         ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %cond = icmp eq i8 %15, 7
  %sec_level.off = add i8 %sec_level, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %sec_level.off)
  %switch = icmp ult i8 %sec_level.off, 2
  %or.cond140 = and i1 %cond, %switch
  br i1 %or.cond140, label %if.end45.encrypt_crit_edge, label %if.end45.auth_crit_edge

if.end45.auth_crit_edge:                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %auth

if.end45.encrypt_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %encrypt

land.lhs.true55:                                  ; preds = %if.end31.land.lhs.true55_crit_edge, %if.end31.land.lhs.true55_crit_edge142
  %sec_level.off.old = add i8 %sec_level, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %sec_level.off.old)
  %switch.old = icmp ult i8 %sec_level.off.old, 2
  br i1 %switch.old, label %land.lhs.true55.encrypt_crit_edge, label %land.lhs.true55.auth_crit_edge

land.lhs.true55.auth_crit_edge:                   ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  br label %auth

land.lhs.true55.encrypt_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  br label %encrypt

land.lhs.true69:                                  ; preds = %if.end31
  %sec_level.off131 = add i8 %sec_level, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %sec_level.off131)
  %switch132 = icmp ult i8 %sec_level.off131, 2
  br i1 %switch132, label %land.lhs.true69.encrypt_crit_edge, label %lor.lhs.false77

land.lhs.true69.encrypt_crit_edge:                ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #13
  br label %encrypt

lor.lhs.false77:                                  ; preds = %land.lhs.true69
  %pin_length = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 26
  %17 = ptrtoint ptr %pin_length to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pin_length, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %18)
  %cmp79 = icmp eq i8 %18, 16
  br i1 %cmp79, label %lor.lhs.false77.encrypt_crit_edge, label %lor.lhs.false77.auth_crit_edge

lor.lhs.false77.auth_crit_edge:                   ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #13
  br label %auth

lor.lhs.false77.encrypt_crit_edge:                ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #13
  br label %encrypt

auth:                                             ; preds = %lor.lhs.false77.auth_crit_edge, %land.lhs.true55.auth_crit_edge, %if.end45.auth_crit_edge, %if.end31.auth_crit_edge, %if.end18.auth_crit_edge
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool85.not = icmp eq i32 %21, 0
  br i1 %tobool85.not, label %if.end87, label %auth.return_crit_edge

auth.return_crit_edge:                            ; preds = %auth
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end87:                                         ; preds = %auth
  br i1 %initiator, label %if.then89, label %if.end87.if.end91_crit_edge

if.end87.if.end91_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags) #11
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end87.if.end91_crit_edge
  %call92 = tail call fastcc i32 @hci_conn_auth(ptr noundef %conn, i8 noundef zeroext %sec_level, i8 noundef zeroext %auth_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end91.return_crit_edge, label %if.end91.encrypt_crit_edge

if.end91.encrypt_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %encrypt

if.end91.return_crit_edge:                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

encrypt:                                          ; preds = %if.end91.encrypt_crit_edge, %lor.lhs.false77.encrypt_crit_edge, %land.lhs.true69.encrypt_crit_edge, %land.lhs.true55.encrypt_crit_edge, %if.end45.encrypt_crit_edge, %land.lhs.true40.encrypt_crit_edge, %if.end22.encrypt_crit_edge
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool98.not = icmp eq i32 %24, 0
  br i1 %tobool98.not, label %if.end103, label %if.then99

if.then99:                                        ; preds = %encrypt
  call void @__sanitizer_cov_trace_pc() #13
  %enc_key_size = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 27
  %25 = ptrtoint ptr %enc_key_size to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enc_key_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool100.not = icmp ne i8 %26, 0
  %. = zext i1 %tobool100.not to i32
  br label %return

if.end103:                                        ; preds = %encrypt
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_encrypt.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_security, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !229

if.then.i:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_encrypt.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.3, ptr noundef %conn) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end103
  %call3.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %do.end.i.return_crit_edge

do.end.i.return_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cp.i) #11
  %27 = getelementptr inbounds %struct.hci_cp_set_conn_encrypt, ptr %cp.i, i32 0, i32 1
  %handle.i = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 11
  %28 = ptrtoint ptr %handle.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %handle.i, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #11
  %31 = ptrtoint ptr %cp.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %cp.i, align 2
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %27, align 2
  %hdev.i = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %33 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hdev.i, align 4
  %call7.i = call i32 @hci_send_cmd(ptr noundef %34, i16 noundef zeroext 1043, i32 noundef 3, ptr noundef nonnull %cp.i) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cp.i) #11
  br label %return

return:                                           ; preds = %if.then5.i, %do.end.i.return_crit_edge, %if.then99, %if.end91.return_crit_edge, %auth.return_crit_edge, %hci_conn_ssp_enabled.exit.return_crit_edge, %land.lhs.true.return_crit_edge, %if.end7.return_crit_edge, %if.then5
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ 1, %if.end7.return_crit_edge ], [ 1, %hci_conn_ssp_enabled.exit.return_crit_edge ], [ 0, %auth.return_crit_edge ], [ 0, %if.end91.return_crit_edge ], [ %., %if.then99 ], [ 0, %do.end.i.return_crit_edge ], [ 0, %if.then5.i ], [ 1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_conn_security(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hci_conn_auth(ptr noundef %conn, i8 noundef zeroext %sec_level, i8 noundef zeroext %auth_type) unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_auth_requested, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_auth.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_auth, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_auth.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.3, ptr noundef %conn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pending_sec_level = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 25
  %0 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pending_sec_level, align 1
  %2 = tail call i8 @llvm.umax.i8(i8 %1, i8 %sec_level)
  %sec_level9 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 24
  %3 = ptrtoint ptr %sec_level9 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sec_level9, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp11 = icmp ugt i8 %2, %4
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %pending_sec_level to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %pending_sec_level, align 1
  br label %if.end19

if.else:                                          ; preds = %do.end
  %flags = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 47
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not = icmp eq i32 %8, 0
  br i1 %tobool16.not, label %if.else.if.end19_crit_edge, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.then13
  %auth_type20 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 23
  %9 = ptrtoint ptr %auth_type20 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %auth_type20, align 1
  %11 = and i8 %10, 1
  %or56 = or i8 %11, %auth_type
  store i8 %or56, ptr %auth_type20, align 1
  %flags25 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 47
  %call26 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end19.return_crit_edge

if.end19.return_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cp) #11
  %handle = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 11
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %handle, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %cp to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %cp, align 2
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %16 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev, align 4
  %call30 = call i32 @hci_send_cmd(ptr noundef %17, i16 noundef zeroext 1041, i32 noundef 2, ptr noundef nonnull %cp) #11
  %18 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags25, align 4
  %20 = and i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool33.not = icmp eq i32 %20, 0
  %. = select i1 %tobool33.not, i32 2, i32 1
  call void @_set_bit(i32 noundef %., ptr noundef %flags25) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cp) #11
  br label %return

return:                                           ; preds = %if.then28, %if.end19.return_crit_edge, %if.else.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.else.return_crit_edge ], [ 0, %if.then28 ], [ 0, %if.end19.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_conn_check_secure(ptr noundef %conn, i8 noundef zeroext %sec_level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_check_secure.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_check_secure, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_check_secure.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.3, ptr noundef %conn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sec_level.off = add i8 %sec_level, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %sec_level.off)
  %switch = icmp ult i8 %sec_level.off, 2
  br i1 %switch, label %if.end8, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %sec_level9 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 24
  %0 = ptrtoint ptr %sec_level9 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sec_level9, align 4
  %.off = add i8 %1, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch22 = icmp ult i8 %.off, 2
  %spec.select = zext i1 %switch22 to i32
  br label %return

return:                                           ; preds = %if.end8, %do.end.return_crit_edge
  %retval.0 = phi i32 [ 1, %do.end.return_crit_edge ], [ %spec.select, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_conn_switch_role(ptr noundef %conn, i8 noundef zeroext %role) #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_switch_role, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_switch_role.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_switch_role, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_switch_role.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.3, ptr noundef %conn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %role3 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 15
  %0 = ptrtoint ptr %role3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %role3, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %role)
  %cmp = icmp eq i8 %1, %role
  br i1 %cmp, label %do.end.return_crit_edge, label %if.end7

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end7:                                          ; preds = %do.end
  %flags = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 47
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cp) #11
  %2 = getelementptr inbounds %struct.hci_cp_switch_role, ptr %cp, i32 0, i32 1
  %dst = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %cp, ptr %dst, i32 6)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %role, ptr %2, align 1
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 4
  %call12 = call i32 @hci_send_cmd(ptr noundef %6, i16 noundef zeroext 2059, i32 noundef 7, ptr noundef nonnull %cp) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cp) #11
  br label %return

return:                                           ; preds = %if.then10, %if.end7.return_crit_edge, %do.end.return_crit_edge
  %retval.0 = phi i32 [ 1, %do.end.return_crit_edge ], [ 0, %if.then10 ], [ 0, %if.end7.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_conn_hash_flush(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_hash = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_hash_flush.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_hash_flush, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_hash_flush.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.39, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %conn_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_hash, align 4
  %cmp.not27 = icmp eq ptr %1, %conn_hash
  br i1 %cmp.not27, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %hci_disconn_cfm.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %c.028 = phi ptr [ %n.0, %hci_disconn_cfm.exit.for.body_crit_edge ], [ %1, %do.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %c.028 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %c.028, align 8
  %state = getelementptr inbounds %struct.hci_conn, ptr %c.028, i32 0, i32 12
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 9, ptr %state, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @hci_cb_list_lock, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hci_cb_list to i32))
  %cb.01.i = load ptr, ptr @hci_cb_list, align 4
  %cmp.not2.i = icmp eq ptr %cb.01.i, @hci_cb_list
  br i1 %cmp.not2.i, label %for.body.for.end.i_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %cb.03.i = phi ptr [ %cb.0.i, %for.inc.i.for.body.i_crit_edge ], [ %cb.01.i, %for.body.for.body.i_crit_edge ]
  %disconn_cfm.i = getelementptr inbounds %struct.hci_cb, ptr %cb.03.i, i32 0, i32 3
  %4 = ptrtoint ptr %disconn_cfm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disconn_cfm.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %5(ptr noundef %c.028, i8 noundef zeroext 22) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %6 = ptrtoint ptr %cb.03.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %cb.0.i = load ptr, ptr %cb.03.i, align 4
  %cmp.not.i = icmp eq ptr %cb.0.i, @hci_cb_list
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.for.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #11
  %disconn_cfm_cb.i = getelementptr inbounds %struct.hci_conn, ptr %c.028, i32 0, i32 73
  %7 = ptrtoint ptr %disconn_cfm_cb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disconn_cfm_cb.i, align 8
  %tobool6.not.i = icmp eq ptr %8, null
  br i1 %tobool6.not.i, label %for.end.i.hci_disconn_cfm.exit_crit_edge, label %if.then7.i

for.end.i.hci_disconn_cfm.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hci_disconn_cfm.exit

if.then7.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %8(ptr noundef %c.028, i8 noundef zeroext 22) #11
  br label %hci_disconn_cfm.exit

hci_disconn_cfm.exit:                             ; preds = %if.then7.i, %for.end.i.hci_disconn_cfm.exit_crit_edge
  %call13 = tail call i32 @hci_conn_del(ptr noundef %c.028)
  %cmp.not = icmp eq ptr %n.0, %conn_hash
  br i1 %cmp.not, label %hci_disconn_cfm.exit.for.end_crit_edge, label %hci_disconn_cfm.exit.for.body_crit_edge

hci_disconn_cfm.exit.for.body_crit_edge:          ; preds = %hci_disconn_cfm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

hci_disconn_cfm.exit.for.end_crit_edge:           ; preds = %hci_disconn_cfm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %hci_disconn_cfm.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_conn_check_pending(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_check_pending.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_check_pending, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_check_pending.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.39, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %conn_hash.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !232
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %do.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

do.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %do.end
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 696, ptr noundef nonnull @.str.91) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %do.end.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @hci_conn_hash_lookup_state.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @hci_conn_hash_lookup_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.73, i32 noundef 1077, ptr noundef nonnull @.str.47) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %4 = ptrtoint ptr %conn_hash.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %c.023.i = load volatile ptr, ptr %conn_hash.i, align 4
  %cmp.not24.i = icmp eq ptr %c.023.i, %conn_hash.i
  br i1 %cmp.not24.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %c.025.i = phi ptr [ %c.0.i, %for.inc.i.for.body.i_crit_edge ], [ %c.023.i, %do.end.i.for.body.i_crit_edge ]
  %type11.i = getelementptr inbounds %struct.hci_conn, ptr %c.025.i, i32 0, i32 14
  %5 = ptrtoint ptr %type11.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp13.i = icmp eq i8 %6, 1
  br i1 %cmp13.i, label %land.lhs.true15.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %for.body.i
  %state16.i = getelementptr inbounds %struct.hci_conn, ptr %c.025.i, i32 0, i32 12
  %7 = ptrtoint ptr %state16.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %state16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %8)
  %cmp19.i = icmp eq i16 %8, 6
  br i1 %cmp19.i, label %if.then21.i, label %land.lhs.true15.i.for.inc.i_crit_edge

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then21.i:                                      ; preds = %land.lhs.true15.i
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i2.i, label %if.then21.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i5.i

if.then21.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i5.i:                               ; preds = %if.then21.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 724, ptr noundef nonnull @.str.92) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, %if.then21.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !233
  br label %hci_conn_hash_lookup_state.exit

for.inc.i:                                        ; preds = %land.lhs.true15.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %c.025.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %c.0.i = load volatile ptr, ptr %c.025.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, %conn_hash.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i11.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i11.i, label %for.end.i.rcu_read_unlock.exit21.i_crit_edge, label %land.lhs.true.i14.i

for.end.i.rcu_read_unlock.exit21.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit21.i

land.lhs.true.i14.i:                              ; preds = %for.end.i
  %call1.i12.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool.not.i13.i, label %land.lhs.true.i14.i.rcu_read_unlock.exit21.i_crit_edge, label %land.lhs.true2.i16.i

land.lhs.true.i14.i.rcu_read_unlock.exit21.i_crit_edge: ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit21.i

land.lhs.true2.i16.i:                             ; preds = %land.lhs.true.i14.i
  %.b4.i15.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i, label %land.lhs.true2.i16.i.rcu_read_unlock.exit21.i_crit_edge, label %if.then.i17.i

land.lhs.true2.i16.i.rcu_read_unlock.exit21.i_crit_edge: ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit21.i

if.then.i17.i:                                    ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 724, ptr noundef nonnull @.str.92) #11
  br label %rcu_read_unlock.exit21.i

rcu_read_unlock.exit21.i:                         ; preds = %if.then.i17.i, %land.lhs.true2.i16.i.rcu_read_unlock.exit21.i_crit_edge, %land.lhs.true.i14.i.rcu_read_unlock.exit21.i_crit_edge, %for.end.i.rcu_read_unlock.exit21.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !233
  br label %hci_conn_hash_lookup_state.exit

hci_conn_hash_lookup_state.exit:                  ; preds = %rcu_read_unlock.exit21.i, %rcu_read_unlock.exit.i
  %retval.0.i12 = phi ptr [ %c.025.i, %rcu_read_unlock.exit.i ], [ null, %rcu_read_unlock.exit21.i ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i18.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i18.i to ptr
  %preempt_count.i.i.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i19.i, align 4
  %sub.i.i.i20.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i20.i, ptr %preempt_count.i.i.i.i19.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tobool4.not = icmp eq ptr %retval.0.i12, null
  br i1 %tobool4.not, label %hci_conn_hash_lookup_state.exit.if.end6_crit_edge, label %if.then5

hci_conn_hash_lookup_state.exit.if.end6_crit_edge: ; preds = %hci_conn_hash_lookup_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %hci_conn_hash_lookup_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hci_acl_create_connection(ptr noundef nonnull %retval.0.i12)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %hci_conn_hash_lookup_state.exit.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_get_conn_list(ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.hci_conn_list_req, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #11
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %req, align 4, !annotation !238
  %1 = getelementptr inbounds %struct.hci_conn_list_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !238
  tail call void @__might_fault(ptr noundef nonnull @.str.88, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 4, i32 -1226833920) #16, !srcloc !240
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !241

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req, i32 noundef 4) #11
  %4 = call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !242
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %req, ptr noundef %arg, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !241

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i113 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %entry.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i113
  %add.ptr.i.i = getelementptr i8, ptr %req, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i113)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %10 = add i16 %9, -513
  call void @__sanitizer_cov_trace_const_cmp2(i16 -512, i16 %10)
  %11 = icmp ult i16 %10, -512
  br i1 %11, label %if.end.cleanup_crit_edge, label %if.end8.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i:                                        ; preds = %if.end
  %conv = zext i16 %9 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %add = or i32 %mul, 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #17
  %tobool9.not = icmp eq ptr %call9.i, null
  br i1 %tobool9.not, label %if.end8.i.cleanup_crit_edge, label %if.end11

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end8.i
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %req, align 4
  %conv12 = zext i16 %13 to i32
  %call13 = call ptr @hci_dev_get(i32 noundef %conv12) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %conn_info = getelementptr inbounds %struct.hci_conn_list_req, ptr %call9.i, i32 0, i32 2
  %lock = getelementptr inbounds %struct.hci_dev, ptr %call13, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %conn_hash = getelementptr inbounds %struct.hci_dev, ptr %call13, i32 0, i32 183
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end16
  %n.0 = phi i32 [ 0, %if.end16 ], [ %inc, %for.body.for.cond_crit_edge ]
  %c.0.in = phi ptr [ %conn_hash, %if.end16 ], [ %c.0, %for.body.for.cond_crit_edge ]
  %14 = ptrtoint ptr %c.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %c.0 = load ptr, ptr %c.0.in, align 4
  %cmp20.not = icmp eq ptr %c.0, %conn_hash
  br i1 %cmp20.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %add.ptr22 = getelementptr %struct.hci_conn_info, ptr %conn_info, i32 %n.0
  %bdaddr = getelementptr %struct.hci_conn_info, ptr %conn_info, i32 %n.0, i32 1
  %dst = getelementptr inbounds %struct.hci_conn, ptr %c.0, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %bdaddr, ptr %dst, i32 6)
  %handle = getelementptr inbounds %struct.hci_conn, ptr %c.0, i32 0, i32 11
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %handle, align 2
  %18 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %add.ptr22, align 4
  %type = getelementptr inbounds %struct.hci_conn, ptr %c.0, i32 0, i32 14
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type, align 1
  %type26 = getelementptr %struct.hci_conn_info, ptr %conn_info, i32 %n.0, i32 2
  %21 = ptrtoint ptr %type26 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %type26, align 4
  %out = getelementptr inbounds %struct.hci_conn, ptr %c.0, i32 0, i32 16
  %22 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %out, align 1, !range !237
  %out30 = getelementptr %struct.hci_conn_info, ptr %conn_info, i32 %n.0, i32 3
  %24 = ptrtoint ptr %out30 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %out30, align 1
  %state = getelementptr inbounds %struct.hci_conn, ptr %c.0, i32 0, i32 12
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %state, align 4
  %state32 = getelementptr %struct.hci_conn_info, ptr %conn_info, i32 %n.0, i32 4
  %27 = ptrtoint ptr %state32 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %state32, align 2
  %role.i = getelementptr inbounds %struct.hci_conn, ptr %c.0, i32 0, i32 15
  %28 = ptrtoint ptr %role.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %role.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.i109 = icmp eq i8 %29, 0
  %spec.select.i = zext i1 %cmp.i109 to i32
  %flags.i = getelementptr inbounds %struct.hci_conn, ptr %c.0, i32 0, i32 47
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i, align 4
  %32 = lshr i32 %31, 10
  %33 = and i32 %32, 4
  %34 = or i32 %33, %spec.select.i
  %35 = load volatile i32, ptr %flags.i, align 4
  %36 = lshr i32 %35, 12
  %37 = and i32 %36, 2
  %38 = or i32 %34, %37
  %39 = load volatile i32, ptr %flags.i, align 4
  %40 = lshr i32 %39, 9
  %41 = and i32 %40, 32
  %42 = or i32 %38, %41
  %43 = load volatile i32, ptr %flags.i, align 4
  %44 = lshr i32 %43, 9
  %45 = and i32 %44, 64
  %46 = or i32 %42, %45
  %link_mode = getelementptr %struct.hci_conn_info, ptr %conn_info, i32 %n.0, i32 5
  %47 = ptrtoint ptr %link_mode to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %link_mode, align 16
  %inc = add nuw nsw i32 %n.0, 1
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %1, align 2
  %conv36 = zext i16 %49 to i32
  %cmp37.not = icmp ult i32 %inc, %conv36
  br i1 %cmp37.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %n.1 = phi i32 [ %inc, %for.body.for.end_crit_edge ], [ %n.0, %for.cond.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  %id = getelementptr inbounds %struct.hci_dev, ptr %call13, i32 0, i32 4
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %id, align 8
  %52 = ptrtoint ptr %call9.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %call9.i, align 128
  %conv48 = trunc i32 %n.1 to i16
  %conn_num49 = getelementptr inbounds %struct.hci_conn_list_req, ptr %call9.i, i32 0, i32 1
  %53 = ptrtoint ptr %conn_num49 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv48, ptr %conn_num49, align 2
  %mul50 = shl i32 %n.1, 4
  %add51 = or i32 %mul50, 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_get_conn_list, %if.then.i110)) #11
          to label %hci_dev_put.exit [label %if.then.i110], !srcloc !229

if.then.i110:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %call13, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %call13, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %54 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %kref.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.74, ptr noundef %name.i, i32 noundef %55) #11
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i110, %for.end
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %call13, i32 0, i32 204
  call void @put_device(ptr noundef %dev4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add51)
  %cmp9.i.i = icmp slt i32 %add51, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %hci_dev_put.exit
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit_crit_edge, label %if.then27.i.i, !prof !241

land.rhs16.i.i.copy_to_user.exit_crit_edge:       ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.86, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_to_user.exit

if.then.i.i.i:                                    ; preds = %hci_dev_put.exit
  call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %add51, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.88, i32 noundef 174) #11
  %call.i.i101 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i101, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i105

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i105:                                    ; preds = %if.then.i.i.i
  %56 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 %add51, i32 -1226833920) #16, !srcloc !245
  %asmresult.i.i103 = extractvalue { i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i103)
  %cmp.i6.i104 = icmp eq i32 %asmresult.i.i103, 0
  br i1 %cmp.i6.i104, label %if.then2.i.i, label %if.end.i.i105.copy_to_user.exit_crit_edge

if.end.i.i105.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i106 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %add51) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %call9.i, i32 noundef %add51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i105.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i107 = phi i32 [ -14, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %phi.sel, %if.then2.i.i ], [ -14, %if.end.i.i105.copy_to_user.exit_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.copy_to_user.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then15, %if.end8.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %n.addr.0.i107, %copy_to_user.exit ], [ -19, %if.then15 ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_dev_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_get_conn_info(ptr noundef %hdev, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.hci_conn_info_req, align 8
  %ci = alloca %struct.hci_conn_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #11
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %req, align 8, !annotation !238
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ci) #11
  %1 = getelementptr inbounds %struct.hci_conn_info, ptr %ci, i32 0, i32 1
  %2 = getelementptr inbounds %struct.hci_conn_info, ptr %ci, i32 0, i32 2
  %3 = getelementptr inbounds %struct.hci_conn_info, ptr %ci, i32 0, i32 3
  %4 = getelementptr inbounds %struct.hci_conn_info, ptr %ci, i32 0, i32 4
  %5 = getelementptr inbounds %struct.hci_conn_info, ptr %ci, i32 0, i32 5
  %add.ptr = getelementptr i8, ptr %arg, i32 8
  tail call void @__might_fault(ptr noundef nonnull @.str.88, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 8, i32 -1226833920) #16, !srcloc !240
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !241

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req, i32 noundef 8) #11
  %7 = call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !242
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %req, ptr noundef %arg, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !241

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i44 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i44
  %add.ptr.i.i = getelementptr i8, ptr %req, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i44)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %lock = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %type = getelementptr inbounds %struct.hci_conn_info_req, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 2
  %call1 = call fastcc ptr @hci_conn_hash_lookup_ba(ptr noundef %hdev, i8 noundef zeroext %12, ptr noundef nonnull %req)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then15.critedge, label %if.then3

if.then3:                                         ; preds = %if.end
  %dst = getelementptr inbounds %struct.hci_conn, ptr %call1, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %1, ptr %dst, i32 6)
  %handle = getelementptr inbounds %struct.hci_conn, ptr %call1, i32 0, i32 11
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %handle, align 2
  %16 = ptrtoint ptr %ci to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %ci, align 4
  %type6 = getelementptr inbounds %struct.hci_conn, ptr %call1, i32 0, i32 14
  %17 = ptrtoint ptr %type6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type6, align 1
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %2, align 4
  %out = getelementptr inbounds %struct.hci_conn, ptr %call1, i32 0, i32 16
  %20 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %out, align 1, !range !237
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %3, align 1
  %state = getelementptr inbounds %struct.hci_conn, ptr %call1, i32 0, i32 12
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %state, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %4, align 2
  %role.i = getelementptr inbounds %struct.hci_conn, ptr %call1, i32 0, i32 15
  %26 = ptrtoint ptr %role.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %role.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp.i = icmp eq i8 %27, 0
  %spec.select.i = zext i1 %cmp.i to i32
  %flags.i = getelementptr inbounds %struct.hci_conn, ptr %call1, i32 0, i32 47
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i, align 4
  %30 = lshr i32 %29, 10
  %31 = and i32 %30, 4
  %32 = or i32 %31, %spec.select.i
  %33 = load volatile i32, ptr %flags.i, align 4
  %34 = lshr i32 %33, 12
  %35 = and i32 %34, 2
  %36 = or i32 %32, %35
  %37 = load volatile i32, ptr %flags.i, align 4
  %38 = lshr i32 %37, 9
  %39 = and i32 %38, 32
  %40 = or i32 %36, %39
  %41 = load volatile i32, ptr %flags.i, align 4
  %42 = lshr i32 %41, 9
  %43 = and i32 %42, 64
  %44 = or i32 %40, %43
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %5, align 4
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @__might_fault(ptr noundef nonnull @.str.88, i32 noundef 174) #11
  %call.i.i36 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i36, label %if.then3.cleanup_crit_edge, label %if.end.i.i39

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i39:                                     ; preds = %if.then3
  %46 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 16, i32 -1226833920) #16, !srcloc !245
  %asmresult.i.i37 = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i37)
  %cmp.i6.i38 = icmp eq i32 %asmresult.i.i37, 0
  br i1 %cmp.i6.i38, label %copy_to_user.exit, label %if.end.i.i39.cleanup_crit_edge

if.end.i.i39.cleanup_crit_edge:                   ; preds = %if.end.i.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i39
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i40 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ci, i32 noundef 16) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef nonnull %ci, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool18.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool18.not, i32 0, i32 -14
  br label %cleanup

if.then15.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then15.critedge, %copy_to_user.exit, %if.end.i.i39.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -2, %if.then15.critedge ], [ -14, %if.then11.i.i ], [ -14, %if.then3.cleanup_crit_edge ], [ -14, %if.end.i.i39.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ci) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_get_auth_info(ptr noundef %hdev, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.hci_auth_info_req, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %req) #11
  %0 = getelementptr inbounds %struct.hci_auth_info_req, ptr %req, i32 0, i32 1
  %1 = call ptr @memset(ptr %req, i32 255, i32 7)
  tail call void @__might_fault(ptr noundef nonnull @.str.88, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 7, i32 -1226833920) #16
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !241

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req, i32 noundef 7) #11
  %3 = call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !242
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %req, ptr noundef %arg, i32 noundef 7) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !241

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i29 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 7, %entry.if.then11.i.i_crit_edge ], [ 7, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 7, %res.0.i.i29
  %add.ptr.i.i = getelementptr i8, ptr %req, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i29)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %lock = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %call1 = call fastcc ptr @hci_conn_hash_lookup_ba(ptr noundef %hdev, i8 noundef zeroext 1, ptr noundef nonnull %req)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then7.critedge, label %if.end8.i.i20

if.end8.i.i20:                                    ; preds = %if.end
  %auth_type = getelementptr inbounds %struct.hci_conn, ptr %call1, i32 0, i32 23
  %7 = ptrtoint ptr %auth_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %auth_type, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %0, align 1
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @__might_fault(ptr noundef nonnull @.str.88, i32 noundef 174) #11
  %call.i.i21 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i21, label %if.end8.i.i20.cleanup_crit_edge, label %copy_to_user.exit

if.end8.i.i20.cleanup_crit_edge:                  ; preds = %if.end8.i.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end8.i.i20
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i25 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %req, i32 noundef 7) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %req, i32 noundef 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool10.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool10.not, i32 0, i32 -14
  br label %cleanup

if.then7.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7.critedge, %copy_to_user.exit, %if.end8.i.i20.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -2, %if.then7.critedge ], [ -14, %if.then11.i.i ], [ -14, %if.end8.i.i20.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %req) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hci_chan_create(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_chan_create.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_chan_create, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_chan_create.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.42, ptr noundef %name, ptr noundef %conn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 47
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.end23, label %do.body7

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_chan_create.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_chan_create, %if.then19)) #11
          to label %cleanup [label %if.then19], !srcloc !229

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_chan_create.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.43) #11
  br label %cleanup

if.end23:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 80) #14
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %dev.i = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 63
  %call.i = tail call ptr @get_device(ptr noundef %dev.i) #11
  %conn29 = getelementptr inbounds %struct.hci_chan, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %conn29 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %conn, ptr %conn29, align 4
  %data_q = getelementptr inbounds %struct.hci_chan, ptr %call7.i.i, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.hci_chan, ptr %call7.i.i, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %7 = ptrtoint ptr %data_q to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data_q, ptr %data_q, align 8
  %prev.i.i = getelementptr inbounds %struct.hci_chan, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data_q, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.hci_chan, ptr %call7.i.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qlen.i.i, align 8
  %state = getelementptr inbounds %struct.hci_chan, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %state, align 4
  %chan_list = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 57
  %11 = ptrtoint ptr %chan_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %chan_list, ptr noundef %12) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call7.i.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %chan_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !230
  %15 = ptrtoint ptr %chan_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i, ptr %chan_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %prev37.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end27.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then19, %do.body7
  %retval.0 = phi ptr [ null, %if.then19 ], [ null, %if.end23.cleanup_crit_edge ], [ null, %do.body7 ], [ %call7.i.i, %if.end27.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_chan_del(ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.hci_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  %hdev2 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %2 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_chan_del.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_chan_del, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_chan_del.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.45, ptr noundef %name, ptr noundef %1, ptr noundef %chan) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chan) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del_rcu.exit_crit_edge

do.end.list_del_rcu.exit_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %do.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %chan, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @synchronize_rcu() #11
  %flags = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 18, ptr noundef %flags) #11
  %dev.i = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 63
  tail call void @put_device(ptr noundef %dev.i) #11
  %data_q = getelementptr inbounds %struct.hci_chan, ptr %chan, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %data_q) #11
  tail call void @kfree(ptr noundef %chan) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_chan_list_flush(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_chan_list_flush.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_chan_list_flush, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_chan_list_flush.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.3, ptr noundef %conn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %chan_list = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 57
  %0 = ptrtoint ptr %chan_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_list, align 8
  %cmp.not23 = icmp eq ptr %1, %chan_list
  br i1 %cmp.not23, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %chan.024 = phi ptr [ %n.0, %for.body.for.body_crit_edge ], [ %1, %do.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %chan.024 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %chan.024, align 4
  tail call void @hci_chan_del(ptr noundef %chan.024)
  %cmp.not = icmp eq ptr %n.0, %chan_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hci_chan_lookup_handle(ptr noundef %hdev, i16 noundef zeroext %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_hash = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !232
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 696, ptr noundef nonnull @.str.91) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.for.cond.preheader_crit_edge

rcu_read_lock.exit.for.cond.preheader_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true3

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @hci_chan_lookup_handle.__warned, align 1
  br i1 %.b28, label %land.lhs.true3.for.cond.preheader_crit_edge, label %if.then

land.lhs.true3.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @hci_chan_lookup_handle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1675, ptr noundef nonnull @.str.47) #11
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true3.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %rcu_read_lock.exit.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %__hci_chan_lookup_handle.exit.for.cond_crit_edge, %for.cond.preheader
  %hcon.0.in = phi ptr [ %hcon.0, %__hci_chan_lookup_handle.exit.for.cond_crit_edge ], [ %conn_hash, %for.cond.preheader ]
  %4 = ptrtoint ptr %hcon.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %hcon.0 = load volatile ptr, ptr %hcon.0.in, align 4
  %cmp.not = icmp eq ptr %hcon.0, %conn_hash
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %chan_list.i = getelementptr inbounds %struct.hci_conn, ptr %hcon.0, i32 0, i32 57
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %hchan.0.in.i = phi ptr [ %chan_list.i, %for.body ], [ %hchan.0.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %hchan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %hchan.0.i = load ptr, ptr %hchan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %hchan.0.i, %chan_list.i
  br i1 %cmp.not.i, label %for.cond.i.__hci_chan_lookup_handle.exit_crit_edge, label %for.body.i

for.cond.i.__hci_chan_lookup_handle.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hci_chan_lookup_handle.exit

for.body.i:                                       ; preds = %for.cond.i
  %handle2.i = getelementptr inbounds %struct.hci_chan, ptr %hchan.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %handle2.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %handle2.i, align 4
  %cmp4.i = icmp eq i16 %7, %handle
  br i1 %cmp4.i, label %for.body.i.__hci_chan_lookup_handle.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.__hci_chan_lookup_handle.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hci_chan_lookup_handle.exit

__hci_chan_lookup_handle.exit:                    ; preds = %for.body.i.__hci_chan_lookup_handle.exit_crit_edge, %for.cond.i.__hci_chan_lookup_handle.exit_crit_edge
  %retval.0.i = phi ptr [ %hchan.0.i, %for.body.i.__hci_chan_lookup_handle.exit_crit_edge ], [ null, %for.cond.i.__hci_chan_lookup_handle.exit_crit_edge ]
  %tobool12.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool12.not, label %__hci_chan_lookup_handle.exit.for.cond_crit_edge, label %__hci_chan_lookup_handle.exit.for.end_crit_edge

__hci_chan_lookup_handle.exit.for.end_crit_edge:  ; preds = %__hci_chan_lookup_handle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

__hci_chan_lookup_handle.exit.for.cond_crit_edge: ; preds = %__hci_chan_lookup_handle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %__hci_chan_lookup_handle.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  %hchan.1 = phi ptr [ %retval.0.i, %__hci_chan_lookup_handle.exit.for.end_crit_edge ], [ null, %for.cond.for.end_crit_edge ]
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i29, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %for.end
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 724, ptr noundef nonnull @.str.92) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !233
  %8 = tail call i32 @llvm.read_register.i32(metadata !219) #11
  %and.i.i.i.i.i36 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %hchan.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hci_conn_get_phy(ptr nocapture noundef readonly %conn) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 14
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb54
    i8 -128, label %sw.bb91
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pkt_type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 20
  %3 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pkt_type, align 2
  %5 = and i16 %4, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %tobool8.not = icmp ult i16 %4, 16384
  %or10 = or i32 %spec.select, 4
  %phys.1 = select i1 %tobool8.not, i32 %spec.select, i32 %or10
  %6 = and i16 %4, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool15.not = icmp eq i16 %6, 0
  %or17 = or i32 %phys.1, 8
  %phys.2 = select i1 %tobool15.not, i32 %or17, i32 %phys.1
  %7 = and i16 %4, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool22.not = icmp eq i16 %7, 0
  %or24 = or i32 %phys.2, 16
  %phys.3 = select i1 %tobool22.not, i32 %or24, i32 %phys.2
  %8 = and i16 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool29.not = icmp eq i16 %8, 0
  %or31 = or i32 %phys.3, 32
  %phys.4 = select i1 %tobool29.not, i32 %or31, i32 %phys.3
  %9 = and i16 %4, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool36.not = icmp eq i16 %9, 0
  %or38 = or i32 %phys.4, 64
  %phys.5 = select i1 %tobool36.not, i32 %or38, i32 %phys.4
  %10 = and i16 %4, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool43.not = icmp eq i16 %10, 0
  %or45 = or i32 %phys.5, 128
  %phys.6 = select i1 %tobool43.not, i32 %or45, i32 %phys.5
  %11 = and i16 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool50.not = icmp eq i16 %11, 0
  %or52 = or i32 %phys.6, 256
  %spec.select175 = select i1 %tobool50.not, i32 %or52, i32 %phys.6
  br label %sw.epilog

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pkt_type56 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 20
  %12 = ptrtoint ptr %pkt_type56 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pkt_type56, align 2
  %14 = and i16 %13, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool59.not = icmp eq i16 %14, 0
  %spec.select173 = select i1 %tobool59.not, i32 3, i32 1
  %15 = and i16 %13, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool66.not = icmp eq i16 %15, 0
  %or68 = or i32 %spec.select173, 8
  %phys.8 = select i1 %tobool66.not, i32 %or68, i32 %spec.select173
  %16 = and i16 %13, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool73.not = icmp eq i16 %16, 0
  %or75 = or i32 %phys.8, 16
  %phys.9 = select i1 %tobool73.not, i32 %or75, i32 %phys.8
  %17 = and i16 %13, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool80.not = icmp eq i16 %17, 0
  %or82 = or i32 %phys.9, 64
  %phys.10 = select i1 %tobool80.not, i32 %or82, i32 %phys.9
  %18 = and i16 %13, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool87.not = icmp eq i16 %18, 0
  %or89 = or i32 %phys.10, 128
  %spec.select176 = select i1 %tobool87.not, i32 %or89, i32 %phys.10
  br label %sw.epilog

sw.bb91:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %le_tx_phy = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 42
  %19 = ptrtoint ptr %le_tx_phy to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %le_tx_phy, align 4
  %21 = and i8 %20, 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 9
  %le_rx_phy = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 43
  %24 = ptrtoint ptr %le_rx_phy to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %le_rx_phy, align 1
  %26 = and i8 %25, 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 10
  %29 = or i32 %28, %23
  %30 = and i8 %20, 2
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 10
  %33 = or i32 %29, %32
  %34 = and i8 %25, 2
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 11
  %37 = or i32 %33, %36
  %38 = and i8 %20, 4
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 11
  %41 = or i32 %37, %40
  %42 = and i8 %25, 4
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 12
  %45 = or i32 %41, %44
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb91, %sw.bb54, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %phys.16 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 1, %sw.bb ], [ %spec.select175, %sw.bb1 ], [ %spec.select176, %sw.bb54 ], [ %45, %sw.bb91 ]
  ret i32 %phys.16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_req_configure_datapath(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_connect_le_scan_remove(ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_connect_le_scan_remove.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_connect_le_scan_remove, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_connect_le_scan_remove.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.42, ptr noundef %name, ptr noundef %conn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hdev3 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %2 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_hold.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_connect_le_scan_remove, %if.then.i)) #11
          to label %hci_dev_hold.exit [label %if.then.i], !srcloc !229

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %4 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_hold.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.74, ptr noundef %name.i, i32 noundef %5) #11
  br label %hci_dev_hold.exit

hci_dev_hold.exit:                                ; preds = %if.then.i, %do.end
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 204
  %call5.i = tail call ptr @get_device(ptr noundef %dev4.i) #11
  %dev.i = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 63
  %call.i = tail call ptr @get_device(ptr noundef %dev.i) #11
  %le_scan_cleanup = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %le_scan_cleanup) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_disconn_ind(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_connect_le_scan_cleanup(ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %dst = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 3
  %2 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dst_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not.i.i = icmp eq i8 %3, 1
  br i1 %cmp.not.i.i, label %hci_bdaddr_is_rpa.exit.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

hci_bdaddr_is_rpa.exit.i:                         ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.hci_conn, ptr %conn, i32 0, i32 2, i32 0, i32 5
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %6 = and i8 %5, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %6)
  %cmp3.i.i = icmp eq i8 %6, 64
  br i1 %cmp3.i.i, label %hci_get_irk.exit, label %hci_bdaddr_is_rpa.exit.i.if.end_crit_edge

hci_bdaddr_is_rpa.exit.i.if.end_crit_edge:        ; preds = %hci_bdaddr_is_rpa.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

hci_get_irk.exit:                                 ; preds = %hci_bdaddr_is_rpa.exit.i
  %call1.i = tail call ptr @hci_find_irk_by_rpa(ptr noundef %1, ptr noundef %dst) #11
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %hci_get_irk.exit.if.end_crit_edge, label %if.then

hci_get_irk.exit.if.end_crit_edge:                ; preds = %hci_get_irk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %hci_get_irk.exit
  call void @__sanitizer_cov_trace_pc() #13
  %bdaddr2 = getelementptr inbounds %struct.smp_irk, ptr %call1.i, i32 0, i32 3
  %addr_type = getelementptr inbounds %struct.smp_irk, ptr %call1.i, i32 0, i32 4
  %7 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %hci_get_irk.exit.if.end_crit_edge, %hci_bdaddr_is_rpa.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %bdaddr.0 = phi ptr [ %bdaddr2, %if.then ], [ %dst, %hci_get_irk.exit.if.end_crit_edge ], [ %dst, %hci_bdaddr_is_rpa.exit.i.if.end_crit_edge ], [ %dst, %entry.if.end_crit_edge ]
  %bdaddr_type.0 = phi i8 [ %8, %if.then ], [ 1, %hci_get_irk.exit.if.end_crit_edge ], [ 1, %hci_bdaddr_is_rpa.exit.i.if.end_crit_edge ], [ %3, %entry.if.end_crit_edge ]
  %pend_le_conns = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 195
  %call3 = tail call ptr @hci_pend_le_action_lookup(ptr noundef %pend_le_conns, ptr noundef %bdaddr.0, i8 noundef zeroext %bdaddr_type.0) #11
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %explicit_connect = getelementptr inbounds %struct.hci_conn_params, ptr %call3, i32 0, i32 10
  %9 = ptrtoint ptr %explicit_connect to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %explicit_connect, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %explicit_connect to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %explicit_connect, align 4
  %action = getelementptr inbounds %struct.hci_conn_params, ptr %call3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %action) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_del_init.exit_crit_edge

if.end7.list_del_init.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.hci_conn_params, ptr %call3, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %action, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end7.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %action, ptr %action, align 4
  %prev.i3.i = getelementptr inbounds %struct.hci_conn_params, ptr %call3, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %action, ptr %prev.i3.i, align 4
  %auto_connect = getelementptr inbounds %struct.hci_conn_params, ptr %call3, i32 0, i32 8
  %20 = ptrtoint ptr %auto_connect to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %auto_connect, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %21, label %list_del_init.exit.sw.epilog_crit_edge [
    i32 5, label %sw.bb
    i32 2, label %list_del_init.exit.sw.bb9_crit_edge
    i32 3, label %list_del_init.exit.sw.bb9_crit_edge49
    i32 1, label %sw.bb12
  ]

list_del_init.exit.sw.bb9_crit_edge49:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

list_del_init.exit.sw.bb9_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

list_del_init.exit.sw.epilog_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @hci_conn_params_del(ptr noundef %1, ptr noundef %bdaddr.0, i8 noundef zeroext %bdaddr_type.0) #11
  br label %cleanup

sw.bb9:                                           ; preds = %list_del_init.exit.sw.bb9_crit_edge, %list_del_init.exit.sw.bb9_crit_edge49
  %23 = ptrtoint ptr %pend_le_conns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pend_le_conns, align 4
  %call.i.i38 = tail call zeroext i1 @__list_add_valid(ptr noundef %action, ptr noundef %pend_le_conns, ptr noundef %24) #11
  br i1 %call.i.i38, label %sw.bb9.sw.epilog.sink.split_crit_edge, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb9.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb12:                                          ; preds = %list_del_init.exit
  %pend_le_reports = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 196
  %25 = ptrtoint ptr %pend_le_reports to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pend_le_reports, align 4
  %call.i.i40 = tail call zeroext i1 @__list_add_valid(ptr noundef %action, ptr noundef %pend_le_reports, ptr noundef %26) #11
  br i1 %call.i.i40, label %sw.bb12.sw.epilog.sink.split_crit_edge, label %sw.bb12.sw.epilog_crit_edge

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb12.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb12.sw.epilog.sink.split_crit_edge, %sw.bb9.sw.epilog.sink.split_crit_edge
  %.sink48 = phi ptr [ %24, %sw.bb9.sw.epilog.sink.split_crit_edge ], [ %26, %sw.bb12.sw.epilog.sink.split_crit_edge ]
  %pend_le_reports.sink47 = phi ptr [ %pend_le_conns, %sw.bb9.sw.epilog.sink.split_crit_edge ], [ %pend_le_reports, %sw.bb12.sw.epilog.sink.split_crit_edge ]
  %prev1.i.i41 = getelementptr inbounds %struct.list_head, ptr %.sink48, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %action, ptr %prev1.i.i41, align 4
  %28 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %.sink48, ptr %action, align 4
  %29 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pend_le_reports.sink47, ptr %prev.i3.i, align 4
  %30 = ptrtoint ptr %pend_le_reports.sink47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %action, ptr %pend_le_reports.sink47, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb12.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %list_del_init.exit.sw.epilog_crit_edge
  %call14 = tail call i32 @hci_update_passive_scan(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_conn_params_del(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_irk_by_rpa(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_conn_del_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_le_create_conn_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_conn_params_add(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_inquiry_cache_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !55, !56, !58, !60, !61, !63, !65, !66, !68, !70, !71, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !100, !101, !103, !104, !105, !107, !108, !109, !111, !113, !115, !117, !118, !120, !121, !123, !124, !126, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !153, !154, !156, !157, !158, !160, !161, !163, !165, !166, !167, !168, !170, !171, !172, !174, !176, !178, !179, !181, !182, !183, !185, !187, !188, !189, !191, !193, !194, !196, !197, !199, !200, !202, !204, !205, !207, !209, !211, !212, !214, !215, !216, !218}
!llvm.named.register.sp = !{!219}
!llvm.module.flags = !{!220, !221, !222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/hci_conn.c", i32 258, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @hci_disconnect.__UNIQUE_ID_ddebug481, !1, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/hci_conn.c", i32 532, i32 2}
!8 = !{ptr @hci_le_start_enc.__UNIQUE_ID_ddebug486, !7, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/bluetooth/hci_conn.c", i32 552, i32 2}
!11 = !{ptr @hci_sco_setup.__UNIQUE_ID_ddebug487, !10, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/bluetooth/hci_conn.c", i32 684, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hci_conn_add.__UNIQUE_ID_ddebug491, !13, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!16 = !{ptr @hci_conn_add.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../net/bluetooth/hci_conn.c", i32 738, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hci_conn_add.__key.9, !17, !"__key", i1 false, i1 false}
!20 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hci_conn_add.__key.11, !22, !"__key", i1 false, i1 false}
!22 = !{!"../net/bluetooth/hci_conn.c", i32 739, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hci_conn_add.__key.13, !22, !"__key", i1 false, i1 false}
!25 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hci_conn_add.__key.15, !27, !"__key", i1 false, i1 false}
!27 = !{!"../net/bluetooth/hci_conn.c", i32 740, i32 2}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hci_conn_add.__key.17, !27, !"__key", i1 false, i1 false}
!30 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hci_conn_add.__key.19, !32, !"__key", i1 false, i1 false}
!32 = !{!"../net/bluetooth/hci_conn.c", i32 741, i32 2}
!33 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @hci_conn_add.__key.21, !32, !"__key", i1 false, i1 false}
!35 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @hci_conn_add.__key.23, !37, !"__key", i1 false, i1 false}
!37 = !{!"../net/bluetooth/hci_conn.c", i32 742, i32 2}
!38 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/bluetooth/hci_conn.c", i32 768, i32 2}
!41 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hci_conn_del.__UNIQUE_ID_ddebug492, !40, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/bluetooth/hci_conn.c", i32 816, i32 2}
!45 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hci_get_route.__UNIQUE_ID_ddebug493, !44, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!47 = !{ptr @__ksymtab_hci_get_route, !48, !"__ksymtab_hci_get_route", i1 false, i1 false}
!48 = !{!"../net/bluetooth/hci_conn.c", i32 870, i32 1}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/bluetooth/hci_conn.c", i32 1108, i32 2}
!51 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @hci_connect_le_scan.__UNIQUE_ID_ddebug496, !50, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/bluetooth/hci_conn.c", i32 1215, i32 2}
!55 = !{ptr @hci_conn_check_link_mode.__UNIQUE_ID_ddebug497, !54, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/bluetooth/hci_conn.c", i32 1240, i32 3}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/bluetooth/hci_conn.c", i32 1307, i32 2}
!60 = !{ptr @hci_conn_security.__UNIQUE_ID_ddebug500, !59, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!61 = !{ptr @__ksymtab_hci_conn_security, !62, !"__ksymtab_hci_conn_security", i1 false, i1 false}
!62 = !{!"../net/bluetooth/hci_conn.c", i32 1379, i32 1}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/bluetooth/hci_conn.c", i32 1384, i32 2}
!65 = !{ptr @hci_conn_check_secure.__UNIQUE_ID_ddebug501, !64, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!66 = !{ptr @__ksymtab_hci_conn_check_secure, !67, !"__ksymtab_hci_conn_check_secure", i1 false, i1 false}
!67 = !{!"../net/bluetooth/hci_conn.c", i32 1398, i32 1}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/bluetooth/hci_conn.c", i32 1403, i32 2}
!70 = !{ptr @hci_conn_switch_role.__UNIQUE_ID_ddebug502, !69, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!71 = !{ptr @__ksymtab_hci_conn_switch_role, !72, !"__ksymtab_hci_conn_switch_role", i1 false, i1 false}
!72 = !{!"../net/bluetooth/hci_conn.c", i32 1417, i32 1}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/bluetooth/hci_conn.c", i32 1424, i32 2}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @hci_conn_enter_active_mode.__UNIQUE_ID_ddebug503, !74, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/bluetooth/hci_conn.c", i32 1450, i32 2}
!79 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @hci_conn_hash_flush.__UNIQUE_ID_ddebug504, !78, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/bluetooth/hci_conn.c", i32 1465, i32 2}
!83 = !{ptr @hci_conn_check_pending.__UNIQUE_ID_ddebug505, !82, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/bluetooth/hci_conn.c", i32 1604, i32 2}
!86 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @hci_chan_create.__UNIQUE_ID_ddebug506, !85, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/bluetooth/hci_conn.c", i32 1607, i32 3}
!90 = !{ptr @hci_chan_create.__UNIQUE_ID_ddebug507, !89, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/bluetooth/hci_conn.c", i32 1629, i32 2}
!93 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @hci_chan_del.__UNIQUE_ID_ddebug508, !92, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/bluetooth/hci_conn.c", i32 1648, i32 2}
!97 = !{ptr @hci_chan_list_flush.__UNIQUE_ID_ddebug509, !96, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../net/bluetooth/hci_conn.c", i32 1675, i32 2}
!100 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/bluetooth/hci_conn.c", i32 316, i32 2}
!103 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @hci_enhanced_setup_sync_conn.__UNIQUE_ID_ddebug484, !102, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/bluetooth/hci_conn.c", i32 303, i32 3}
!107 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @find_next_esco_param.__UNIQUE_ID_ddebug483, !106, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!109 = !{ptr @esco_param_msbc, !110, !"esco_param_msbc", i1 false, i1 false}
!110 = !{!"../net/bluetooth/hci_conn.c", i32 57, i32 31}
!111 = !{ptr @esco_param_cvsd, !112, !"esco_param_cvsd", i1 false, i1 false}
!112 = !{!"../net/bluetooth/hci_conn.c", i32 44, i32 31}
!113 = !{ptr @sco_param_cvsd, !114, !"sco_param_cvsd", i1 false, i1 false}
!114 = !{!"../net/bluetooth/hci_conn.c", i32 52, i32 31}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/bluetooth/hci_conn.c", i32 436, i32 2}
!117 = !{ptr @hci_setup_sync_conn.__UNIQUE_ID_ddebug485, !116, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/bluetooth/hci_conn.c", i32 283, i32 2}
!120 = !{ptr @hci_add_sco.__UNIQUE_ID_ddebug482, !119, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!121 = !{ptr @skb_queue_head_init.__key, !122, !"__key", i1 false, i1 false}
!122 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!123 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/bluetooth/hci_conn.c", i32 571, i32 2}
!126 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @hci_conn_timeout.__UNIQUE_ID_ddebug488, !125, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/net/bluetooth/bluetooth.h", i32 239, i32 10}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/net/bluetooth/bluetooth.h", i32 241, i32 10}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/net/bluetooth/bluetooth.h", i32 243, i32 10}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/net/bluetooth/bluetooth.h", i32 245, i32 10}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/net/bluetooth/bluetooth.h", i32 247, i32 10}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../include/net/bluetooth/bluetooth.h", i32 249, i32 10}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../include/net/bluetooth/bluetooth.h", i32 251, i32 10}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../include/net/bluetooth/bluetooth.h", i32 253, i32 10}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../include/net/bluetooth/bluetooth.h", i32 255, i32 10}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/net/bluetooth/bluetooth.h", i32 258, i32 9}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/bluetooth/hci_conn.c", i32 178, i32 2}
!150 = !{ptr @hci_connect_le_scan_remove.__UNIQUE_ID_ddebug479, !149, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/bluetooth/hci_conn.c", i32 602, i32 2}
!153 = !{ptr @hci_conn_idle.__UNIQUE_ID_ddebug489, !152, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/bluetooth/hci_conn.c", i32 662, i32 2}
!156 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @le_conn_timeout.__UNIQUE_ID_ddebug490, !155, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/bluetooth/hci_conn.c", i32 154, i32 2}
!160 = !{ptr @le_scan_cleanup.__UNIQUE_ID_ddebug476, !159, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!161 = distinct !{null, !162, !"__warned", i1 false, i1 false}
!162 = !{!"../net/bluetooth/hci_conn.c", i32 160, i32 2}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/net/bluetooth/hci_core.h", i32 1232, i32 2}
!165 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @hci_dev_hold.__UNIQUE_ID_ddebug474, !164, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../include/net/bluetooth/hci_core.h", i32 1188, i32 2}
!170 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @hci_conn_drop.__UNIQUE_ID_ddebug472, !169, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!172 = distinct !{null, !173, !"__warned", i1 false, i1 false}
!173 = !{!"../include/net/bluetooth/hci_core.h", i32 1096, i32 2}
!174 = distinct !{null, !175, !"__warned", i1 false, i1 false}
!175 = !{!"../include/net/bluetooth/hci_core.h", i32 1054, i32 2}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../include/net/bluetooth/hci_core.h", i32 1180, i32 2}
!178 = !{ptr @hci_conn_hold.__UNIQUE_ID_ddebug471, !177, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!179 = !{ptr @.str.78, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/bluetooth/hci_conn.c", i32 940, i32 2}
!181 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @hci_connect_le_sync.__UNIQUE_ID_ddebug494, !180, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!183 = !{ptr @.str.80, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/bluetooth/hci_conn.c", i32 925, i32 2}
!185 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/bluetooth/hci_conn.c", i32 1070, i32 2}
!187 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @hci_explicit_conn_params_set.__UNIQUE_ID_ddebug495, !186, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!189 = distinct !{null, !190, !"__warned", i1 false, i1 false}
!190 = !{!"../include/net/bluetooth/hci_core.h", i32 1033, i32 2}
!191 = !{ptr @.str.83, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/bluetooth/hci_conn.c", i32 204, i32 2}
!193 = !{ptr @hci_acl_create_connection.__UNIQUE_ID_ddebug480, !192, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../net/bluetooth/hci_conn.c", i32 1255, i32 2}
!196 = !{ptr @hci_conn_auth.__UNIQUE_ID_ddebug498, !195, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../net/bluetooth/hci_conn.c", i32 1292, i32 2}
!199 = !{ptr @hci_conn_encrypt.__UNIQUE_ID_ddebug499, !198, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!200 = distinct !{null, !201, !"__warned", i1 false, i1 false}
!201 = !{!"../include/net/bluetooth/hci_core.h", i32 1077, i32 2}
!202 = distinct !{null, !203, !"__already_done", i1 false, i1 false}
!203 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!204 = !{ptr @.str.86, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.87, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!207 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!209 = !{ptr @.str.89, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../include/net/bluetooth/hci_core.h", i32 1224, i32 2}
!211 = !{ptr @hci_dev_put.__UNIQUE_ID_ddebug473, !210, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!212 = distinct !{null, !213, !"__warned", i1 false, i1 false}
!213 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!214 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.91, !213, !"<string literal>", i1 false, i1 false}
!216 = distinct !{null, !217, !"__warned", i1 false, i1 false}
!217 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!218 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!219 = !{!"sp"}
!220 = !{i32 1, !"wchar_size", i32 2}
!221 = !{i32 1, !"min_enum_size", i32 4}
!222 = !{i32 8, !"branch-target-enforcement", i32 0}
!223 = !{i32 8, !"sign-return-address", i32 0}
!224 = !{i32 8, !"sign-return-address-all", i32 0}
!225 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!226 = !{i32 7, !"uwtable", i32 1}
!227 = !{i32 7, !"frame-pointer", i32 2}
!228 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!229 = !{i64 2148532745, i64 2148532750, i64 2148532763, i64 2148532807, i64 2148532841, i64 2148532862}
!230 = !{i64 2149545985}
!231 = !{!"branch_weights", i32 1, i32 2000}
!232 = !{i64 2149520593}
!233 = !{i64 2149520859}
!234 = !{i64 2148796623}
!235 = !{i64 2148711332, i64 2148711364, i64 2148711393, i64 2148711427, i64 2148711458, i64 2148711481}
!236 = !{i64 2148796852}
!237 = !{i8 0, i8 2}
!238 = !{!"auto-init"}
!239 = !{i64 2148708147, i64 2148708173, i64 2148708202, i64 2148708236, i64 2148708267, i64 2148708290}
!240 = !{i64 2152220626, i64 2152220651}
!241 = !{!"branch_weights", i32 2000, i32 1}
!242 = !{i64 4716181}
!243 = !{i64 4716378}
!244 = !{i64 2152201611}
!245 = !{i64 2152221307, i64 2152221332}
