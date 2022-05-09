; ModuleID = '/llk/IR_all_yes/drivers/scsi/aacraid/comminit.c_pt.bc'
source_filename = "../drivers/scsi/aacraid/comminit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aac_common = type { i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.aac_dev = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.adapter_ops, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, [32 x i32], [32 x %struct.atomic_t], i32, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, %struct.delayed_work, %struct.delayed_work, i32, %struct.spinlock, %union.anon.81, ptr, ptr, ptr, i32, i32, %struct.aac_adapter_info, %struct.aac_supplement_adapter_info, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, i32, i32, i32, i32, %struct.atomic_t, i32, [32 x %struct.msix_entry], [32 x %struct.aac_msix_ctx], [5 x [256 x %struct.aac_hba_map_info]], ptr, i8, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.adapter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { ptr, ptr }
%struct.aac_adapter_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.aac_supplement_adapter_info = type { [18 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], [12 x i8], i32, %struct.anon.86, i32, i32, i32, i32, i32, [12 x i8], [8 x i8], i32, i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i64, i32, [12 x i8], i16, i16, i32, i16, i16, i16, i16, [68 x i32] }
%struct.anon.86 = type { [8 x i8], [8 x i8], [8 x i8], [8 x i8], [12 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.msix_entry = type { i32, i16 }
%struct.aac_msix_ctx = type { i32, ptr }
%struct.aac_hba_map_info = type { i32, i8, i8, i16, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.80, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.80 = type { ptr }
%struct.fib = type { ptr, i16, i16, ptr, %struct.completion, %struct.spinlock, i32, ptr, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.hw_fib = type { %struct.aac_fibhdr, [480 x i8] }
%struct.aac_fibhdr = type { i32, i16, i8, i8, i16, i16, i32, %union.anon, i32, i32, i32 }
%union.anon = type { i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.src_mu_registers = type { [6 x i32], [2 x i32], i32, i32, [3 x i32], i32, [25 x i32], i32, i32, [3 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct._r8 = type { i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct._rrq] }
%struct._rrq = type { i32, i32, i16, i16, i16, i16 }
%struct._r7 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aac_queue = type { i64, ptr, %struct.aac_qhdr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.list_head, %struct.atomic_t, ptr }
%struct.aac_qhdr = type { i64, ptr, ptr }
%struct.aac_entry = type { i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }

@aac_config = dso_local global { %struct.aac_common, [16 x i8] } { %struct.aac_common { i32 1, i32 0, i32 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@aac_define_int_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 492, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MSIX not supported!! Will try INTX 0x%x.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aac_define_int_mode\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/aacraid/comminit.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aac_define_int_mode._entry_ptr = internal global ptr @aac_define_int_mode._entry, section ".printk_index", align 4
@aac_init_adapter.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dev->manage_lock\00", [46 x i8] zeroinitializer }, align 32
@aac_init_adapter.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->sync_lock\00", [16 x i8] zeroinitializer }, align 32
@aac_init_adapter.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->iq_lock\00", [18 x i8] zeroinitializer }, align 32
@aac_init_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 537, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Changed firmware to INTX mode\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aac_init_adapter\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aac_init_adapter._entry_ptr = internal global ptr @aac_init_adapter._entry, section ".printk_index", align 4
@aac_sync_mode = external dso_local local_unnamed_addr global i32, align 4
@aac_init_adapter._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014aacraid: unable to map adapter.\0A\00", [61 x i8] zeroinitializer }, align 32
@aac_init_adapter._entry_ptr.15 = internal global ptr @aac_init_adapter._entry.13, section ".printk_index", align 4
@numacb = external dso_local local_unnamed_addr global i32, align 4
@aac_init_adapter._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014numacb=%d ignored\0A\00", [43 x i8] zeroinitializer }, align 32
@aac_init_adapter._entry_ptr.18 = internal global ptr @aac_init_adapter._entry.16, section ".printk_index", align 4
@aac_init_adapter._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Error could not allocate comm region.\0A\00", [55 x i8] zeroinitializer }, align 32
@aac_init_adapter._entry_ptr.21 = internal global ptr @aac_init_adapter._entry.19, section ".printk_index", align 4
@aac_wait_for_io_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 298, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Wait for %d commands to complete\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aac_wait_for_io_completion\00", [37 x i8] zeroinitializer }, align 32
@aac_wait_for_io_completion._entry_ptr = internal global ptr @aac_wait_for_io_completion._entry, section ".printk_index", align 4
@aac_wait_for_io_completion._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 303, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d outstanding commands during shutdown\0A\00", [55 x i8] zeroinitializer }, align 32
@aac_wait_for_io_completion._entry_ptr.26 = internal global ptr @aac_wait_for_io_completion._entry.24, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@aac_comm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->fib_lock\00", [17 x i8] zeroinitializer }, align 32
@aac_alloc_comm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013aacraid: unable to create mapping.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aac_alloc_comm\00", [17 x i8] zeroinitializer }, align 32
@aac_alloc_comm._entry_ptr = internal global ptr @aac_alloc_comm._entry, section ".printk_index", align 4
@aac_alloc_comm._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014aacraid: Comm Interface type3 enabled\0A\00", [55 x i8] zeroinitializer }, align 32
@aac_alloc_comm._entry_ptr.32 = internal global ptr @aac_alloc_comm._entry.30, section ".printk_index", align 4
@aac_alloc_comm._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014aacraid: Comm Interface enabled\0A\00", [61 x i8] zeroinitializer }, align 32
@aac_alloc_comm._entry_ptr.35 = internal global ptr @aac_alloc_comm._entry.33, section ".printk_index", align 4
@aac_alloc_comm._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014aacraid: Comm Interface type1 enabled\0A\00", [55 x i8] zeroinitializer }, align 32
@aac_alloc_comm._entry_ptr.38 = internal global ptr @aac_alloc_comm._entry.36, section ".printk_index", align 4
@aac_alloc_comm._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014aacraid: Comm Interface type2 enabled\0A\00", [55 x i8] zeroinitializer }, align 32
@aac_alloc_comm._entry_ptr.41 = internal global ptr @aac_alloc_comm._entry.39, section ".printk_index", align 4
@aac_queue_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&q->cmdready\00", [19 x i8] zeroinitializer }, align 32
@aac_queue_init.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&q->qfull\00", [22 x i8] zeroinitializer }, align 32
@aac_queue_init.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&q->lockdata\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@___asan_gen_.48 = private unnamed_addr constant [11 x i8] c"aac_config\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 36, i32 19 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 491, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 520, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 521, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 522, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 537, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 586, i32 6 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 628, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 639, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 297, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 302, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 382, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 89, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 141, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 192, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 204, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 219, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 263, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 265, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [35 x i8] c"../drivers/scsi/aacraid/comminit.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 266, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @aac_alloc_comm._entry, ptr @aac_alloc_comm._entry.30, ptr @aac_alloc_comm._entry.33, ptr @aac_alloc_comm._entry.36, ptr @aac_alloc_comm._entry.39, ptr @aac_alloc_comm._entry_ptr, ptr @aac_alloc_comm._entry_ptr.32, ptr @aac_alloc_comm._entry_ptr.35, ptr @aac_alloc_comm._entry_ptr.38, ptr @aac_alloc_comm._entry_ptr.41, ptr @aac_define_int_mode._entry, ptr @aac_define_int_mode._entry_ptr, ptr @aac_init_adapter._entry, ptr @aac_init_adapter._entry.13, ptr @aac_init_adapter._entry.16, ptr @aac_init_adapter._entry.19, ptr @aac_init_adapter._entry_ptr, ptr @aac_init_adapter._entry_ptr.15, ptr @aac_init_adapter._entry_ptr.18, ptr @aac_init_adapter._entry_ptr.21, ptr @aac_wait_for_io_completion._entry, ptr @aac_wait_for_io_completion._entry.24, ptr @aac_wait_for_io_completion._entry_ptr, ptr @aac_wait_for_io_completion._entry_ptr.26, ptr @aac_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @aac_init_adapter.__key, ptr @.str.5, ptr @aac_init_adapter.__key.6, ptr @.str.7, ptr @aac_init_adapter.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @aac_comm_init.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @aac_queue_init.__key, ptr @.str.42, ptr @aac_queue_init.__key.43, ptr @.str.44, ptr @aac_queue_init.__key.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_define_int_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_init_adapter.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_init_adapter.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_init_adapter.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_init_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_init_adapter._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_init_adapter._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_init_adapter._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_wait_for_io_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_wait_for_io_completion._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_comm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_alloc_comm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_alloc_comm._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_alloc_comm._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_alloc_comm._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_alloc_comm._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_queue_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_queue_init.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_queue_init.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_send_shutdown(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %active.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i.i, align 4
  %error_state.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %error_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not.i.i = icmp eq i32 %3, 1
  br i1 %cmp.i.not.i.i, label %aac_pci_offline.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

aac_pci_offline.exit.i:                           ; preds = %entry
  %handle_pci_error.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 84
  %4 = ptrtoint ptr %handle_pci_error.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle_pci_error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.i.not.i, label %aac_adapter_check_health.exit, label %aac_pci_offline.exit.i.cleanup_crit_edge, !prof !88

aac_pci_offline.exit.i.cleanup_crit_edge:         ; preds = %aac_pci_offline.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

aac_adapter_check_health.exit:                    ; preds = %aac_pci_offline.exit.i
  %adapter_check_health.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 5
  %6 = ptrtoint ptr %adapter_check_health.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter_check_health.i, align 4
  %call3.i = tail call i32 %7(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %aac_adapter_check_health.exit.cleanup_crit_edge

aac_adapter_check_health.exit.cleanup_crit_edge:  ; preds = %aac_adapter_check_health.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %aac_adapter_check_health.exit
  %adapter_shutdown = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 83
  %8 = ptrtoint ptr %adapter_shutdown to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %adapter_shutdown, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ioctl_mutex = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %ioctl_mutex, i32 noundef 0) #7
  %10 = ptrtoint ptr %adapter_shutdown to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %adapter_shutdown, align 8
  tail call void @mutex_unlock(ptr noundef %ioctl_mutex) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active.i) #7
  %scsi_host_ptr.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %if.end5
  %i.014.i = phi i32 [ 60, %if.end5 ], [ %dec.i, %do.end.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %active.i, align 4
  %12 = ptrtoint ptr %scsi_host_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scsi_host_ptr.i, align 8
  call void @scsi_host_busy_iter(ptr noundef %13, ptr noundef nonnull @wait_for_io_iter, ptr noundef nonnull %active.i) #7
  %14 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %for.body.i.aac_wait_for_io_completion.exit_crit_edge, label %do.end.i

for.body.i.aac_wait_for_io_completion.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aac_wait_for_io_completion.exit

do.end.i:                                         ; preds = %for.body.i
  %16 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef %15) #10
  call void @msleep(i32 noundef 1000) #7
  %dec.i = add nsw i32 %i.014.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.end.i, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %do.end.i
  %18 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool1.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool1.not.i, label %for.end.i.aac_wait_for_io_completion.exit_crit_edge, label %do.end5.i

for.end.i.aac_wait_for_io_completion.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aac_wait_for_io_completion.exit

do.end5.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i.i, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.25, i32 noundef %.pr.i) #10
  br label %aac_wait_for_io_completion.exit

aac_wait_for_io_completion.exit:                  ; preds = %do.end5.i, %for.end.i.aac_wait_for_io_completion.exit_crit_edge, %for.body.i.aac_wait_for_io_completion.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active.i) #7
  %call6 = call ptr @aac_fib_alloc(ptr noundef %dev) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %aac_wait_for_io_completion.exit.cleanup_crit_edge, label %if.end9

aac_wait_for_io_completion.exit.cleanup_crit_edge: ; preds = %aac_wait_for_io_completion.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %aac_wait_for_io_completion.exit
  call void @aac_fib_init(ptr noundef nonnull %call6) #7
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %call6, i32 0, i32 13
  %21 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 83886080, ptr %data, align 4
  %cid = getelementptr inbounds %struct.hw_fib, ptr %22, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -16777217, ptr %cid, align 4
  %call10 = call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef nonnull %call6, i32 noundef 8, i32 noundef 1, i32 noundef -2, i32 noundef 1, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp = icmp sgt i32 %call10, -1
  br i1 %cmp, label %if.end13.thread, label %if.end13

if.end13.thread:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call i32 @aac_fib_complete(ptr noundef nonnull %call6) #7
  br label %if.then15

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call10)
  %cmp14.not = icmp eq i32 %call10, -512
  br i1 %cmp14.not, label %if.end13.if.end16_crit_edge, label %if.end13.if.then15_crit_edge

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %if.end13.thread
  call void @aac_fib_free(ptr noundef nonnull %call6) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %25 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i.i, align 4
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %device1.i, align 2
  %29 = add i16 %28, -654
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %29)
  %switch.i = icmp ult i16 %29, -3
  br i1 %switch.i, label %if.end16.cleanup_crit_edge, label %land.lhs.true

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end16
  %msi_enabled = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  %30 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool19.not = icmp eq i32 %31, 0
  br i1 %tobool19.not, label %land.lhs.true.cleanup_crit_edge, label %if.then20

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @aac_set_intx_mode(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %land.lhs.true.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %aac_wait_for_io_completion.exit.cleanup_crit_edge, %aac_adapter_check_health.exit.cleanup_crit_edge, %aac_pci_offline.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %aac_adapter_check_health.exit.cleanup_crit_edge ], [ -12, %aac_wait_for_io_completion.exit.cleanup_crit_edge ], [ %call10, %if.then20 ], [ %call10, %land.lhs.true.cleanup_crit_edge ], [ %call10, %if.end16.cleanup_crit_edge ], [ 0, %aac_pci_offline.exit.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aac_fib_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_fib_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_fib_send(i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_fib_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_fib_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_set_intx_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aac_define_int_mode(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_msix = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 74
  %0 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_msix, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 651, i16 %5)
  %cmp1 = icmp eq i16 %5, 651
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %sync_mode = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 70
  %6 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sync_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false3.if.then_crit_edge

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %max_msix to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %max_msix, align 8
  %scsi_host_ptr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %9 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scsi_host_ptr, align 8
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %can_queue, align 4
  %add = add i32 %12, 8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %13 = load volatile i32, ptr @__num_online_cpus, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %1, i32 %13)
  %15 = ptrtoint ptr %max_msix to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %max_msix, align 8
  %16 = tail call i32 @llvm.smin.i32(i32 %14, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp13 = icmp sgt i32 %16, 1
  br i1 %cmp13, label %land.lhs.true, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %call16 = tail call zeroext i8 @pci_find_capability(ptr noundef %18, i32 noundef 17) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call16)
  %tobool18.not = icmp eq i8 %call16, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end29_crit_edge, label %if.then19

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then19:                                        ; preds = %land.lhs.true
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %20, i32 noundef 2, i32 noundef %16, i32 noundef 12, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp sgt i32 %call.i, 0
  %msi_enabled = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %msi_enabled, align 8
  br label %if.end29

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %msi_enabled, align 8
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str, i32 noundef %call.i) #10
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then24, %land.lhs.true.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %msi_count.0 = phi i32 [ %call.i, %if.then24 ], [ %16, %if.else ], [ %16, %land.lhs.true.if.end29_crit_edge ], [ %16, %if.end.if.end29_crit_edge ]
  %msi_enabled30 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  %25 = ptrtoint ptr %msi_enabled30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msi_enabled30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool31.not = icmp eq i32 %26, 0
  br i1 %tobool31.not, label %if.end29.if.end41.sink.split_crit_edge, label %if.else34

if.end29.if.end41.sink.split_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.sink.split

if.else34:                                        ; preds = %if.end29
  %27 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_msix, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %msi_count.0)
  %cmp36 = icmp ugt i32 %28, %msi_count.0
  br i1 %cmp36, label %if.else34.if.end41.sink.split_crit_edge, label %if.else34.if.end41_crit_edge

if.else34.if.end41_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.else34.if.end41.sink.split_crit_edge:          ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.else34.if.end41.sink.split_crit_edge, %if.end29.if.end41.sink.split_crit_edge
  %msi_count.0.sink = phi i32 [ 1, %if.end29.if.end41.sink.split_crit_edge ], [ %msi_count.0, %if.else34.if.end41.sink.split_crit_edge ]
  %29 = ptrtoint ptr %max_msix to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %msi_count.0.sink, ptr %max_msix, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else34.if.end41_crit_edge
  %msi_count.1 = phi i32 [ %msi_count.0, %if.else34.if.end41_crit_edge ], [ %msi_count.0.sink, %if.end41.sink.split ]
  %comm_interface = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 59
  %30 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %comm_interface, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %31)
  %cmp43 = icmp eq i8 %31, 5
  br i1 %cmp43, label %land.lhs.true45, label %if.end41.if.else53_crit_edge

if.end41.if.else53_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else53

land.lhs.true45:                                  ; preds = %if.end41
  %sa_firmware = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 66
  %32 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool47.not = icmp eq i8 %33, 0
  br i1 %tobool47.not, label %land.lhs.true45.if.else53_crit_edge, label %if.then48

land.lhs.true45.if.else53_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else53

if.then48:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  %scsi_host_ptr49 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %34 = ptrtoint ptr %scsi_host_ptr49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %scsi_host_ptr49, align 8
  %can_queue50 = getelementptr inbounds %struct.Scsi_Host, ptr %35, i32 0, i32 26
  %36 = ptrtoint ptr %can_queue50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %can_queue50, align 4
  %add51 = add i32 %37, 8
  br label %cleanup

if.else53:                                        ; preds = %land.lhs.true45.if.else53_crit_edge, %if.end41.if.else53_crit_edge
  %scsi_host_ptr54 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %38 = ptrtoint ptr %scsi_host_ptr54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %scsi_host_ptr54, align 8
  %can_queue55 = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 26
  %40 = ptrtoint ptr %can_queue55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %can_queue55, align 4
  %add56 = add i32 %41, 8
  %div = sdiv i32 %add56, %msi_count.1
  br label %cleanup

cleanup:                                          ; preds = %if.else53, %if.then48, %if.then
  %add51.sink = phi i32 [ %add51, %if.then48 ], [ %div, %if.else53 ], [ %add, %if.then ]
  %vector_cap52 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 75
  %42 = ptrtoint ptr %vector_cap52 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add51.sink, ptr %vector_cap52, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aac_init_adapter(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %phys.i.i = alloca i32, align 4
  %status = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %status) #7
  %0 = getelementptr inbounds [5 x i32], ptr %status, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i32], ptr %status, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i32], ptr %status, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i32], ptr %status, i32 0, i32 4
  %scsi_host_ptr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %4 = call ptr @memset(ptr %status, i32 255, i32 20)
  %5 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scsi_host_ptr, align 8
  %management_fib_count = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 67
  %7 = ptrtoint ptr %management_fib_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %management_fib_count, align 8
  %manage_lock = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 68
  tail call void @__raw_spin_lock_init(ptr noundef %manage_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @aac_init_adapter.__key, i16 noundef signext 3) #7
  %sync_lock = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 69
  tail call void @__raw_spin_lock_init(ptr noundef %sync_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @aac_init_adapter.__key.6, i16 noundef signext 3) #7
  %iq_lock = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 44
  tail call void @__raw_spin_lock_init(ptr noundef %iq_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @aac_init_adapter.__key.8, i16 noundef signext 3) #7
  %max_fib_size = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 512, ptr %max_fib_size, align 8
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 28
  %9 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 57, ptr %sg_tablesize, align 2
  %sg_tablesize12 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %sg_tablesize12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 57, ptr %sg_tablesize12, align 4
  %comm_interface = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 59
  %11 = ptrtoint ptr %comm_interface to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %comm_interface, align 2
  %raw_io_64 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 61
  %12 = ptrtoint ptr %raw_io_64 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %raw_io_64, align 8
  %raw_io_interface = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 60
  %13 = ptrtoint ptr %raw_io_interface to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %raw_io_interface, align 1
  %pdev.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %14 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i.i, align 4
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device1.i.i, align 2
  %18 = add i16 %17, -654
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %18)
  %switch.i.i = icmp ult i16 %18, -3
  br i1 %switch.i.i, label %entry.if.end_crit_edge, label %aac_is_msix_mode.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

aac_is_msix_mode.exit:                            ; preds = %entry
  %regs.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 8
  %OMR.i = getelementptr inbounds %struct.src_mu_registers, ptr %20, i32 0, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %aac_is_msix_mode.exit.if.end_crit_edge, label %if.then

aac_is_msix_mode.exit.if.end_crit_edge:           ; preds = %aac_is_msix_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %aac_is_msix_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @aac_src_access_devreg(ptr noundef %dev, i32 noundef 3) #7
  tail call void @aac_src_access_devreg(ptr noundef %dev, i32 noundef 6) #7
  %23 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i.i, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17, ptr noundef nonnull @.str.10) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %aac_is_msix_mode.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %adapter_sync_cmd = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 4
  %25 = ptrtoint ptr %adapter_sync_cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter_sync_cmd, align 4
  %call26 = call i32 %26(ptr noundef %dev, i32 noundef 25, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %status, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true, label %if.end.if.end123_crit_edge

if.end.if.end123_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

land.lhs.true:                                    ; preds = %if.end
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp = icmp eq i32 %28, 1
  br i1 %cmp, label %if.then29, label %land.lhs.true.if.end123_crit_edge

land.lhs.true.if.end123_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then29:                                        ; preds = %land.lhs.true
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %2, align 4
  %doorbell_mask = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 73
  %31 = ptrtoint ptr %doorbell_mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %doorbell_mask, align 4
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %0, align 4
  %and = and i32 %33, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.then29.if.end35_crit_edge, label %if.then33

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %raw_io_64 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %raw_io_64, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.then29.if.end35_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aac_sync_mode to i32))
  %35 = load i32, ptr @aac_sync_mode, align 4
  %sync_mode = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 70
  %36 = ptrtoint ptr %sync_mode to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sync_mode, align 4
  %adapter_comm = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 15
  %37 = ptrtoint ptr %adapter_comm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter_comm, align 4
  %tobool37.not = icmp eq ptr %38, null
  %and40 = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %or.cond = select i1 %tobool37.not, i1 true, i1 %tobool41.not
  br i1 %or.cond, label %if.end35.if.end72_crit_edge, label %if.then42

if.end35.if.end72_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then42:                                        ; preds = %if.end35
  %39 = ptrtoint ptr %comm_interface to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %comm_interface, align 2
  %40 = ptrtoint ptr %raw_io_interface to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %raw_io_interface, align 1
  %and46 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %comm_interface to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %comm_interface, align 2
  br label %if.end72

if.else:                                          ; preds = %if.then42
  %and51 = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else55, label %if.then53

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %comm_interface to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 4, ptr %comm_interface, align 2
  br label %if.end72

if.else55:                                        ; preds = %if.else
  %and57 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else61, label %if.then59

if.then59:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %comm_interface to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 5, ptr %comm_interface, align 2
  br label %if.end72

if.else61:                                        ; preds = %if.else55
  %and63 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else61.if.end72_crit_edge, label %if.then65

if.else61.if.end72_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then65:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %comm_interface to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 4, ptr %comm_interface, align 2
  %45 = ptrtoint ptr %sync_mode to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %sync_mode, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then65, %if.else61.if.end72_crit_edge, %if.then59, %if.then53, %if.then48, %if.end35.if.end72_crit_edge
  %and74 = and i32 %33, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end72.if.else81_crit_edge, label %land.lhs.true76

if.end72.if.else81_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else81

land.lhs.true76:                                  ; preds = %if.end72
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %3, align 4
  %and78 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %land.lhs.true76.if.else81_crit_edge, label %land.lhs.true76.if.end83_crit_edge

land.lhs.true76.if.end83_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

land.lhs.true76.if.else81_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else81

if.else81:                                        ; preds = %land.lhs.true76.if.else81_crit_edge, %if.end72.if.else81_crit_edge
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %land.lhs.true76.if.end83_crit_edge
  %.sink309 = phi i8 [ 0, %if.else81 ], [ 1, %land.lhs.true76.if.end83_crit_edge ]
  %sa_firmware82 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 66
  %48 = ptrtoint ptr %sa_firmware82 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.sink309, ptr %sa_firmware82, align 1
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %3, align 4
  %and85 = lshr i32 %50, 16
  %51 = trunc i32 %and85 to i8
  %52 = and i8 %51, 1
  %53 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 86
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %52, ptr %53, align 1
  %55 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %comm_interface, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp93 = icmp eq i8 %56, 1
  br i1 %cmp93, label %land.lhs.true95, label %if.end83.if.end123_crit_edge

if.end83.if.end123_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

land.lhs.true95:                                  ; preds = %if.end83
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %1, align 4
  %base_size = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 21
  %59 = ptrtoint ptr %base_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp97 = icmp ugt i32 %58, %60
  br i1 %cmp97, label %if.then99, label %land.lhs.true95.if.end123_crit_edge

land.lhs.true95.if.end123_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then99:                                        ; preds = %land.lhs.true95
  %adapter_ioremap = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 8
  %61 = ptrtoint ptr %adapter_ioremap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter_ioremap, align 4
  %call101 = call i32 %62(ptr noundef %dev, i32 noundef 0) #7
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %1, align 4
  %65 = ptrtoint ptr %base_size to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %base_size, align 8
  %66 = ptrtoint ptr %adapter_ioremap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter_ioremap, align 4
  %call107 = call i32 %67(ptr noundef %dev, i32 noundef %64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then99.if.end123_crit_edge, label %if.then109

if.then99.if.end123_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then109:                                       ; preds = %if.then99
  %68 = ptrtoint ptr %comm_interface to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %comm_interface, align 2
  %69 = ptrtoint ptr %adapter_ioremap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adapter_ioremap, align 4
  %call113 = call i32 %70(ptr noundef %dev, i32 noundef 8192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then109.if.end123_crit_edge, label %do.end118

if.then109.if.end123_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

do.end118:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end123:                                        ; preds = %if.then109.if.end123_crit_edge, %if.then99.if.end123_crit_edge, %land.lhs.true95.if.end123_crit_edge, %if.end83.if.end123_crit_edge, %land.lhs.true.if.end123_crit_edge, %if.end.if.end123_crit_edge
  %max_msix = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 74
  %71 = ptrtoint ptr %max_msix to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %max_msix, align 8
  %msi_enabled = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  %72 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %msi_enabled, align 8
  %adapter_shutdown = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 83
  %73 = ptrtoint ptr %adapter_shutdown to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %adapter_shutdown, align 8
  %74 = ptrtoint ptr %adapter_sync_cmd to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adapter_sync_cmd, align 4
  %call136 = call i32 %75(ptr noundef %dev, i32 noundef 38, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %status, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %land.lhs.true138, label %if.end123.if.end184_crit_edge

if.end123.if.end184_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184

land.lhs.true138:                                 ; preds = %if.end123
  %76 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp140 = icmp eq i32 %77, 1
  br i1 %cmp140, label %if.then142, label %land.lhs.true138.if.end184_crit_edge

land.lhs.true138.if.end184_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184

if.then142:                                       ; preds = %land.lhs.true138
  %78 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %0, align 4
  %80 = lshr i32 %79, 15
  %shl = and i32 %80, 131070
  %max_sectors = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 30
  %81 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %shl, ptr %max_sectors, align 8
  %and145 = and i32 %79, 65504
  %82 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and145, ptr %max_fib_size, align 8
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %1, align 4
  %shr148 = lshr i32 %84, 16
  %conv149 = trunc i32 %shr148 to i16
  %85 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv149, ptr %sg_tablesize, align 2
  %and152 = and i32 %84, 65535
  %86 = ptrtoint ptr %sg_tablesize12 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %and152, ptr %sg_tablesize12, align 4
  %87 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev.i.i, align 4
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 8
  %89 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %device1.i, align 2
  %91 = add i16 %90, -654
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %91)
  %switch.i = icmp ult i16 %91, -3
  %can_queue169 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 26
  %92 = ptrtoint ptr %can_queue169 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %can_queue169, align 4
  %94 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %2, align 4
  br i1 %switch.i, label %if.else168, label %if.then156

if.then156:                                       ; preds = %if.then142
  %shr158 = lshr i32 %95, 16
  %sub159 = add nsw i32 %shr158, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %sub159)
  %cmp160 = icmp ugt i32 %93, %sub159
  br i1 %cmp160, label %if.then156.if.end181.sink.split_crit_edge, label %if.then156.if.end181_crit_edge

if.then156.if.end181_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181

if.then156.if.end181.sink.split_crit_edge:        ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181.sink.split

if.else168:                                       ; preds = %if.then142
  %and171 = and i32 %95, 65535
  %sub172 = add nsw i32 %and171, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %sub172)
  %cmp173 = icmp ugt i32 %93, %sub172
  br i1 %cmp173, label %if.else168.if.end181.sink.split_crit_edge, label %if.else168.if.end181_crit_edge

if.else168.if.end181_crit_edge:                   ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181

if.else168.if.end181.sink.split_crit_edge:        ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181.sink.split

if.end181.sink.split:                             ; preds = %if.else168.if.end181.sink.split_crit_edge, %if.then156.if.end181.sink.split_crit_edge
  %sub172.sink = phi i32 [ %sub159, %if.then156.if.end181.sink.split_crit_edge ], [ %sub172, %if.else168.if.end181.sink.split_crit_edge ]
  %96 = ptrtoint ptr %can_queue169 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %sub172.sink, ptr %can_queue169, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.end181.sink.split, %if.else168.if.end181_crit_edge, %if.then156.if.end181_crit_edge
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %3, align 4
  %and183 = and i32 %98, 65535
  %max_num_aif = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 5
  %99 = ptrtoint ptr %max_num_aif to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %and183, ptr %max_num_aif, align 8
  br label %if.end184

if.end184:                                        ; preds = %if.end181, %land.lhs.true138.if.end184_crit_edge, %if.end123.if.end184_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @numacb to i32))
  %100 = load i32, ptr @numacb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp185 = icmp sgt i32 %100, 0
  br i1 %cmp185, label %if.then187, label %if.end184.if.end200_crit_edge

if.end184.if.end200_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end200

if.then187:                                       ; preds = %if.end184
  %can_queue188 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 26
  %101 = ptrtoint ptr %can_queue188 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %can_queue188, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp189 = icmp slt i32 %100, %102
  br i1 %cmp189, label %if.then191, label %do.end196

if.then191:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %can_queue188 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %100, ptr %can_queue188, align 4
  br label %if.end200

do.end196:                                        ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #9
  %call198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %100) #10
  br label %if.end200

if.end200:                                        ; preds = %do.end196, %if.then191, %if.end184.if.end200_crit_edge
  %104 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev.i.i, align 4
  %device1.i298 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 8
  %106 = ptrtoint ptr %device1.i298 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %device1.i298, align 2
  %108 = add i16 %107, -654
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %108)
  %switch.i300 = icmp ult i16 %108, -3
  br i1 %switch.i300, label %if.end200.if.end204_crit_edge, label %if.then203

if.end200.if.end204_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end204

if.then203:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #9
  call void @aac_define_int_mode(ptr noundef %dev)
  br label %if.end204

if.end204:                                        ; preds = %if.then203, %if.end200.if.end204_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %109 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %109, i32 noundef 3520, i32 noundef 1664) #11
  %queues = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 15
  %110 = ptrtoint ptr %queues to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call7.i.i, ptr %queues, align 8
  %cmp207 = icmp eq ptr %call7.i.i, null
  br i1 %cmp207, label %do.end212, label %if.end215

do.end212:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  %call214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end215:                                        ; preds = %if.end204
  %fib_lock.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 12
  call void @__raw_spin_lock_init(ptr noundef %fib_lock.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @aac_comm_init.__key, i16 noundef signext 3) #7
  %111 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max_fib_size, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i.i) #7
  %113 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %phys.i.i, align 4, !annotation !91
  %114 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %comm_interface, align 2
  %116 = zext i8 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values)
  switch i8 %115, label %if.end215.if.end26.i.i_crit_edge [
    i8 3, label %if.end215.if.end26.sink.split.i.i_crit_edge
    i8 4, label %if.end215.if.end26.sink.split.i.i_crit_edge310
    i8 5, label %land.lhs.true.i.i
  ]

if.end215.if.end26.sink.split.i.i_crit_edge310:   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i

if.end215.if.end26.sink.split.i.i_crit_edge:      ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i

if.end215.if.end26.i.i_crit_edge:                 ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i.i

land.lhs.true.i.i:                                ; preds = %if.end215
  %sa_firmware.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 66
  %117 = ptrtoint ptr %sa_firmware.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %sa_firmware.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i.i = icmp eq i8 %118, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.end26.sink.split.i.i_crit_edge, label %land.lhs.true15.i.i

land.lhs.true.i.i.if.end26.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i

land.lhs.true15.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i

if.end26.sink.split.i.i:                          ; preds = %land.lhs.true15.i.i, %land.lhs.true.i.i.if.end26.sink.split.i.i_crit_edge, %if.end215.if.end26.sink.split.i.i_crit_edge, %if.end215.if.end26.sink.split.i.i_crit_edge310
  %.sink11.i.i = phi i32 [ 2, %if.end215.if.end26.sink.split.i.i_crit_edge ], [ 2, %if.end215.if.end26.sink.split.i.i_crit_edge310 ], [ 2, %land.lhs.true.i.i.if.end26.sink.split.i.i_crit_edge ], [ 7, %land.lhs.true15.i.i ]
  %.sink9.i.i = phi i32 [ 32, %if.end215.if.end26.sink.split.i.i_crit_edge ], [ 32, %if.end215.if.end26.sink.split.i.i_crit_edge310 ], [ 32, %land.lhs.true.i.i.if.end26.sink.split.i.i_crit_edge ], [ 1024, %land.lhs.true15.i.i ]
  %aac_init_size.0.ph.i.i = phi i32 [ 80, %if.end215.if.end26.sink.split.i.i_crit_edge ], [ 80, %if.end215.if.end26.sink.split.i.i_crit_edge310 ], [ 80, %land.lhs.true.i.i.if.end26.sink.split.i.i_crit_edge ], [ 1088, %land.lhs.true15.i.i ]
  %119 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %scsi_host_ptr, align 8
  %can_queue21.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %120, i32 0, i32 26
  %121 = ptrtoint ptr %can_queue21.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %can_queue21.i.i, align 4
  %add22.i.i = shl i32 %122, %.sink11.i.i
  %mul24.i.i = add i32 %add22.i.i, %.sink9.i.i
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end26.sink.split.i.i, %if.end215.if.end26.i.i_crit_edge
  %host_rrq_size.0.i.i = phi i32 [ 0, %if.end215.if.end26.i.i_crit_edge ], [ %mul24.i.i, %if.end26.sink.split.i.i ]
  %aac_init_size.0.i.i = phi i32 [ 80, %if.end215.if.end26.i.i_crit_edge ], [ %aac_init_size.0.ph.i.i, %if.end26.sink.split.i.i ]
  %add27.i.i = add i32 %host_rrq_size.0.i.i, %112
  %add30.i.i = add i32 %aac_init_size.0.i.i, %add27.i.i
  %add31.i.i = add i32 %add30.i.i, 8784
  %123 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pdev.i.i, align 4
  %dev32.i.i = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev32.i.i, i32 noundef %add31.i.i, ptr noundef nonnull %phys.i.i, i32 noundef 3264, i32 noundef 0) #7
  %cmp33.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp33.i.i, label %if.then219, label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.end26.i.i
  %comm_addr.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 32
  %125 = ptrtoint ptr %comm_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i.i.i, ptr %comm_addr.i.i, align 4
  %126 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %phys.i.i, align 4
  %comm_phys.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 33
  %128 = ptrtoint ptr %comm_phys.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %comm_phys.i.i, align 8
  %comm_size.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 34
  %129 = ptrtoint ptr %comm_size.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add31.i.i, ptr %comm_size.i.i, align 4
  %130 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %comm_interface, align 2
  %.off.i.i = add i8 %131, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i.i)
  %switch.i.i303 = icmp ult i8 %.off.i.i, 3
  br i1 %switch.i.i303, label %if.then52.i.i, label %if.end37.i.i.if.end55.i.i_crit_edge

if.end37.i.i.if.end55.i.i_crit_edge:              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i.i

if.then52.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 %112
  %host_rrq.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 25
  %132 = ptrtoint ptr %host_rrq.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %add.ptr.i.i, ptr %host_rrq.i.i, align 8
  %add53.i.i = add i32 %127, %112
  %host_rrq_pa.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 26
  %133 = ptrtoint ptr %host_rrq_pa.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add53.i.i, ptr %host_rrq_pa.i.i, align 4
  %134 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %host_rrq_size.0.i.i)
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.then52.i.i, %if.end37.i.i.if.end55.i.i_crit_edge
  %add.ptr56.i.i = getelementptr i8, ptr %call.i.i.i, i32 %112
  %add.ptr57.i.i = getelementptr i8, ptr %add.ptr56.i.i, i32 %host_rrq_size.0.i.i
  %init58.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 23
  %135 = ptrtoint ptr %init58.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %add.ptr57.i.i, ptr %init58.i.i, align 8
  %136 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %phys.i.i, align 4
  %add60.i.i = add i32 %137, %add27.i.i
  %init_pa.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 24
  %138 = ptrtoint ptr %init_pa.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %add60.i.i, ptr %init_pa.i.i, align 4
  %139 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %comm_interface, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %140)
  %cmp64.i.i = icmp eq i8 %140, 5
  br i1 %cmp64.i.i, label %if.then66.i.i, label %if.else99.i.i

if.then66.i.i:                                    ; preds = %if.end55.i.i
  %141 = ptrtoint ptr %add.ptr57.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 134217728, ptr %add.ptr57.i.i, align 4
  %init_flags.i.i = getelementptr inbounds %struct._r8, ptr %add.ptr57.i.i, i32 0, i32 3
  %142 = ptrtoint ptr %init_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 822345728, ptr %init_flags.i.i, align 4
  %143 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %max_msix, align 8
  %145 = call i32 @llvm.bswap.i32(i32 %144) #7
  %rr_queue_count.i.i = getelementptr inbounds %struct._r8, ptr %add.ptr57.i.i, i32 0, i32 1
  %146 = ptrtoint ptr %rr_queue_count.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %rr_queue_count.i.i, align 4
  %147 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %scsi_host_ptr, align 8
  %max_sectors.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %148, i32 0, i32 30
  %149 = ptrtoint ptr %max_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %max_sectors.i.i, align 8
  %shl.i.i = shl i32 %150, 9
  %151 = call i32 @llvm.bswap.i32(i32 %shl.i.i) #7
  %max_io_size.i.i = getelementptr inbounds %struct._r8, ptr %add.ptr57.i.i, i32 0, i32 4
  %152 = ptrtoint ptr %max_io_size.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %max_io_size.i.i, align 4
  %reserved2.i.i = getelementptr inbounds %struct._r8, ptr %add.ptr57.i.i, i32 0, i32 7
  %153 = ptrtoint ptr %reserved2.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %reserved2.i.i, align 4
  %reserved1.i.i = getelementptr inbounds %struct._r8, ptr %add.ptr57.i.i, i32 0, i32 6
  %154 = ptrtoint ptr %reserved1.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %reserved1.i.i, align 4
  %max_num_aif.i.i = getelementptr inbounds %struct._r8, ptr %add.ptr57.i.i, i32 0, i32 5
  %155 = ptrtoint ptr %max_num_aif.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %max_num_aif.i.i, align 4
  %156 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %max_msix, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp707.not.i.i = icmp eq i32 %157, 0
  br i1 %cmp707.not.i.i, label %if.then66.i.i.if.end188.sink.split.i.i_crit_edge, label %for.body.lr.ph.i.i

if.then66.i.i.if.end188.sink.split.i.i_crit_edge: ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end188.sink.split.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then66.i.i
  %host_rrq_pa72.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 26
  %vector_cap.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 75
  %rrq.i.i = getelementptr inbounds %struct._r8, ptr %add.ptr57.i.i, i32 0, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %158 = ptrtoint ptr %host_rrq_pa72.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %host_rrq_pa72.i.i, align 4
  %conv73.i.i = zext i32 %159 to i64
  %160 = ptrtoint ptr %vector_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %vector_cap.i.i, align 4
  %mul74.i.i = shl i32 %i.08.i.i, 2
  %mul75.i.i = mul i32 %mul74.i.i, %161
  %conv76.i.i = zext i32 %mul75.i.i to i64
  %add77.i.i = add nuw nsw i64 %conv76.i.i, %conv73.i.i
  %sh.diff.i.i = lshr i64 %add77.i.i, 8
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %162 = and i32 %tr.sh.diff.i.i, 16777216
  %arrayidx.i.i = getelementptr [1 x %struct._rrq], ptr %rrq.i.i, i32 0, i32 %i.08.i.i
  %host_addr_high.i.i = getelementptr [1 x %struct._rrq], ptr %rrq.i.i, i32 0, i32 %i.08.i.i, i32 1
  %163 = ptrtoint ptr %host_addr_high.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %host_addr_high.i.i, align 4
  %conv80.i.i = trunc i64 %add77.i.i to i32
  %164 = call i32 @llvm.bswap.i32(i32 %conv80.i.i) #7
  %165 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %arrayidx.i.i, align 4
  %conv83.i.i = trunc i32 %i.08.i.i to i16
  %msix_id.i.i = getelementptr [1 x %struct._rrq], ptr %rrq.i.i, i32 0, i32 %i.08.i.i, i32 2
  %166 = ptrtoint ptr %msix_id.i.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv83.i.i, ptr %msix_id.i.i, align 4
  %167 = ptrtoint ptr %vector_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %vector_cap.i.i, align 4
  %conv87.i.i = trunc i32 %168 to i16
  %169 = call i16 @llvm.bswap.i16(i16 %conv87.i.i) #7
  %element_count.i.i = getelementptr [1 x %struct._rrq], ptr %rrq.i.i, i32 0, i32 %i.08.i.i, i32 3
  %170 = ptrtoint ptr %element_count.i.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %169, ptr %element_count.i.i, align 2
  %unused.i.i = getelementptr [1 x %struct._rrq], ptr %rrq.i.i, i32 0, i32 %i.08.i.i, i32 5
  %171 = ptrtoint ptr %unused.i.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 0, ptr %unused.i.i, align 2
  %comp_thresh.i.i = getelementptr [1 x %struct._rrq], ptr %rrq.i.i, i32 0, i32 %i.08.i.i, i32 4
  %172 = ptrtoint ptr %comp_thresh.i.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 0, ptr %comp_thresh.i.i, align 4
  %inc.i.i = add nuw i32 %i.08.i.i, 1
  %173 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %max_msix, align 8
  %cmp70.i.i = icmp ult i32 %inc.i.i, %174
  br i1 %cmp70.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end188.sink.split.i.i_crit_edge

for.body.i.i.if.end188.sink.split.i.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end188.sink.split.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.else99.i.i:                                    ; preds = %if.end55.i.i
  %175 = ptrtoint ptr %add.ptr57.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 50331648, ptr %add.ptr57.i.i, align 4
  %176 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %max_fib_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %177)
  %cmp102.not.i.i = icmp eq i32 %177, 512
  %spec.store.select.i.i = select i1 %cmp102.not.i.i, i32 50331648, i32 67108864
  %178 = ptrtoint ptr %add.ptr57.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %spec.store.select.i.i, ptr %add.ptr57.i.i, align 4
  %no_of_msix_vectors.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 1
  %179 = ptrtoint ptr %no_of_msix_vectors.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 16777216, ptr %no_of_msix_vectors.i.i, align 4
  %fsrev.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 18
  %180 = ptrtoint ptr %fsrev.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %fsrev.i.i, align 4
  %182 = call i32 @llvm.bswap.i32(i32 %181) #7
  %fsrev107.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 2
  %183 = ptrtoint ptr %fsrev107.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %fsrev107.i.i, align 4
  %aif_base_va.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 9
  %184 = ptrtoint ptr %aif_base_va.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call.i.i.i, ptr %aif_base_va.i.i, align 8
  %adapter_fibs_virtual_address.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 6
  %185 = ptrtoint ptr %adapter_fibs_virtual_address.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %adapter_fibs_virtual_address.i.i, align 4
  %186 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %phys.i.i, align 4
  %188 = call i32 @llvm.bswap.i32(i32 %187) #7
  %adapter_fibs_physical_address.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 5
  %189 = ptrtoint ptr %adapter_fibs_physical_address.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %adapter_fibs_physical_address.i.i, align 4
  %190 = call i32 @llvm.bswap.i32(i32 %112) #7
  %adapter_fibs_size.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 7
  %191 = ptrtoint ptr %adapter_fibs_size.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %adapter_fibs_size.i.i, align 4
  %adapter_fib_align.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 8
  %192 = ptrtoint ptr %adapter_fib_align.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 131072, ptr %adapter_fib_align.i.i, align 4
  %193 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pdev.i.i, align 4
  %dev109.i.i = getelementptr inbounds %struct.pci_dev, ptr %194, i32 0, i32 44
  %call110.i.i = call i64 @dma_get_required_mask(ptr noundef %dev109.i.i) #7
  %shr111.i.i = lshr i64 %call110.i.i, 12
  %conv112.i.i = trunc i64 %shr111.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %conv112.i.i)
  %cmp113.i.i = icmp ult i32 %conv112.i.i, 1048575
  %195 = call i32 @llvm.bswap.i32(i32 %conv112.i.i) #7
  %spec.select.i.i = select i1 %cmp113.i.i, i32 %195, i32 -61696
  %196 = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 11
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %spec.select.i.i, ptr %196, align 4
  %init_flags119.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 13
  %198 = ptrtoint ptr %init_flags119.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 805306368, ptr %init_flags119.i.i, align 4
  %199 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %scsi_host_ptr, align 8
  %can_queue121.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %200, i32 0, i32 26
  %201 = ptrtoint ptr %can_queue121.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %can_queue121.i.i, align 4
  %add122.i.i = add i32 %202, 8
  %203 = call i32 @llvm.bswap.i32(i32 %add122.i.i) #7
  %max_io_commands.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 14
  %204 = ptrtoint ptr %max_io_commands.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %max_io_commands.i.i, align 4
  %205 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %scsi_host_ptr, align 8
  %max_sectors124.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %206, i32 0, i32 30
  %207 = ptrtoint ptr %max_sectors124.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %max_sectors124.i.i, align 8
  %shl125.i.i = shl i32 %208, 9
  %209 = call i32 @llvm.bswap.i32(i32 %shl125.i.i) #7
  %max_io_size126.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 15
  %210 = ptrtoint ptr %max_io_size126.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %max_io_size126.i.i, align 4
  %211 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %max_fib_size, align 8
  %213 = call i32 @llvm.bswap.i32(i32 %212) #7
  %max_fib_size128.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 16
  %214 = ptrtoint ptr %max_fib_size128.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %max_fib_size128.i.i, align 4
  %max_num_aif129.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 5
  %215 = ptrtoint ptr %max_num_aif129.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %max_num_aif129.i.i, align 8
  %217 = call i32 @llvm.bswap.i32(i32 %216) #7
  %max_num_aif130.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 17
  %218 = ptrtoint ptr %max_num_aif130.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %max_num_aif130.i.i, align 4
  %219 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %comm_interface, align 2
  %221 = zext i8 %220 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %220, label %if.else99.i.i.if.end188.i.i_crit_edge [
    i8 1, label %if.then135.i.i
    i8 3, label %if.then148.i.i
    i8 4, label %if.then167.i.i
  ]

if.else99.i.i.if.end188.i.i_crit_edge:            ; preds = %if.else99.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end188.i.i

if.then135.i.i:                                   ; preds = %if.else99.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %222 = ptrtoint ptr %init_flags119.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 822083584, ptr %init_flags119.i.i, align 4
  br label %if.end188.sink.split.i.i

if.then148.i.i:                                   ; preds = %if.else99.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %223 = ptrtoint ptr %add.ptr57.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 100663296, ptr %add.ptr57.i.i, align 4
  %224 = ptrtoint ptr %init_flags119.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -251658240, ptr %init_flags119.i.i, align 4
  %host_rrq_pa152.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 26
  %host_rrq_addr_high.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 19
  %225 = ptrtoint ptr %host_rrq_addr_high.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %host_rrq_addr_high.i.i, align 4
  %226 = ptrtoint ptr %host_rrq_pa152.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %host_rrq_pa152.i.i, align 4
  %228 = call i32 @llvm.bswap.i32(i32 %227) #7
  %host_rrq_addr_low.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 18
  %229 = ptrtoint ptr %host_rrq_addr_low.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %host_rrq_addr_low.i.i, align 4
  br label %if.end188.sink.split.i.i

if.then167.i.i:                                   ; preds = %if.else99.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %230 = ptrtoint ptr %add.ptr57.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 117440512, ptr %add.ptr57.i.i, align 4
  %231 = ptrtoint ptr %init_flags119.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 -1325334528, ptr %init_flags119.i.i, align 4
  %host_rrq_pa171.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 26
  %host_rrq_addr_high174.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 19
  %232 = ptrtoint ptr %host_rrq_addr_high174.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %host_rrq_addr_high174.i.i, align 4
  %233 = ptrtoint ptr %host_rrq_pa171.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %host_rrq_pa171.i.i, align 4
  %235 = call i32 @llvm.bswap.i32(i32 %234) #7
  %host_rrq_addr_low177.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 18
  %236 = ptrtoint ptr %host_rrq_addr_low177.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %host_rrq_addr_low177.i.i, align 4
  %237 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %max_msix, align 8
  %239 = call i32 @llvm.bswap.i32(i32 %238) #7
  %240 = ptrtoint ptr %no_of_msix_vectors.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %no_of_msix_vectors.i.i, align 4
  br label %if.end188.sink.split.i.i

if.end188.sink.split.i.i:                         ; preds = %if.then167.i.i, %if.then148.i.i, %if.then135.i.i, %for.body.i.i.if.end188.sink.split.i.i_crit_edge, %if.then66.i.i.if.end188.sink.split.i.i_crit_edge
  %.str.34.sink.i.i = phi ptr [ @.str.34, %if.then135.i.i ], [ @.str.40, %if.then167.i.i ], [ @.str.37, %if.then148.i.i ], [ @.str.31, %if.then66.i.i.if.end188.sink.split.i.i_crit_edge ], [ @.str.31, %for.body.i.i.if.end188.sink.split.i.i_crit_edge ]
  %call142.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.34.sink.i.i) #10
  br label %if.end188.i.i

if.end188.i.i:                                    ; preds = %if.end188.sink.split.i.i, %if.else99.i.i.if.end188.i.i_crit_edge
  %add.ptr191.i.i = getelementptr i8, ptr %add.ptr57.i.i, i32 %aac_init_size.0.i.i
  %241 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %phys.i.i, align 4
  %243 = ptrtoint ptr %add.ptr191.i.i to i32
  %and195.i.i = and i32 %243, 15
  %sub196.i.i = sub nuw nsw i32 16, %and195.i.i
  %add.ptr197.i.i = getelementptr i8, ptr %add.ptr191.i.i, i32 %sub196.i.i
  %add194.i.i = add i32 %sub196.i.i, %add30.i.i
  %add198.i.i = add i32 %add194.i.i, %242
  store i32 %add198.i.i, ptr %phys.i.i, align 4
  %244 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %comm_interface, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %245)
  %cmp201.not.i.i = icmp eq i8 %245, 5
  br i1 %cmp201.not.i.i, label %if.end204.thread.i.i, label %if.end204.i.i

if.end204.thread.i.i:                             ; preds = %if.end188.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr2052.i.i = getelementptr i8, ptr %add.ptr197.i.i, i32 8512
  %printfbuf4.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 31
  %246 = ptrtoint ptr %printfbuf4.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %add.ptr2052.i.i, ptr %printfbuf4.i.i, align 8
  br label %if.end221

if.end204.i.i:                                    ; preds = %if.end188.i.i
  %247 = call i32 @llvm.bswap.i32(i32 %add198.i.i) #7
  %comm_header_address.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 3
  %248 = ptrtoint ptr %comm_header_address.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %comm_header_address.i.i, align 4
  %249 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %249)
  %.pr.i.i = load i8, ptr %comm_interface, align 2
  %add.ptr205.i.i = getelementptr i8, ptr %add.ptr197.i.i, i32 8512
  %250 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %phys.i.i, align 4
  %printfbuf.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 31
  %252 = ptrtoint ptr %printfbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %add.ptr205.i.i, ptr %printfbuf.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.pr.i.i)
  %cmp209.not.i.i = icmp eq i8 %.pr.i.i, 5
  br i1 %cmp209.not.i.i, label %if.end204.i.i.if.end221_crit_edge, label %if.then211.i.i

if.end204.i.i.if.end221_crit_edge:                ; preds = %if.end204.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end221

if.then211.i.i:                                   ; preds = %if.end204.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add206.i.i = add i32 %251, 8512
  %253 = call i32 @llvm.bswap.i32(i32 %add206.i.i) #7
  %printfbuf212.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 9
  %254 = ptrtoint ptr %printfbuf212.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %printfbuf212.i.i, align 4
  %printfbufsiz213.i.i = getelementptr inbounds %struct._r7, ptr %add.ptr57.i.i, i32 0, i32 10
  %255 = ptrtoint ptr %printfbufsiz213.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 65536, ptr %printfbufsiz213.i.i, align 4
  br label %if.end221

if.then219:                                       ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call36.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i.i) #7
  %256 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %queues, align 8
  call void @kfree(ptr noundef %257) #7
  br label %cleanup

if.end221:                                        ; preds = %if.then211.i.i, %if.end204.i.i.if.end221_crit_edge, %if.end204.thread.i.i
  %add.ptr2056.i.i = phi ptr [ %add.ptr2052.i.i, %if.end204.thread.i.i ], [ %add.ptr205.i.i, %if.then211.i.i ], [ %add.ptr205.i.i, %if.end204.i.i.if.end221_crit_edge ]
  %258 = call ptr @memset(ptr %add.ptr2056.i.i, i32 0, i32 256)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i.i) #7
  %259 = ptrtoint ptr %add.ptr197.i.i to i32
  %add3.i = add i32 %259, 64
  %260 = inttoptr i32 %add3.i to ptr
  %base.i = getelementptr inbounds %struct.aac_queue, ptr %call7.i.i, i32 0, i32 1
  %261 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %260, ptr %base.i, align 8
  %numpending.i.i = getelementptr inbounds %struct.aac_queue, ptr %call7.i.i, i32 0, i32 9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %numpending.i.i, i32 noundef 4) #7
  %262 = ptrtoint ptr %numpending.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store volatile i32 0, ptr %numpending.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.aac_queue, ptr %call7.i.i, i32 0, i32 10
  %263 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %dev, ptr %dev1.i.i, align 8
  %cmdready.i.i = getelementptr inbounds %struct.aac_queue, ptr %call7.i.i, i32 0, i32 5
  call void @__init_waitqueue_head(ptr noundef %cmdready.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @aac_queue_init.__key) #7
  %cmdq.i.i = getelementptr inbounds %struct.aac_queue, ptr %call7.i.i, i32 0, i32 8
  %264 = ptrtoint ptr %cmdq.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store volatile ptr %cmdq.i.i, ptr %cmdq.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.aac_queue, ptr %call7.i.i, i32 0, i32 8, i32 1
  %265 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %cmdq.i.i, ptr %prev.i.i.i, align 8
  %qfull.i.i = getelementptr inbounds %struct.aac_queue, ptr %call7.i.i, i32 0, i32 4
  call void @__init_waitqueue_head(ptr noundef %qfull.i.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @aac_queue_init.__key.43) #7
  %lockdata.i.i = getelementptr inbounds %struct.aac_queue, ptr %call7.i.i, i32 0, i32 7
  call void @__raw_spin_lock_init(ptr noundef %lockdata.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @aac_queue_init.__key.45, i16 noundef signext 3) #7
  %lock.i.i = getelementptr inbounds %struct.aac_queue, ptr %call7.i.i, i32 0, i32 6
  %266 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %lockdata.i.i, ptr %lock.i.i, align 4
  %producer.i.i = getelementptr inbounds %struct.aac_queue, ptr %call7.i.i, i32 0, i32 2, i32 1
  %267 = ptrtoint ptr %producer.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %add.ptr197.i.i, ptr %producer.i.i, align 8
  %add.ptr.i130.i = getelementptr i32, ptr %add.ptr197.i.i, i32 1
  %consumer.i.i = getelementptr inbounds %struct.aac_queue, ptr %call7.i.i, i32 0, i32 2, i32 2
  %268 = ptrtoint ptr %consumer.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %add.ptr.i130.i, ptr %consumer.i.i, align 4
  %269 = ptrtoint ptr %add.ptr197.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 134217728, ptr %add.ptr197.i.i, align 4
  %270 = load ptr, ptr %consumer.i.i, align 4
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 134217728, ptr %270, align 4
  %entries.i.i = getelementptr inbounds %struct.aac_queue, ptr %call7.i.i, i32 0, i32 3
  %272 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 8, ptr %entries.i.i, align 8
  %add.ptr.i = getelementptr %struct.aac_entry, ptr %260, i32 8
  %add.ptr6.i = getelementptr i32, ptr %add.ptr197.i.i, i32 2
  %base9.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 1, i32 1
  %273 = ptrtoint ptr %base9.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %add.ptr.i, ptr %base9.i, align 8
  %numpending.i131.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 1, i32 9
  %call.i.i.i132.i = call zeroext i1 @__kasan_check_write(ptr noundef %numpending.i131.i, i32 noundef 4) #7
  %274 = ptrtoint ptr %numpending.i131.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store volatile i32 0, ptr %numpending.i131.i, align 4
  %dev1.i133.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 1, i32 10
  %275 = ptrtoint ptr %dev1.i133.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %dev, ptr %dev1.i133.i, align 8
  %cmdready.i134.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 1, i32 5
  call void @__init_waitqueue_head(ptr noundef %cmdready.i134.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @aac_queue_init.__key) #7
  %cmdq.i135.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 1, i32 8
  %276 = ptrtoint ptr %cmdq.i135.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store volatile ptr %cmdq.i135.i, ptr %cmdq.i135.i, align 4
  %prev.i.i136.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 1, i32 8, i32 1
  %277 = ptrtoint ptr %prev.i.i136.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %cmdq.i135.i, ptr %prev.i.i136.i, align 8
  %qfull.i137.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 1, i32 4
  call void @__init_waitqueue_head(ptr noundef %qfull.i137.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @aac_queue_init.__key.43) #7
  %lockdata.i138.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 1, i32 7
  call void @__raw_spin_lock_init(ptr noundef %lockdata.i138.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @aac_queue_init.__key.45, i16 noundef signext 3) #7
  %lock.i139.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 1, i32 6
  %278 = ptrtoint ptr %lock.i139.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %lockdata.i138.i, ptr %lock.i139.i, align 4
  %producer.i140.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1
  %279 = ptrtoint ptr %producer.i140.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %add.ptr6.i, ptr %producer.i140.i, align 8
  %add.ptr.i141.i = getelementptr i32, ptr %add.ptr6.i, i32 1
  %consumer.i142.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 1, i32 2, i32 2
  %280 = ptrtoint ptr %consumer.i142.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %add.ptr.i141.i, ptr %consumer.i142.i, align 4
  %281 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 67108864, ptr %add.ptr6.i, align 4
  %282 = load ptr, ptr %consumer.i142.i, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 67108864, ptr %282, align 4
  %entries.i143.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 1, i32 3
  %284 = ptrtoint ptr %entries.i143.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 4, ptr %entries.i143.i, align 8
  %add.ptr12.i = getelementptr %struct.aac_entry, ptr %260, i32 12
  %add.ptr13.i = getelementptr i32, ptr %add.ptr6.i, i32 2
  %base16.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 2, i32 1
  %285 = ptrtoint ptr %base16.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %add.ptr12.i, ptr %base16.i, align 8
  %numpending.i144.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 2, i32 9
  %call.i.i.i145.i = call zeroext i1 @__kasan_check_write(ptr noundef %numpending.i144.i, i32 noundef 4) #7
  %286 = ptrtoint ptr %numpending.i144.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store volatile i32 0, ptr %numpending.i144.i, align 4
  %dev1.i146.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 2, i32 10
  %287 = ptrtoint ptr %dev1.i146.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %dev, ptr %dev1.i146.i, align 8
  %cmdready.i147.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 2, i32 5
  call void @__init_waitqueue_head(ptr noundef %cmdready.i147.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @aac_queue_init.__key) #7
  %cmdq.i148.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 2, i32 8
  %288 = ptrtoint ptr %cmdq.i148.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store volatile ptr %cmdq.i148.i, ptr %cmdq.i148.i, align 4
  %prev.i.i149.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 2, i32 8, i32 1
  %289 = ptrtoint ptr %prev.i.i149.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %cmdq.i148.i, ptr %prev.i.i149.i, align 8
  %qfull.i150.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 2, i32 4
  call void @__init_waitqueue_head(ptr noundef %qfull.i150.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @aac_queue_init.__key.43) #7
  %lockdata.i151.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 2, i32 7
  call void @__raw_spin_lock_init(ptr noundef %lockdata.i151.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @aac_queue_init.__key.45, i16 noundef signext 3) #7
  %lock.i152.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 2, i32 6
  %290 = ptrtoint ptr %lock.i152.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %lockdata.i151.i, ptr %lock.i152.i, align 4
  %producer.i153.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 2, i32 2, i32 1
  %291 = ptrtoint ptr %producer.i153.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %add.ptr13.i, ptr %producer.i153.i, align 8
  %add.ptr.i154.i = getelementptr i32, ptr %add.ptr13.i, i32 1
  %consumer.i155.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 2, i32 2, i32 2
  %292 = ptrtoint ptr %consumer.i155.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %add.ptr.i154.i, ptr %consumer.i155.i, align 4
  %293 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 131072, ptr %add.ptr13.i, align 4
  %294 = load ptr, ptr %consumer.i155.i, align 4
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 131072, ptr %294, align 4
  %entries.i156.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 2, i32 3
  %296 = ptrtoint ptr %entries.i156.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 512, ptr %entries.i156.i, align 8
  %add.ptr19.i = getelementptr %struct.aac_entry, ptr %260, i32 524
  %add.ptr20.i = getelementptr i32, ptr %add.ptr13.i, i32 2
  %base23.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 3, i32 1
  %297 = ptrtoint ptr %base23.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %add.ptr19.i, ptr %base23.i, align 8
  %numpending.i157.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 3, i32 9
  %call.i.i.i158.i = call zeroext i1 @__kasan_check_write(ptr noundef %numpending.i157.i, i32 noundef 4) #7
  %298 = ptrtoint ptr %numpending.i157.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store volatile i32 0, ptr %numpending.i157.i, align 4
  %dev1.i159.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 3, i32 10
  %299 = ptrtoint ptr %dev1.i159.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %dev, ptr %dev1.i159.i, align 8
  %cmdready.i160.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 3, i32 5
  call void @__init_waitqueue_head(ptr noundef %cmdready.i160.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @aac_queue_init.__key) #7
  %cmdq.i161.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 3, i32 8
  %300 = ptrtoint ptr %cmdq.i161.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store volatile ptr %cmdq.i161.i, ptr %cmdq.i161.i, align 4
  %prev.i.i162.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 3, i32 8, i32 1
  %301 = ptrtoint ptr %prev.i.i162.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %cmdq.i161.i, ptr %prev.i.i162.i, align 8
  %qfull.i163.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 3, i32 4
  call void @__init_waitqueue_head(ptr noundef %qfull.i163.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @aac_queue_init.__key.43) #7
  %lockdata.i164.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 3, i32 7
  call void @__raw_spin_lock_init(ptr noundef %lockdata.i164.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @aac_queue_init.__key.45, i16 noundef signext 3) #7
  %lock.i165.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 3, i32 6
  %302 = ptrtoint ptr %lock.i165.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %lockdata.i164.i, ptr %lock.i165.i, align 4
  %producer.i166.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 3, i32 2, i32 1
  %303 = ptrtoint ptr %producer.i166.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %add.ptr20.i, ptr %producer.i166.i, align 8
  %add.ptr.i167.i = getelementptr i32, ptr %add.ptr20.i, i32 1
  %consumer.i168.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 3, i32 2, i32 2
  %304 = ptrtoint ptr %consumer.i168.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %add.ptr.i167.i, ptr %consumer.i168.i, align 4
  %305 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 67108864, ptr %add.ptr20.i, align 4
  %306 = load ptr, ptr %consumer.i168.i, align 4
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 67108864, ptr %306, align 4
  %entries.i169.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 3, i32 3
  %308 = ptrtoint ptr %entries.i169.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 4, ptr %entries.i169.i, align 8
  %add.ptr26.i = getelementptr %struct.aac_entry, ptr %260, i32 528
  %add.ptr27.i = getelementptr i32, ptr %add.ptr20.i, i32 2
  %base30.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 4, i32 1
  %309 = ptrtoint ptr %base30.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %add.ptr26.i, ptr %base30.i, align 8
  %numpending.i170.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 4, i32 9
  %call.i.i.i171.i = call zeroext i1 @__kasan_check_write(ptr noundef %numpending.i170.i, i32 noundef 4) #7
  %310 = ptrtoint ptr %numpending.i170.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store volatile i32 0, ptr %numpending.i170.i, align 4
  %dev1.i172.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 4, i32 10
  %311 = ptrtoint ptr %dev1.i172.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %dev, ptr %dev1.i172.i, align 8
  %cmdready.i173.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 4, i32 5
  call void @__init_waitqueue_head(ptr noundef %cmdready.i173.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @aac_queue_init.__key) #7
  %cmdq.i174.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 4, i32 8
  %312 = ptrtoint ptr %cmdq.i174.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store volatile ptr %cmdq.i174.i, ptr %cmdq.i174.i, align 4
  %prev.i.i175.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 4, i32 8, i32 1
  %313 = ptrtoint ptr %prev.i.i175.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %cmdq.i174.i, ptr %prev.i.i175.i, align 8
  %qfull.i176.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 4, i32 4
  call void @__init_waitqueue_head(ptr noundef %qfull.i176.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @aac_queue_init.__key.43) #7
  %lockdata.i177.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 4, i32 7
  call void @__raw_spin_lock_init(ptr noundef %lockdata.i177.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @aac_queue_init.__key.45, i16 noundef signext 3) #7
  %lock.i178.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 4, i32 6
  %314 = ptrtoint ptr %lock.i178.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %lockdata.i177.i, ptr %lock.i178.i, align 4
  %producer.i179.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 4, i32 2, i32 1
  %315 = ptrtoint ptr %producer.i179.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %add.ptr27.i, ptr %producer.i179.i, align 8
  %add.ptr.i180.i = getelementptr i32, ptr %add.ptr27.i, i32 1
  %consumer.i181.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 4, i32 2, i32 2
  %316 = ptrtoint ptr %consumer.i181.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %add.ptr.i180.i, ptr %consumer.i181.i, align 4
  %317 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 131072, ptr %add.ptr27.i, align 4
  %318 = load ptr, ptr %consumer.i181.i, align 4
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 131072, ptr %318, align 4
  %entries.i182.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 4, i32 3
  %320 = ptrtoint ptr %entries.i182.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 512, ptr %entries.i182.i, align 8
  %add.ptr33.i = getelementptr %struct.aac_entry, ptr %260, i32 1040
  %add.ptr34.i = getelementptr i32, ptr %add.ptr27.i, i32 2
  %base37.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 5, i32 1
  %321 = ptrtoint ptr %base37.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %add.ptr33.i, ptr %base37.i, align 8
  %numpending.i183.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 5, i32 9
  %call.i.i.i184.i = call zeroext i1 @__kasan_check_write(ptr noundef %numpending.i183.i, i32 noundef 4) #7
  %322 = ptrtoint ptr %numpending.i183.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store volatile i32 0, ptr %numpending.i183.i, align 4
  %dev1.i185.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 5, i32 10
  %323 = ptrtoint ptr %dev1.i185.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %dev, ptr %dev1.i185.i, align 8
  %cmdready.i186.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 5, i32 5
  call void @__init_waitqueue_head(ptr noundef %cmdready.i186.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @aac_queue_init.__key) #7
  %cmdq.i187.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 5, i32 8
  %324 = ptrtoint ptr %cmdq.i187.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store volatile ptr %cmdq.i187.i, ptr %cmdq.i187.i, align 4
  %prev.i.i188.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 5, i32 8, i32 1
  %325 = ptrtoint ptr %prev.i.i188.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %cmdq.i187.i, ptr %prev.i.i188.i, align 8
  %qfull.i189.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 5, i32 4
  call void @__init_waitqueue_head(ptr noundef %qfull.i189.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @aac_queue_init.__key.43) #7
  %lockdata.i190.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 5, i32 7
  call void @__raw_spin_lock_init(ptr noundef %lockdata.i190.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @aac_queue_init.__key.45, i16 noundef signext 3) #7
  %lock.i191.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 5, i32 6
  %326 = ptrtoint ptr %lock.i191.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %lockdata.i190.i, ptr %lock.i191.i, align 4
  %producer.i192.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 5, i32 2, i32 1
  %327 = ptrtoint ptr %producer.i192.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %add.ptr34.i, ptr %producer.i192.i, align 8
  %add.ptr.i193.i = getelementptr i32, ptr %add.ptr34.i, i32 1
  %consumer.i194.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 5, i32 2, i32 2
  %328 = ptrtoint ptr %consumer.i194.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %add.ptr.i193.i, ptr %consumer.i194.i, align 4
  %329 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 67108864, ptr %add.ptr34.i, align 4
  %330 = load ptr, ptr %consumer.i194.i, align 4
  %331 = ptrtoint ptr %330 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 67108864, ptr %330, align 4
  %entries.i195.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 5, i32 3
  %332 = ptrtoint ptr %entries.i195.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 4, ptr %entries.i195.i, align 8
  %add.ptr40.i = getelementptr %struct.aac_entry, ptr %260, i32 1044
  %add.ptr41.i = getelementptr i32, ptr %add.ptr34.i, i32 2
  %base44.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 6, i32 1
  %333 = ptrtoint ptr %base44.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %add.ptr40.i, ptr %base44.i, align 8
  %numpending.i196.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 6, i32 9
  %call.i.i.i197.i = call zeroext i1 @__kasan_check_write(ptr noundef %numpending.i196.i, i32 noundef 4) #7
  %334 = ptrtoint ptr %numpending.i196.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store volatile i32 0, ptr %numpending.i196.i, align 4
  %dev1.i198.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 6, i32 10
  %335 = ptrtoint ptr %dev1.i198.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %dev, ptr %dev1.i198.i, align 8
  %cmdready.i199.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 6, i32 5
  call void @__init_waitqueue_head(ptr noundef %cmdready.i199.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @aac_queue_init.__key) #7
  %cmdq.i200.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 6, i32 8
  %336 = ptrtoint ptr %cmdq.i200.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store volatile ptr %cmdq.i200.i, ptr %cmdq.i200.i, align 4
  %prev.i.i201.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 6, i32 8, i32 1
  %337 = ptrtoint ptr %prev.i.i201.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %cmdq.i200.i, ptr %prev.i.i201.i, align 8
  %qfull.i202.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 6, i32 4
  call void @__init_waitqueue_head(ptr noundef %qfull.i202.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @aac_queue_init.__key.43) #7
  %lockdata.i203.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 6, i32 7
  call void @__raw_spin_lock_init(ptr noundef %lockdata.i203.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @aac_queue_init.__key.45, i16 noundef signext 3) #7
  %lock.i204.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 6, i32 6
  %338 = ptrtoint ptr %lock.i204.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %lockdata.i203.i, ptr %lock.i204.i, align 4
  %producer.i205.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 6, i32 2, i32 1
  %339 = ptrtoint ptr %producer.i205.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %add.ptr41.i, ptr %producer.i205.i, align 8
  %add.ptr.i206.i = getelementptr i32, ptr %add.ptr41.i, i32 1
  %consumer.i207.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 6, i32 2, i32 2
  %340 = ptrtoint ptr %consumer.i207.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr %add.ptr.i206.i, ptr %consumer.i207.i, align 4
  %341 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 134217728, ptr %add.ptr41.i, align 4
  %342 = load ptr, ptr %consumer.i207.i, align 4
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 134217728, ptr %342, align 4
  %entries.i208.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 6, i32 3
  %344 = ptrtoint ptr %entries.i208.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 8, ptr %entries.i208.i, align 8
  %add.ptr47.i = getelementptr %struct.aac_entry, ptr %260, i32 1052
  %add.ptr48.i = getelementptr i32, ptr %add.ptr41.i, i32 2
  %base51.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 7, i32 1
  %345 = ptrtoint ptr %base51.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %add.ptr47.i, ptr %base51.i, align 8
  %numpending.i209.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 7, i32 9
  %call.i.i.i210.i = call zeroext i1 @__kasan_check_write(ptr noundef %numpending.i209.i, i32 noundef 4) #7
  %346 = ptrtoint ptr %numpending.i209.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store volatile i32 0, ptr %numpending.i209.i, align 4
  %dev1.i211.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 7, i32 10
  %347 = ptrtoint ptr %dev1.i211.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %dev, ptr %dev1.i211.i, align 8
  %cmdready.i212.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 7, i32 5
  call void @__init_waitqueue_head(ptr noundef %cmdready.i212.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @aac_queue_init.__key) #7
  %cmdq.i213.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 7, i32 8
  %348 = ptrtoint ptr %cmdq.i213.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store volatile ptr %cmdq.i213.i, ptr %cmdq.i213.i, align 4
  %prev.i.i214.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 7, i32 8, i32 1
  %349 = ptrtoint ptr %prev.i.i214.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %cmdq.i213.i, ptr %prev.i.i214.i, align 8
  %qfull.i215.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 7, i32 4
  call void @__init_waitqueue_head(ptr noundef %qfull.i215.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @aac_queue_init.__key.43) #7
  %lockdata.i216.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 7, i32 7
  call void @__raw_spin_lock_init(ptr noundef %lockdata.i216.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @aac_queue_init.__key.45, i16 noundef signext 3) #7
  %lock.i217.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 7, i32 6
  %producer.i218.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 7, i32 2, i32 1
  %350 = ptrtoint ptr %producer.i218.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr %add.ptr48.i, ptr %producer.i218.i, align 8
  %add.ptr.i219.i = getelementptr i32, ptr %add.ptr48.i, i32 1
  %consumer.i220.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 7, i32 2, i32 2
  %351 = ptrtoint ptr %consumer.i220.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %add.ptr.i219.i, ptr %consumer.i220.i, align 4
  %352 = ptrtoint ptr %add.ptr48.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 67108864, ptr %add.ptr48.i, align 4
  %353 = load ptr, ptr %consumer.i220.i, align 4
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 67108864, ptr %353, align 4
  %entries.i221.i = getelementptr [8 x %struct.aac_queue], ptr %call7.i.i, i32 0, i32 7, i32 3
  %355 = ptrtoint ptr %entries.i221.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 4, ptr %entries.i221.i, align 8
  %356 = ptrtoint ptr %lock.i178.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %lock.i178.i, align 4
  %358 = ptrtoint ptr %lock.i152.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr %357, ptr %lock.i152.i, align 4
  %359 = ptrtoint ptr %lock.i191.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %lock.i191.i, align 4
  %361 = ptrtoint ptr %lock.i165.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %360, ptr %lock.i165.i, align 4
  %362 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %lock.i.i, align 4
  %364 = ptrtoint ptr %lock.i204.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr %363, ptr %lock.i204.i, align 4
  %365 = ptrtoint ptr %lock.i139.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %lock.i139.i, align 4
  %367 = ptrtoint ptr %lock.i217.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %366, ptr %lock.i217.i, align 4
  %call222 = call i32 @aac_fib_setup(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %cmp223 = icmp slt i32 %call222, 0
  br i1 %cmp223, label %if.then225, label %if.end227

if.then225:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  %368 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %queues, align 8
  call void @kfree(ptr noundef %369) #7
  br label %cleanup

if.end227:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  %fib_list = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 16
  %370 = ptrtoint ptr %fib_list to i32
  call void @__asan_store4_noabort(i32 %370)
  store volatile ptr %fib_list, ptr %fib_list, align 4
  %prev.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 16, i32 1
  %371 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %fib_list, ptr %prev.i, align 4
  %sync_fib_list = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 72
  %372 = ptrtoint ptr %sync_fib_list to i32
  call void @__asan_store4_noabort(i32 %372)
  store volatile ptr %sync_fib_list, ptr %sync_fib_list, align 4
  %prev.i304 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 72, i32 1
  %373 = ptrtoint ptr %prev.i304 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %sync_fib_list, ptr %prev.i304, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end227, %if.then225, %if.then219, %do.end212, %do.end118
  %retval.0 = phi ptr [ null, %do.end212 ], [ null, %if.then219 ], [ null, %if.then225 ], [ %dev, %if.end227 ], [ null, %do.end118 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %status) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_fib_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_busy_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wait_for_io_iter(ptr noundef %cmd, ptr nocapture noundef %data, i1 noundef zeroext %rsvd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 9
  %0 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %phase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262, i32 %1)
  %cmp = icmp eq i32 %1, 262
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %add = add i32 %3, 1
  store i32 %add, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_src_access_devreg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_get_required_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @aac_config, !1, !"aac_config", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aacraid/comminit.c", i32 36, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/aacraid/comminit.c", i32 491, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @aac_define_int_mode._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @aac_define_int_mode._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @aac_init_adapter.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/scsi/aacraid/comminit.c", i32 520, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @aac_init_adapter.__key.6, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/scsi/aacraid/comminit.c", i32 521, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @aac_init_adapter.__key.8, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/scsi/aacraid/comminit.c", i32 522, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/aacraid/comminit.c", i32 537, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @aac_init_adapter._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @aac_init_adapter._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/aacraid/comminit.c", i32 586, i32 6}
!27 = !{ptr @aac_init_adapter._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @aac_init_adapter._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/aacraid/comminit.c", i32 628, i32 4}
!31 = !{ptr @aac_init_adapter._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @aac_init_adapter._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/aacraid/comminit.c", i32 639, i32 3}
!35 = !{ptr @aac_init_adapter._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @aac_init_adapter._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/aacraid/comminit.c", i32 297, i32 3}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @aac_wait_for_io_completion._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @aac_wait_for_io_completion._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/aacraid/comminit.c", i32 302, i32 3}
!44 = !{ptr @aac_wait_for_io_completion._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @aac_wait_for_io_completion._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @aac_comm_init.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/scsi/aacraid/comminit.c", i32 382, i32 2}
!48 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/aacraid/comminit.c", i32 89, i32 3}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @aac_alloc_comm._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @aac_alloc_comm._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/aacraid/comminit.c", i32 141, i32 3}
!56 = !{ptr @aac_alloc_comm._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @aac_alloc_comm._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/aacraid/comminit.c", i32 192, i32 4}
!60 = !{ptr @aac_alloc_comm._entry.33, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @aac_alloc_comm._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/aacraid/comminit.c", i32 204, i32 4}
!64 = !{ptr @aac_alloc_comm._entry.36, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @aac_alloc_comm._entry_ptr.38, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/aacraid/comminit.c", i32 219, i32 4}
!68 = !{ptr @aac_alloc_comm._entry.39, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @aac_alloc_comm._entry_ptr.41, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @aac_queue_init.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/scsi/aacraid/comminit.c", i32 263, i32 2}
!72 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @aac_queue_init.__key.43, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/scsi/aacraid/comminit.c", i32 265, i32 2}
!75 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @aac_queue_init.__key.45, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/scsi/aacraid/comminit.c", i32 266, i32 2}
!78 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i64 4997949}
!90 = !{i64 2155099790}
!91 = !{!"auto-init"}
