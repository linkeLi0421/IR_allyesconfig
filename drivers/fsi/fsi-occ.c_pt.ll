; ModuleID = '/llk/IR_all_yes/drivers/fsi/fsi-occ.c_pt.bc'
source_filename = "../drivers/fsi/fsi-occ.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fsi_occ_submit\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_occ_submit\09\09\09\09"
module asm "\09.long\09__crc_fsi_occ_submit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_occ_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_occ_submit\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_occ_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.occ = type { ptr, ptr, [32 x i8], i32, i8, ptr, ptr, i32, i32, i32, %struct.miscdevice, %struct.mutex }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.occ_response = type <{ i8, i8, i8, i16, [4091 x i8] }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.occ_client = type { ptr, %struct.mutex, i32, i32, ptr }

@fsi_occ_submit.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fsi_occ\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsi_occ_submit\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/fsi/fsi-occ.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Bad resplen %zd\0A\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fsi_occ_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 528, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"resp timeout status=%02x resp seq_no=%d our seq_no=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsi_occ_submit._entry_ptr = internal global ptr @fsi_occ_submit._entry, section ".printk_index", align 4
@fsi_occ_submit.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"resp_status=%02x resp_data_len=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_fsi_occ_submit = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_occ_submit = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_occ_submit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_occ_submit to i32), ptr @__kstrtab_fsi_occ_submit, ptr @__kstrtabns_fsi_occ_submit }, section "___ksymtab_gpl+fsi_occ_submit", align 4
@__initcall__kmod_fsi_occ__235_694_occ_init6 = internal global ptr @occ_init, section ".initcall6.init", align 4
@__exitcall_occ_exit = internal global ptr @occ_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author236 = internal constant [51 x i8] c"fsi_occ.author=Eddie James <eajames@linux.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [38 x i8] c"fsi_occ.description=BMC P9 OCC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [33 x i8] c"fsi_occ.file=drivers/fsi/fsi-occ\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [20 x i8] c"fsi_occ.license=GPL\00", section ".modinfo", align 1
@occ_putsram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 369, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SRAM write returned failure status: %08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"occ_putsram\00", [20 x i8] zeroinitializer }, align 32
@occ_putsram._entry_ptr = internal global ptr @occ_putsram._entry, section ".printk_index", align 4
@occ_putsram._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 378, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SRAM write response length invalid: %zd\0A\00", [55 x i8] zeroinitializer }, align 32
@occ_putsram._entry_ptr.12 = internal global ptr @occ_putsram._entry.10, section ".printk_index", align 4
@occ_putsram._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 385, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SRAM write expected %d bytes got %zd\0A\00", [58 x i8] zeroinitializer }, align 32
@occ_putsram._entry_ptr.15 = internal global ptr @occ_putsram._entry.13, section ".printk_index", align 4
@occ_trigger_attn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 430, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SRAM attn returned failure status: %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"occ_trigger_attn\00", [47 x i8] zeroinitializer }, align 32
@occ_trigger_attn._entry_ptr = internal global ptr @occ_trigger_attn._entry, section ".printk_index", align 4
@occ_trigger_attn._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 439, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SRAM attn response length invalid: %zd\0A\00", [56 x i8] zeroinitializer }, align 32
@occ_trigger_attn._entry_ptr.20 = internal global ptr @occ_trigger_attn._entry.18, section ".printk_index", align 4
@occ_trigger_attn._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 446, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SRAM attn expected 8 bytes got %zd\0A\00", [60 x i8] zeroinitializer }, align 32
@occ_trigger_attn._entry_ptr.23 = internal global ptr @occ_trigger_attn._entry.21, section ".printk_index", align 4
@occ_getsram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SRAM read returned failure status: %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"occ_getsram\00", [20 x i8] zeroinitializer }, align 32
@occ_getsram._entry_ptr = internal global ptr @occ_getsram._entry, section ".printk_index", align 4
@occ_getsram._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 306, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SRAM read expected %d bytes got %zd\0A\00", [59 x i8] zeroinitializer }, align 32
@occ_getsram._entry_ptr.28 = internal global ptr @occ_getsram._entry.26, section ".printk_index", align 4
@occ_verify_checksum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 248, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad checksum: %04x!=%04x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"occ_verify_checksum\00", [44 x i8] zeroinitializer }, align 32
@occ_verify_checksum._entry_ptr = internal global ptr @occ_verify_checksum._entry, section ".printk_index", align 4
@occ_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @occ_probe, ptr @occ_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.31, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @occ_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"occ\00", [28 x i8] zeroinitializer }, align 32
@occ_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ibm,p9-occ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ibm,p10-occ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"occ-hwmon\00", [22 x i8] zeroinitializer }, align 32
@occ_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&occ->occ_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@occ_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"occ%d\00", [26 x i8] zeroinitializer }, align 32
@occ_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @occ_read, ptr @occ_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @occ_open, ptr null, ptr @occ_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@occ_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 631, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register miscdevice: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"occ_probe\00", [22 x i8] zeroinitializer }, align 32
@occ_probe._entry_ptr = internal global ptr @occ_probe._entry, section ".printk_index", align 4
@occ_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 640, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to create hwmon device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@occ_probe._entry_ptr.41 = internal global ptr @occ_probe._entry.38, section ".printk_index", align 4
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"occ_ida.xa_lock\00", [16 x i8] zeroinitializer }, align 32
@occ_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@occ_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&client->lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 225, i64 255]
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 477, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 525, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 546, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 368, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 377, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 383, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 429, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 438, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 444, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 295, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 305, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 247, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [11 x i8] c"occ_driver\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 673, i32 31 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 675, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant [10 x i8] c"occ_match\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 660, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 586, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 602, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 605, i32 43 }
@___asan_gen_.161 = private unnamed_addr constant [8 x i8] c"occ_ida\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 623, i32 41 }
@___asan_gen_.167 = private unnamed_addr constant [9 x i8] c"occ_fops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 206, i32 37 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 631, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 640, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 77, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 230, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 214, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 174, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [25 x i8] c"../drivers/fsi/fsi-occ.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 95, i32 2 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_occ_exit, ptr @__initcall__kmod_fsi_occ__235_694_occ_init6, ptr @__ksymtab_fsi_occ_submit, ptr @fsi_occ_submit._entry, ptr @fsi_occ_submit._entry_ptr, ptr @occ_getsram._entry, ptr @occ_getsram._entry.26, ptr @occ_getsram._entry_ptr, ptr @occ_getsram._entry_ptr.28, ptr @occ_probe._entry, ptr @occ_probe._entry.38, ptr @occ_probe._entry_ptr, ptr @occ_probe._entry_ptr.41, ptr @occ_putsram._entry, ptr @occ_putsram._entry.10, ptr @occ_putsram._entry.13, ptr @occ_putsram._entry_ptr, ptr @occ_putsram._entry_ptr.12, ptr @occ_putsram._entry_ptr.15, ptr @occ_trigger_attn._entry, ptr @occ_trigger_attn._entry.18, ptr @occ_trigger_attn._entry.21, ptr @occ_trigger_attn._entry_ptr, ptr @occ_trigger_attn._entry_ptr.20, ptr @occ_trigger_attn._entry_ptr.23, ptr @occ_verify_checksum._entry, ptr @occ_verify_checksum._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @occ_driver, ptr @.str.31, ptr @occ_match, ptr @.str.32, ptr @occ_probe.__key, ptr @.str.33, ptr @.str.34, ptr @occ_ida, ptr @.str.35, ptr @occ_fops, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @occ_open.__key, ptr @.str.46], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_occ_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_putsram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_putsram._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_putsram._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_trigger_attn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_trigger_attn._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_trigger_attn._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_getsram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_getsram._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_verify_checksum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsi_occ_submit(ptr noundef %dev, ptr nocapture noundef readonly %request, i32 noundef %req_len, ptr noundef %response, ptr nocapture noundef %resp_len) #0 align 64 {
entry:
  %parsed_len.i257 = alloca i32, align 4
  %resp_len.i258 = alloca i32, align 4
  %parsed_len.i = alloca i32, align 4
  %resp_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resp_len, align 4
  store i32 0, ptr %resp_len, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp ult i32 %3, 7
  br i1 %cmp, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %sub = add i32 %req_len, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp11292 = icmp ugt i32 %sub, 1
  br i1 %cmp11292, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_occ_submit.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_occ_submit, %if.then8)) #9
          to label %cleanup [label %if.then8], !srcloc !122

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_occ_submit.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %3) #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0294 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %checksum.0293 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %request, i32 %i.0294
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %add = add nuw nsw i32 %checksum.0293, %conv
  %inc = add nuw i32 %i.0294, 1
  %phi.cast = and i32 %add, 65535
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %checksum.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.cast, %for.body.for.end_crit_edge ]
  %occ_lock = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %occ_lock, i32 noundef 0) #9
  %client_buffer = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %client_buffer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %response, ptr %client_buffer, align 4
  %client_buffer_size = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %client_buffer_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %client_buffer_size, align 4
  %client_response_size = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %client_response_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %client_response_size, align 4
  %sequence_number = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %sequence_number to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sequence_number, align 4
  %inc14 = add i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc14)
  %tobool16.not = icmp eq i8 %inc14, 0
  %spec.select = select i1 %tobool16.not, i8 1, i8 %inc14
  %11 = ptrtoint ptr %sequence_number to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %sequence_number, align 4
  %conv20 = zext i8 %10 to i32
  %add22 = add nuw nsw i32 %checksum.0.lcssa, %conv20
  %add.i = add i32 %req_len, 7
  %div.i = sdiv i32 %add.i, 8
  %mul.i = shl nsw i32 %div.i, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed_len.i) #9
  %12 = ptrtoint ptr %parsed_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %parsed_len.i, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i) #9
  %13 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2048, ptr %resp_len.i, align 4
  %buffer.i = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer.i, align 4
  %version.i = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp eq i32 %17, 1
  %cond.i = select i1 %cmp.i, i32 6, i32 5
  %shr.i = lshr exact i32 %mul.i, 2
  %add1.i = add nuw nsw i32 %cond.i, %shr.i
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add1.i, ptr %15, align 4
  %arrayidx2.i = getelementptr i32, ptr %15, i32 1
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 41988, ptr %arrayidx2.i, align 4
  %20 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cond59.i = icmp eq i32 %21, 1
  br i1 %cond59.i, label %sw.bb6.i, label %for.end.sw.epilog.i_crit_edge

for.end.sw.epilog.i_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9.i = getelementptr i32, ptr %15, i32 4
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -12288, ptr %arrayidx9.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb6.i, %for.end.sw.epilog.i_crit_edge
  %.sink103.i = phi i32 [ 88, %sw.bb6.i ], [ 1, %for.end.sw.epilog.i_crit_edge ]
  %.sink.i = phi i32 [ 0, %sw.bb6.i ], [ -270336, %for.end.sw.epilog.i_crit_edge ]
  %idx.0.i = phi i32 [ 1, %sw.bb6.i ], [ 0, %for.end.sw.epilog.i_crit_edge ]
  %23 = getelementptr i32, ptr %15, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink103.i, ptr %23, align 4
  %25 = getelementptr i32, ptr %15, i32 3
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink.i, ptr %25, align 4
  %add10.i = or i32 %idx.0.i, 4
  %arrayidx11.i = getelementptr i32, ptr %15, i32 %add10.i
  %27 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul.i, ptr %arrayidx11.i, align 4
  %add12.i = add nuw nsw i32 %idx.0.i, 5
  %arrayidx13.i = getelementptr i32, ptr %15, i32 %add12.i
  %28 = call ptr @memcpy(ptr %arrayidx13.i, ptr %request, i32 %req_len)
  %29 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %10, ptr %arrayidx13.i, align 1
  %30 = lshr i32 %add22, 8
  %conv18.i = trunc i32 %30 to i8
  %arrayidx19.i = getelementptr i8, ptr %arrayidx13.i, i32 %sub
  %31 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv18.i, ptr %arrayidx19.i, align 1
  %conv21.i = trunc i32 %add22 to i8
  %sub22.i = add i32 %req_len, -1
  %arrayidx23.i = getelementptr i8, ptr %arrayidx13.i, i32 %sub22.i
  %32 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv21.i, ptr %arrayidx23.i, align 1
  %sbefifo.i = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %sbefifo.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sbefifo.i, align 4
  %call.i = call i32 @sbefifo_submit(ptr noundef %34, ptr noundef %15, i32 noundef %add1.i, ptr noundef %15, ptr noundef nonnull %resp_len.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.i.occ_putsram.exit.thread_crit_edge

sw.epilog.i.occ_putsram.exit.thread_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %occ_putsram.exit.thread

if.end.i:                                         ; preds = %sw.epilog.i
  %35 = ptrtoint ptr %sbefifo.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sbefifo.i, align 4
  %37 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %resp_len.i, align 4
  %call25.i = call i32 @sbefifo_parse_status(ptr noundef %36, i16 noundef zeroext -23548, ptr noundef %15, i32 noundef %38, ptr noundef nonnull %parsed_len.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp sgt i32 %call25.i, 0
  br i1 %cmp26.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end.i
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.8, i32 noundef %call25.i) #12
  %41 = ptrtoint ptr %parsed_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %parsed_len.i, align 4
  %43 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %resp_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp.i.i = icmp ugt i32 %44, %42
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.i.occ_putsram.exit.thread_crit_edge

do.end.i.occ_putsram.exit.thread_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %occ_putsram.exit.thread

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = xor i32 %42, -1
  %sub1.i.i = add i32 %44, %45
  %mul.i.i = shl i32 %sub1.i.i, 2
  %arrayidx.i.i = getelementptr i32, ptr %15, i32 %42
  %46 = ptrtoint ptr %client_buffer_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %client_buffer_size, align 4
  %48 = call i32 @llvm.umin.i32(i32 %mul.i.i, i32 %47) #9
  %49 = ptrtoint ptr %client_buffer to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client_buffer, align 4
  %51 = call ptr @memcpy(ptr %50, ptr %arrayidx.i.i, i32 %48)
  %52 = ptrtoint ptr %client_response_size to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %48, ptr %client_response_size, align 4
  br label %occ_putsram.exit.thread

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool29.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool29.not.i, label %if.end32.i, label %if.else.i.occ_putsram.exit.thread_crit_edge

if.else.i.occ_putsram.exit.thread_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %occ_putsram.exit.thread

if.end32.i:                                       ; preds = %if.else.i
  %53 = ptrtoint ptr %parsed_len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %parsed_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp33.not.i = icmp eq i32 %54, 1
  br i1 %cmp33.not.i, label %if.else40.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.11, i32 noundef %54) #12
  br label %occ_putsram.exit.thread

if.else40.i:                                      ; preds = %if.end32.i
  %57 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %mul.i)
  %cmp42.not.i = icmp eq i32 %58, %mul.i
  br i1 %cmp42.not.i, label %if.end27, label %do.end47.i

do.end47.i:                                       ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.14, i32 noundef %mul.i, i32 noundef %58) #12
  br label %occ_putsram.exit.thread

occ_putsram.exit.thread:                          ; preds = %do.end47.i, %do.end38.i, %if.else.i.occ_putsram.exit.thread_crit_edge, %if.then.i.i, %do.end.i.occ_putsram.exit.thread_crit_edge, %sw.epilog.i.occ_putsram.exit.thread_crit_edge
  %retval.0.i256.ph = phi i32 [ -70, %if.then.i.i ], [ -70, %do.end.i.occ_putsram.exit.thread_crit_edge ], [ -74, %do.end47.i ], [ -74, %do.end38.i ], [ %call25.i, %if.else.i.occ_putsram.exit.thread_crit_edge ], [ %call.i, %sw.epilog.i.occ_putsram.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_len.i) #9
  br label %done

if.end27:                                         ; preds = %if.else40.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_len.i) #9
  %61 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buffer.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed_len.i257) #9
  %63 = ptrtoint ptr %parsed_len.i257 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %parsed_len.i257, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i258) #9
  %64 = ptrtoint ptr %resp_len.i258 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2048, ptr %resp_len.i258, align 4
  %65 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cond.i261 = icmp eq i32 %66, 1
  br i1 %cond.i261, label %sw.bb2.i, label %if.end27.sw.epilog.i268_crit_edge

if.end27.sw.epilog.i268_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i268

sw.bb2.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5.i = getelementptr i32, ptr %62, i32 4
  %67 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %arrayidx5.i, align 4
  br label %sw.epilog.i268

sw.epilog.i268:                                   ; preds = %sw.bb2.i, %if.end27.sw.epilog.i268_crit_edge
  %.sink.i262 = phi i32 [ 208, %sw.bb2.i ], [ 3, %if.end27.sw.epilog.i268_crit_edge ]
  %cmd_len.0.i = phi i32 [ 8, %sw.bb2.i ], [ 7, %if.end27.sw.epilog.i268_crit_edge ]
  %idx.0.i263 = phi i32 [ 1, %sw.bb2.i ], [ 0, %if.end27.sw.epilog.i268_crit_edge ]
  %68 = getelementptr i32, ptr %62, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink.i262, ptr %68, align 4
  %70 = getelementptr i32, ptr %62, i32 3
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %70, align 4
  %72 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %cmd_len.0.i, ptr %62, align 4
  %arrayidx7.i = getelementptr i32, ptr %62, i32 1
  %73 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 41988, ptr %arrayidx7.i, align 4
  %add.i264 = or i32 %idx.0.i263, 4
  %arrayidx8.i = getelementptr i32, ptr %62, i32 %add.i264
  %74 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 8, ptr %arrayidx8.i, align 4
  %add9.i = add nuw nsw i32 %idx.0.i263, 5
  %arrayidx10.i = getelementptr i32, ptr %62, i32 %add9.i
  %75 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 536936448, ptr %arrayidx10.i, align 4
  %add11.i = or i32 %idx.0.i263, 6
  %arrayidx12.i = getelementptr i32, ptr %62, i32 %add11.i
  %76 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %arrayidx12.i, align 4
  %77 = ptrtoint ptr %sbefifo.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sbefifo.i, align 4
  %call.i266 = call i32 @sbefifo_submit(ptr noundef %78, ptr noundef %62, i32 noundef %cmd_len.0.i, ptr noundef %62, ptr noundef nonnull %resp_len.i258) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %tobool.not.i267 = icmp eq i32 %call.i266, 0
  br i1 %tobool.not.i267, label %if.end.i270, label %sw.epilog.i268.occ_trigger_attn.exit.thread_crit_edge

sw.epilog.i268.occ_trigger_attn.exit.thread_crit_edge: ; preds = %sw.epilog.i268
  call void @__sanitizer_cov_trace_pc() #11
  br label %occ_trigger_attn.exit.thread

if.end.i270:                                      ; preds = %sw.epilog.i268
  %79 = ptrtoint ptr %sbefifo.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sbefifo.i, align 4
  %81 = ptrtoint ptr %resp_len.i258 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %resp_len.i258, align 4
  %call14.i = call i32 @sbefifo_parse_status(ptr noundef %80, i16 noundef zeroext -23548, ptr noundef %62, i32 noundef %82, ptr noundef nonnull %parsed_len.i257) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp.i269 = icmp sgt i32 %call14.i, 0
  br i1 %cmp.i269, label %do.end.i272, label %if.else.i280

do.end.i272:                                      ; preds = %if.end.i270
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.16, i32 noundef %call14.i) #12
  %85 = ptrtoint ptr %parsed_len.i257 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %parsed_len.i257, align 4
  %87 = ptrtoint ptr %resp_len.i258 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %resp_len.i258, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %86)
  %cmp.i.i271 = icmp ugt i32 %88, %86
  br i1 %cmp.i.i271, label %if.then.i.i279, label %do.end.i272.occ_trigger_attn.exit.thread_crit_edge

do.end.i272.occ_trigger_attn.exit.thread_crit_edge: ; preds = %do.end.i272
  call void @__sanitizer_cov_trace_pc() #11
  br label %occ_trigger_attn.exit.thread

if.then.i.i279:                                   ; preds = %do.end.i272
  call void @__sanitizer_cov_trace_pc() #11
  %89 = xor i32 %86, -1
  %sub1.i.i273 = add i32 %88, %89
  %mul.i.i274 = shl i32 %sub1.i.i273, 2
  %arrayidx.i.i275 = getelementptr i32, ptr %62, i32 %86
  %90 = ptrtoint ptr %client_buffer_size to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %client_buffer_size, align 4
  %92 = call i32 @llvm.umin.i32(i32 %mul.i.i274, i32 %91) #9
  %93 = ptrtoint ptr %client_buffer to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %client_buffer, align 4
  %95 = call ptr @memcpy(ptr %94, ptr %arrayidx.i.i275, i32 %92)
  %96 = ptrtoint ptr %client_response_size to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %92, ptr %client_response_size, align 4
  br label %occ_trigger_attn.exit.thread

if.else.i280:                                     ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool16.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool16.not.i, label %if.end19.i, label %if.else.i280.occ_trigger_attn.exit.thread_crit_edge

if.else.i280.occ_trigger_attn.exit.thread_crit_edge: ; preds = %if.else.i280
  call void @__sanitizer_cov_trace_pc() #11
  br label %occ_trigger_attn.exit.thread

if.end19.i:                                       ; preds = %if.else.i280
  %97 = ptrtoint ptr %parsed_len.i257 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %parsed_len.i257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp20.not.i = icmp eq i32 %98, 1
  br i1 %cmp20.not.i, label %if.else26.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.19, i32 noundef %98) #12
  br label %occ_trigger_attn.exit.thread

if.else26.i:                                      ; preds = %if.end19.i
  %101 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %102)
  %cmp28.not.i = icmp eq i32 %102, 8
  br i1 %cmp28.not.i, label %if.end31, label %do.end32.i

do.end32.i:                                       ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.22, i32 noundef %102) #12
  br label %occ_trigger_attn.exit.thread

occ_trigger_attn.exit.thread:                     ; preds = %do.end32.i, %do.end24.i, %if.else.i280.occ_trigger_attn.exit.thread_crit_edge, %if.then.i.i279, %do.end.i272.occ_trigger_attn.exit.thread_crit_edge, %sw.epilog.i268.occ_trigger_attn.exit.thread_crit_edge
  %retval.0.i281.ph = phi i32 [ -70, %if.then.i.i279 ], [ -70, %do.end.i272.occ_trigger_attn.exit.thread_crit_edge ], [ -74, %do.end32.i ], [ -74, %do.end24.i ], [ %call14.i, %if.else.i280.occ_trigger_attn.exit.thread_crit_edge ], [ %call.i266, %sw.epilog.i268.occ_trigger_attn.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i258) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_len.i257) #9
  br label %done

if.end31:                                         ; preds = %if.else26.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i258) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_len.i257) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %105 = load volatile i32, ptr @jiffies, align 128
  %call33296 = call fastcc i32 @occ_getsram(ptr noundef nonnull %1, i32 noundef 0, ptr noundef %response, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33296)
  %tobool34.not297 = icmp eq i32 %call33296, 0
  br i1 %tobool34.not297, label %if.end36.lr.ph, label %if.end31.done_crit_edge

if.end31.done_crit_edge:                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end36.lr.ph:                                   ; preds = %if.end31
  %return_status = getelementptr inbounds %struct.occ_response, ptr %response, i32 0, i32 2
  %add51 = add i32 %105, 100
  br label %if.end36

if.end36:                                         ; preds = %__here.if.end36_crit_edge, %if.end36.lr.ph
  %106 = ptrtoint ptr %return_status to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %return_status, align 1
  %108 = zext i8 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values)
  switch i8 %107, label %lor.lhs.false44 [
    i8 -1, label %if.end36.if.then50_crit_edge
    i8 -31, label %if.end36.if.then50_crit_edge309
  ]

if.end36.if.then50_crit_edge309:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

if.end36.if.then50_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

lor.lhs.false44:                                  ; preds = %if.end36
  %109 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %110, i8 %10)
  %cmp48.not = icmp eq i8 %110, %10
  br i1 %cmp48.not, label %do.end143.critedge, label %lor.lhs.false44.if.then50_crit_edge

lor.lhs.false44.if.then50_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false44.if.then50_crit_edge, %if.end36.if.then50_crit_edge, %if.end36.if.then50_crit_edge309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %111 = load volatile i32, ptr @jiffies, align 128
  %sub52 = sub i32 %add51, %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub52)
  %cmp53 = icmp slt i32 %sub52, 0
  br i1 %cmp53, label %do.end58, label %__here

do.end58:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %conv61 = zext i8 %107 to i32
  %114 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %response, align 1
  %conv63 = zext i8 %115 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.4, i32 noundef %conv61, i32 noundef %conv63, i32 noundef %conv20) #12
  br label %done

__here:                                           ; preds = %if.then50
  %116 = call i32 @llvm.read_register.i32(metadata !112) #9
  %and.i = and i32 %116, -16384
  %117 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 212
  %120 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 ptrtoint (ptr blockaddress(@fsi_occ_submit, %__here) to i32), ptr %task_state_change, align 4
  %121 = load ptr, ptr %task, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile i32 2, ptr %121, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !124
  %call139 = call i32 @schedule_timeout(i32 noundef 5) #9
  %call33 = call fastcc i32 @occ_getsram(ptr noundef nonnull %1, i32 noundef 0, ptr noundef %response, i32 noundef 8)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %__here.if.end36_crit_edge, label %__here.done_crit_edge

__here.done_crit_edge:                            ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

__here.if.end36_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end143.critedge:                               ; preds = %lor.lhs.false44
  %data_length = getelementptr inbounds %struct.occ_response, ptr %response, i32 0, i32 3
  %123 = ptrtoint ptr %data_length to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %data_length, align 1
  %conv145 = zext i16 %124 to i32
  %add146 = add nuw nsw i32 %conv145, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add146, i32 %3)
  %cmp147 = icmp ugt i32 %add146, %3
  br i1 %cmp147, label %do.end143.critedge.done_crit_edge, label %do.body151

do.end143.critedge.done_crit_edge:                ; preds = %do.end143.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.body151:                                       ; preds = %do.end143.critedge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_occ_submit.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_occ_submit, %if.then163)) #9
          to label %do.end169 [label %if.then163], !srcloc !122

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %return_status to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %return_status, align 1
  %conv165 = zext i8 %126 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_occ_submit.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv165, i32 noundef %conv145) #9
  br label %do.end169

do.end169:                                        ; preds = %if.then163, %do.body151
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %124)
  %cmp171 = icmp ugt i16 %124, 1
  br i1 %cmp171, label %if.then173, label %do.end169.if.end181_crit_edge

do.end169.if.end181_crit_edge:                    ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end181

if.then173:                                       ; preds = %do.end169
  %arrayidx174 = getelementptr %struct.occ_response, ptr %response, i32 0, i32 4, i32 3
  %sub176 = add nsw i32 %conv145, -1
  %call177 = call fastcc i32 @occ_getsram(ptr noundef nonnull %1, i32 noundef 8, ptr noundef %arrayidx174, i32 noundef %sub176)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.then173.if.end181_crit_edge, label %if.then173.done_crit_edge

if.then173.done_crit_edge:                        ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then173.if.end181_crit_edge:                   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end181

if.end181:                                        ; preds = %if.then173.if.end181_crit_edge, %do.end169.if.end181_crit_edge
  %127 = ptrtoint ptr %client_response_size to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add146, ptr %client_response_size, align 4
  %call185 = call fastcc i32 @occ_verify_checksum(ptr noundef nonnull %1, ptr noundef %response, i16 noundef zeroext %124)
  br label %done

done:                                             ; preds = %if.end181, %if.then173.done_crit_edge, %do.end143.critedge.done_crit_edge, %__here.done_crit_edge, %do.end58, %if.end31.done_crit_edge, %occ_trigger_attn.exit.thread, %occ_putsram.exit.thread
  %rc.1 = phi i32 [ -110, %do.end58 ], [ %call177, %if.then173.done_crit_edge ], [ %call185, %if.end181 ], [ -90, %do.end143.critedge.done_crit_edge ], [ %retval.0.i256.ph, %occ_putsram.exit.thread ], [ %retval.0.i281.ph, %occ_trigger_attn.exit.thread ], [ %call33296, %if.end31.done_crit_edge ], [ %call33, %__here.done_crit_edge ]
  %128 = ptrtoint ptr %client_response_size to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %client_response_size, align 4
  %130 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %resp_len, align 4
  call void @mutex_unlock(ptr noundef %occ_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then8, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %done ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.then8 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @occ_getsram(ptr nocapture noundef %occ, i32 noundef %offset, ptr nocapture noundef writeonly %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %parsed_len = alloca i32, align 4
  %resp_len = alloca i32, align 4
  %cmd = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 7
  %div = sdiv i32 %add, 8
  %mul = shl nsw i32 %div, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed_len) #9
  %0 = ptrtoint ptr %parsed_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %parsed_len, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #9
  %1 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2048, ptr %resp_len, align 4
  %buffer = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 5
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #9
  %4 = getelementptr inbounds [6 x i32], ptr %cmd, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i32], ptr %cmd, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i32], ptr %cmd, i32 0, i32 3
  %version = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 9
  %7 = getelementptr inbounds i8, ptr %cmd, i32 8
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cond = icmp eq i32 %10, 1
  br i1 %cond, label %sw.bb3, label %sw.bb

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %5, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = getelementptr inbounds [6 x i32], ptr %cmd, i32 0, i32 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 88, ptr %5, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %.sink58 = phi i32 [ -8192, %sw.bb3 ], [ -266240, %sw.bb ]
  %.sink = phi ptr [ %12, %sw.bb3 ], [ %6, %sw.bb ]
  %cmd_len.0 = phi i32 [ 6, %sw.bb3 ], [ 5, %sw.bb ]
  %idx.0 = phi i32 [ 5, %sw.bb3 ], [ 4, %sw.bb ]
  %add6 = add i32 %.sink58, %offset
  %15 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add6, ptr %.sink, align 4
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cmd_len.0, ptr %cmd, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 41987, ptr %4, align 4
  %arrayidx11 = getelementptr [6 x i32], ptr %cmd, i32 0, i32 %idx.0
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %arrayidx11, align 4
  %sbefifo = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1
  %19 = ptrtoint ptr %sbefifo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sbefifo, align 4
  %call = call i32 @sbefifo_submit(ptr noundef %20, ptr noundef nonnull %cmd, i32 noundef %cmd_len.0, ptr noundef %3, ptr noundef nonnull %resp_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %21 = ptrtoint ptr %sbefifo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sbefifo, align 4
  %23 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resp_len, align 4
  %call13 = call i32 @sbefifo_parse_status(ptr noundef %22, i16 noundef zeroext -23549, ptr noundef %3, i32 noundef %24, ptr noundef nonnull %parsed_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp sgt i32 %call13, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  %25 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %occ, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.24, i32 noundef %call13) #12
  %27 = ptrtoint ptr %parsed_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %parsed_len, align 4
  %29 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp.i = icmp ugt i32 %30, %28
  br i1 %cmp.i, label %if.then.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %31 = xor i32 %28, -1
  %sub1.i = add i32 %30, %31
  %mul.i = shl i32 %sub1.i, 2
  %arrayidx.i = getelementptr i32, ptr %3, i32 %28
  %client_buffer_size.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 7
  %32 = ptrtoint ptr %client_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %client_buffer_size.i, align 4
  %34 = call i32 @llvm.umin.i32(i32 %mul.i, i32 %33) #9
  %client_buffer.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 6
  %35 = ptrtoint ptr %client_buffer.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client_buffer.i, align 4
  %37 = call ptr @memcpy(ptr %36, ptr %arrayidx.i, i32 %34)
  %client_response_size.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 8
  %38 = ptrtoint ptr %client_response_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %34, ptr %client_response_size.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end18, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.else
  %39 = ptrtoint ptr %parsed_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %parsed_len, align 4
  %sub = add i32 %40, -1
  %arrayidx19 = getelementptr i32, ptr %3, i32 %sub
  %41 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %mul)
  %cmp20.not = icmp eq i32 %42, %mul
  br i1 %cmp20.not, label %if.else26, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %occ, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.27, i32 noundef %mul, i32 noundef %42) #12
  br label %cleanup

if.else26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %45 = call ptr @memcpy(ptr %data, ptr %3, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.else26, %do.end24, %if.else.cleanup_crit_edge, %if.then.i, %do.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog.cleanup_crit_edge ], [ %call13, %if.else.cleanup_crit_edge ], [ -74, %do.end24 ], [ 0, %if.else26 ], [ -70, %do.end.cleanup_crit_edge ], [ -70, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_len) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @occ_verify_checksum(ptr nocapture noundef readonly %occ, ptr nocapture noundef readonly %resp, i16 noundef zeroext %data_length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %data_length to i32
  %arrayidx = getelementptr %struct.occ_response, ptr %resp, i32 0, i32 4, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %arrayidx, align 1
  %2 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %resp, align 1
  %cmd_type = getelementptr inbounds %struct.occ_response, ptr %resp, i32 0, i32 1
  %4 = ptrtoint ptr %cmd_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmd_type, align 1
  %conv1 = zext i8 %5 to i16
  %conv2 = zext i8 %3 to i16
  %return_status = getelementptr inbounds %struct.occ_response, ptr %resp, i32 0, i32 2
  %6 = ptrtoint ptr %return_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %return_status, align 1
  %conv4 = zext i8 %7 to i16
  %8 = lshr i16 %data_length, 8
  %and = and i16 %data_length, 255
  %add = add nuw nsw i16 %8, %and
  %add6 = add nuw nsw i16 %add, %conv2
  %add10 = add nuw nsw i16 %add6, %conv1
  %add12 = add nuw nsw i16 %add10, %conv4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %data_length)
  %cmp47.not = icmp eq i16 %data_length, 0
  br i1 %cmp47.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %checksum.048 = phi i16 [ %add22, %for.body.for.body_crit_edge ], [ %add12, %entry.for.body_crit_edge ]
  %arrayidx19 = getelementptr %struct.occ_response, ptr %resp, i32 0, i32 4, i32 %indvars.iv
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %10 to i16
  %add22 = add i16 %checksum.048, %conv20
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %idxprom
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %checksum.0.lcssa = phi i16 [ %add12, %entry.for.end_crit_edge ], [ %add22, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %checksum.0.lcssa, i16 %1)
  %cmp26.not = icmp eq i16 %checksum.0.lcssa, %1
  br i1 %cmp26.not, label %for.end.cleanup_crit_edge, label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv25 = zext i16 %1 to i32
  %conv24 = zext i16 %checksum.0.lcssa to i32
  %11 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %occ, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.29, i32 noundef %conv24, i32 noundef %conv25) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -74, %do.end ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @occ_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @occ_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @occ_driver) #9
  tail call void @ida_destroy(ptr noundef nonnull @occ_ida) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbefifo_submit(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbefifo_parse_status(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  %hwmon_dev_info = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !123
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hwmon_dev_info) #9
  %1 = call ptr @memset(ptr %hwmon_dev_info, i32 0, i32 56)
  %2 = ptrtoint ptr %hwmon_dev_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %hwmon_dev_info, align 8
  %name = getelementptr inbounds %struct.platform_device_info, ptr %hwmon_dev_info, i32 0, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.32, ptr %name, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 200, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i99 = tail call noalias ptr @kvmalloc_node(i32 noundef 8192, i32 noundef 3264, i32 noundef -1) #13
  %buffer = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i99, ptr %buffer, align 4
  %tobool4.not = icmp eq ptr %call.i99, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %5 = ptrtoint ptr %call7 to i32
  %version = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 9
  %6 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %version, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i, align 4
  %parent9 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %parent9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent9, align 8
  %sbefifo = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %sbefifo to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sbefifo, align 4
  %sequence_number = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %sequence_number to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %sequence_number, align 4
  %occ_lock = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %occ_lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @occ_probe.__key) #9
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.else25, label %if.then11

if.then11:                                        ; preds = %if.end6
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.34, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool14.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool14.not, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %call16 = call i32 @ida_alloc_range(ptr noundef nonnull @occ_ida, i32 noundef %15, i32 noundef %15, i32 noundef 3264) #9
  %idx = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call16, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.then18, label %if.then15.if.end28_crit_edge

if.then15.if.end28_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = call i32 @ida_alloc_range(ptr noundef nonnull @occ_ida, i32 noundef 1, i32 noundef 2147483646, i32 noundef 3264) #9
  %17 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call19, ptr %idx, align 4
  br label %if.end28

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = call i32 @ida_alloc_range(ptr noundef nonnull @occ_ida, i32 noundef 1, i32 noundef 2147483646, i32 noundef 3264) #9
  %idx23 = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %idx23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call22, ptr %idx23, align 4
  br label %if.end28

if.else25:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 @ida_alloc_range(ptr noundef nonnull @occ_ida, i32 noundef 1, i32 noundef 2147483646, i32 noundef 3264) #9
  %idx27 = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %idx27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call26, ptr %idx27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.else, %if.then18, %if.then15.if.end28_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name29 = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 2
  %idx30 = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %idx30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %idx30, align 4
  %call31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name29, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %22)
  %mdev = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 10
  %fops = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 10, i32 2
  %23 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @occ_fops, ptr %fops, align 4
  %24 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 255, ptr %mdev, align 4
  %name36 = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %name36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %name29, ptr %name36, align 4
  %parent38 = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 10, i32 4
  %26 = ptrtoint ptr %parent38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev1, ptr %parent38, align 4
  %call40 = call i32 @misc_register(ptr noundef %mdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end48, label %do.end45

do.end45:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %call40) #12
  %27 = ptrtoint ptr %idx30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx30, align 4
  call void @ida_free(ptr noundef nonnull @occ_ida, i32 noundef %28) #9
  %29 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buffer, align 4
  call void @kvfree(ptr noundef %30) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end28
  %31 = ptrtoint ptr %idx30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %idx30, align 4
  %id = getelementptr inbounds %struct.platform_device_info, ptr %hwmon_dev_info, i32 0, i32 4
  %33 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %id, align 8
  %call50 = call ptr @platform_device_register_full(ptr noundef nonnull %hwmon_dev_info) #9
  %cmp.i = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end55, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.39) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end48.cleanup_crit_edge, %do.end45, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %do.end45 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.end55 ], [ 0, %if.end48.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hwmon_dev_info) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %buffer = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void @kvfree(ptr noundef %3) #9
  %mdev = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 10
  tail call void @misc_deregister(ptr noundef %mdev) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @occ_unregister_child) #9
  %idx = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  tail call void @ida_free(ptr noundef nonnull @occ_ida, i32 noundef %5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp = icmp ugt i32 %len, 4096
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.occ_client, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %read_offset = getelementptr inbounds %struct.occ_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %read_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read_offset, align 4
  %data_size = getelementptr inbounds %struct.occ_client, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp3 = icmp ult i32 %5, %3
  br i1 %cmp3, label %land.rhs, label %if.end43

land.rhs:                                         ; preds = %if.end2
  %.b71 = load i1, ptr @occ_read.__already_done, align 1
  br i1 %.b71, label %land.rhs.done_crit_edge, label %if.then11, !prof !125

land.rhs.done_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @occ_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 120, i32 noundef 9, ptr noundef null) #9
  br label %done

if.end43:                                         ; preds = %if.end2
  %sub = sub i32 %5, %3
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  %buffer = getelementptr inbounds %struct.occ_client, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %3
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %6, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end43.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end43.copy_to_user.exit_crit_edge:             ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end43
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %6, i32 -1226833920) #14, !srcloc !126
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %6) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %6) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end43.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %6, %if.end43.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %6, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool49.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool49.not, label %if.else, label %copy_to_user.exit.done_crit_edge

copy_to_user.exit.done_crit_edge:                 ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.else:                                          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %read_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %read_offset, align 4
  %add = add i32 %11, %6
  store i32 %add, ptr %read_offset, align 4
  br label %done

done:                                             ; preds = %if.else, %copy_to_user.exit.done_crit_edge, %if.then11, %land.rhs.done_crit_edge
  %rc.0 = phi i32 [ %6, %if.else ], [ -5, %if.then11 ], [ -14, %copy_to_user.exit.done_crit_edge ], [ -5, %land.rhs.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %done ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %rlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rlen) #9
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = add i32 %len, -4094
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4091, i32 %2)
  %3 = icmp ult i32 %2, -4091
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.occ_client, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %buffer = getelementptr inbounds %struct.occ_client, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 1
  tail call void @__check_object_size(ptr noundef %arrayidx, i32 noundef %len, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end3.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end3.if.then11.i.i_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end3
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %len, i32 -1226833920) #14, !srcloc !127
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !125

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef %len) #9
  %7 = tail call i32 @llvm.read_register.i32(metadata !112) #9
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !128
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %arrayidx, ptr noundef %buf, i32 noundef %len) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #9, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !125

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end3.if.then11.i.i_crit_edge
  %res.0.i.i41 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %len, %if.end3.if.then11.i.i_crit_edge ], [ %len, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %len, %res.0.i.i41
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i41)
  br label %done

if.end6:                                          ; preds = %if.end.i.i
  %arrayidx7 = getelementptr i8, ptr %5, i32 2
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7, align 1
  %conv = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx8 = getelementptr i8, ptr %5, i32 3
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %14 to i32
  %add = or i32 %shl, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4090, i32 %add)
  %cmp10 = icmp ugt i32 %add, 4090
  br i1 %cmp10, label %if.end6.done_crit_edge, label %if.end13

if.end6.done_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end13:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %rlen, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %add14 = add nuw nsw i32 %add, 6
  %call15 = call i32 @fsi_occ_submit(ptr noundef %19, ptr noundef %5, i32 noundef %add14, ptr noundef %5, ptr noundef nonnull %rlen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.done_crit_edge

if.end13.done_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rlen, align 4
  %data_size = getelementptr inbounds %struct.occ_client, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %data_size, align 4
  %read_offset = getelementptr inbounds %struct.occ_client, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %read_offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %read_offset, align 4
  br label %done

done:                                             ; preds = %if.end18, %if.end13.done_crit_edge, %if.end6.done_crit_edge, %if.then11.i.i
  %rc.0 = phi i32 [ %call15, %if.end13.done_crit_edge ], [ %len, %if.end18 ], [ -22, %if.end6.done_crit_edge ], [ -14, %if.then11.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %done ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rlen) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 108) #15
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -68
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %3 = inttoptr i32 %call1 to ptr
  %buffer = getelementptr inbounds %struct.occ_client, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %buffer, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %call7.i.i, align 8
  %lock = getelementptr inbounds %struct.occ_client, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @occ_open.__key) #9
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buffer = getelementptr inbounds %struct.occ_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %4 = ptrtoint ptr %3 to i32
  tail call void @free_pages(i32 noundef %4, i32 noundef 0) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_unregister_child(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

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

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !74, !76, !78, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !98, !100, !102, !103, !105, !107, !109, !110}
!llvm.named.register.sp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/fsi/fsi-occ.c", i32 477, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @fsi_occ_submit.__UNIQUE_ID_ddebug232, !1, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/fsi/fsi-occ.c", i32 525, i32 5}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @fsi_occ_submit._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @fsi_occ_submit._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/fsi/fsi-occ.c", i32 532, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/fsi/fsi-occ.c", i32 546, i32 2}
!16 = !{ptr @fsi_occ_submit.__UNIQUE_ID_ddebug234, !15, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!17 = !{ptr @__ksymtab_fsi_occ_submit, !18, !"__ksymtab_fsi_occ_submit", i1 false, i1 false}
!18 = !{!"../drivers/fsi/fsi-occ.c", i32 566, i32 1}
!19 = !{ptr @__initcall__kmod_fsi_occ__235_694_occ_init6, !20, !"__initcall__kmod_fsi_occ__235_694_occ_init6", i1 false, i1 false}
!20 = !{!"../drivers/fsi/fsi-occ.c", i32 694, i32 1}
!21 = !{ptr @__exitcall_occ_exit, !22, !"__exitcall_occ_exit", i1 false, i1 false}
!22 = !{!"../drivers/fsi/fsi-occ.c", i32 695, i32 1}
!23 = !{ptr @__UNIQUE_ID_author236, !24, !"__UNIQUE_ID_author236", i1 false, i1 false}
!24 = !{!"../drivers/fsi/fsi-occ.c", i32 697, i32 1}
!25 = !{ptr @__UNIQUE_ID_description237, !26, !"__UNIQUE_ID_description237", i1 false, i1 false}
!26 = !{!"../drivers/fsi/fsi-occ.c", i32 698, i32 1}
!27 = !{ptr @__UNIQUE_ID_file238, !28, !"__UNIQUE_ID_file238", i1 false, i1 false}
!28 = !{!"../drivers/fsi/fsi-occ.c", i32 699, i32 1}
!29 = !{ptr @__UNIQUE_ID_license239, !28, !"__UNIQUE_ID_license239", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/fsi/fsi-occ.c", i32 368, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @occ_putsram._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @occ_putsram._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/fsi/fsi-occ.c", i32 377, i32 3}
!37 = !{ptr @occ_putsram._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @occ_putsram._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/fsi/fsi-occ.c", i32 383, i32 4}
!41 = !{ptr @occ_putsram._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @occ_putsram._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/fsi/fsi-occ.c", i32 429, i32 3}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @occ_trigger_attn._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @occ_trigger_attn._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/fsi/fsi-occ.c", i32 438, i32 3}
!50 = !{ptr @occ_trigger_attn._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @occ_trigger_attn._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/fsi/fsi-occ.c", i32 444, i32 4}
!54 = !{ptr @occ_trigger_attn._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @occ_trigger_attn._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/fsi/fsi-occ.c", i32 295, i32 3}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @occ_getsram._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @occ_getsram._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/fsi/fsi-occ.c", i32 305, i32 3}
!63 = !{ptr @occ_getsram._entry.26, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @occ_getsram._entry_ptr.28, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/fsi/fsi-occ.c", i32 247, i32 3}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @occ_verify_checksum._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @occ_verify_checksum._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/fsi/fsi-occ.c", i32 675, i32 11}
!72 = !{ptr @occ_driver, !73, !"occ_driver", i1 false, i1 false}
!73 = !{!"../drivers/fsi/fsi-occ.c", i32 673, i32 31}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/fsi/fsi-occ.c", i32 586, i32 11}
!76 = !{ptr @occ_probe.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/fsi/fsi-occ.c", i32 602, i32 2}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/fsi/fsi-occ.c", i32 605, i32 43}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/fsi/fsi-occ.c", i32 623, i32 41}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/fsi/fsi-occ.c", i32 631, i32 3}
!85 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @occ_probe._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @occ_probe._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/fsi/fsi-occ.c", i32 640, i32 3}
!90 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @occ_probe._entry.38, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @occ_probe._entry_ptr.41, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/fsi/fsi-occ.c", i32 77, i32 8}
!95 = !{ptr @occ_ida, !94, !"occ_ida", i1 false, i1 false}
!96 = !{ptr @occ_fops, !97, !"occ_fops", i1 false, i1 false}
!97 = !{!"../drivers/fsi/fsi-occ.c", i32 206, i32 37}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../drivers/fsi/fsi-occ.c", i32 120, i32 6}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!102 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!107 = !{ptr @occ_open.__key, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/fsi/fsi-occ.c", i32 95, i32 2}
!109 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @occ_match, !111, !"occ_match", i1 false, i1 false}
!111 = !{!"../drivers/fsi/fsi-occ.c", i32 660, i32 34}
!112 = !{!"sp"}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 2148291668, i64 2148291673, i64 2148291686, i64 2148291730, i64 2148291764, i64 2148291785}
!123 = !{!"auto-init"}
!124 = !{i64 2153927390}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2152658276, i64 2152658301}
!127 = !{i64 2152657595, i64 2152657620}
!128 = !{i64 5153150}
!129 = !{i64 5153347}
!130 = !{i64 2152638580}
