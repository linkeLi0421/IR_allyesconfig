; ModuleID = '/llk/IR_all_yes/kernel/irq/debugfs.c_pt.bc'
source_filename = "../kernel/irq/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_bit_descr = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@irq_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@dfs_irq_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @irq_debug_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @irq_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_debugfs__230_257_irq_debugfs_init6 = internal global ptr @irq_debugfs_init, section ".initcall6.init", align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trigger\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handler:  %ps\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device:   %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"status:   0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"istate:   0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ddepth:   %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wdepth:   %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dstate:   0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@irqdata_states = internal constant { [27 x %struct.irq_bit_descr], [40 x i8] } { [27 x %struct.irq_bit_descr] [%struct.irq_bit_descr { i32 1, ptr @.str.33 }, %struct.irq_bit_descr { i32 2, ptr @.str.34 }, %struct.irq_bit_descr { i32 4, ptr @.str.35 }, %struct.irq_bit_descr { i32 8, ptr @.str.36 }, %struct.irq_bit_descr { i32 8192, ptr @.str.37 }, %struct.irq_bit_descr { i32 512, ptr @.str.38 }, %struct.irq_bit_descr { i32 4194304, ptr @.str.39 }, %struct.irq_bit_descr { i32 65536, ptr @.str.40 }, %struct.irq_bit_descr { i32 131072, ptr @.str.41 }, %struct.irq_bit_descr { i32 262144, ptr @.str.42 }, %struct.irq_bit_descr { i32 2048, ptr @.str.43 }, %struct.irq_bit_descr { i32 1024, ptr @.str.44 }, %struct.irq_bit_descr { i32 16777216, ptr @.str.45 }, %struct.irq_bit_descr { i32 32768, ptr @.str.46 }, %struct.irq_bit_descr { i32 4096, ptr @.str.47 }, %struct.irq_bit_descr { i32 256, ptr @.str.48 }, %struct.irq_bit_descr { i32 2097152, ptr @.str.49 }, %struct.irq_bit_descr { i32 536870912, ptr @.str.50 }, %struct.irq_bit_descr { i32 8388608, ptr @.str.51 }, %struct.irq_bit_descr { i32 67108864, ptr @.str.52 }, %struct.irq_bit_descr { i32 134217728, ptr @.str.53 }, %struct.irq_bit_descr { i32 1048576, ptr @.str.54 }, %struct.irq_bit_descr { i32 16384, ptr @.str.55 }, %struct.irq_bit_descr { i32 524288, ptr @.str.56 }, %struct.irq_bit_descr { i32 33554432, ptr @.str.57 }, %struct.irq_bit_descr { i32 268435456, ptr @.str.58 }, %struct.irq_bit_descr { i32 1073741824, ptr @.str.59 }], [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"node:     %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%*s%s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_IRQ_NOPROBE\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_IRQ_NOREQUEST\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"_IRQ_NOTHREAD\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"_IRQ_NOAUTOEN\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_IRQ_NESTED_THREAD\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_IRQ_PER_CPU_DEVID\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_IRQ_IS_POLLED\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_IRQ_DISABLE_UNLAZY\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"_IRQ_HIDDEN\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IRQS_AUTODETECT\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IRQS_SPURIOUS_DISABLED\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IRQS_POLL_INPROGRESS\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQS_ONESHOT\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQS_REPLAY\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQS_WAITING\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQS_PENDING\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IRQS_SUSPENDED\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IRQS_NMI\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IRQ_TYPE_EDGE_RISING\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IRQ_TYPE_EDGE_FALLING\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IRQ_TYPE_LEVEL_HIGH\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IRQ_TYPE_LEVEL_LOW\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IRQD_LEVEL\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IRQD_ACTIVATED\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IRQD_IRQ_STARTED\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQD_IRQ_DISABLED\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IRQD_IRQ_MASKED\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IRQD_IRQ_INPROGRESS\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQD_PER_CPU\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQD_NO_BALANCING\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IRQD_SINGLE_TARGET\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IRQD_MOVE_PCNTXT\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQD_AFFINITY_SET\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IRQD_SETAFFINITY_PENDING\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IRQD_AFFINITY_MANAGED\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IRQD_AFFINITY_ON_ACTIVATE\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IRQD_MANAGED_SHUTDOWN\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IRQD_CAN_RESERVE\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IRQD_MSI_NOMASK_QUIRK\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IRQD_FORWARDED_TO_VCPU\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQD_WAKEUP_STATE\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQD_WAKEUP_ARMED\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IRQD_DEFAULT_TRIGGER_SET\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IRQD_HANDLE_ENFORCE_IRQCTX\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IRQD_IRQ_ENABLED_ON_SUSPEND\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"affinity: %*pbl\0A\00", [47 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"effectiv: %*pbl\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%*sdomain:  %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%*shwirq:   0x%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%*sparent:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chip: None\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%*schip:    %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%*sflags:   0x%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IRQCHIP_SET_TYPE_MASKED\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IRQCHIP_EOI_IF_HANDLED\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IRQCHIP_MASK_ON_SUSPEND\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IRQCHIP_ONOFFLINE_ENABLED\00", [38 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IRQCHIP_SKIP_SET_WAKE\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IRQCHIP_ONESHOT_SAFE\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IRQCHIP_EOI_THREADED\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IRQCHIP_SUPPORTS_LEVEL_MSI\00", [37 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IRQCHIP_SUPPORTS_NMI\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IRQCHIP_ENABLE_WAKEUP_ON_SUSPEND\00", [63 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"irqs\00", [27 x i8] zeroinitializer }, align 32
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.80 = private unnamed_addr constant [8 x i8] c"irq_dir\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 10, i32 23 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 234, i32 16 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"dfs_irq_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 210, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 201, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 156, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 165, i32 16 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 166, i32 16 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 167, i32 16 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 170, i32 16 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 173, i32 16 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 174, i32 16 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 175, i32 16 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"irqdata_states\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 95, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 178, i32 16 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 25, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 25, i32 39 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 134, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 135, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 136, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 137, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 138, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 139, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 140, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 141, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 142, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 146, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 147, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 148, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 149, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 150, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 151, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 152, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 153, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 154, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 96, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 97, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 98, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 99, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 100, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 102, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 103, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 104, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 105, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 106, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 108, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 109, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 111, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 112, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 113, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 114, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 115, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 116, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 117, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 118, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 119, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 121, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 123, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 124, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 126, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 128, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 130, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 36, i32 16 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 39, i32 16 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 81, i32 16 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 83, i32 16 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 90, i32 16 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 69, i32 17 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 72, i32 16 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 73, i32 16 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 51, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 52, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 53, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 54, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 55, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 56, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 57, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 58, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 59, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 60, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 244, i32 32 }
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.321 = private constant [24 x i8] c"../kernel/irq/debugfs.c\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 248, i32 31 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__initcall__kmod_debugfs__230_257_irq_debugfs_init6, ptr @irq_dir, ptr @.str, ptr @dfs_irq_ops, ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @irqdata_states, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_irq_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqdata_states to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_debugfs_copy_devname(i32 noundef %irq, ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #8
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %dev_name.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

dev_name.exit:                                    ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_name.exit.if.end_crit_edge, label %dev_name.exit.if.then_crit_edge

dev_name.exit.if.then_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

dev_name.exit.if.end_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %dev_name.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i6 = phi ptr [ %3, %dev_name.exit.if.then_crit_edge ], [ %1, %entry.if.then_crit_edge ]
  %call2 = tail call noalias ptr @kstrdup(ptr noundef nonnull %retval.0.i6, i32 noundef 3264) #8
  %dev_name = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 29
  %4 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %dev_name, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_name.exit.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_add_debugfs_entry(i32 noundef %irq, ptr noundef %desc) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name) #8
  %0 = call ptr @memset(ptr %name, i32 255, i32 10)
  %1 = load ptr, ptr @irq_dir, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %debugfs_file = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 28
  %2 = ptrtoint ptr %debugfs_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_file, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str, i32 noundef %irq)
  %4 = load ptr, ptr @irq_dir, align 4
  %call5 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 420, ptr noundef %4, ptr noundef nonnull %desc, ptr noundef nonnull @dfs_irq_ops) #8
  %5 = ptrtoint ptr %debugfs_file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %debugfs_file, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name) #8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_debugfs_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.78, ptr noundef null) #8
  tail call void @irq_domain_debugfs_init(ptr noundef %call) #8
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.79, ptr noundef %call) #8
  store ptr %call1, ptr @irq_dir, align 4
  tail call void @irq_lock_sparse() #8
  %call2 = tail call i32 @irq_get_next_irq(i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %0 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %0)
  %cmp9 = icmp slt i32 %call2, %0
  br i1 %cmp9, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %irq.010 = phi i32 [ %call4, %for.body.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %call3 = tail call ptr @irq_to_desc(i32 noundef %irq.010) #8
  tail call void @irq_add_debugfs_entry(i32 noundef %irq.010, ptr noundef %call3)
  %add = add nsw i32 %irq.010, 1
  %call4 = tail call i32 @irq_get_next_irq(i32 noundef %add) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %1 = load i32, ptr @nr_irqs, align 4
  %cmp = icmp slt i32 %call4, %1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @irq_unlock_sparse() #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_debug_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %buf, align 8
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #11, !srcloc !185
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !186

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #8
  %7 = call i32 @llvm.read_register.i32(metadata !175) #8
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !187
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !188
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %5) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #8, !srcloc !188
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !186

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 @strncmp(ptr noundef nonnull %buf, ptr noundef nonnull @.str.1, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  %call7 = call i32 @irq_inject_interrupt(i32 noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %count.call7 = select i1 %tobool8.not, i32 %count, i32 %call7
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count.call7, %if.then5 ], [ %count, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_debug_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @irq_debug_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_inject_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_debug_show(ptr noundef %m, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %handle_irq = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %handle_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle_irq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, ptr noundef %3) #8
  %dev_name = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef %5) #8
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %status_use_accessors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status_use_accessors, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, i32 noundef %7) #8
  %8 = ptrtoint ptr %status_use_accessors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status_use_accessors, align 4
  %and.i = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %entry.for.inc.i_crit_edge
  %and.i.1 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %for.inc.i.for.inc.i.1_crit_edge, label %if.then.i.1

for.inc.i.for.inc.i.1_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16) #8
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.1, %for.inc.i.for.inc.i.1_crit_edge
  %and.i.2 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool.not.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool.not.i.2, label %for.inc.i.1.for.inc.i.2_crit_edge, label %if.then.i.2

for.inc.i.1.for.inc.i.2_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

if.then.i.2:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17) #8
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then.i.2, %for.inc.i.1.for.inc.i.2_crit_edge
  %and.i.3 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool.not.i.3 = icmp eq i32 %and.i.3, 0
  br i1 %tobool.not.i.3, label %for.inc.i.2.for.inc.i.3_crit_edge, label %if.then.i.3

for.inc.i.2.for.inc.i.3_crit_edge:                ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.3

if.then.i.3:                                      ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.18) #8
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.then.i.3, %for.inc.i.2.for.inc.i.3_crit_edge
  %and.i.4 = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4)
  %tobool.not.i.4 = icmp eq i32 %and.i.4, 0
  br i1 %tobool.not.i.4, label %for.inc.i.3.for.inc.i.4_crit_edge, label %if.then.i.4

for.inc.i.3.for.inc.i.4_crit_edge:                ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.4

if.then.i.4:                                      ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19) #8
  br label %for.inc.i.4

for.inc.i.4:                                      ; preds = %if.then.i.4, %for.inc.i.3.for.inc.i.4_crit_edge
  %and.i.5 = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.5)
  %tobool.not.i.5 = icmp eq i32 %and.i.5, 0
  br i1 %tobool.not.i.5, label %for.inc.i.4.for.inc.i.5_crit_edge, label %if.then.i.5

for.inc.i.4.for.inc.i.5_crit_edge:                ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.5

if.then.i.5:                                      ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20) #8
  br label %for.inc.i.5

for.inc.i.5:                                      ; preds = %if.then.i.5, %for.inc.i.4.for.inc.i.5_crit_edge
  %and.i.6 = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.6)
  %tobool.not.i.6 = icmp eq i32 %and.i.6, 0
  br i1 %tobool.not.i.6, label %for.inc.i.5.for.inc.i.6_crit_edge, label %if.then.i.6

for.inc.i.5.for.inc.i.6_crit_edge:                ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.6

if.then.i.6:                                      ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.21) #8
  br label %for.inc.i.6

for.inc.i.6:                                      ; preds = %if.then.i.6, %for.inc.i.5.for.inc.i.6_crit_edge
  %and.i.7 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.7)
  %tobool.not.i.7 = icmp eq i32 %and.i.7, 0
  br i1 %tobool.not.i.7, label %for.inc.i.6.for.inc.i.7_crit_edge, label %if.then.i.7

for.inc.i.6.for.inc.i.7_crit_edge:                ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.7

if.then.i.7:                                      ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.22) #8
  br label %for.inc.i.7

for.inc.i.7:                                      ; preds = %if.then.i.7, %for.inc.i.6.for.inc.i.7_crit_edge
  %and.i.8 = and i32 %9, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.8)
  %tobool.not.i.8 = icmp eq i32 %and.i.8, 0
  br i1 %tobool.not.i.8, label %for.inc.i.7.for.inc.i.8_crit_edge, label %if.then.i.8

for.inc.i.7.for.inc.i.8_crit_edge:                ; preds = %for.inc.i.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.8

if.then.i.8:                                      ; preds = %for.inc.i.7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.23) #8
  br label %for.inc.i.8

for.inc.i.8:                                      ; preds = %if.then.i.8, %for.inc.i.7.for.inc.i.8_crit_edge
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %11) #8
  %12 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and.i36 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i37, label %for.inc.i.8.for.inc.i44_crit_edge, label %if.then.i40

for.inc.i.8.for.inc.i44_crit_edge:                ; preds = %for.inc.i.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i44

if.then.i40:                                      ; preds = %for.inc.i.8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.24) #8
  br label %for.inc.i44

for.inc.i44:                                      ; preds = %if.then.i40, %for.inc.i.8.for.inc.i44_crit_edge
  %and.i36.1 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.1)
  %tobool.not.i37.1 = icmp eq i32 %and.i36.1, 0
  br i1 %tobool.not.i37.1, label %for.inc.i44.for.inc.i44.1_crit_edge, label %if.then.i40.1

for.inc.i44.for.inc.i44.1_crit_edge:              ; preds = %for.inc.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i44.1

if.then.i40.1:                                    ; preds = %for.inc.i44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.25) #8
  br label %for.inc.i44.1

for.inc.i44.1:                                    ; preds = %if.then.i40.1, %for.inc.i44.for.inc.i44.1_crit_edge
  %and.i36.2 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.2)
  %tobool.not.i37.2 = icmp eq i32 %and.i36.2, 0
  br i1 %tobool.not.i37.2, label %for.inc.i44.1.for.inc.i44.2_crit_edge, label %if.then.i40.2

for.inc.i44.1.for.inc.i44.2_crit_edge:            ; preds = %for.inc.i44.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i44.2

if.then.i40.2:                                    ; preds = %for.inc.i44.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.26) #8
  br label %for.inc.i44.2

for.inc.i44.2:                                    ; preds = %if.then.i40.2, %for.inc.i44.1.for.inc.i44.2_crit_edge
  %and.i36.3 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.3)
  %tobool.not.i37.3 = icmp eq i32 %and.i36.3, 0
  br i1 %tobool.not.i37.3, label %for.inc.i44.2.for.inc.i44.3_crit_edge, label %if.then.i40.3

for.inc.i44.2.for.inc.i44.3_crit_edge:            ; preds = %for.inc.i44.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i44.3

if.then.i40.3:                                    ; preds = %for.inc.i44.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.27) #8
  br label %for.inc.i44.3

for.inc.i44.3:                                    ; preds = %if.then.i40.3, %for.inc.i44.2.for.inc.i44.3_crit_edge
  %and.i36.4 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.4)
  %tobool.not.i37.4 = icmp eq i32 %and.i36.4, 0
  br i1 %tobool.not.i37.4, label %for.inc.i44.3.for.inc.i44.4_crit_edge, label %if.then.i40.4

for.inc.i44.3.for.inc.i44.4_crit_edge:            ; preds = %for.inc.i44.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i44.4

if.then.i40.4:                                    ; preds = %for.inc.i44.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.28) #8
  br label %for.inc.i44.4

for.inc.i44.4:                                    ; preds = %if.then.i40.4, %for.inc.i44.3.for.inc.i44.4_crit_edge
  %and.i36.5 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.5)
  %tobool.not.i37.5 = icmp eq i32 %and.i36.5, 0
  br i1 %tobool.not.i37.5, label %for.inc.i44.4.for.inc.i44.5_crit_edge, label %if.then.i40.5

for.inc.i44.4.for.inc.i44.5_crit_edge:            ; preds = %for.inc.i44.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i44.5

if.then.i40.5:                                    ; preds = %for.inc.i44.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.29) #8
  br label %for.inc.i44.5

for.inc.i44.5:                                    ; preds = %if.then.i40.5, %for.inc.i44.4.for.inc.i44.5_crit_edge
  %and.i36.6 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.6)
  %tobool.not.i37.6 = icmp eq i32 %and.i36.6, 0
  br i1 %tobool.not.i37.6, label %for.inc.i44.5.for.inc.i44.6_crit_edge, label %if.then.i40.6

for.inc.i44.5.for.inc.i44.6_crit_edge:            ; preds = %for.inc.i44.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i44.6

if.then.i40.6:                                    ; preds = %for.inc.i44.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.30) #8
  br label %for.inc.i44.6

for.inc.i44.6:                                    ; preds = %if.then.i40.6, %for.inc.i44.5.for.inc.i44.6_crit_edge
  %and.i36.7 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.7)
  %tobool.not.i37.7 = icmp eq i32 %and.i36.7, 0
  br i1 %tobool.not.i37.7, label %for.inc.i44.6.for.inc.i44.7_crit_edge, label %if.then.i40.7

for.inc.i44.6.for.inc.i44.7_crit_edge:            ; preds = %for.inc.i44.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i44.7

if.then.i40.7:                                    ; preds = %for.inc.i44.6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.31) #8
  br label %for.inc.i44.7

for.inc.i44.7:                                    ; preds = %if.then.i40.7, %for.inc.i44.6.for.inc.i44.7_crit_edge
  %and.i36.8 = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.8)
  %tobool.not.i37.8 = icmp eq i32 %and.i36.8, 0
  br i1 %tobool.not.i37.8, label %for.inc.i44.7.for.inc.i44.8_crit_edge, label %if.then.i40.8

for.inc.i44.7.for.inc.i44.8_crit_edge:            ; preds = %for.inc.i44.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i44.8

if.then.i40.8:                                    ; preds = %for.inc.i44.7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.32) #8
  br label %for.inc.i44.8

for.inc.i44.8:                                    ; preds = %if.then.i40.8, %for.inc.i44.7.for.inc.i44.8_crit_edge
  %depth = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %depth, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, i32 noundef %15) #8
  %wake_depth = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %wake_depth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wake_depth, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, i32 noundef %17) #8
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %common.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %21) #8
  %22 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %common.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  br label %for.body.i51

for.body.i51:                                     ; preds = %for.inc.i57.for.body.i51_crit_edge, %for.inc.i44.8
  %i.06.i47 = phi i32 [ 0, %for.inc.i44.8 ], [ %inc.i54, %for.inc.i57.for.body.i51_crit_edge ]
  %sd.addr.05.i48 = phi ptr [ @irqdata_states, %for.inc.i44.8 ], [ %incdec.ptr.i55, %for.inc.i57.for.body.i51_crit_edge ]
  %26 = ptrtoint ptr %sd.addr.05.i48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sd.addr.05.i48, align 4
  %and.i49 = and i32 %27, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool.not.i50 = icmp eq i32 %and.i49, 0
  br i1 %tobool.not.i50, label %for.body.i51.for.inc.i57_crit_edge, label %if.then.i53

for.body.i51.for.inc.i57_crit_edge:               ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i57

if.then.i53:                                      ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #10
  %name.i52 = getelementptr inbounds %struct.irq_bit_descr, ptr %sd.addr.05.i48, i32 0, i32 1
  %28 = ptrtoint ptr %name.i52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i52, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, ptr noundef %29) #8
  br label %for.inc.i57

for.inc.i57:                                      ; preds = %if.then.i53, %for.body.i51.for.inc.i57_crit_edge
  %inc.i54 = add nuw nsw i32 %i.06.i47, 1
  %incdec.ptr.i55 = getelementptr %struct.irq_bit_descr, ptr %sd.addr.05.i48, i32 1
  %exitcond.not.i56 = icmp eq i32 %inc.i54, 27
  br i1 %exitcond.not.i56, label %irq_debug_show_bits.exit58, label %for.inc.i57.for.body.i51_crit_edge

for.inc.i57.for.body.i51_crit_edge:               ; preds = %for.inc.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i51

irq_debug_show_bits.exit58:                       ; preds = %for.inc.i57
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 0) #8
  %30 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %common.i, align 4
  %affinity.i.i = getelementptr inbounds %struct.irq_common_data, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %affinity.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.60, i32 noundef %34, ptr noundef %33) #8
  %35 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %common.i, align 4
  %effective_affinity.i.i = getelementptr inbounds %struct.irq_common_data, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %effective_affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %effective_affinity.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.61, i32 noundef %39, ptr noundef %38) #8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %if.end17.i, %irq_debug_show_bits.exit58
  %data.tr.i = phi ptr [ %irq_data.i, %irq_debug_show_bits.exit58 ], [ %63, %if.end17.i ]
  %ind.tr.i = phi i32 [ 0, %irq_debug_show_bits.exit58 ], [ %add20.i, %if.end17.i ]
  %domain.i = getelementptr inbounds %struct.irq_data, ptr %data.tr.i, i32 0, i32 5
  %40 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %domain.i, align 4
  %tobool.not.i59 = icmp eq ptr %41, null
  br i1 %tobool.not.i59, label %tailrecurse.i.cond.end.i_crit_edge, label %cond.true.i

tailrecurse.i.cond.end.i_crit_edge:               ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i60 = getelementptr inbounds %struct.irq_domain, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %name.i60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name.i60, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %tailrecurse.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %43, %cond.true.i ], [ @.str.14, %tailrecurse.i.cond.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, i32 noundef %ind.tr.i, ptr noundef nonnull @.str.14, ptr noundef %cond.i) #8
  %add.i = or i32 %ind.tr.i, 1
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data.tr.i, i32 0, i32 2
  %44 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hwirq.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, i32 noundef %add.i, ptr noundef nonnull @.str.14, i32 noundef %45) #8
  %chip1.i.i = getelementptr inbounds %struct.irq_data, ptr %data.tr.i, i32 0, i32 4
  %46 = ptrtoint ptr %chip1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.65) #8
  br label %irq_debug_show_chip.exit.i

if.end.i.i:                                       ; preds = %cond.end.i
  %name.i.i = getelementptr inbounds %struct.irq_chip, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.66, i32 noundef %add.i, ptr noundef nonnull @.str.14, ptr noundef %49) #8
  %add.i.i = or i32 %ind.tr.i, 2
  %flags.i.i = getelementptr inbounds %struct.irq_chip, ptr %47, i32 0, i32 33
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.67, i32 noundef %add.i.i, ptr noundef nonnull @.str.14, i32 noundef %51) #8
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i.i, align 4
  %add.i.i.i = add i32 %ind.tr.i, 13
  %and.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

if.end.i.i.for.inc.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %add.i.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.68) #8
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %if.end.i.i.for.inc.i.i.i_crit_edge
  %and.i.1.i.i = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1.i.i)
  %tobool.not.i.1.i.i = icmp eq i32 %and.i.1.i.i, 0
  br i1 %tobool.not.i.1.i.i, label %for.inc.i.i.i.for.inc.i.1.i.i_crit_edge, label %if.then.i.1.i.i

for.inc.i.i.i.for.inc.i.1.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1.i.i

if.then.i.1.i.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %add.i.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.69) #8
  br label %for.inc.i.1.i.i

for.inc.i.1.i.i:                                  ; preds = %if.then.i.1.i.i, %for.inc.i.i.i.for.inc.i.1.i.i_crit_edge
  %and.i.2.i.i = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2.i.i)
  %tobool.not.i.2.i.i = icmp eq i32 %and.i.2.i.i, 0
  br i1 %tobool.not.i.2.i.i, label %for.inc.i.1.i.i.for.inc.i.2.i.i_crit_edge, label %if.then.i.2.i.i

for.inc.i.1.i.i.for.inc.i.2.i.i_crit_edge:        ; preds = %for.inc.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2.i.i

if.then.i.2.i.i:                                  ; preds = %for.inc.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %add.i.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.70) #8
  br label %for.inc.i.2.i.i

for.inc.i.2.i.i:                                  ; preds = %if.then.i.2.i.i, %for.inc.i.1.i.i.for.inc.i.2.i.i_crit_edge
  %and.i.3.i.i = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3.i.i)
  %tobool.not.i.3.i.i = icmp eq i32 %and.i.3.i.i, 0
  br i1 %tobool.not.i.3.i.i, label %for.inc.i.2.i.i.for.inc.i.3.i.i_crit_edge, label %if.then.i.3.i.i

for.inc.i.2.i.i.for.inc.i.3.i.i_crit_edge:        ; preds = %for.inc.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.3.i.i

if.then.i.3.i.i:                                  ; preds = %for.inc.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %add.i.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.71) #8
  br label %for.inc.i.3.i.i

for.inc.i.3.i.i:                                  ; preds = %if.then.i.3.i.i, %for.inc.i.2.i.i.for.inc.i.3.i.i_crit_edge
  %and.i.4.i.i = and i32 %53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4.i.i)
  %tobool.not.i.4.i.i = icmp eq i32 %and.i.4.i.i, 0
  br i1 %tobool.not.i.4.i.i, label %for.inc.i.3.i.i.for.inc.i.4.i.i_crit_edge, label %if.then.i.4.i.i

for.inc.i.3.i.i.for.inc.i.4.i.i_crit_edge:        ; preds = %for.inc.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.4.i.i

if.then.i.4.i.i:                                  ; preds = %for.inc.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %add.i.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.72) #8
  br label %for.inc.i.4.i.i

for.inc.i.4.i.i:                                  ; preds = %if.then.i.4.i.i, %for.inc.i.3.i.i.for.inc.i.4.i.i_crit_edge
  %and.i.5.i.i = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.5.i.i)
  %tobool.not.i.5.i.i = icmp eq i32 %and.i.5.i.i, 0
  br i1 %tobool.not.i.5.i.i, label %for.inc.i.4.i.i.for.inc.i.5.i.i_crit_edge, label %if.then.i.5.i.i

for.inc.i.4.i.i.for.inc.i.5.i.i_crit_edge:        ; preds = %for.inc.i.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.5.i.i

if.then.i.5.i.i:                                  ; preds = %for.inc.i.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %add.i.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.73) #8
  br label %for.inc.i.5.i.i

for.inc.i.5.i.i:                                  ; preds = %if.then.i.5.i.i, %for.inc.i.4.i.i.for.inc.i.5.i.i_crit_edge
  %and.i.6.i.i = and i32 %53, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.6.i.i)
  %tobool.not.i.6.i.i = icmp eq i32 %and.i.6.i.i, 0
  br i1 %tobool.not.i.6.i.i, label %for.inc.i.5.i.i.for.inc.i.6.i.i_crit_edge, label %if.then.i.6.i.i

for.inc.i.5.i.i.for.inc.i.6.i.i_crit_edge:        ; preds = %for.inc.i.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.6.i.i

if.then.i.6.i.i:                                  ; preds = %for.inc.i.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %add.i.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.74) #8
  br label %for.inc.i.6.i.i

for.inc.i.6.i.i:                                  ; preds = %if.then.i.6.i.i, %for.inc.i.5.i.i.for.inc.i.6.i.i_crit_edge
  %and.i.7.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.7.i.i)
  %tobool.not.i.7.i.i = icmp eq i32 %and.i.7.i.i, 0
  br i1 %tobool.not.i.7.i.i, label %for.inc.i.6.i.i.for.inc.i.7.i.i_crit_edge, label %if.then.i.7.i.i

for.inc.i.6.i.i.for.inc.i.7.i.i_crit_edge:        ; preds = %for.inc.i.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.7.i.i

if.then.i.7.i.i:                                  ; preds = %for.inc.i.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %add.i.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.75) #8
  br label %for.inc.i.7.i.i

for.inc.i.7.i.i:                                  ; preds = %if.then.i.7.i.i, %for.inc.i.6.i.i.for.inc.i.7.i.i_crit_edge
  %and.i.8.i.i = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.8.i.i)
  %tobool.not.i.8.i.i = icmp eq i32 %and.i.8.i.i, 0
  br i1 %tobool.not.i.8.i.i, label %for.inc.i.7.i.i.for.inc.i.8.i.i_crit_edge, label %if.then.i.8.i.i

for.inc.i.7.i.i.for.inc.i.8.i.i_crit_edge:        ; preds = %for.inc.i.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.8.i.i

if.then.i.8.i.i:                                  ; preds = %for.inc.i.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %add.i.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.76) #8
  br label %for.inc.i.8.i.i

for.inc.i.8.i.i:                                  ; preds = %if.then.i.8.i.i, %for.inc.i.7.i.i.for.inc.i.8.i.i_crit_edge
  %and.i.9.i.i = and i32 %53, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.9.i.i)
  %tobool.not.i.9.i.i = icmp eq i32 %and.i.9.i.i, 0
  br i1 %tobool.not.i.9.i.i, label %for.inc.i.8.i.i.irq_debug_show_chip.exit.i_crit_edge, label %if.then.i.9.i.i

for.inc.i.8.i.i.irq_debug_show_chip.exit.i_crit_edge: ; preds = %for.inc.i.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_debug_show_chip.exit.i

if.then.i.9.i.i:                                  ; preds = %for.inc.i.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %add.i.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.77) #8
  br label %irq_debug_show_chip.exit.i

irq_debug_show_chip.exit.i:                       ; preds = %if.then.i.9.i.i, %for.inc.i.8.i.i.irq_debug_show_chip.exit.i_crit_edge, %if.then.i.i
  %54 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %domain.i, align 4
  %tobool4.not.i = icmp eq ptr %55, null
  br i1 %tobool4.not.i, label %irq_debug_show_chip.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

irq_debug_show_chip.exit.i.if.end.i_crit_edge:    ; preds = %irq_debug_show_chip.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %irq_debug_show_chip.exit.i
  %ops.i = getelementptr inbounds %struct.irq_domain, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i, align 4
  %tobool6.not.i = icmp eq ptr %57, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %debug_show.i = getelementptr inbounds %struct.irq_domain_ops, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %debug_show.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %debug_show.i, align 4
  %tobool10.not.i = icmp eq ptr %59, null
  br i1 %tobool10.not.i, label %land.lhs.true7.i.if.end.i_crit_edge, label %if.then.i61

land.lhs.true7.i.if.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i61:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %59(ptr noundef %m, ptr noundef null, ptr noundef %data.tr.i, i32 noundef %add.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i61, %land.lhs.true7.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %irq_debug_show_chip.exit.i.if.end.i_crit_edge
  %parent_data.i = getelementptr inbounds %struct.irq_data, ptr %data.tr.i, i32 0, i32 6
  %60 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %parent_data.i, align 4
  %tobool15.not.i = icmp eq ptr %61, null
  br i1 %tobool15.not.i, label %irq_debug_show_data.exit, label %if.end17.i

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.64, i32 noundef %add.i, ptr noundef nonnull @.str.14) #8
  %62 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent_data.i, align 4
  %add20.i = add i32 %ind.tr.i, 4
  br label %tailrecurse.i

irq_debug_show_data.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_lock_sparse() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_next_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_unlock_sparse() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173}
!llvm.named.register.sp = !{!175}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/irq/debugfs.c", i32 234, i32 16}
!2 = !{ptr @__initcall__kmod_debugfs__230_257_irq_debugfs_init6, !3, !"__initcall__kmod_debugfs__230_257_irq_debugfs_init6", i1 false, i1 false}
!3 = !{!"../kernel/irq/debugfs.c", i32 257, i32 1}
!4 = !{ptr @irq_dir, !5, !"irq_dir", i1 false, i1 false}
!5 = !{!"../kernel/irq/debugfs.c", i32 10, i32 23}
!6 = !{ptr @dfs_irq_ops, !7, !"dfs_irq_ops", i1 false, i1 false}
!7 = !{!"../kernel/irq/debugfs.c", i32 210, i32 37}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/irq/debugfs.c", i32 201, i32 20}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!12 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/irq/debugfs.c", i32 165, i32 16}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../kernel/irq/debugfs.c", i32 166, i32 16}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../kernel/irq/debugfs.c", i32 167, i32 16}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../kernel/irq/debugfs.c", i32 170, i32 16}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/irq/debugfs.c", i32 173, i32 16}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/irq/debugfs.c", i32 174, i32 16}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/irq/debugfs.c", i32 175, i32 16}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/irq/debugfs.c", i32 178, i32 16}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../kernel/irq/debugfs.c", i32 25, i32 18}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/irq/debugfs.c", i32 25, i32 39}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/irq/debugfs.c", i32 134, i32 2}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/irq/debugfs.c", i32 135, i32 2}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/irq/debugfs.c", i32 136, i32 2}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/irq/debugfs.c", i32 137, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/irq/debugfs.c", i32 138, i32 2}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/irq/debugfs.c", i32 139, i32 2}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/irq/debugfs.c", i32 140, i32 2}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/irq/debugfs.c", i32 141, i32 2}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/irq/debugfs.c", i32 142, i32 2}
!55 = distinct !{null, !56, !"irqdesc_states", i1 false, i1 false}
!56 = !{!"../kernel/irq/debugfs.c", i32 133, i32 35}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../kernel/irq/debugfs.c", i32 146, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../kernel/irq/debugfs.c", i32 147, i32 2}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../kernel/irq/debugfs.c", i32 148, i32 2}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/irq/debugfs.c", i32 149, i32 2}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/irq/debugfs.c", i32 150, i32 2}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../kernel/irq/debugfs.c", i32 151, i32 2}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../kernel/irq/debugfs.c", i32 152, i32 2}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../kernel/irq/debugfs.c", i32 153, i32 2}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../kernel/irq/debugfs.c", i32 154, i32 2}
!75 = distinct !{null, !76, !"irqdesc_istates", i1 false, i1 false}
!76 = !{!"../kernel/irq/debugfs.c", i32 145, i32 35}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/irq/debugfs.c", i32 96, i32 2}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../kernel/irq/debugfs.c", i32 97, i32 2}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../kernel/irq/debugfs.c", i32 98, i32 2}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../kernel/irq/debugfs.c", i32 99, i32 2}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../kernel/irq/debugfs.c", i32 100, i32 2}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../kernel/irq/debugfs.c", i32 102, i32 2}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../kernel/irq/debugfs.c", i32 103, i32 2}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../kernel/irq/debugfs.c", i32 104, i32 2}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../kernel/irq/debugfs.c", i32 105, i32 2}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../kernel/irq/debugfs.c", i32 106, i32 2}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../kernel/irq/debugfs.c", i32 108, i32 2}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../kernel/irq/debugfs.c", i32 109, i32 2}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../kernel/irq/debugfs.c", i32 111, i32 2}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../kernel/irq/debugfs.c", i32 112, i32 2}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../kernel/irq/debugfs.c", i32 113, i32 2}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../kernel/irq/debugfs.c", i32 114, i32 2}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../kernel/irq/debugfs.c", i32 115, i32 2}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../kernel/irq/debugfs.c", i32 116, i32 2}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../kernel/irq/debugfs.c", i32 117, i32 2}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../kernel/irq/debugfs.c", i32 118, i32 2}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../kernel/irq/debugfs.c", i32 119, i32 2}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../kernel/irq/debugfs.c", i32 121, i32 2}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../kernel/irq/debugfs.c", i32 123, i32 2}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../kernel/irq/debugfs.c", i32 124, i32 2}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../kernel/irq/debugfs.c", i32 126, i32 2}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../kernel/irq/debugfs.c", i32 128, i32 2}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../kernel/irq/debugfs.c", i32 130, i32 2}
!131 = !{ptr @irqdata_states, !132, !"irqdata_states", i1 false, i1 false}
!132 = !{!"../kernel/irq/debugfs.c", i32 95, i32 35}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../kernel/irq/debugfs.c", i32 36, i32 16}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../kernel/irq/debugfs.c", i32 39, i32 16}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../kernel/irq/debugfs.c", i32 81, i32 16}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../kernel/irq/debugfs.c", i32 83, i32 16}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../kernel/irq/debugfs.c", i32 90, i32 16}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../kernel/irq/debugfs.c", i32 69, i32 17}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../kernel/irq/debugfs.c", i32 72, i32 16}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../kernel/irq/debugfs.c", i32 73, i32 16}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../kernel/irq/debugfs.c", i32 51, i32 2}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../kernel/irq/debugfs.c", i32 52, i32 2}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../kernel/irq/debugfs.c", i32 53, i32 2}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../kernel/irq/debugfs.c", i32 54, i32 2}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../kernel/irq/debugfs.c", i32 55, i32 2}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../kernel/irq/debugfs.c", i32 56, i32 2}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../kernel/irq/debugfs.c", i32 57, i32 2}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../kernel/irq/debugfs.c", i32 58, i32 2}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../kernel/irq/debugfs.c", i32 59, i32 2}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../kernel/irq/debugfs.c", i32 60, i32 2}
!169 = distinct !{null, !170, !"irqchip_flags", i1 false, i1 false}
!170 = !{!"../kernel/irq/debugfs.c", i32 50, i32 35}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../kernel/irq/debugfs.c", i32 244, i32 32}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../kernel/irq/debugfs.c", i32 248, i32 31}
!175 = !{!"sp"}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{i64 2152620263, i64 2152620288}
!186 = !{!"branch_weights", i32 2000, i32 1}
!187 = !{i64 5115818}
!188 = !{i64 5116015}
!189 = !{i64 2152601248}
