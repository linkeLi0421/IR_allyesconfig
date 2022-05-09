; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/retimer.c_pt.bc'
source_filename = "../drivers/thunderbolt/retimer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.tb_retimer_lookup = type { ptr, i8 }
%struct.tb_port = type { %struct.tb_regs_port_header, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, ptr, i8, %struct.ida, %struct.ida, %struct.list_head, i32, i32, i32 }
%struct.tb_regs_port_header = type { i16, i16, [12 x i8], i32, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.tb_retimer = type { %struct.device, ptr, i8, i32, i32, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.55 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tb_nvm = type { ptr, i8, i8, i32, ptr, ptr, ptr, i32, i8, i8 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"thunderbolt_retimer\00", [44 x i8] zeroinitializer }, align 32
@retimer_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @retimer_group, ptr null], [24 x i8] zeroinitializer }, align 32
@tb_retimer_type = dso_local global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str, ptr @retimer_groups, ptr null, ptr null, ptr @tb_retimer_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@retimer_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @retimer_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@retimer_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_device, ptr @dev_attr_nvm_authenticate, ptr @dev_attr_nvm_version, ptr @dev_attr_vendor, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_device = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nvm_authenticate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nvm_authenticate_show, ptr @nvm_authenticate_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nvm_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nvm_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vendor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvm_authenticate\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvm_version\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%x.%x\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@tb_retimer_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 335, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%llx:%x: failed read retimer VendorId: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tb_retimer_add\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/thunderbolt/retimer.c\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tb_retimer_add._entry_ptr = internal global ptr @tb_retimer_add._entry, section ".printk_index", align 4
@tb_retimer_add._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 343, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%llx:%x: failed read retimer ProductId: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@tb_retimer_add._entry_ptr.14 = internal global ptr @tb_retimer_add._entry.12, section ".printk_index", align 4
@tb_retimer_add._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.9, i32 349, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%llx:%x: retimer NVM format of vendor %#x is not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tb_retimer_add._entry_ptr.18 = internal global ptr @tb_retimer_add._entry.15, section ".printk_index", align 4
@tb_bus_type = external dso_local global %struct.bus_type, align 4
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:%u.%u\00", [23 x i8] zeroinitializer }, align 32
@tb_retimer_add._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.9, i32 380, ptr @.str.22, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register retimer: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tb_retimer_add._entry_ptr.23 = internal global ptr @tb_retimer_add._entry.20, section ".printk_index", align 4
@tb_retimer_add._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.9, i32 387, ptr @.str.22, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to add NVM devices: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tb_retimer_add._entry_ptr.26 = internal global ptr @tb_retimer_add._entry.24, section ".printk_index", align 4
@tb_retimer_add._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.9, i32 393, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"new retimer found, vendor=%#x device=%#x\0A\00", [54 x i8] zeroinitializer }, align 32
@tb_retimer_add._entry_ptr.29 = internal global ptr @tb_retimer_add._entry.27, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tb_retimer_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.9, i32 407, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"retimer disconnected\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tb_retimer_remove\00", [46 x i8] zeroinitializer }, align 32
@tb_retimer_remove._entry_ptr = internal global ptr @tb_retimer_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 320, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"retimer_groups\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 307, i32 38 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"tb_retimer_type\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 319, i32 20 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"retimer_group\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 303, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"retimer_attrs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 295, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"dev_attr_device\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [26 x i8] c"dev_attr_nvm_authenticate\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"dev_attr_nvm_version\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"dev_attr_vendor\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 190, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 188, i32 22 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 265, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 284, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 279, i32 22 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 293, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 335, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 343, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 348, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 375, i32 25 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 380, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 387, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 392, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [33 x i8] c"../drivers/thunderbolt/retimer.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 407, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @tb_retimer_add._entry, ptr @tb_retimer_add._entry.12, ptr @tb_retimer_add._entry.15, ptr @tb_retimer_add._entry.20, ptr @tb_retimer_add._entry.24, ptr @tb_retimer_add._entry.27, ptr @tb_retimer_add._entry_ptr, ptr @tb_retimer_add._entry_ptr.14, ptr @tb_retimer_add._entry_ptr.18, ptr @tb_retimer_add._entry_ptr.23, ptr @tb_retimer_add._entry_ptr.26, ptr @tb_retimer_add._entry_ptr.29, ptr @tb_retimer_remove._entry, ptr @tb_retimer_remove._entry_ptr, ptr @.str, ptr @retimer_groups, ptr @tb_retimer_type, ptr @retimer_group, ptr @retimer_attrs, ptr @dev_attr_device, ptr @dev_attr_nvm_authenticate, ptr @dev_attr_nvm_version, ptr @dev_attr_vendor, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @retimer_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_retimer_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @retimer_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @retimer_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nvm_authenticate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nvm_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_retimer_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_retimer_add._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_retimer_add._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_retimer_add._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_retimer_add._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_retimer_add._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_retimer_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_retimer_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @tb_retimer_type
  %dev..i = select i1 %cmp.i.i, ptr %dev, ptr null
  tail call void @kfree(ptr noundef %dev..i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_retimer_scan(ptr noundef %port, i1 noundef zeroext %add) local_unnamed_addr #0 align 64 {
entry:
  %vendor.i = alloca i32, align 4
  %device.i = alloca i32, align 4
  %lookup.i = alloca %struct.tb_retimer_lookup, align 8
  %status = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %status) #9
  %0 = call ptr @memset(ptr %status, i32 0, i32 28)
  %usb41 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 8
  %1 = ptrtoint ptr %usb41 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb41, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup64_crit_edge, label %if.end

entry.cleanup64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup64

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %2, i32 noundef 4) #9
  %call2 = tail call i32 @usb4_port_enumerate_retimers(ptr noundef %port) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.body.preheader, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.preheader:                               ; preds = %if.end
  %call6 = tail call i32 @usb4_port_retimer_set_inbound_sbtx(ptr noundef %port, i8 noundef zeroext 1) #9
  %call6.1 = tail call i32 @usb4_port_retimer_set_inbound_sbtx(ptr noundef %port, i8 noundef zeroext 2) #9
  %call6.2 = tail call i32 @usb4_port_retimer_set_inbound_sbtx(ptr noundef %port, i8 noundef zeroext 3) #9
  %call6.3 = tail call i32 @usb4_port_retimer_set_inbound_sbtx(ptr noundef %port, i8 noundef zeroext 4) #9
  %call6.4 = tail call i32 @usb4_port_retimer_set_inbound_sbtx(ptr noundef %port, i8 noundef zeroext 5) #9
  %call6.5 = tail call i32 @usb4_port_retimer_set_inbound_sbtx(ptr noundef %port, i8 noundef zeroext 6) #9
  %arrayidx = getelementptr inbounds [7 x i32], ptr %status, i32 0, i32 1
  %call12 = call i32 @usb4_port_retimer_nvm_authenticate_status(ptr noundef %port, i8 noundef zeroext 1, ptr noundef %arrayidx) #9
  %arrayidx.1 = getelementptr inbounds [7 x i32], ptr %status, i32 0, i32 2
  %call12.1 = call i32 @usb4_port_retimer_nvm_authenticate_status(ptr noundef %port, i8 noundef zeroext 2, ptr noundef %arrayidx.1) #9
  %arrayidx.2 = getelementptr inbounds [7 x i32], ptr %status, i32 0, i32 3
  %call12.2 = call i32 @usb4_port_retimer_nvm_authenticate_status(ptr noundef %port, i8 noundef zeroext 3, ptr noundef %arrayidx.2) #9
  %arrayidx.3 = getelementptr inbounds [7 x i32], ptr %status, i32 0, i32 4
  %call12.3 = call i32 @usb4_port_retimer_nvm_authenticate_status(ptr noundef %port, i8 noundef zeroext 4, ptr noundef %arrayidx.3) #9
  %arrayidx.4 = getelementptr inbounds [7 x i32], ptr %status, i32 0, i32 5
  %call12.4 = call i32 @usb4_port_retimer_nvm_authenticate_status(ptr noundef %port, i8 noundef zeroext 5, ptr noundef %arrayidx.4) #9
  %arrayidx.5 = getelementptr inbounds [7 x i32], ptr %status, i32 0, i32 6
  %call12.5 = call i32 @usb4_port_retimer_nvm_authenticate_status(ptr noundef %port, i8 noundef zeroext 6, ptr noundef %arrayidx.5) #9
  %call21 = call i32 @usb4_port_retimer_is_last(ptr noundef %port, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp sgt i32 %call21, 0
  br i1 %cmp22, label %for.body.preheader.for.inc30_crit_edge, label %if.else

for.body.preheader.for.inc30_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30

if.else:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp25 = icmp slt i32 %call21, 0
  br i1 %cmp25, label %if.else.out_crit_edge, label %if.else.for.inc30_crit_edge

if.else.for.inc30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.inc30:                                        ; preds = %if.else.for.inc30_crit_edge, %for.body.preheader.for.inc30_crit_edge
  %last_idx.1 = phi i32 [ 0, %if.else.for.inc30_crit_edge ], [ 1, %for.body.preheader.for.inc30_crit_edge ]
  %call21.1 = call i32 @usb4_port_retimer_is_last(ptr noundef %port, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1)
  %cmp22.1 = icmp sgt i32 %call21.1, 0
  br i1 %cmp22.1, label %for.inc30.for.inc30.1_crit_edge, label %if.else.1

for.inc30.for.inc30.1_crit_edge:                  ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.1

if.else.1:                                        ; preds = %for.inc30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1)
  %cmp25.1 = icmp slt i32 %call21.1, 0
  br i1 %cmp25.1, label %if.else.1.for.end32_crit_edge, label %if.else.1.for.inc30.1_crit_edge

if.else.1.for.inc30.1_crit_edge:                  ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.1

if.else.1.for.end32_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.inc30.1:                                      ; preds = %if.else.1.for.inc30.1_crit_edge, %for.inc30.for.inc30.1_crit_edge
  %last_idx.1.1 = phi i32 [ %last_idx.1, %if.else.1.for.inc30.1_crit_edge ], [ 2, %for.inc30.for.inc30.1_crit_edge ]
  %call21.2 = call i32 @usb4_port_retimer_is_last(ptr noundef %port, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.2)
  %cmp22.2 = icmp sgt i32 %call21.2, 0
  br i1 %cmp22.2, label %for.inc30.1.for.inc30.2_crit_edge, label %if.else.2

for.inc30.1.for.inc30.2_crit_edge:                ; preds = %for.inc30.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.2

if.else.2:                                        ; preds = %for.inc30.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.2)
  %cmp25.2 = icmp slt i32 %call21.2, 0
  br i1 %cmp25.2, label %if.else.2.for.end32_crit_edge, label %if.else.2.for.inc30.2_crit_edge

if.else.2.for.inc30.2_crit_edge:                  ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.2

if.else.2.for.end32_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.inc30.2:                                      ; preds = %if.else.2.for.inc30.2_crit_edge, %for.inc30.1.for.inc30.2_crit_edge
  %last_idx.1.2 = phi i32 [ %last_idx.1.1, %if.else.2.for.inc30.2_crit_edge ], [ 3, %for.inc30.1.for.inc30.2_crit_edge ]
  %call21.3 = call i32 @usb4_port_retimer_is_last(ptr noundef %port, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.3)
  %cmp22.3 = icmp sgt i32 %call21.3, 0
  br i1 %cmp22.3, label %for.inc30.2.for.inc30.3_crit_edge, label %if.else.3

for.inc30.2.for.inc30.3_crit_edge:                ; preds = %for.inc30.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.3

if.else.3:                                        ; preds = %for.inc30.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.3)
  %cmp25.3 = icmp slt i32 %call21.3, 0
  br i1 %cmp25.3, label %if.else.3.for.end32_crit_edge, label %if.else.3.for.inc30.3_crit_edge

if.else.3.for.inc30.3_crit_edge:                  ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.3

if.else.3.for.end32_crit_edge:                    ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.inc30.3:                                      ; preds = %if.else.3.for.inc30.3_crit_edge, %for.inc30.2.for.inc30.3_crit_edge
  %last_idx.1.3 = phi i32 [ %last_idx.1.2, %if.else.3.for.inc30.3_crit_edge ], [ 4, %for.inc30.2.for.inc30.3_crit_edge ]
  %call21.4 = call i32 @usb4_port_retimer_is_last(ptr noundef %port, i8 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.4)
  %cmp22.4 = icmp sgt i32 %call21.4, 0
  br i1 %cmp22.4, label %for.inc30.3.for.inc30.4_crit_edge, label %if.else.4

for.inc30.3.for.inc30.4_crit_edge:                ; preds = %for.inc30.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.4

if.else.4:                                        ; preds = %for.inc30.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.4)
  %cmp25.4 = icmp slt i32 %call21.4, 0
  br i1 %cmp25.4, label %if.else.4.for.end32_crit_edge, label %if.else.4.for.inc30.4_crit_edge

if.else.4.for.inc30.4_crit_edge:                  ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.4

if.else.4.for.end32_crit_edge:                    ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.inc30.4:                                      ; preds = %if.else.4.for.inc30.4_crit_edge, %for.inc30.3.for.inc30.4_crit_edge
  %last_idx.1.4 = phi i32 [ %last_idx.1.3, %if.else.4.for.inc30.4_crit_edge ], [ 5, %for.inc30.3.for.inc30.4_crit_edge ]
  %call21.5 = call i32 @usb4_port_retimer_is_last(ptr noundef %port, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.5)
  %cmp22.5 = icmp sgt i32 %call21.5, 0
  br i1 %cmp22.5, label %for.inc30.4.for.body39.lr.ph_crit_edge, label %for.inc30.4.for.end32_crit_edge

for.inc30.4.for.end32_crit_edge:                  ; preds = %for.inc30.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.inc30.4.for.body39.lr.ph_crit_edge:           ; preds = %for.inc30.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body39.lr.ph

for.end32:                                        ; preds = %for.inc30.4.for.end32_crit_edge, %if.else.4.for.end32_crit_edge, %if.else.3.for.end32_crit_edge, %if.else.2.for.end32_crit_edge, %if.else.1.for.end32_crit_edge
  %call21.lcssa = phi i32 [ %call21.1, %if.else.1.for.end32_crit_edge ], [ %call21.2, %if.else.2.for.end32_crit_edge ], [ %call21.3, %if.else.3.for.end32_crit_edge ], [ %call21.4, %if.else.4.for.end32_crit_edge ], [ %call21.5, %for.inc30.4.for.end32_crit_edge ]
  %last_idx.0.lcssa = phi i32 [ %last_idx.1, %if.else.1.for.end32_crit_edge ], [ %last_idx.1.1, %if.else.2.for.end32_crit_edge ], [ %last_idx.1.2, %if.else.3.for.end32_crit_edge ], [ %last_idx.1.3, %if.else.4.for.end32_crit_edge ], [ %last_idx.1.4, %for.inc30.4.for.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_idx.0.lcssa)
  %tobool33.not = icmp eq i32 %last_idx.0.lcssa, 0
  br i1 %tobool33.not, label %for.end32.out_crit_edge, label %for.end32.for.body39.lr.ph_crit_edge

for.end32.for.body39.lr.ph_crit_edge:             ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body39.lr.ph

for.end32.out_crit_edge:                          ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body39.lr.ph:                                 ; preds = %for.end32.for.body39.lr.ph_crit_edge, %for.inc30.4.for.body39.lr.ph_crit_edge
  %last_idx.0.lcssa135 = phi i32 [ %last_idx.0.lcssa, %for.end32.for.body39.lr.ph_crit_edge ], [ 6, %for.inc30.4.for.body39.lr.ph_crit_edge ]
  %call21.lcssa134 = phi i32 [ %call21.lcssa, %for.end32.for.body39.lr.ph_crit_edge ], [ %call21.5, %for.inc30.4.for.body39.lr.ph_crit_edge ]
  %index2.i = getelementptr inbounds %struct.tb_retimer_lookup, ptr %lookup.i, i32 0, i32 1
  %sw43.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %port50.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  br label %for.body39

for.body39:                                       ; preds = %for.inc58.for.body39_crit_edge, %for.body39.lr.ph
  %i.3122 = phi i32 [ 1, %for.body39.lr.ph ], [ %inc59, %for.inc58.for.body39_crit_edge ]
  %ret.2121 = phi i32 [ %call21.lcssa134, %for.body39.lr.ph ], [ %ret.3, %for.inc58.for.body39_crit_edge ]
  %conv40 = trunc i32 %i.3122 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lookup.i) #9
  %3 = ptrtoint ptr %lookup.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %lookup.i, align 8, !annotation !73
  store ptr %port, ptr %lookup.i, align 8
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv40, ptr %index2.i, align 4
  %5 = ptrtoint ptr %usb41 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb41, align 4
  %call.i100 = call ptr @device_find_child(ptr noundef %6, ptr noundef nonnull %lookup.i, ptr noundef nonnull @retimer_match) #9
  %tobool.not.i = icmp eq ptr %call.i100, null
  br i1 %tobool.not.i, label %for.body39.if.else45_crit_edge, label %if.then.i

for.body39.if.else45_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else45

if.then.i:                                        ; preds = %for.body39
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %call.i100, i32 0, i32 4
  %7 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %8, @tb_retimer_type
  br i1 %cmp.i.i.i, label %if.then43, label %if.then.i.if.else45_crit_edge

if.then.i.if.else45_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else45

if.then43:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lookup.i) #9
  call void @put_device(ptr noundef nonnull %call.i100) #9
  br label %for.inc58

if.else45:                                        ; preds = %if.then.i.if.else45_crit_edge, %for.body39.if.else45_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lookup.i) #9
  br i1 %add, label %if.then47, label %if.else45.for.inc58_crit_edge

if.else45.for.inc58_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc58

if.then47:                                        ; preds = %if.else45
  %arrayidx49 = getelementptr [7 x i32], ptr %status, i32 0, i32 %i.3122
  %9 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx49, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vendor.i) #9
  %11 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %vendor.i, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device.i) #9
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %device.i, align 4, !annotation !73
  %call.i101 = call i32 @usb4_port_retimer_read(ptr noundef %port, i8 noundef zeroext %conv40, i8 noundef zeroext 0, ptr noundef nonnull %vendor.i, i8 noundef zeroext 4) #9
  %13 = zext i32 %call.i101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i101, label %do.body.i [
    i32 0, label %if.end8.i
    i32 -19, label %if.then47.tb_retimer_add.exit.thread_crit_edge
  ]

if.then47.tb_retimer_add.exit.thread_crit_edge:   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_retimer_add.exit.thread

do.body.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %sw43.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sw43.i, align 4
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tb.i, align 8
  %nhi.i = getelementptr inbounds %struct.tb, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %15, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %23 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %23, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %15, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %25 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %26 = ptrtoint ptr %port50.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port50.i, align 4
  %conv.i = zext i8 %27 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.7, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef %call.i101) #12
  br label %tb_retimer_add.exit

if.end8.i:                                        ; preds = %if.then47
  %call9.i = call i32 @usb4_port_retimer_read(ptr noundef %port, i8 noundef zeroext %conv40, i8 noundef zeroext 1, ptr noundef nonnull %device.i, i8 noundef zeroext 4) #9
  %28 = zext i32 %call9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call9.i, label %do.body15.i [
    i32 0, label %if.end32.i
    i32 -19, label %if.end8.i.tb_retimer_add.exit.thread_crit_edge
  ]

if.end8.i.tb_retimer_add.exit.thread_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_retimer_add.exit.thread

do.body15.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %sw43.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sw43.i, align 4
  %tb21.i = getelementptr inbounds %struct.tb_switch, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %tb21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tb21.i, align 8
  %nhi22.i = getelementptr inbounds %struct.tb, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %nhi22.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nhi22.i, align 4
  %pdev23.i = getelementptr inbounds %struct.tb_nhi, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %pdev23.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev23.i, align 4
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %route_hi.i179.i = getelementptr inbounds %struct.tb_switch, ptr %30, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %route_hi.i179.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %bf.load.i180.i = load i64, ptr %route_hi.i179.i, align 4
  %38 = lshr i64 %bf.load.i180.i, 1
  %shl.i181.i = and i64 %38, 9223372032559808512
  %route_lo.i182.i = getelementptr inbounds %struct.tb_switch, ptr %30, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %route_lo.i182.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %route_lo.i182.i, align 8
  %conv2.i183.i = zext i32 %40 to i64
  %or.i184.i = or i64 %shl.i181.i, %conv2.i183.i
  %41 = ptrtoint ptr %port50.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %port50.i, align 4
  %conv28.i = zext i8 %42 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24.i, ptr noundef nonnull @.str.13, i64 noundef %or.i184.i, i32 noundef %conv28.i, i32 noundef %call9.i) #12
  br label %tb_retimer_add.exit

if.end32.i:                                       ; preds = %if.end8.i
  %43 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vendor.i, align 4
  %45 = and i32 %44, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32902, i32 %45)
  %switch.i = icmp eq i32 %45, 32902
  br i1 %switch.i, label %if.end54.i, label %tb_retimer_add.exit.thread111

tb_retimer_add.exit.thread111:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %sw43.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sw43.i, align 4
  %tb44.i = getelementptr inbounds %struct.tb_switch, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %tb44.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tb44.i, align 8
  %nhi45.i = getelementptr inbounds %struct.tb, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %nhi45.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nhi45.i, align 4
  %pdev46.i = getelementptr inbounds %struct.tb_nhi, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %pdev46.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev46.i, align 4
  %dev47.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %route_hi.i185.i = getelementptr inbounds %struct.tb_switch, ptr %47, i32 0, i32 1, i32 4
  %54 = ptrtoint ptr %route_hi.i185.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %bf.load.i186.i = load i64, ptr %route_hi.i185.i, align 4
  %55 = lshr i64 %bf.load.i186.i, 1
  %shl.i187.i = and i64 %55, 9223372032559808512
  %route_lo.i188.i = getelementptr inbounds %struct.tb_switch, ptr %47, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %route_lo.i188.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %route_lo.i188.i, align 8
  %conv2.i189.i = zext i32 %57 to i64
  %or.i190.i = or i64 %shl.i187.i, %conv2.i189.i
  %58 = ptrtoint ptr %port50.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %port50.i, align 4
  %conv51.i = zext i8 %59 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev47.i, ptr noundef nonnull @.str.16, i64 noundef %or.i190.i, i32 noundef %conv51.i, i32 noundef %44) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vendor.i) #9
  br label %if.end57.fold.split

if.end54.i:                                       ; preds = %if.end32.i
  %call55.i = call i32 @usb4_port_retimer_nvm_sector_size(ptr noundef %port, i8 noundef zeroext %conv40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp56.i = icmp slt i32 %call55.i, 0
  br i1 %cmp56.i, label %if.end54.i.tb_retimer_add.exit_crit_edge, label %if.end59.i

if.end54.i.tb_retimer_add.exit_crit_edge:         ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_retimer_add.exit

if.end59.i:                                       ; preds = %if.end54.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 960) #13
  %tobool61.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool61.not.i, label %if.end59.i.tb_retimer_add.exit.thread_crit_edge, label %if.end63.i

if.end59.i.tb_retimer_add.exit.thread_crit_edge:  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_retimer_add.exit.thread

if.end63.i:                                       ; preds = %if.end59.i
  %index64.i = getelementptr inbounds %struct.tb_retimer, ptr %call7.i.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %index64.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv40, ptr %index64.i, align 4
  %62 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vendor.i, align 4
  %vendor65.i = getelementptr inbounds %struct.tb_retimer, ptr %call7.i.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %vendor65.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %vendor65.i, align 8
  %65 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %device.i, align 4
  %device66.i = getelementptr inbounds %struct.tb_retimer, ptr %call7.i.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %device66.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %device66.i, align 4
  %auth_status67.i = getelementptr inbounds %struct.tb_retimer, ptr %call7.i.i.i, i32 0, i32 7
  %68 = ptrtoint ptr %auth_status67.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %10, ptr %auth_status67.i, align 8
  %port68.i = getelementptr inbounds %struct.tb_retimer, ptr %call7.i.i.i, i32 0, i32 5
  %69 = ptrtoint ptr %port68.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %port, ptr %port68.i, align 8
  %70 = ptrtoint ptr %sw43.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sw43.i, align 4
  %tb70.i = getelementptr inbounds %struct.tb_switch, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %tb70.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tb70.i, align 8
  %tb71.i = getelementptr inbounds %struct.tb_retimer, ptr %call7.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %tb71.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %tb71.i, align 8
  %75 = ptrtoint ptr %usb41 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %usb41, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %parent.i, align 8
  %bus.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 5
  %78 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @tb_bus_type, ptr %bus.i, align 8
  %type.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 4
  %79 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @tb_retimer_type, ptr %type.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 3
  %80 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end63.i.dev_name.exit.i_crit_edge

if.end63.i.dev_name.exit.i_crit_edge:             ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %71, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end63.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %83, %if.end.i.i ], [ %81, %if.end63.i.dev_name.exit.i_crit_edge ]
  %84 = ptrtoint ptr %port50.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %port50.i, align 4
  %conv81.i = zext i8 %85 to i32
  %call83.i = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i.i, i32 noundef %conv81.i, i32 noundef %i.3122) #9
  %call85.i = call i32 @device_register(ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %if.end93.i, label %do.end90.i

do.end90.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.21, i32 noundef %call85.i) #12
  call void @put_device(ptr noundef nonnull %call7.i.i.i) #9
  br label %tb_retimer_add.exit

if.end93.i:                                       ; preds = %dev_name.exit.i
  %call94.i = call fastcc i32 @tb_retimer_nvm_add(ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool95.not.i = icmp eq i32 %call94.i, 0
  br i1 %tobool95.not.i, label %tb_retimer_add.exit.thread109, label %do.end99.i

do.end99.i:                                       ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.25, i32 noundef %call94.i) #12
  call void @device_unregister(ptr noundef nonnull %call7.i.i.i) #9
  br label %tb_retimer_add.exit

tb_retimer_add.exit.thread109:                    ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %vendor65.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %vendor65.i, align 8
  %88 = ptrtoint ptr %device66.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %device66.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.28, i32 noundef %87, i32 noundef %89) #12
  call void @pm_runtime_no_callbacks(ptr noundef nonnull %call7.i.i.i) #9
  %call.i.i = call i32 @__pm_runtime_set_status(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #9
  call void @pm_runtime_enable(ptr noundef nonnull %call7.i.i.i) #9
  call void @pm_runtime_set_autosuspend_delay(ptr noundef nonnull %call7.i.i.i, i32 noundef 15000) #9
  %call.i191.i = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 12, i32 22
  %90 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store volatile i64 %call.i191.i, ptr %last_busy.i.i, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef nonnull %call7.i.i.i, i1 noundef zeroext true) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vendor.i) #9
  br label %for.inc58

tb_retimer_add.exit.thread:                       ; preds = %if.end59.i.tb_retimer_add.exit.thread_crit_edge, %if.end8.i.tb_retimer_add.exit.thread_crit_edge, %if.then47.tb_retimer_add.exit.thread_crit_edge
  %retval.0.i103.ph = phi i32 [ -12, %if.end59.i.tb_retimer_add.exit.thread_crit_edge ], [ %call9.i, %if.end8.i.tb_retimer_add.exit.thread_crit_edge ], [ %call.i101, %if.then47.tb_retimer_add.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vendor.i) #9
  br label %out

tb_retimer_add.exit:                              ; preds = %do.end99.i, %do.end90.i, %if.end54.i.tb_retimer_add.exit_crit_edge, %do.body15.i, %do.body.i
  %retval.0.i103 = phi i32 [ %call85.i, %do.end90.i ], [ %call94.i, %do.end99.i ], [ %call.i101, %do.body.i ], [ %call9.i, %do.body15.i ], [ %call55.i, %if.end54.i.tb_retimer_add.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vendor.i) #9
  %91 = zext i32 %retval.0.i103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %retval.0.i103, label %tb_retimer_add.exit.out_crit_edge [
    i32 0, label %tb_retimer_add.exit.for.inc58_crit_edge
    i32 -95, label %tb_retimer_add.exit.if.end57.fold.split_crit_edge
  ]

tb_retimer_add.exit.if.end57.fold.split_crit_edge: ; preds = %tb_retimer_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.fold.split

tb_retimer_add.exit.for.inc58_crit_edge:          ; preds = %tb_retimer_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc58

tb_retimer_add.exit.out_crit_edge:                ; preds = %tb_retimer_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end57.fold.split:                              ; preds = %tb_retimer_add.exit.if.end57.fold.split_crit_edge, %tb_retimer_add.exit.thread111
  br label %for.inc58

for.inc58:                                        ; preds = %if.end57.fold.split, %tb_retimer_add.exit.for.inc58_crit_edge, %tb_retimer_add.exit.thread109, %if.else45.for.inc58_crit_edge, %if.then43
  %ret.3 = phi i32 [ %ret.2121, %if.then43 ], [ %retval.0.i103, %tb_retimer_add.exit.for.inc58_crit_edge ], [ %ret.2121, %if.else45.for.inc58_crit_edge ], [ -95, %if.end57.fold.split ], [ 0, %tb_retimer_add.exit.thread109 ]
  %inc59 = add nuw nsw i32 %i.3122, 1
  %exitcond = icmp eq i32 %i.3122, %last_idx.0.lcssa135
  br i1 %exitcond, label %for.inc58.out_crit_edge, label %for.inc58.for.body39_crit_edge

for.inc58.for.body39_crit_edge:                   ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body39

for.inc58.out_crit_edge:                          ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.inc58.out_crit_edge, %tb_retimer_add.exit.out_crit_edge, %tb_retimer_add.exit.thread, %for.end32.out_crit_edge, %if.else.out_crit_edge, %if.end.out_crit_edge
  %ret.5 = phi i32 [ %call2, %if.end.out_crit_edge ], [ 0, %for.end32.out_crit_edge ], [ %retval.0.i103.ph, %tb_retimer_add.exit.thread ], [ 0, %if.else.out_crit_edge ], [ %ret.3, %for.inc58.out_crit_edge ], [ %retval.0.i103, %tb_retimer_add.exit.out_crit_edge ]
  %call.i104 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12, i32 22
  %92 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store volatile i64 %call.i104, ptr %last_busy.i, align 8
  %call.i105 = call i32 @__pm_runtime_suspend(ptr noundef nonnull %2, i32 noundef 13) #9
  br label %cleanup64

cleanup64:                                        ; preds = %out, %entry.cleanup64_crit_edge
  %retval.0 = phi i32 [ %ret.5, %out ], [ 0, %entry.cleanup64_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_port_enumerate_retimers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_port_retimer_set_inbound_sbtx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_port_retimer_nvm_authenticate_status(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_port_retimer_is_last(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_retimer_remove_all(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usb41 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %usb41 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb41, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @device_for_each_child_reverse(ptr noundef nonnull %1, ptr noundef %port, ptr noundef nonnull @remove_retimer) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child_reverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remove_retimer(ptr noundef %dev, ptr noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp ne ptr %1, @tb_retimer_type
  %tobool.not4 = icmp eq ptr %dev, null
  %tobool.not = or i1 %tobool.not4, %cmp.i.i
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %port1 = getelementptr inbounds %struct.tb_retimer, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 8
  %cmp = icmp eq ptr %3, %data
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %dev, ptr noundef nonnull @.str.30) #12
  %nvm.i = getelementptr inbounds %struct.tb_retimer, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %nvm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvm.i, align 4
  tail call void @tb_nvm_free(ptr noundef %5) #9
  tail call void @device_unregister(ptr noundef nonnull %dev) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @tb_retimer_type
  %dev..i = select i1 %cmp.i.i, ptr %dev, ptr null
  %device = getelementptr inbounds %struct.tb_retimer, ptr %dev..i, i32 0, i32 4
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvm_authenticate_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @tb_retimer_type
  %dev..i = select i1 %cmp.i.i, ptr %dev, ptr null
  %tb = getelementptr inbounds %struct.tb_retimer, ptr %dev..i, i32 0, i32 1
  %2 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb, align 8
  %lock = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 1
  %call1 = tail call i32 @mutex_trylock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %9) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nvm = getelementptr inbounds %struct.tb_retimer, ptr %dev..i, i32 0, i32 6
  %10 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nvm, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.else

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %auth_status = getelementptr inbounds %struct.tb_retimer, ptr %dev..i, i32 0, i32 7
  %12 = ptrtoint ptr %auth_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %auth_status, align 8
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %13)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call5, %if.else ], [ -11, %if.end.if.end6_crit_edge ]
  %14 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tb, align 8
  %lock8 = getelementptr inbounds %struct.tb, ptr %15, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -513, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvm_authenticate_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @tb_retimer_type
  %dev..i = select i1 %cmp.i.i, ptr %dev, ptr null
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !73
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev..i, i32 noundef 4) #9
  %tb = getelementptr inbounds %struct.tb_retimer, ptr %dev..i, i32 0, i32 1
  %3 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tb, align 8
  %lock = getelementptr inbounds %struct.tb, ptr %4, i32 0, i32 1
  %call3 = tail call i32 @mutex_trylock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %10) #9
  br label %exit_rpm

if.end:                                           ; preds = %entry
  %nvm = getelementptr inbounds %struct.tb_retimer, ptr %dev..i, i32 0, i32 6
  %11 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nvm, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end.exit_unlock_crit_edge, label %if.end7

if.end.exit_unlock_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unlock

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.exit_unlock_crit_edge

if.end7.exit_unlock_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unlock

if.end11:                                         ; preds = %if.end7
  %auth_status = getelementptr inbounds %struct.tb_retimer, ptr %dev..i, i32 0, i32 7
  %13 = ptrtoint ptr %auth_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %auth_status, align 8
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %15, label %if.else [
    i32 0, label %if.end11.exit_unlock_crit_edge
    i32 3, label %if.end11.exit_unlock.sink.split_crit_edge
  ]

if.end11.exit_unlock.sink.split_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unlock.sink.split

if.end11.exit_unlock_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unlock

if.else:                                          ; preds = %if.end11
  %17 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nvm, align 4
  %flushed = getelementptr inbounds %struct.tb_nvm, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %flushed to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flushed, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not = icmp eq i8 %20, 0
  br i1 %tobool17.not, label %if.then18, label %if.end29thread-pre-split

if.then18:                                        ; preds = %if.else
  %buf20 = getelementptr inbounds %struct.tb_nvm, ptr %18, i32 0, i32 6
  %21 = ptrtoint ptr %buf20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf20, align 4
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %if.then18.exit_unlock_crit_edge, label %if.end23

if.then18.exit_unlock_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unlock

if.end23:                                         ; preds = %if.then18
  %call24 = call fastcc i32 @tb_retimer_nvm_validate_and_write(ptr noundef %dev..i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %if.end23.exit_unlock_crit_edge

if.end23.exit_unlock_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unlock

lor.lhs.false:                                    ; preds = %if.end23
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp26 = icmp eq i32 %24, 2
  br i1 %cmp26, label %lor.lhs.false.exit_unlock_crit_edge, label %lor.lhs.false.if.end29_crit_edge

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

lor.lhs.false.exit_unlock_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unlock

if.end29thread-pre-split:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %val, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29thread-pre-split, %lor.lhs.false.if.end29_crit_edge
  %26 = phi i32 [ %.pr, %if.end29thread-pre-split ], [ %24, %lor.lhs.false.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp30 = icmp eq i32 %26, 1
  br i1 %cmp30, label %if.end29.exit_unlock.sink.split_crit_edge, label %if.end29.exit_unlock_crit_edge

if.end29.exit_unlock_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unlock

if.end29.exit_unlock.sink.split_crit_edge:        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unlock.sink.split

exit_unlock.sink.split:                           ; preds = %if.end29.exit_unlock.sink.split_crit_edge, %if.end11.exit_unlock.sink.split_crit_edge
  %.sink = phi i1 [ true, %if.end11.exit_unlock.sink.split_crit_edge ], [ false, %if.end29.exit_unlock.sink.split_crit_edge ]
  %call32 = call fastcc i32 @tb_retimer_nvm_authenticate(ptr noundef %dev..i, i1 noundef zeroext %.sink)
  br label %exit_unlock

exit_unlock:                                      ; preds = %exit_unlock.sink.split, %if.end29.exit_unlock_crit_edge, %lor.lhs.false.exit_unlock_crit_edge, %if.end23.exit_unlock_crit_edge, %if.then18.exit_unlock_crit_edge, %if.end11.exit_unlock_crit_edge, %if.end7.exit_unlock_crit_edge, %if.end.exit_unlock_crit_edge
  %ret.1 = phi i32 [ %call8, %if.end7.exit_unlock_crit_edge ], [ 0, %if.end29.exit_unlock_crit_edge ], [ %call24, %if.end23.exit_unlock_crit_edge ], [ 0, %lor.lhs.false.exit_unlock_crit_edge ], [ %15, %if.end11.exit_unlock_crit_edge ], [ -11, %if.end.exit_unlock_crit_edge ], [ -22, %if.then18.exit_unlock_crit_edge ], [ %call32, %exit_unlock.sink.split ]
  %27 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tb, align 8
  %lock37 = getelementptr inbounds %struct.tb, ptr %28, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %lock37) #9
  br label %exit_rpm

exit_rpm:                                         ; preds = %exit_unlock, %if.then
  %ret.2 = phi i32 [ %ret.1, %exit_unlock ], [ -513, %if.then ]
  %call.i60 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev..i, i32 0, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i60, ptr %last_busy.i, align 8
  %call.i61 = call i32 @__pm_runtime_suspend(ptr noundef %dev..i, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool41.not = icmp eq i32 %ret.2, 0
  %spec.select = select i1 %tobool41.not, i32 %count, i32 %ret.2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_retimer_nvm_authenticate(ptr nocapture noundef %rt, i1 noundef zeroext %auth_only) unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !73
  br i1 %auth_only, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %entry
  %port = getelementptr inbounds %struct.tb_retimer, ptr %rt, i32 0, i32 5
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 8
  %index = getelementptr inbounds %struct.tb_retimer, ptr %rt, i32 0, i32 2
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %index, align 4
  %call = tail call i32 @usb4_port_retimer_nvm_set_offset(ptr noundef %2, i8 noundef zeroext %4, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %port4 = getelementptr inbounds %struct.tb_retimer, ptr %rt, i32 0, i32 5
  %5 = ptrtoint ptr %port4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port4, align 8
  %index5 = getelementptr inbounds %struct.tb_retimer, ptr %rt, i32 0, i32 2
  %7 = ptrtoint ptr %index5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index5, align 4
  %call6 = tail call i32 @usb4_port_retimer_nvm_authenticate(ptr noundef %6, i8 noundef zeroext %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #9
  %9 = ptrtoint ptr %port4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port4, align 8
  %11 = ptrtoint ptr %index5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %index5, align 4
  %call12 = call i32 @usb4_port_retimer_nvm_authenticate_status(ptr noundef %10, i8 noundef zeroext %12, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %auth_status = getelementptr inbounds %struct.tb_retimer, ptr %rt, i32 0, i32 7
  %15 = ptrtoint ptr %auth_status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %auth_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  %cond = select i1 %tobool15.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then14 ], [ %call, %if.then.cleanup_crit_edge ], [ %call6, %if.end3.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_retimer_nvm_validate_and_write(ptr nocapture noundef readonly %rt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm = getelementptr inbounds %struct.tb_retimer, ptr %rt, i32 0, i32 6
  %0 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvm, align 4
  %buf1 = getelementptr inbounds %struct.tb_nvm, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf1, align 4
  %buf_data_size = getelementptr inbounds %struct.tb_nvm, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %buf_data_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_data_size, align 4
  %6 = add i32 %5, -524289
  call void @__sanitizer_cov_trace_const_cmp4(i32 -491521, i32 %6)
  %7 = icmp ult i32 %6, -491521
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %and = and i32 %9, 16777215
  %add4 = add nuw nsw i32 %and, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %5)
  %cmp5.not = icmp ult i32 %add4, %5
  %and8 = and i32 %9, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 0
  %or.cond53 = select i1 %cmp5.not, i1 %cmp9, i1 false
  br i1 %or.cond53, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %3, i32 %and
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr, align 2
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp12.not = icmp ugt i32 %5, %conv
  br i1 %cmp12.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 5
  %12 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr17, align 2
  %conv18 = zext i16 %13 to i32
  %device19 = getelementptr inbounds %struct.tb_retimer, ptr %rt, i32 0, i32 4
  %14 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv18)
  %cmp20.not = icmp eq i32 %15, %conv18
  br i1 %cmp20.not, label %if.end23, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %sub = sub nsw i32 %5, %and
  %port = getelementptr inbounds %struct.tb_retimer, ptr %rt, i32 0, i32 5
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port, align 8
  %index = getelementptr inbounds %struct.tb_retimer, ptr %rt, i32 0, i32 2
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index, align 4
  %call = tail call i32 @usb4_port_retimer_nvm_write(ptr noundef %17, i8 noundef zeroext %19, i32 noundef 0, ptr noundef %add.ptr, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then25, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nvm, align 4
  %flushed = getelementptr inbounds %struct.tb_nvm, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %flushed to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %flushed, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end23.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ 0, %if.then25 ], [ %call, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_port_retimer_nvm_set_offset(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_port_retimer_nvm_authenticate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_port_retimer_nvm_write(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvm_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @tb_retimer_type
  %dev..i = select i1 %cmp.i.i, ptr %dev, ptr null
  %tb = getelementptr inbounds %struct.tb_retimer, ptr %dev..i, i32 0, i32 1
  %2 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb, align 8
  %lock = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 1
  %call1 = tail call i32 @mutex_trylock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %9) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nvm = getelementptr inbounds %struct.tb_retimer, ptr %dev..i, i32 0, i32 6
  %10 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nvm, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.else

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %major = getelementptr inbounds %struct.tb_nvm, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %major, align 4
  %conv = zext i8 %13 to i32
  %minor = getelementptr inbounds %struct.tb_nvm, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %minor, align 1
  %conv7 = zext i8 %15 to i32
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv7)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end.if.end9_crit_edge
  %ret.0 = phi i32 [ %call8, %if.else ], [ -11, %if.end.if.end9_crit_edge ]
  %16 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tb, align 8
  %lock11 = getelementptr inbounds %struct.tb, ptr %17, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ -513, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @tb_retimer_type
  %dev..i = select i1 %cmp.i.i, ptr %dev, ptr null
  %vendor = getelementptr inbounds %struct.tb_retimer, ptr %dev..i, i32 0, i32 3
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vendor, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @retimer_match(ptr noundef readonly %dev, ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp ne ptr %1, @tb_retimer_type
  %tobool.not9 = icmp eq ptr %dev, null
  %tobool.not = or i1 %tobool.not9, %cmp.i.i
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %port = getelementptr inbounds %struct.tb_retimer, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.tb_retimer, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index, align 4
  %index2 = getelementptr inbounds %struct.tb_retimer_lookup, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index2, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp4 = icmp eq i8 %7, %9
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %10 = phi i32 [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_port_retimer_read(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_port_retimer_nvm_sector_size(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_retimer_nvm_add(ptr noundef %rt) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !73
  %call = tail call ptr @tb_nvm_alloc(ptr noundef %rt) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %port = getelementptr inbounds %struct.tb_retimer, ptr %rt, i32 0, i32 5
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %index = getelementptr inbounds %struct.tb_retimer, ptr %rt, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %call3 = call i32 @usb4_port_retimer_nvm_read(ptr noundef %3, i8 noundef zeroext %5, i32 noundef 8, ptr noundef nonnull %val, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.err_nvm_crit_edge

if.end.err_nvm_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_nvm

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %shr = lshr i32 %7, 16
  %conv = trunc i32 %shr to i8
  %major = getelementptr inbounds %struct.tb_nvm, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %major to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %major, align 4
  %shr6 = lshr i32 %7, 8
  %conv7 = trunc i32 %shr6 to i8
  %minor = getelementptr inbounds %struct.tb_nvm, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %minor to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv7, ptr %minor, align 1
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 8
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %index, align 4
  %call10 = call i32 @usb4_port_retimer_nvm_read(ptr noundef %11, i8 noundef zeroext %13, i32 noundef 69, ptr noundef nonnull %val, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end5.err_nvm_crit_edge

if.end5.err_nvm_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_nvm

if.end13:                                         ; preds = %if.end5
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %and = and i32 %15, 7
  %shl = shl nuw nsw i32 1048576, %and
  %div44 = lshr exact i32 %shl, 3
  %sub = add nsw i32 %div44, -16384
  %div1445 = lshr exact i32 %sub, 1
  %call15 = call i32 @tb_nvm_add_active(ptr noundef %call, i32 noundef %div1445, ptr noundef nonnull @tb_retimer_nvm_read) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.err_nvm_crit_edge

if.end13.err_nvm_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_nvm

if.end18:                                         ; preds = %if.end13
  %call19 = call i32 @tb_nvm_add_non_active(ptr noundef %call, i32 noundef 524288, ptr noundef nonnull @tb_retimer_nvm_write) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_nvm_crit_edge

if.end18.err_nvm_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_nvm

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %nvm23 = getelementptr inbounds %struct.tb_retimer, ptr %rt, i32 0, i32 6
  %16 = ptrtoint ptr %nvm23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %nvm23, align 4
  br label %cleanup

err_nvm:                                          ; preds = %if.end18.err_nvm_crit_edge, %if.end13.err_nvm_crit_edge, %if.end5.err_nvm_crit_edge, %if.end.err_nvm_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end.err_nvm_crit_edge ], [ %call10, %if.end5.err_nvm_crit_edge ], [ %call15, %if.end13.err_nvm_crit_edge ], [ %call19, %if.end18.err_nvm_crit_edge ]
  call void @tb_nvm_free(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %err_nvm, %if.end22, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %ret.0, %err_nvm ], [ 0, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_nvm_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_port_retimer_nvm_read(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_nvm_add_active(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_retimer_nvm_read(ptr nocapture noundef readonly %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %type.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, @tb_retimer_type
  %dev..i = select i1 %cmp.i.i, ptr %1, ptr null
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev..i, i32 noundef 4) #9
  %tb = getelementptr inbounds %struct.tb_retimer, ptr %dev..i, i32 0, i32 1
  %4 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb, align 8
  %lock = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 1
  %call3 = tail call i32 @mutex_trylock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %port = getelementptr inbounds %struct.tb_retimer, ptr %dev..i, i32 0, i32 5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port, align 8
  %index = getelementptr inbounds %struct.tb_retimer, ptr %dev..i, i32 0, i32 2
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %index, align 4
  %call5 = tail call i32 @usb4_port_retimer_nvm_read(ptr noundef %13, i8 noundef zeroext %15, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #9
  %16 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tb, align 8
  %lock7 = getelementptr inbounds %struct.tb, ptr %17, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock7) #9
  br label %out

out:                                              ; preds = %if.end, %if.then
  %ret.0 = phi i32 [ %call5, %if.end ], [ -513, %if.then ]
  %call.i17 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev..i, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i17, ptr %last_busy.i, align 8
  %call.i18 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev..i, i32 noundef 13) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_nvm_add_non_active(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_retimer_nvm_write(ptr noundef %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %type.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, @tb_retimer_type
  %dev..i = select i1 %cmp.i.i, ptr %1, ptr null
  %tb = getelementptr inbounds %struct.tb_retimer, ptr %dev..i, i32 0, i32 1
  %4 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb, align 8
  %lock = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 1
  %call1 = tail call i32 @mutex_trylock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !63) #9
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @tb_nvm_write_buf(ptr noundef %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #9
  %12 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tb, align 8
  %lock5 = getelementptr inbounds %struct.tb, ptr %13, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.end ], [ -513, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_nvm_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_nvm_write_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !20, !21, !23, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/retimer.c", i32 320, i32 10}
!2 = !{ptr @tb_retimer_type, !3, !"tb_retimer_type", i1 false, i1 false}
!3 = !{!"../drivers/thunderbolt/retimer.c", i32 319, i32 20}
!4 = !{ptr @retimer_groups, !5, !"retimer_groups", i1 false, i1 false}
!5 = !{!"../drivers/thunderbolt/retimer.c", i32 307, i32 38}
!6 = !{ptr @retimer_group, !7, !"retimer_group", i1 false, i1 false}
!7 = !{!"../drivers/thunderbolt/retimer.c", i32 303, i32 37}
!8 = !{ptr @retimer_attrs, !9, !"retimer_attrs", i1 false, i1 false}
!9 = !{!"../drivers/thunderbolt/retimer.c", i32 295, i32 26}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thunderbolt/retimer.c", i32 190, i32 8}
!12 = !{ptr @dev_attr_device, !11, !"dev_attr_device", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/thunderbolt/retimer.c", i32 188, i32 22}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/thunderbolt/retimer.c", i32 265, i32 8}
!17 = !{ptr @dev_attr_nvm_authenticate, !16, !"dev_attr_nvm_authenticate", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/thunderbolt/retimer.c", i32 284, i32 8}
!20 = !{ptr @dev_attr_nvm_version, !19, !"dev_attr_nvm_version", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/thunderbolt/retimer.c", i32 279, i32 22}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/thunderbolt/retimer.c", i32 293, i32 8}
!25 = !{ptr @dev_attr_vendor, !24, !"dev_attr_vendor", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thunderbolt/retimer.c", i32 335, i32 4}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tb_retimer_add._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @tb_retimer_add._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/thunderbolt/retimer.c", i32 343, i32 4}
!36 = !{ptr @tb_retimer_add._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tb_retimer_add._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/thunderbolt/retimer.c", i32 348, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @tb_retimer_add._entry.15, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @tb_retimer_add._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/thunderbolt/retimer.c", i32 375, i32 25}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/thunderbolt/retimer.c", i32 380, i32 3}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tb_retimer_add._entry.20, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @tb_retimer_add._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/thunderbolt/retimer.c", i32 387, i32 3}
!52 = !{ptr @tb_retimer_add._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @tb_retimer_add._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/thunderbolt/retimer.c", i32 392, i32 2}
!56 = !{ptr @tb_retimer_add._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @tb_retimer_add._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/thunderbolt/retimer.c", i32 407, i32 2}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @tb_retimer_remove._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @tb_retimer_remove._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i8 0, i8 2}
