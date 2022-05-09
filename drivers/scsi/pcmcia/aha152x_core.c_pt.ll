; ModuleID = '/llk/IR_all_yes/drivers/scsi/pcmcia/aha152x_core.c_pt.bc'
source_filename = "../drivers/scsi/pcmcia/aha152x_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.83 = type { ptr, ptr, ptr, ptr, i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.aha152x_setup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.aha152x_scdata = type { ptr, ptr, %struct.scsi_eh_save }
%struct.scsi_eh_save = type { i32, i32, i32, i32, i32, i8, i8, ptr, %struct.scsi_data_buffer, [16 x i8], %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author285 = internal constant [23 x i8] c"author=J\C3\BCrgen Fischer\00", section ".modinfo", align 1
@__UNIQUE_ID_description286 = internal constant [55 x i8] c"description=Adaptec 152x SCSI driver; $Revision: 2.7 $\00", section ".modinfo", align 1
@__UNIQUE_ID_license287 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@aha152x_driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @aha152x_queue, ptr null, ptr @__this_module, ptr @.str.155, ptr null, ptr null, ptr null, ptr null, ptr @aha152x_abort, ptr @aha152x_device_reset, ptr null, ptr @aha152x_bus_reset, ptr null, ptr @aha152x_adjust_queue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aha152x_biosparam, ptr null, ptr @aha152x_show_info, ptr @aha152x_set_info, ptr null, ptr null, ptr null, ptr @.str.14, ptr null, i32 1, i32 7, i16 128, i16 0, i32 0, i32 0, i32 4095, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@aha152x_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013aha152x: scsi_host_alloc failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aha152x_probe_one\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/scsi/aha152x.c\00", [41 x i8] zeroinitializer }, align 32
@aha152x_probe_one._entry_ptr = internal global ptr @aha152x_probe_one._entry, section ".printk_index", align 4
@aha152x_host_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @aha152x_host_list, ptr @aha152x_host_list }, [24 x i8] zeroinitializer }, align 32
@aha152x_probe_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"&QLOCK\00", [25 x i8] zeroinitializer }, align 32
@aha152x_probe_one._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aha152x: resetting bus...\0A\00", [37 x i8] zeroinitializer }, align 32
@aha152x_probe_one._entry_ptr.6 = internal global ptr @aha152x_probe_one._entry.4, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@aha152x_probe_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [160 x i8], [32 x i8] } { [160 x i8] c"\016aha152x%d%s: vital data: rev=%x, io=0x%03lx (0x%03lx/0x%03lx), irq=%d, scsiid=%d, reconnect=%s, parity=%s, synchronous=%s, delay=%d, extended translation=%s\0A\00", [32 x i8] zeroinitializer }, align 32
@aha152x_probe_one._entry_ptr.9 = internal global ptr @aha152x_probe_one._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" (tc1550 mode)\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aha152x\00", [24 x i8] zeroinitializer }, align 32
@aha152x_probe_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013aha152x%d: irq %d busy.\0A\00", [37 x i8] zeroinitializer }, align 32
@aha152x_probe_one._entry_ptr.17 = internal global ptr @aha152x_probe_one._entry.15, section ".printk_index", align 4
@aha152x_probe_one._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016aha152x%d: trying software interrupt, \00", [55 x i8] zeroinitializer }, align 32
@aha152x_probe_one._entry_ptr.20 = internal global ptr @aha152x_probe_one._entry.18, section ".printk_index", align 4
@aha152x_probe_one._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lost.\0A\00", [25 x i8] zeroinitializer }, align 32
@aha152x_probe_one._entry_ptr.23 = internal global ptr @aha152x_probe_one._entry.21, section ".printk_index", align 4
@aha152x_probe_one._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"failed.\0A\00", [23 x i8] zeroinitializer }, align 32
@aha152x_probe_one._entry_ptr.26 = internal global ptr @aha152x_probe_one._entry.24, section ".printk_index", align 4
@aha152x_probe_one._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013aha152x%d: irq %d possibly wrong.  Please verify.\0A\00", [43 x i8] zeroinitializer }, align 32
@aha152x_probe_one._entry_ptr.29 = internal global ptr @aha152x_probe_one._entry.27, section ".printk_index", align 4
@aha152x_probe_one._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ok.\0A\00", [27 x i8] zeroinitializer }, align 32
@aha152x_probe_one._entry_ptr.32 = internal global ptr @aha152x_probe_one._entry.30, section ".printk_index", align 4
@aha152x_probe_one._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013aha152x%d: failed to reassign irq %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@aha152x_probe_one._entry_ptr.35 = internal global ptr @aha152x_probe_one._entry.33, section ".printk_index", align 4
@aha152x_probe_one._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013aha152x%d: failed to add host.\0A\00", [62 x i8] zeroinitializer }, align 32
@aha152x_probe_one._entry_ptr.38 = internal global ptr @aha152x_probe_one._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"queue corrupted at %p\0A\00", [41 x i8] zeroinitializer }, align 32
@intr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@aha152x_tq = internal global { %struct.work_struct, [52 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&aha152x_tq)\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bottom-half already running!?\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@states = internal constant { [14 x %struct.anon.83], [72 x i8] } { [14 x %struct.anon.83] [%struct.anon.83 { ptr @.str.89, ptr null, ptr null, ptr null, i32 0 }, %struct.anon.83 { ptr @.str.90, ptr null, ptr null, ptr null, i32 0 }, %struct.anon.83 { ptr @.str.91, ptr null, ptr @seldo_run, ptr null, i32 0 }, %struct.anon.83 { ptr @.str.92, ptr null, ptr @seldi_run, ptr null, i32 0 }, %struct.anon.83 { ptr @.str.93, ptr null, ptr @selto_run, ptr null, i32 0 }, %struct.anon.83 { ptr @.str.94, ptr null, ptr @busfree_run, ptr null, i32 0 }, %struct.anon.83 { ptr @.str.95, ptr @msgo_init, ptr @msgo_run, ptr @msgo_end, i32 1 }, %struct.anon.83 { ptr @.str.96, ptr @cmd_init, ptr @cmd_run, ptr @cmd_end, i32 1 }, %struct.anon.83 { ptr @.str.97, ptr null, ptr @msgi_run, ptr @msgi_end, i32 1 }, %struct.anon.83 { ptr @.str.98, ptr null, ptr @status_run, ptr null, i32 1 }, %struct.anon.83 { ptr @.str.99, ptr @datai_init, ptr @datai_run, ptr @datai_end, i32 0 }, %struct.anon.83 { ptr @.str.100, ptr @datao_init, ptr @datao_run, ptr @datao_end, i32 0 }, %struct.anon.83 { ptr @.str.101, ptr null, ptr @parerr_run, ptr null, i32 0 }, %struct.anon.83 { ptr @.str.102, ptr null, ptr @rsti_run, ptr null, i32 0 }], [72 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unexpected state (%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@aha152x_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 2406, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aha152x_error\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aha152x_error._entry_ptr = internal global ptr @aha152x_error._entry, section ".printk_index", align 4
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aha152x panic\0A\00", [17 x i8] zeroinitializer }, align 32
@show_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 2470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017\0Aqueue status:\0Aissue_SC:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"show_queues\00", [20 x i8] zeroinitializer }, align 32
@show_queues._entry_ptr = internal global ptr @show_queues._entry, section ".printk_index", align 4
@show_queues._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 2475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017current_SC:\0A\00", [17 x i8] zeroinitializer }, align 32
@show_queues._entry_ptr.54 = internal global ptr @show_queues._entry.52, section ".printk_index", align 4
@show_queues._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 2479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\017none\0A\00", [24 x i8] zeroinitializer }, align 32
@show_queues._entry_ptr.57 = internal global ptr @show_queues._entry.55, section ".printk_index", align 4
@show_queues._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.2, i32 2481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017disconnected_SC:\0A\00", [44 x i8] zeroinitializer }, align 32
@show_queues._entry_ptr.60 = internal global ptr @show_queues._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"request_bufflen=%d; resid=%d; phase |%s%s%s%s%s%s%s%s%s; next=0x%p\00", [61 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"not issued|\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"selecting|\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"identified|\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disconnected|\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"completed|\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spiordy|\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"syncneg|\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aborted|\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"resetted|\00", [22 x i8] zeroinitializer }, align 32
@disp_enintr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 2436, ptr @.str.39, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"enabled interrupts (%s%s%s%s%s%s%s%s%s%s%s%s%s%s)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"disp_enintr\00", [20 x i8] zeroinitializer }, align 32
@disp_enintr._entry_ptr = internal global ptr @disp_enintr._entry, section ".printk_index", align 4
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ENSELDO \00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ENSELDI \00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ENSELINGO \00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ENSWRAP \00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ENSDONE \00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ENSPIORDY \00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ENDMADONE \00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ENSELTIMO \00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ENATNTARG \00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ENPHASEMIS \00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ENBUSFREE \00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ENSCSIPERR \00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ENPHASECHG \00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ENREQINIT \00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reselection missed?\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"seldo\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"seldi\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"selto\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"busfree\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msgo\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msgi\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"datai\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"datao\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parerr\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rsti\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"aha152x: passing bus free condition\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MSGO overflow\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"there's already a completed command %p - will cause abort\0A\00", [37 x i8] zeroinitializer }, align 32
@done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013aha152x: done() called outside of command\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"done\00", [27 x i8] zeroinitializer }, align 32
@done._entry_ptr = internal global ptr @done._entry, section ".printk_index", align 4
@.str.108 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"command should not have been issued yet\0A\00", [55 x i8] zeroinitializer }, align 32
@seldi_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 1610, ptr @.str.87, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"target id unknown (%02x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"seldi_run\00", [22 x i8] zeroinitializer }, align 32
@seldi_run._entry_ptr = internal global ptr @seldi_run._entry, section ".printk_index", align 4
@seldi_run._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.2, i32 1619, ptr @.str.87, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"multiple targets reconnected (%02x)\0A\00", [59 x i8] zeroinitializer }, align 32
@seldi_run._entry_ptr.113 = internal global ptr @seldi_run._entry.111, section ".printk_index", align 4
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot reuse command\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"allocation failed\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@reset_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013aha152x: reset_done w/o completion\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset_done\00", [21 x i8] zeroinitializer }, align 32
@reset_done._entry_ptr = internal global ptr @reset_done._entry, section ".printk_index", align 4
@.str.118 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unexpected MESSAGE OUT phase; rejecting\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"message sent incompletely (%d/%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Synchronous Data Transfer Request was rejected\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"command already sent\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"command sent incompletely (%d/%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MSGI overflow\00", [18 x i8] zeroinitializer }, align 32
@msgi_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 1661, ptr @.str.43, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"message in w/o current command not after reselection\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msgi_run\00", [23 x i8] zeroinitializer }, align 32
@msgi_run._entry_ptr = internal global ptr @msgi_run._entry, section ".printk_index", align 4
@msgi_run._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.2, i32 1669, ptr @.str.43, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"target didn't identify after reselection\0A\00", [54 x i8] zeroinitializer }, align 32
@msgi_run._entry_ptr.128 = internal global ptr @msgi_run._entry.126, section ".printk_index", align 4
@msgi_run._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.125, ptr @.str.2, i32 1680, ptr @.str.43, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"no disconnected command for target %d/%d\0A\00", [54 x i8] zeroinitializer }, align 32
@msgi_run._entry_ptr.131 = internal global ptr @msgi_run._entry.129, section ".printk_index", align 4
@.str.132 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"target was not allowed to disconnect\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"inbound message (MESSAGE REJECT)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SDTR message length!=3\0A\00", [40 x i8] zeroinitializer }, align 32
@msgi_run._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.125, ptr @.str.2, i32 1745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016(scsi%d:%d:%d) \00", [46 x i8] zeroinitializer }, align 32
@msgi_run._entry_ptr.138 = internal global ptr @msgi_run._entry.136, section ".printk_index", align 4
@msgi_run._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.125, ptr @.str.2, i32 1747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@msgi_run._entry_ptr.141 = internal global ptr @msgi_run._entry.139, section ".printk_index", align 4
@.str.142 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"received Synchronous Data Transfer Request invalid - rejected\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"target left before message completed (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"datai timeout\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"datai sempty timeout\00", [43 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"no buffers left for %d(%d) bytes (data overrun!?)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"fifos should be empty and phase should have changed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"manual transfer count differs from automatic (count=%d;stcnt=%d;diff=%d;fifostat=%d)\00", [43 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"datao fifo not empty (%d)\00", [38 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dataout timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parity error\0A\00", [18 x i8] zeroinitializer }, align 32
@rsti_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 2253, ptr @.str.154, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"scsi reset in\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rsti_run\00", [23 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@rsti_run._entry_ptr = internal global ptr @rsti_run._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__this_module = external dso_local global %struct.module, align 128
@.str.155 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Adaptec 152x SCSI driver; $Revision: 2.7 $\00", [53 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cannot abort running or disconnected command\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(done).wait.lock\00", [47 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot reset current device\0A\00", [35 x i8] zeroinitializer }, align 32
@aha152x_biosparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.2, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\015aha152x: unable to verify geometry for disk with >1GB.\0A         using extended translation.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aha152x_biosparam\00", [46 x i8] zeroinitializer }, align 32
@aha152x_biosparam._entry_ptr = internal global ptr @aha152x_biosparam._entry, section ".printk_index", align 4
@aha152x_biosparam._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.2, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [247 x i8], [41 x i8] } { [247 x i8] c"\015aha152x: unable to verify geometry for disk with >1GB.\0A         Using default translation. Please verify yourself.\0A         Perhaps you need to enable extended translation in the driver.\0A         See Documentation/scsi/aha152x.rst for details.\0A\00", [41 x i8] zeroinitializer }, align 32
@aha152x_biosparam._entry_ptr.163 = internal global ptr @aha152x_biosparam._entry.161, section ".printk_index", align 4
@aha152x_biosparam._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.160, ptr @.str.2, i32 1268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"\015aha152x: current partition table is using extended translation.\0A         using it also, although it's not explicitly enabled.\0A\00", [63 x i8] zeroinitializer }, align 32
@aha152x_biosparam._entry_ptr.166 = internal global ptr @aha152x_biosparam._entry.164, section ".printk_index", align 4
@.str.167 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Adaptec 152x SCSI driver; $Revision: 2.7 $\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ioports 0x%04lx to 0x%04lx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"interrupt 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disconnection/reconnection %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"parity checking %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"synchronous transfers %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%d commands currently queued\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"synchronously operating targets (tick=50 ns):\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"target %d: period %dT/%dns; req/ack offset %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0Aqueue status:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"not yet issued commands:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no not yet issued commands\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"current command:\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no current command\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"disconnected commands:\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no disconnected commands\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [286 x i8], [66 x i8] } { [286 x i8] c"statistics:\0Atotal commands:               %d\0Adisconnections:               %d\0Abusfree with check condition: %d\0Abusfree without old command:  %d\0Abusfree without new command:  %d\0Abusfree without done command: %d\0Abusfree without any action:   %d\0Astate      transitions  count        time\0A\00", [66 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%-10s %-12d %-12d %-12ld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%p: target=%d; lun=%d; cmnd=( \00", [33 x i8] zeroinitializer }, align 32
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@.str.186 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x \00", [24 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"); resid=%d; residual=%d; buffers=%d; phase |\00", [50 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"; next=0x%p\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0A%s: %s(%s) \00", [19 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"on bus\00", [25 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"waiting\00", [24 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SCSISEQ( \00", [22 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TARGET MODE \00", [19 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SELO \00", [26 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SELI \00", [26 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RESELI \00", [24 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AUTOATNO \00", [22 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AUTOATNI \00", [22 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AUTOATNP \00", [22 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SCSIRSTO \00", [22 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c");\00", [29 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" SCSISIG(\00", [22 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DATA OUT\00", [23 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DATA IN\00", [24 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"COMMAND\00", [24 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STATUS\00", [25 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MESSAGE OUT\00", [20 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MESSAGE IN\00", [21 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"*invalid*\00", [22 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"); \00", [28 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTSTAT (%s); \00", [17 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hi\00", [29 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"lo\00", [29 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SSTAT( \00", [24 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TARGET \00", [24 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SELDO \00", [25 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SELDI \00", [25 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SELINGO \00", [23 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SWRAP \00", [25 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDONE \00", [25 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPIORDY \00", [23 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMADONE \00", [23 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SELTO \00", [25 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ATNTARG \00", [23 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SCSIRSTI \00", [22 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PHASEMIS \00", [22 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BUSFREE \00", [23 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SCSIPERR \00", [22 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PHASECHG \00", [22 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REQINIT \00", [23 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SXFRCTL0( \00", [21 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SCSIEN \00", [24 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMAEN \00", [25 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CH1 \00", [27 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CLRSTCNT \00", [22 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPIOEN \00", [24 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLRCH1 \00", [24 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SIGNAL( \00", [23 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ATNI \00", [26 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BSYI \00", [26 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"REQI \00", [26 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ACKI \00", [26 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SELID(%02x), \00", [18 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STCNT(%d), \00", [20 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SSTAT2( \00", [23 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SOFFSET \00", [23 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SEMPTY \00", [24 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SFULL \00", [25 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"); SFCNT (%d); \00", [16 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SCSICNT (%d), OFFCNT(%d), \00", [37 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SSTAT4( \00", [23 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SYNCERR \00", [23 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FWERR \00", [25 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FRERR \00", [25 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMACNTRL0( \00", [20 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8BIT\00", [27 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"16BIT\00", [26 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PIO\00", [28 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ENDMA \00", [25 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"INTEN \00", [25 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RSTFIFO \00", [23 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SWINT \00", [25 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMASTAT( \00", [22 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ATDONE \00", [24 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WORDRDY \00", [23 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DFIFOFULL \00", [21 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DFIFOEMP \00", [22 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c")\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enabled interrupts( \00", [43 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aha152x \00", [23 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@aha152x_set_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.277, ptr @.str.2, i32 2802, ptr @.str.87, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aha152x: stats reset.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aha152x_set_info\00", [47 x i8] zeroinitializer }, align 32
@aha152x_set_info._entry_ptr = internal global ptr @aha152x_set_info._entry, section ".printk_index", align 4
@switch.table.aha152x_show_info = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.203, ptr @.str.209, ptr @.str.204, ptr @.str.209, ptr @.str.205, ptr @.str.207, ptr @.str.206, ptr @.str.208], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.278 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 4, i64 7]
@__sancov_gen_cov_switch_values.279 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 12]
@__sancov_gen_cov_switch_values.280 = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 255]
@___asan_gen_ = private constant [38 x i8] c"../drivers/scsi/pcmcia/aha152x_core.c\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [24 x i8] c"aha152x_driver_template\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2905, i32 34 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 721, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [18 x i8] c"aha152x_host_list\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 255, i32 8 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 743, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 757, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 765, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 791, i32 51 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 792, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 798, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 807, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 809, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 814, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 818, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 826, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 832, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1121, i32 16 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1122, i32 9 }
@___asan_gen_.386 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [11 x i8] c"aha152x_tq\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1297, i32 27 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1354, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2302, i32 24 }
@___asan_gen_.398 = private unnamed_addr constant [7 x i8] c"states\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 601, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2371, i32 16 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2372, i32 9 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2406, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2408, i32 8 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2470, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2475, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2479, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2481, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2446, i32 7 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2449, i32 39 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2450, i32 38 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2451, i32 39 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2452, i32 41 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2453, i32 38 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2454, i32 36 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2455, i32 36 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2456, i32 36 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2457, i32 37 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2421, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2223, i32 15 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2223, i32 38 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 602, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 603, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 604, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 605, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 606, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 607, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 608, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 609, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 610, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 611, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 612, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 613, i32 4 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 614, i32 4 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 615, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1525, i32 8 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1532, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1286, i32 9 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1294, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1592, i32 9 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1609, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1618, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 921, i32 33 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 927, i32 33 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 994, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1840, i32 9 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1880, i32 8 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1884, i32 9 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1901, i32 8 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1927, i32 8 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1655, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1659, i32 5 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1668, i32 5 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1677, i32 5 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1698, i32 17 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1699, i32 10 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1716, i32 10 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1738, i32 12 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1745, i32 6 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1747, i32 6 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1757, i32 13 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1822, i32 8 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1983, i32 38 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1996, i32 10 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2036, i32 9 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2058, i32 8 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2063, i32 8 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2110, i32 9 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2144, i32 38 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2241, i32 36 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2253, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2907, i32 13 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1042, i32 7 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1054, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1061, i32 32 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1247, i32 5 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1254, i32 5 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 1266, i32 5 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2820, i32 14 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2822, i32 16 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2824, i32 16 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2825, i32 16 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2827, i32 16 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2829, i32 16 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2831, i32 16 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2834, i32 15 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2837, i32 19 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2843, i32 14 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2846, i32 15 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2850, i32 15 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2854, i32 15 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2857, i32 15 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2860, i32 15 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2864, i32 15 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2869, i32 16 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2889, i32 17 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2492, i32 16 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2496, i32 17 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2498, i32 16 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2518, i32 16 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2525, i32 16 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2525, i32 46 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2525, i32 57 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2528, i32 14 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2530, i32 15 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2532, i32 15 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2534, i32 15 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2536, i32 15 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2538, i32 15 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2540, i32 15 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2542, i32 15 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2544, i32 15 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2545, i32 14 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2547, i32 14 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2551, i32 15 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2554, i32 15 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2557, i32 15 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2560, i32 15 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2563, i32 15 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2566, i32 15 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2569, i32 15 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2573, i32 14 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2575, i32 16 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2575, i32 61 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2575, i32 68 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2577, i32 14 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2580, i32 15 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2582, i32 15 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2584, i32 15 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2586, i32 15 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2588, i32 15 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2590, i32 15 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2592, i32 15 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2594, i32 15 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2598, i32 15 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2600, i32 15 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2602, i32 15 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2604, i32 15 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2606, i32 15 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2608, i32 15 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2610, i32 15 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2612, i32 15 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2657, i32 14 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2661, i32 15 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2663, i32 15 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2665, i32 15 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2667, i32 15 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2669, i32 15 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2671, i32 15 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2674, i32 14 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2678, i32 15 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2682, i32 15 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2684, i32 15 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2686, i32 15 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2689, i32 16 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2691, i32 16 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2693, i32 14 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2697, i32 15 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2699, i32 15 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2701, i32 15 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2702, i32 16 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2705, i32 16 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2707, i32 14 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2710, i32 15 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2712, i32 15 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2714, i32 15 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2717, i32 14 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2719, i32 16 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2719, i32 35 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2719, i32 44 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2720, i32 33 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2720, i32 41 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2721, i32 40 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2721, i32 50 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2723, i32 15 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2725, i32 15 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2727, i32 15 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2729, i32 15 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2732, i32 14 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2735, i32 15 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2737, i32 15 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2739, i32 15 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2741, i32 15 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2742, i32 14 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2744, i32 14 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2782, i32 46 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2786, i32 26 }
@___asan_gen_.1097 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1104 = private unnamed_addr constant [26 x i8] c"../drivers/scsi/aha152x.c\00", align 1
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1104, i32 2802, i32 3 }
@___asan_gen_.1106 = private unnamed_addr constant [31 x i8] c"switch.table.aha152x_show_info\00", align 1
@llvm.compiler.used = appending global [310 x ptr] [ptr @__UNIQUE_ID_author285, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_license287, ptr @aha152x_biosparam._entry, ptr @aha152x_biosparam._entry.161, ptr @aha152x_biosparam._entry.164, ptr @aha152x_biosparam._entry_ptr, ptr @aha152x_biosparam._entry_ptr.163, ptr @aha152x_biosparam._entry_ptr.166, ptr @aha152x_error._entry, ptr @aha152x_error._entry_ptr, ptr @aha152x_probe_one._entry, ptr @aha152x_probe_one._entry.15, ptr @aha152x_probe_one._entry.18, ptr @aha152x_probe_one._entry.21, ptr @aha152x_probe_one._entry.24, ptr @aha152x_probe_one._entry.27, ptr @aha152x_probe_one._entry.30, ptr @aha152x_probe_one._entry.33, ptr @aha152x_probe_one._entry.36, ptr @aha152x_probe_one._entry.4, ptr @aha152x_probe_one._entry.7, ptr @aha152x_probe_one._entry_ptr, ptr @aha152x_probe_one._entry_ptr.17, ptr @aha152x_probe_one._entry_ptr.20, ptr @aha152x_probe_one._entry_ptr.23, ptr @aha152x_probe_one._entry_ptr.26, ptr @aha152x_probe_one._entry_ptr.29, ptr @aha152x_probe_one._entry_ptr.32, ptr @aha152x_probe_one._entry_ptr.35, ptr @aha152x_probe_one._entry_ptr.38, ptr @aha152x_probe_one._entry_ptr.6, ptr @aha152x_probe_one._entry_ptr.9, ptr @aha152x_set_info._entry, ptr @aha152x_set_info._entry_ptr, ptr @disp_enintr._entry, ptr @disp_enintr._entry_ptr, ptr @done._entry, ptr @done._entry_ptr, ptr @msgi_run._entry, ptr @msgi_run._entry.126, ptr @msgi_run._entry.129, ptr @msgi_run._entry.136, ptr @msgi_run._entry.139, ptr @msgi_run._entry_ptr, ptr @msgi_run._entry_ptr.128, ptr @msgi_run._entry_ptr.131, ptr @msgi_run._entry_ptr.138, ptr @msgi_run._entry_ptr.141, ptr @reset_done._entry, ptr @reset_done._entry_ptr, ptr @rsti_run._entry, ptr @rsti_run._entry_ptr, ptr @seldi_run._entry, ptr @seldi_run._entry.111, ptr @seldi_run._entry_ptr, ptr @seldi_run._entry_ptr.113, ptr @show_queues._entry, ptr @show_queues._entry.52, ptr @show_queues._entry.55, ptr @show_queues._entry.58, ptr @show_queues._entry_ptr, ptr @show_queues._entry_ptr.54, ptr @show_queues._entry_ptr.57, ptr @show_queues._entry_ptr.60, ptr @aha152x_driver_template, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @aha152x_host_list, ptr @aha152x_probe_one.__key, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @intr.__key, ptr @aha152x_tq, ptr @.str.41, ptr @.str.42, ptr @states, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.165, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @switch.table.aha152x_show_info], section "llvm.metadata"
@0 = internal global [276 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_host_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_probe_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_probe_one._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_probe_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_probe_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_probe_one._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_probe_one._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_probe_one._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_probe_one._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_probe_one._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_probe_one._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_probe_one._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_tq to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @states to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_queues._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_queues._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_queues._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_enintr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seldi_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seldi_run._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgi_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgi_run._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgi_run._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgi_run._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgi_run._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsti_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_biosparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_biosparam._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 247, i32 288, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_biosparam._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 286, i32 352, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_set_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aha152x_show_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aha152x_probe_one(ptr nocapture noundef readonly %setup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scsi_host_alloc(ptr noundef nonnull @aha152x_driver_template, i32 noundef 872) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 53
  %0 = call ptr @memset(ptr %hostdata, i32 0, i32 864)
  %host_list = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 49, i32 10, i32 1, i32 4
  %1 = ptrtoint ptr %host_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %host_list, ptr %host_list, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 49, i32 10, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %host_list, ptr %prev.i, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @aha152x_host_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %host_list, ptr noundef %3, ptr noundef nonnull @aha152x_host_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %host_list, ptr getelementptr inbounds (%struct.list_head, ptr @aha152x_host_list, i32 0, i32 1), align 4
  %4 = ptrtoint ptr %host_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @aha152x_host_list, ptr %host_list, align 4
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %prev.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %host_list, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %7 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %setup, align 4
  %io_port5 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 44
  %9 = ptrtoint ptr %io_port5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %io_port5, align 8
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 45
  %10 = ptrtoint ptr %n_io_port to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %n_io_port, align 4
  %irq = getelementptr inbounds %struct.aha152x_setup, ptr %setup, i32 0, i32 1
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %irq6 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 47
  %13 = ptrtoint ptr %irq6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %irq6, align 8
  %tc1550 = getelementptr inbounds %struct.aha152x_setup, ptr %setup, i32 0, i32 8
  %14 = ptrtoint ptr %tc1550 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tc1550, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %setup, align 4
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 49, i32 10, i32 1, i32 2
  %18 = ptrtoint ptr %io_port0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %io_port0, align 8
  %19 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %setup, align 4
  br label %do.body20

if.else:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %17, 16
  %io_port015 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 49, i32 10, i32 1, i32 2
  %21 = ptrtoint ptr %io_port015 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %io_port015, align 8
  %22 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %setup, align 4
  %sub = add i32 %23, -16
  br label %do.body20

do.body20:                                        ; preds = %if.else, %if.then8
  %sub.sink = phi i32 [ %20, %if.then8 ], [ %sub, %if.else ]
  %24 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 49, i32 10, i32 1, i32 3
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.sink, ptr %24, align 4
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @aha152x_probe_one.__key, i16 noundef signext 3) #9
  %reconnect = getelementptr inbounds %struct.aha152x_setup, ptr %setup, i32 0, i32 3
  %26 = ptrtoint ptr %reconnect to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reconnect, align 4
  %reconnect26 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 0, i32 1
  %28 = ptrtoint ptr %reconnect26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %reconnect26, align 4
  %synchronous = getelementptr inbounds %struct.aha152x_setup, ptr %setup, i32 0, i32 5
  %29 = ptrtoint ptr %synchronous to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %synchronous, align 4
  %synchronous28 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %synchronous28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %synchronous28, align 4
  %parity = getelementptr inbounds %struct.aha152x_setup, ptr %setup, i32 0, i32 4
  %32 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %parity, align 4
  %parity30 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %parity30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %parity30, align 8
  %delay = getelementptr inbounds %struct.aha152x_setup, ptr %setup, i32 0, i32 6
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  %delay32 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 0, i32 2
  %37 = ptrtoint ptr %delay32 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %delay32, align 8
  %ext_trans = getelementptr inbounds %struct.aha152x_setup, ptr %setup, i32 0, i32 7
  %38 = ptrtoint ptr %ext_trans to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ext_trans, align 4
  %ext_trans34 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %ext_trans34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %ext_trans34, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !530
  tail call void @arm_heavy_mb() #9
  %scsiid = getelementptr inbounds %struct.aha152x_setup, ptr %setup, i32 0, i32 2
  %41 = ptrtoint ptr %scsiid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scsiid, align 4
  %.tr = trunc i32 %42 to i8
  %conv = shl i8 %.tr, 4
  %io_port039 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 49, i32 10, i32 1, i32 2
  %43 = ptrtoint ptr %io_port039 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %io_port039, align 8
  %add40 = add i32 %44, 5
  %and = and i32 %add40, 1048575
  %add41 = or i32 %and, -18874368
  %45 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 %conv) #9, !srcloc !531
  %46 = ptrtoint ptr %scsiid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %scsiid, align 4
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 25
  %48 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %this_id, align 8
  %49 = ptrtoint ptr %reconnect to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reconnect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool45.not = icmp eq i32 %50, 0
  br i1 %tobool45.not, label %do.body20.do.end50_crit_edge, label %if.then46

do.body20.do.end50_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

if.then46:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 26
  %51 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 7, ptr %can_queue, align 4
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %do.body20.do.end50_crit_edge
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !532
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %io_port039 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %io_port039, align 8
  %and59 = and i32 %53, 1048575
  %add60 = or i32 %and59, -18874368
  %54 = inttoptr i32 %add60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 1) #9, !srcloc !531
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end50
  %__ms.0391 = phi i32 [ 256, %do.end50 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0391, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #9
  %tobool62.not = icmp eq i32 %dec, 0
  br i1 %tobool62.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !533
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %io_port039 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %io_port039, align 8
  %and69 = and i32 %57, 1048575
  %add70 = or i32 %and69, -18874368
  %58 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 0) #9, !srcloc !531
  %59 = ptrtoint ptr %delay32 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delay32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool101.not392 = icmp eq i32 %60, 0
  br i1 %tobool101.not392, label %while.end.cond.end104_crit_edge, label %while.end.while.body102_crit_edge

while.end.while.body102_crit_edge:                ; preds = %while.end
  br label %while.body102

while.end.cond.end104_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end104

while.body102:                                    ; preds = %while.body102.while.body102_crit_edge, %while.end.while.body102_crit_edge
  %__ms96.0393 = phi i32 [ %dec100, %while.body102.while.body102_crit_edge ], [ %60, %while.end.while.body102_crit_edge ]
  %dec100 = add i32 %__ms96.0393, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #9
  %tobool101.not = icmp eq i32 %dec100, 0
  br i1 %tobool101.not, label %while.body102.cond.end104_crit_edge, label %while.body102.while.body102_crit_edge

while.body102.while.body102_crit_edge:            ; preds = %while.body102
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body102

while.body102.cond.end104_crit_edge:              ; preds = %while.body102
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end104

cond.end104:                                      ; preds = %while.body102.cond.end104_crit_edge, %while.end.cond.end104_crit_edge
  tail call fastcc void @reset_ports(ptr noundef %call)
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 17
  %62 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %host_no, align 4
  %64 = ptrtoint ptr %tc1550 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tc1550, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool110.not = icmp eq i32 %65, 0
  %cond = select i1 %tobool110.not, ptr @.str.11, ptr @.str.10
  %66 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %24, align 4
  %add113 = add i32 %67, 28
  %and114 = and i32 %add113, 1048575
  %add115 = or i32 %and114, -18874368
  %68 = inttoptr i32 %add115 to ptr
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !535
  %70 = and i8 %69, 7
  %and120 = zext i8 %70 to i32
  %71 = ptrtoint ptr %io_port5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %io_port5, align 8
  %73 = ptrtoint ptr %io_port039 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %io_port039, align 8
  %75 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %24, align 4
  %77 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq6, align 8
  %79 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %this_id, align 8
  %81 = ptrtoint ptr %reconnect26 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %reconnect26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool130.not = icmp eq i32 %82, 0
  %cond131 = select i1 %tobool130.not, ptr @.str.13, ptr @.str.12
  %83 = ptrtoint ptr %parity30 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %parity30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool134.not = icmp eq i32 %84, 0
  %cond135 = select i1 %tobool134.not, ptr @.str.13, ptr @.str.12
  %85 = ptrtoint ptr %synchronous28 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %synchronous28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool138.not = icmp eq i32 %86, 0
  %cond139 = select i1 %tobool138.not, ptr @.str.13, ptr @.str.12
  %87 = ptrtoint ptr %delay32 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay32, align 8
  %89 = ptrtoint ptr %ext_trans34 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ext_trans34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool144.not = icmp eq i32 %90, 0
  %cond145 = select i1 %tobool144.not, ptr @.str.13, ptr @.str.12
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %63, ptr noundef nonnull %cond, i32 noundef %and120, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80, ptr noundef nonnull %cond131, ptr noundef nonnull %cond135, ptr noundef nonnull %cond139, i32 noundef %88, ptr noundef nonnull %cond145) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  tail call void @arm_heavy_mb() #9
  %91 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %24, align 4
  %add152 = add i32 %92, 16
  %and153 = and i32 %add152, 1048575
  %add154 = or i32 %and153, -18874368
  %93 = inttoptr i32 %add154 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  tail call void @arm_heavy_mb() #9
  %94 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %24, align 4
  %add161 = add i32 %95, 17
  %and162 = and i32 %add161, 1048575
  %add163 = or i32 %and162, -18874368
  %96 = inttoptr i32 %add163 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 0) #9, !srcloc !531
  %97 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %irq6, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %98, ptr noundef nonnull @swintr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.14, ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool167.not = icmp eq i32 %call.i, 0
  br i1 %tobool167.not, label %if.end176, label %do.end171

do.end171:                                        ; preds = %cond.end104
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %host_no, align 4
  %101 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %irq6, align 8
  %call175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %100, i32 noundef %102) #12
  br label %out_host_put

if.end176:                                        ; preds = %cond.end104
  %swint = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 0, i32 2, i32 2
  %103 = ptrtoint ptr %swint to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %swint, align 8
  %104 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %host_no, align 4
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %105) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %106 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %24, align 4
  %add192 = add i32 %107, 18
  %and193 = and i32 %add192, 1048575
  %add194 = or i32 %and193, -18874368
  %108 = inttoptr i32 %add194 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 5) #9, !srcloc !531
  br label %while.body200

while.body200:                                    ; preds = %while.body200.while.body200_crit_edge, %if.end176
  %__ms196.0394 = phi i32 [ 1000, %if.end176 ], [ %dec198, %while.body200.while.body200_crit_edge ]
  %dec198 = add nsw i32 %__ms196.0394, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 214748000) #9
  %tobool199.not = icmp eq i32 %dec198, 0
  br i1 %tobool199.not, label %while.end201, label %while.body200.while.body200_crit_edge

while.body200.while.body200_crit_edge:            ; preds = %while.body200
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body200

while.end201:                                     ; preds = %while.body200
  %110 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %irq6, align 8
  %call203 = tail call ptr @free_irq(i32 noundef %111, ptr noundef %call) #9
  %112 = ptrtoint ptr %swint to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %swint, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool206.not = icmp eq i32 %113, 0
  br i1 %tobool206.not, label %if.then207, label %do.end253

if.then207:                                       ; preds = %while.end201
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %24, align 4
  %add211 = add i32 %115, 20
  %and212 = and i32 %add211, 1048575
  %add213 = or i32 %and212, -18874368
  %116 = inttoptr i32 %add213 to ptr
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %116) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !540
  %118 = and i8 %117, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp219.not = icmp eq i8 %118, 0
  %.str.25..str.22 = select i1 %cmp219.not, ptr @.str.25, ptr @.str.22
  %call226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.25..str.22) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !541
  tail call void @arm_heavy_mb() #9
  %119 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %24, align 4
  %add239 = add i32 %120, 18
  %and240 = and i32 %add239, 1048575
  %add241 = or i32 %and240, -18874368
  %121 = inttoptr i32 %add241 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 4) #9, !srcloc !531
  %122 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %host_no, align 4
  %124 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %irq6, align 8
  %call249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %123, i32 noundef %125) #12
  br label %out_host_put

do.end253:                                        ; preds = %while.end201
  %call255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  tail call void @arm_heavy_mb() #9
  %126 = ptrtoint ptr %io_port039 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %io_port039, align 8
  %add261 = add i32 %127, 11
  %and262 = and i32 %add261, 1048575
  %add263 = or i32 %and262, -18874368
  %128 = inttoptr i32 %add263 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 127) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !543
  tail call void @arm_heavy_mb() #9
  %129 = ptrtoint ptr %io_port039 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %io_port039, align 8
  %add270 = add i32 %130, 12
  %and271 = and i32 %add270, 1048575
  %add272 = or i32 %and271, -18874368
  %131 = inttoptr i32 %add272 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %131, i8 -17) #9, !srcloc !531
  %132 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %irq6, align 8
  %call.i386 = tail call i32 @request_threaded_irq(i32 noundef %133, ptr noundef nonnull @intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.14, ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386)
  %tobool276.not = icmp eq i32 %call.i386, 0
  br i1 %tobool276.not, label %if.end285, label %do.end280

do.end280:                                        ; preds = %do.end253
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %host_no, align 4
  %136 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %irq6, align 8
  %call284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %135, i32 noundef %137) #12
  br label %out_host_put

if.end285:                                        ; preds = %do.end253
  %call.i387 = tail call i32 @scsi_add_host_with_dma(ptr noundef %call, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i387)
  %tobool287.not = icmp eq i32 %call.i387, 0
  br i1 %tobool287.not, label %if.end297, label %if.then288

if.then288:                                       ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #11
  %138 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %irq6, align 8
  %call290 = tail call ptr @free_irq(i32 noundef %139, ptr noundef %call) #9
  %140 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %host_no, align 4
  %call296 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %141) #12
  br label %out_host_put

if.end297:                                        ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @scsi_scan_host(ptr noundef %call) #9
  br label %cleanup

out_host_put:                                     ; preds = %if.then288, %do.end280, %if.then207, %do.end171
  %call.i.i388 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %host_list) #9
  br i1 %call.i.i388, label %if.end.i.i389, label %out_host_put.list_del.exit_crit_edge

out_host_put.list_del.exit_crit_edge:             ; preds = %out_host_put
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i389:                                    ; preds = %out_host_put
  call void @__sanitizer_cov_trace_pc() #11
  %142 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i, align 4
  %144 = ptrtoint ptr %host_list to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %host_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev1.i.i.i, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %145, ptr %143, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i389, %out_host_put.list_del.exit_crit_edge
  %148 = ptrtoint ptr %host_list to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr inttoptr (i32 256 to ptr), ptr %host_list, align 4
  %149 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @scsi_host_put(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.end297, %do.end
  %retval.0 = phi ptr [ null, %list_del.exit ], [ %call, %if.end297 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_ports(ptr noundef %shpnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %0 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port1, align 4
  %add = add i32 %1, 18
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 2) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !545
  tail call void @arm_heavy_mb() #9
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %3 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_port0, align 8
  %and7 = and i32 %4, 1048575
  %add8 = or i32 %and7, -18874368
  %5 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !546
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_port0, align 8
  %add15 = add i32 %7, 2
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !547
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_port0, align 8
  %add24 = add i32 %10, 3
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %11 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !548
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_port0, align 8
  %add33 = add i32 %13, 4
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %14 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_port0, align 8
  %add42 = add i32 %16, 11
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %17 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 127) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io_port0, align 8
  %add51 = add i32 %19, 12
  %and52 = and i32 %add51, 1048575
  %add53 = or i32 %and52, -18874368
  %20 = inttoptr i32 %add53 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 -17) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !551
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io_port0, align 8
  %add60 = add i32 %22, 15
  %and61 = and i32 %add60, 1048575
  %add62 = or i32 %and61, -18874368
  %23 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 7) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !552
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_port1, align 4
  %add69 = add i32 %25, 18
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %26 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !553
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %io_port1, align 4
  %add78 = add i32 %28, 19
  %and79 = and i32 %add78, 1048575
  %add80 = or i32 %and79, -18874368
  %29 = inttoptr i32 %add80 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !554
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_port1, align 4
  %add87 = add i32 %31, 24
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %32 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 -15) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !555
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_port0, align 8
  %add96 = add i32 %34, 1
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %35 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 50) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !556
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %io_port0, align 8
  %add105 = add i32 %37, 1
  %and106 = and i32 %add105, 1048575
  %add107 = or i32 %and106, -18874368
  %38 = inttoptr i32 %add107 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 32) #9, !srcloc !531
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 2
  %call113 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call118 = tail call fastcc i32 @setup_expected_interrupts(ptr noundef %shpnt)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call113) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swintr(i32 noundef %irqno, ptr nocapture noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %swint = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 13, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %swint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %swint, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %swint, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !557
  tail call void @arm_heavy_mb() #9
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 49, i32 10, i32 1, i32 3
  %2 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_port1, align 4
  %add = add i32 %3, 18
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 4) #9, !srcloc !531
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intr(i32 noundef %irqno, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 49, i32 10, i32 1, i32 3
  %0 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port1, align 4
  %add = add i32 %1, 28
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !558
  %4 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port1, align 4
  %add6 = add i32 %5, 18
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %6 = inttoptr i32 %add8 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !559
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp14 = icmp eq i8 %7, -1
  %or.cond = select i1 %cmp, i1 %cmp14, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_port1, align 4
  %add19 = add i32 %9, 20
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %10 = inttoptr i32 %add21 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !560
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp27 = icmp eq i8 %12, 0
  br i1 %cmp27, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !561
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_port1, align 4
  %add34 = add i32 %14, 18
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %15 = inttoptr i32 %add36 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !562
  %17 = and i8 %16, -5
  %18 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io_port1, align 4
  %add45 = add i32 %19, 18
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %20 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %17) #9, !srcloc !531
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 2
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %service = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 13, i32 1
  %21 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %service, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp62 = icmp eq i32 %22, 0
  br i1 %cmp62, label %if.then64, label %do.body.if.end71_crit_edge

do.body.if.end71_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then64:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %service to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %service, align 4
  tail call void @__init_work(ptr noundef nonnull @aha152x_tq, i32 noundef 0) #9
  store i32 -64, ptr @aha152x_tq, align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.work_struct, ptr @aha152x_tq, i32 0, i32 3), ptr noundef nonnull @.str.41, ptr noundef nonnull @intr.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  store volatile ptr getelementptr inbounds (%struct.work_struct, ptr @aha152x_tq, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @aha152x_tq, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.work_struct, ptr @aha152x_tq, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @aha152x_tq, i32 0, i32 1, i32 1), align 4
  store ptr @run, ptr getelementptr inbounds (%struct.work_struct, ptr @aha152x_tq, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef nonnull @aha152x_tq) #9
  br label %if.end71

if.end71:                                         ; preds = %if.then64, %do.body.if.end71_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call56) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end71 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aha152x_release(ptr noundef %shpnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %shpnt, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  tail call void @scsi_remove_host(ptr noundef nonnull %shpnt) #9
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 47
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef nonnull %shpnt) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %host_list = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %host_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.list_del.exit_crit_edge

if.end4.list_del.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %host_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end4.list_del.exit_crit_edge
  %8 = ptrtoint ptr %host_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %host_list, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @scsi_host_put(ptr noundef nonnull %shpnt) #9
  br label %return

return:                                           ; preds = %list_del.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aha152x_host_reset_host(ptr noundef %shpnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @aha152x_bus_reset_host(ptr noundef %shpnt)
  tail call fastcc void @reset_ports(ptr noundef %shpnt)
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aha152x_bus_reset_host(ptr noundef %shpnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 53
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call fastcc void @free_hard_reset_SCs(ptr noundef %shpnt, ptr noundef %hostdata)
  %disconnected_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1
  tail call fastcc void @free_hard_reset_SCs(ptr noundef %shpnt, ptr noundef %disconnected_SC)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !563
  tail call void @arm_heavy_mb() #9
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port0, align 8
  %and = and i32 %1, 1048575
  %add11 = or i32 %and, -18874368
  %2 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #9, !srcloc !531
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.01 = phi i32 [ 256, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.01, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #9
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !564
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port0, align 8
  %and19 = and i32 %5, 1048575
  %add20 = or i32 %and19, -18874368
  %6 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #9, !srcloc !531
  %delay = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 2
  %7 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool51.not2 = icmp eq i32 %8, 0
  br i1 %tobool51.not2, label %while.end.cond.end54_crit_edge, label %while.end.while.body52_crit_edge

while.end.while.body52_crit_edge:                 ; preds = %while.end
  br label %while.body52

while.end.cond.end54_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end54

while.body52:                                     ; preds = %while.body52.while.body52_crit_edge, %while.end.while.body52_crit_edge
  %__ms46.03 = phi i32 [ %dec50, %while.body52.while.body52_crit_edge ], [ %8, %while.end.while.body52_crit_edge ]
  %dec50 = add i32 %__ms46.03, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  %tobool51.not = icmp eq i32 %dec50, 0
  br i1 %tobool51.not, label %while.body52.cond.end54_crit_edge, label %while.body52.while.body52_crit_edge

while.body52.while.body52_crit_edge:              ; preds = %while.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body52

while.body52.cond.end54_crit_edge:                ; preds = %while.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end54

cond.end54:                                       ; preds = %while.body52.cond.end54_crit_edge, %while.end.cond.end54_crit_edge
  %call55 = tail call fastcc i32 @setup_expected_interrupts(ptr noundef %shpnt)
  %commands = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %commands to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %commands, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp57 = icmp eq i32 %11, 0
  br i1 %cmp57, label %do.body59, label %cond.end54.if.end_crit_edge

cond.end54.if.end_crit_edge:                      ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body59:                                        ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !565
  tail call void @arm_heavy_mb() #9
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %12 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_port1, align 4
  %add63 = add i32 %13, 26
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %14 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #9, !srcloc !531
  br label %if.end

if.end:                                           ; preds = %do.body59, %cond.end54.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_expected_interrupts(ptr nocapture noundef readonly %shpnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 53
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_SC, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else54, label %if.then

if.then:                                          ; preds = %entry
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 9
  %2 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %phase, align 4
  %or = or i32 %3, 65536
  store volatile i32 %or, ptr %phase, align 4
  %4 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_SC, align 4
  %phase6 = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 22, i32 9
  %6 = ptrtoint ptr %phase6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %phase6, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool7.not, label %do.body30, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %8 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_port0, align 8
  %add = add i32 %9, 12
  %and10 = and i32 %add, 1048575
  %add11 = or i32 %and10, -18874368
  %10 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -128) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !566
  tail call void @arm_heavy_mb() #9
  %disconnected_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1
  %11 = ptrtoint ptr %disconnected_SC to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disconnected_SC, align 8
  %tobool15.not = icmp eq ptr %12, null
  %conv = select i1 %tobool15.not, i8 64, i8 96
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %13 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_port1, align 4
  %add18 = add i32 %14, 16
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %15 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !567
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_port1, align 4
  %add26 = add i32 %17, 17
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %18 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 -128) #9, !srcloc !531
  br label %if.end104

do.body30:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %current_SC, align 4
  %phase35 = getelementptr inbounds %struct.scsi_cmnd, ptr %20, i32 0, i32 22, i32 9
  %21 = ptrtoint ptr %phase35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %phase35, align 4
  %23 = trunc i32 %22 to i8
  %24 = lshr i8 %23, 6
  %conv39 = and i8 %24, 2
  %io_port141 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %25 = ptrtoint ptr %io_port141 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_port141, align 4
  %add42 = add i32 %26, 16
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %27 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv39) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !568
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %io_port141 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_port141, align 4
  %add50 = add i32 %29, 17
  %and51 = and i32 %add50, 1048575
  %add52 = or i32 %and51, -18874368
  %30 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 60) #9, !srcloc !531
  br label %if.end104

if.else54:                                        ; preds = %entry
  %state = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 3
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp = icmp eq i32 %32, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %cmp, label %do.body58, label %do.body75

do.body58:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #11
  %io_port161 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %33 = ptrtoint ptr %io_port161 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_port161, align 4
  %add62 = add i32 %34, 16
  %and63 = and i32 %add62, 1048575
  %add64 = or i32 %and63, -18874368
  %35 = inttoptr i32 %add64 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !569
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %io_port161 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %io_port161, align 4
  %add70 = add i32 %37, 17
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %38 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 60) #9, !srcloc !531
  br label %if.end104

do.body75:                                        ; preds = %if.else54
  %disconnected_SC78 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1
  %39 = ptrtoint ptr %disconnected_SC78 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %disconnected_SC78, align 8
  %tobool79.not = icmp eq ptr %40, null
  %conv81 = select i1 %tobool79.not, i8 0, i8 32
  %io_port183 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %41 = ptrtoint ptr %io_port183 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %io_port183, align 4
  %add84 = add i32 %42, 16
  %and85 = and i32 %add84, 1048575
  %add86 = or i32 %and85, -18874368
  %43 = inttoptr i32 %add86 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %conv81) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !570
  tail call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hostdata, align 8
  %tobool91.not = icmp eq ptr %45, null
  br i1 %tobool91.not, label %lor.rhs, label %do.body75.lor.end_crit_edge

do.body75.lor.end_crit_edge:                      ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #11
  %done_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %46 = ptrtoint ptr %done_SC to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %done_SC, align 4
  %tobool93.not = icmp eq ptr %47, null
  %phi.cast = select i1 %tobool93.not, i8 32, i8 40
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.body75.lor.end_crit_edge
  %48 = phi i8 [ 40, %do.body75.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %49 = ptrtoint ptr %io_port183 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_port183, align 4
  %add99 = add i32 %50, 17
  %and100 = and i32 %add99, 1048575
  %add101 = or i32 %and100, -18874368
  %51 = inttoptr i32 %add101 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %48) #9, !srcloc !531
  br label %if.end104

if.end104:                                        ; preds = %lor.end, %do.body58, %do.body30, %do.body
  %in_intr = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 2
  %52 = ptrtoint ptr %in_intr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %in_intr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool106.not = icmp eq i32 %53, 0
  br i1 %tobool106.not, label %do.body108, label %if.end104.if.end126_crit_edge

if.end104.if.end126_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

do.body108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !571
  tail call void @arm_heavy_mb() #9
  %io_port1111 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %54 = ptrtoint ptr %io_port1111 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_port1111, align 4
  %add112 = add i32 %55, 18
  %and113 = and i32 %add112, 1048575
  %add114 = or i32 %and113, -18874368
  %56 = inttoptr i32 %add114 to ptr
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !572
  %58 = or i8 %57, 4
  %59 = ptrtoint ptr %io_port1111 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %io_port1111, align 4
  %add122 = add i32 %60, 18
  %and123 = and i32 %add122, 1048575
  %add124 = or i32 %and123, -18874368
  %61 = inttoptr i32 %add124 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 %58) #9, !srcloc !531
  br label %if.end126

if.end126:                                        ; preds = %do.body108, %if.end104.if.end126_crit_edge
  %io_port1129 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %62 = ptrtoint ptr %io_port1129 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %io_port1129, align 4
  %add130 = add i32 %63, 20
  %and131 = and i32 %add130, 1048575
  %add132 = or i32 %and131, -18874368
  %64 = inttoptr i32 %add132 to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !573
  %66 = lshr i8 %65, 5
  %.lobit = and i8 %66, 1
  %67 = zext i8 %.lobit to i32
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_hard_reset_SCs(ptr nocapture noundef %shpnt, ptr nocapture noundef %SCs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %SCs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %SCs, align 4
  %tobool.not19 = icmp eq ptr %1, null
  br i1 %tobool.not19, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %commands = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.body.lr.ph
  %ptr.020 = phi ptr [ %1, %while.body.lr.ph ], [ %next.0, %if.end8.while.body_crit_edge ]
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.020, i32 0, i32 23
  %2 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_scribble, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull %ptr.020, ptr noundef nonnull @.str.40, ptr noundef nonnull %ptr.020) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %next.0 = phi ptr [ %5, %if.then ], [ null, %if.else ]
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.020, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %soft_reset = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 41
  %8 = ptrtoint ptr %soft_reset to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load = load i64, ptr %soft_reset, align 4
  %9 = and i64 %bf.load, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool4.not = icmp eq i64 %9, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %10 = ptrtoint ptr %SCs to i32
  call void @__asan_load4_noabort(i32 %10)
  %ptr.023.i = load ptr, ptr %SCs, align 4
  %tobool.not24.i = icmp eq ptr %ptr.023.i, null
  %cmp.not25.i = icmp eq ptr %ptr.023.i, %ptr.020
  %or.cond26.i = or i1 %tobool.not24.i, %cmp.not25.i
  br i1 %or.cond26.i, label %for.end.thread.i, label %if.then5.for.inc.i_crit_edge

if.then5.for.inc.i_crit_edge:                     ; preds = %if.then5
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %if.then5.for.inc.i_crit_edge
  %ptr.027.i = phi ptr [ %ptr.0.i, %for.inc.i.for.inc.i_crit_edge ], [ %ptr.023.i, %if.then5.for.inc.i_crit_edge ]
  %host_scribble.i = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.027.i, i32 0, i32 23
  %11 = ptrtoint ptr %host_scribble.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host_scribble.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %ptr.0.i = load ptr, ptr %12, align 4
  %tobool.not.i = icmp eq ptr %ptr.0.i, null
  %cmp.not.i = icmp eq ptr %ptr.0.i, %ptr.020
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %for.end.i, label %for.inc.i.for.inc.i_crit_edge

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %tobool.not.i, label %for.end.i.remove_SC.exit_crit_edge, label %for.end.i.if.end.i_crit_edge

for.end.i.if.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.end.i.remove_SC.exit_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_SC.exit

for.end.thread.i:                                 ; preds = %if.then5
  br i1 %tobool.not24.i, label %for.end.thread.i.remove_SC.exit_crit_edge, label %for.end.thread.i.if.end.i_crit_edge

for.end.thread.i.if.end.i_crit_edge:              ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.end.thread.i.remove_SC.exit_crit_edge:        ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_SC.exit

if.end.i:                                         ; preds = %for.end.thread.i.if.end.i_crit_edge, %for.end.i.if.end.i_crit_edge
  %SC.sink.i = phi ptr [ %12, %for.end.i.if.end.i_crit_edge ], [ %SCs, %for.end.thread.i.if.end.i_crit_edge ]
  %ptr.0.lcssa3641.i = phi ptr [ %ptr.0.i, %for.end.i.if.end.i_crit_edge ], [ %ptr.023.i, %for.end.thread.i.if.end.i_crit_edge ]
  %.sink.in.in.i = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.0.lcssa3641.i, i32 0, i32 23
  %14 = ptrtoint ptr %.sink.in.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.sink.in.i = load ptr, ptr %.sink.in.in.i, align 4
  %15 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.sink.i = load ptr, ptr %.sink.in.i, align 4
  %16 = ptrtoint ptr %SC.sink.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.sink.i, ptr %SC.sink.i, align 4
  %17 = load ptr, ptr %.sink.in.in.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %17, align 4
  br label %remove_SC.exit

remove_SC.exit:                                   ; preds = %if.end.i, %for.end.thread.i.remove_SC.exit_crit_edge, %for.end.i.remove_SC.exit_crit_edge
  %19 = ptrtoint ptr %commands to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %commands, align 8
  %dec = add i32 %20, -1
  store i32 %dec, ptr %commands, align 8
  %21 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host_scribble, align 4
  tail call void @kfree(ptr noundef %22) #9
  %23 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %host_scribble, align 4
  br label %if.end8

if.end8:                                          ; preds = %remove_SC.exit, %if.end.if.end8_crit_edge
  %tobool.not = icmp eq ptr %next.0, null
  br i1 %tobool.not, label %if.end8.while.end_crit_edge, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end8.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @run(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn11 = load ptr, ptr @aha152x_host_list, align 4
  %cmp.not12 = icmp eq ptr %.pn11, @aha152x_host_list
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %is_complete.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn13 = phi ptr [ %.pn, %is_complete.exit.for.body_crit_edge ], [ %.pn11, %entry.for.body_crit_edge ]
  %add.ptr3 = getelementptr i8, ptr %.pn13, i32 -3312
  %tobool.not.i = icmp eq ptr %add.ptr3, null
  br i1 %tobool.not.i, label %for.body.is_complete.exit_crit_edge, label %do.body1.i

for.body.is_complete.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_complete.exit

do.body1.i:                                       ; preds = %for.body
  %lock.i = getelementptr i8, ptr %.pn13, i32 -848
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %service.i = getelementptr i8, ptr %.pn13, i32 -580
  %0 = ptrtoint ptr %service.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %service.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.i = icmp eq i32 %1, 0
  br i1 %cmp6.i, label %do.body1.i.cleanup.sink.split.i_crit_edge, label %if.end11.i

do.body1.i.cleanup.sink.split.i_crit_edge:        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end11.i:                                       ; preds = %do.body1.i
  %2 = ptrtoint ptr %service.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %service.i, align 4
  %in_intr.i = getelementptr i8, ptr %.pn13, i32 -576
  %3 = ptrtoint ptr %in_intr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in_intr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool15.not.i = icmp eq i32 %4, 0
  br i1 %tobool15.not.i, label %if.end19.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %shost_gendev.i.i = getelementptr i8, ptr %.pn13, i32 -2728
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.47, ptr noundef %shost_gendev.i.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.42) #12
  tail call fastcc void @show_queues(ptr noundef nonnull %add.ptr3) #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #13
  unreachable

if.end19.i:                                       ; preds = %if.end11.i
  %5 = ptrtoint ptr %in_intr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %in_intr.i, align 8
  %io_port0.i.i = getelementptr i8, ptr %.pn13, i32 -8
  %state.i.i = getelementptr i8, ptr %.pn13, i32 -572
  %prevstate.i.i = getelementptr i8, ptr %.pn13, i32 -568
  %current_SC.i.i = getelementptr i8, ptr %.pn13, i32 -860
  %laststate.i.i = getelementptr i8, ptr %.pn13, i32 -564
  %io_port1.i = getelementptr i8, ptr %.pn13, i32 -4
  %count.i = getelementptr i8, ptr %.pn13, i32 -776
  %count_trans.i = getelementptr i8, ptr %.pn13, i32 -720
  %time.i = getelementptr i8, ptr %.pn13, i32 -664
  br label %do.body22.i

do.body22.i:                                      ; preds = %if.end217.i.do.body22.i_crit_edge, %if.end19.i
  %flags.0.i = phi i32 [ %call2.i, %if.end19.i ], [ %call194.i, %if.end217.i.do.body22.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.0.i) #9
  %7 = ptrtoint ptr %io_port0.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_port0.i.i, align 8
  %add.i.i = add i32 %8, 11
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %9 = inttoptr i32 %add1.i.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !574
  %conv.i.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %io_port0.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_port0.i.i, align 8
  %add6.i.i = add i32 %12, 12
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %13 = inttoptr i32 %add8.i.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !575
  %conv12.i.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i.i, align 4
  %17 = ptrtoint ptr %prevstate.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %prevstate.i.i, align 8
  store i32 1, ptr %state.i.i, align 4
  %and17.i.i = and i32 %conv12.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 13, ptr %state.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !576
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %io_port0.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io_port0.i.i, align 8
  %and23.i.i = and i32 %20, 1048575
  %add24.i.i = or i32 %and23.i.i, -18874368
  %21 = inttoptr i32 %add24.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !577
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %io_port0.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_port0.i.i, align 8
  %add31.i.i = add i32 %23, 12
  %and32.i.i = and i32 %add31.i.i, 1048575
  %add33.i.i = or i32 %and32.i.i, -18874368
  %24 = inttoptr i32 %add33.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 32) #9, !srcloc !531
  %.pre.i.i = and i32 %conv.i.i, 32
  br label %if.end130.i.i

if.else.i.i:                                      ; preds = %do.body22.i
  %and35.i.i = and i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp ne i32 %and35.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 5
  %or.cond.i.i = select i1 %tobool36.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end130.thread.i.i, label %if.else43.i.i

if.end130.thread.i.i:                             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %state.i.i, align 4
  br label %land.lhs.true133.i.i

if.else43.i.i:                                    ; preds = %if.else.i.i
  %and44.i.i = and i32 %conv.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.i)
  %tobool45.not.i.i = icmp eq i32 %and44.i.i, 0
  br i1 %tobool45.not.i.i, label %if.else43.i.i.if.else57.i.i_crit_edge, label %land.lhs.true46.i.i

if.else43.i.i.if.else57.i.i_crit_edge:            ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else57.i.i

land.lhs.true46.i.i:                              ; preds = %if.else43.i.i
  %26 = ptrtoint ptr %current_SC.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %current_SC.i.i, align 4
  %tobool48.not.i.i = icmp eq ptr %27, null
  br i1 %tobool48.not.i.i, label %land.lhs.true46.i.i.if.else57.i.i_crit_edge, label %land.lhs.true49.i.i

land.lhs.true46.i.i.if.else57.i.i_crit_edge:      ; preds = %land.lhs.true46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else57.i.i

land.lhs.true49.i.i:                              ; preds = %land.lhs.true46.i.i
  %phase.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %27, i32 0, i32 22, i32 9
  %28 = ptrtoint ptr %phase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %phase.i.i, align 4
  %and52.i.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i.i)
  %tobool53.not.i.i = icmp eq i32 %and52.i.i, 0
  br i1 %tobool53.not.i.i, label %land.lhs.true49.i.i.if.else57.i.i_crit_edge, label %if.then54.i.i

land.lhs.true49.i.i.if.else57.i.i_crit_edge:      ; preds = %land.lhs.true49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else57.i.i

if.then54.i.i:                                    ; preds = %land.lhs.true49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %state.i.i, align 4
  br label %if.end130.i.i

if.else57.i.i:                                    ; preds = %land.lhs.true49.i.i.if.else57.i.i_crit_edge, %land.lhs.true46.i.i.if.else57.i.i_crit_edge, %if.else43.i.i.if.else57.i.i_crit_edge
  %and58.i.i = and i32 %conv12.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i.i)
  %tobool59.not.i.i = icmp eq i32 %and58.i.i, 0
  br i1 %tobool59.not.i.i, label %if.else63.i.i, label %if.then60.i.i

if.then60.i.i:                                    ; preds = %if.else57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %state.i.i, align 4
  br label %if.end130.i.i

if.else63.i.i:                                    ; preds = %if.else57.i.i
  %and64.i.i = and i32 %conv12.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i.i)
  %tobool65.not.i.i = icmp eq i32 %and64.i.i, 0
  br i1 %tobool65.not.i.i, label %if.else78.i.i, label %if.then66.i.i

if.then66.i.i:                                    ; preds = %if.else63.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 5, ptr %state.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !578
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %io_port0.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_port0.i.i, align 8
  %add74.i.i = add i32 %34, 12
  %and75.i.i = and i32 %add74.i.i, 1048575
  %add76.i.i = or i32 %and75.i.i, -18874368
  %35 = inttoptr i32 %add76.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 8) #9, !srcloc !531
  br label %if.end130.i.i

if.else78.i.i:                                    ; preds = %if.else63.i.i
  %and79.i.i = and i32 %conv12.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i.i)
  %tobool80.not.i.i = icmp eq i32 %and79.i.i, 0
  br i1 %tobool80.not.i.i, label %if.else93.i.i, label %if.then81.i.i

if.then81.i.i:                                    ; preds = %if.else78.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 12, ptr %state.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !579
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %io_port0.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %io_port0.i.i, align 8
  %add89.i.i = add i32 %38, 12
  %and90.i.i = and i32 %add89.i.i, 1048575
  %add91.i.i = or i32 %and90.i.i, -18874368
  %39 = inttoptr i32 %add91.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 4) #9, !srcloc !531
  br label %if.end130.i.i

if.else93.i.i:                                    ; preds = %if.else78.i.i
  %and94.i.i = and i32 %conv12.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i.i)
  %tobool95.not.i.i = icmp eq i32 %and94.i.i, 0
  br i1 %tobool95.not.i.i, label %if.else93.i.i.if.end130.i.i_crit_edge, label %if.then96.i.i

if.else93.i.i.if.end130.i.i_crit_edge:            ; preds = %if.else93.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.i.i

if.then96.i.i:                                    ; preds = %if.else93.i.i
  %40 = ptrtoint ptr %io_port0.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_port0.i.i, align 8
  %add100.i.i = add i32 %41, 3
  %and101.i.i = and i32 %add100.i.i, 1048575
  %add102.i.i = or i32 %and101.i.i, -18874368
  %42 = inttoptr i32 %add102.i.i to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !580
  %44 = lshr i8 %43, 5
  %45 = zext i8 %44 to i32
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %45, label %if.then96.i.i.if.end130.i.i_crit_edge [
    i32 7, label %sw.bb.i.i
    i32 5, label %sw.bb110.i.i
    i32 0, label %sw.bb113.i.i
    i32 2, label %sw.bb116.i.i
    i32 6, label %sw.bb119.i.i
    i32 4, label %sw.bb122.i.i
  ]

if.then96.i.i.if.end130.i.i_crit_edge:            ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.i.i

sw.bb.i.i:                                        ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 8, ptr %state.i.i, align 4
  br label %if.end130.i.i

sw.bb110.i.i:                                     ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 6, ptr %state.i.i, align 4
  br label %if.end130.i.i

sw.bb113.i.i:                                     ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 11, ptr %state.i.i, align 4
  br label %if.end130.i.i

sw.bb116.i.i:                                     ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 10, ptr %state.i.i, align 4
  br label %if.end130.i.i

sw.bb119.i.i:                                     ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 9, ptr %state.i.i, align 4
  br label %if.end130.i.i

sw.bb122.i.i:                                     ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 7, ptr %state.i.i, align 4
  br label %if.end130.i.i

if.end130.i.i:                                    ; preds = %sw.bb122.i.i, %sw.bb119.i.i, %sw.bb116.i.i, %sw.bb113.i.i, %sw.bb110.i.i, %sw.bb.i.i, %if.then96.i.i.if.end130.i.i_crit_edge, %if.else93.i.i.if.end130.i.i_crit_edge, %if.then81.i.i, %if.then66.i.i, %if.then60.i.i, %if.then54.i.i, %if.then.i.i
  %and131.pre-phi.i.i = phi i32 [ %and35.i.i, %sw.bb.i.i ], [ %and35.i.i, %sw.bb110.i.i ], [ %and35.i.i, %sw.bb113.i.i ], [ %and35.i.i, %sw.bb116.i.i ], [ %and35.i.i, %sw.bb119.i.i ], [ %and35.i.i, %sw.bb122.i.i ], [ %and35.i.i, %if.then96.i.i.if.end130.i.i_crit_edge ], [ %and35.i.i, %if.then60.i.i ], [ %and35.i.i, %if.then81.i.i ], [ %and35.i.i, %if.else93.i.i.if.end130.i.i_crit_edge ], [ %and35.i.i, %if.then66.i.i ], [ %and35.i.i, %if.then54.i.i ], [ %.pre.i.i, %if.then.i.i ]
  %tobool139.not.i.i = phi i1 [ true, %sw.bb.i.i ], [ true, %sw.bb110.i.i ], [ true, %sw.bb113.i.i ], [ true, %sw.bb116.i.i ], [ true, %sw.bb119.i.i ], [ true, %sw.bb122.i.i ], [ true, %if.then96.i.i.if.end130.i.i_crit_edge ], [ false, %if.then60.i.i ], [ false, %if.then81.i.i ], [ false, %if.else93.i.i.if.end130.i.i_crit_edge ], [ false, %if.then66.i.i ], [ false, %if.then54.i.i ], [ false, %if.then.i.i ]
  %dataphase.0.i.i = phi i32 [ 1, %sw.bb.i.i ], [ 1, %sw.bb110.i.i ], [ 1, %sw.bb113.i.i ], [ 1, %sw.bb116.i.i ], [ 1, %sw.bb119.i.i ], [ 1, %sw.bb122.i.i ], [ 1, %if.then96.i.i.if.end130.i.i_crit_edge ], [ 0, %if.then60.i.i ], [ 0, %if.then81.i.i ], [ 0, %if.else93.i.i.if.end130.i.i_crit_edge ], [ 0, %if.then66.i.i ], [ 0, %if.then54.i.i ], [ 0, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.pre-phi.i.i)
  %tobool132.not.i.i = icmp eq i32 %and131.pre-phi.i.i, 0
  br i1 %tobool132.not.i.i, label %if.end130.i.i.if.end143.i.i_crit_edge, label %if.end130.i.i.land.lhs.true133.i.i_crit_edge

if.end130.i.i.land.lhs.true133.i.i_crit_edge:     ; preds = %if.end130.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true133.i.i

if.end130.i.i.if.end143.i.i_crit_edge:            ; preds = %if.end130.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143.i.i

land.lhs.true133.i.i:                             ; preds = %if.end130.i.i.land.lhs.true133.i.i_crit_edge, %if.end130.thread.i.i
  %dataphase.0198.i.i = phi i32 [ 0, %if.end130.thread.i.i ], [ %dataphase.0.i.i, %if.end130.i.i.land.lhs.true133.i.i_crit_edge ]
  %tobool139.not197.i.i = phi i1 [ false, %if.end130.thread.i.i ], [ %tobool139.not.i.i, %if.end130.i.i.land.lhs.true133.i.i_crit_edge ]
  %53 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp136.not.i.i = icmp eq i32 %54, 3
  %brmerge.i.i = or i1 %tobool139.not197.i.i, %cmp136.not.i.i
  br i1 %brmerge.i.i, label %land.lhs.true133.i.i.if.end143.i.i_crit_edge, label %if.then140.i.i

land.lhs.true133.i.i.if.end143.i.i_crit_edge:     ; preds = %land.lhs.true133.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143.i.i

if.then140.i.i:                                   ; preds = %land.lhs.true133.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %current_SC.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %current_SC.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.87, ptr noundef %56, ptr noundef nonnull @.str.88) #9
  br label %if.end143.i.i

if.end143.i.i:                                    ; preds = %if.then140.i.i, %land.lhs.true133.i.i.if.end143.i.i_crit_edge, %if.end130.i.i.if.end143.i.i_crit_edge
  %dataphase.0199.i.i = phi i32 [ %dataphase.0198.i.i, %land.lhs.true133.i.i.if.end143.i.i_crit_edge ], [ %dataphase.0198.i.i, %if.then140.i.i ], [ %dataphase.0.i.i, %if.end130.i.i.if.end143.i.i_crit_edge ]
  %57 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state.i.i, align 4
  %59 = ptrtoint ptr %prevstate.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %prevstate.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp148.not.i.i = icmp eq i32 %58, %60
  br i1 %cmp148.not.i.i, label %if.end143.i.i.if.end38.i_crit_edge, label %land.lhs.true.i

if.end143.i.i.if.end38.i_crit_edge:               ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %if.end143.i.i
  %61 = ptrtoint ptr %laststate.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %laststate.i.i, align 4
  %62 = and i32 %60, 1073741823
  %63 = lshr i32 12863, %62
  %64 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool32.not.not.i = icmp eq i32 %64, 0
  br i1 %tobool32.not.not.i, label %if.then33.i, label %land.lhs.true.i.if.end38.i_crit_edge

land.lhs.true.i.if.end38.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

if.then33.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %end.i = getelementptr [14 x %struct.anon.83], ptr @states, i32 0, i32 %60, i32 3
  %65 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %end.i, align 4
  tail call void %66(ptr noundef nonnull %add.ptr3) #9
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then33.i, %land.lhs.true.i.if.end38.i_crit_edge, %if.end143.i.i.if.end38.i_crit_edge
  %67 = ptrtoint ptr %prevstate.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %prevstate.i.i, align 8
  %69 = and i32 %68, 1073741823
  %70 = add nsw i32 %69, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %70)
  %tobool42.not.i = icmp ult i32 %70, -4
  br i1 %tobool42.not.i, label %if.end38.i.if.end71.i_crit_edge, label %land.lhs.true43.i

if.end38.i.if.end71.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71.i

land.lhs.true43.i:                                ; preds = %if.end38.i
  %71 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %state.i.i, align 4
  %73 = and i32 %72, 1073741823
  %74 = add nsw i32 %73, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %74)
  %tobool48.not.i = icmp ult i32 %74, -4
  br i1 %tobool48.not.i, label %do.body50.i, label %land.lhs.true43.i.if.end71.i_crit_edge

land.lhs.true43.i.if.end71.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71.i

do.body50.i:                                      ; preds = %land.lhs.true43.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !581
  tail call void @arm_heavy_mb() #9
  %75 = ptrtoint ptr %io_port0.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %io_port0.i.i, align 8
  %add.i = add i32 %76, 1
  %and.i = and i32 %add.i, 1048575
  %add54.i = or i32 %and.i, -18874368
  %77 = inttoptr i32 %add54.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 32) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !582
  tail call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %io_port1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %io_port1.i, align 4
  %add60.i = add i32 %79, 18
  %and61.i = and i32 %add60.i, 1048575
  %add62.i = or i32 %and61.i, -18874368
  %80 = inttoptr i32 %add62.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 0) #9, !srcloc !531
  %81 = ptrtoint ptr %current_SC.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %current_SC.i.i, align 4
  %tobool65.not.i = icmp eq ptr %82, null
  br i1 %tobool65.not.i, label %do.body50.i.if.end71.i_crit_edge, label %if.then66.i

do.body50.i.if.end71.i_crit_edge:                 ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71.i

if.then66.i:                                      ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #11
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %82, i32 0, i32 22, i32 9
  %83 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %phase.i, align 4
  %and69.i = and i32 %84, -129
  store volatile i32 %and69.i, ptr %phase.i, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then66.i, %do.body50.i.if.end71.i_crit_edge, %land.lhs.true43.i.if.end71.i_crit_edge, %if.end38.i.if.end71.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dataphase.0199.i.i)
  %tobool72.not.i = icmp eq i32 %dataphase.0199.i.i, 0
  br i1 %tobool72.not.i, label %if.end71.i.if.end112.i_crit_edge, label %do.body74.i

if.end71.i.if.end112.i_crit_edge:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i

do.body74.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !583
  tail call void @arm_heavy_mb() #9
  %85 = ptrtoint ptr %io_port0.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %io_port0.i.i, align 8
  %add79.i = add i32 %86, 11
  %and80.i = and i32 %add79.i, 1048575
  %add81.i = or i32 %and80.i, -18874368
  %87 = inttoptr i32 %add81.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 1) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !584
  tail call void @arm_heavy_mb() #9
  %88 = ptrtoint ptr %io_port0.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %io_port0.i.i, align 8
  %add88.i = add i32 %89, 3
  %and89.i = and i32 %add88.i, 1048575
  %add90.i = or i32 %and89.i, -18874368
  %90 = inttoptr i32 %add90.i to ptr
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %90) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !585
  %92 = and i8 %91, -32
  %93 = ptrtoint ptr %io_port0.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %io_port0.i.i, align 8
  %add99.i = add i32 %94, 3
  %and100.i = and i32 %add99.i, 1048575
  %add101.i = or i32 %and100.i, -18874368
  %95 = inttoptr i32 %add101.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 %92) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !586
  tail call void @arm_heavy_mb() #9
  %96 = ptrtoint ptr %io_port0.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %io_port0.i.i, align 8
  %add108.i = add i32 %97, 12
  %and109.i = and i32 %add108.i, 1048575
  %add110.i = or i32 %and109.i, -18874368
  %98 = inttoptr i32 %add110.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 2) #9, !srcloc !531
  br label %if.end112.i

if.end112.i:                                      ; preds = %do.body74.i, %if.end71.i.if.end112.i_crit_edge
  %99 = ptrtoint ptr %prevstate.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %prevstate.i.i, align 8
  %101 = and i32 %100, 1073741823
  %102 = add nsw i32 %101, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %102)
  %tobool117.not.i = icmp ult i32 %102, -4
  br i1 %tobool117.not.i, label %land.lhs.true118.i, label %if.end112.i.if.end152.i_crit_edge

if.end112.i.if.end152.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152.i

land.lhs.true118.i:                               ; preds = %if.end112.i
  %103 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %state.i.i, align 4
  %105 = and i32 %104, 1073741823
  %106 = add nsw i32 %105, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %106)
  %tobool123.not.i = icmp ult i32 %106, -4
  br i1 %tobool123.not.i, label %land.lhs.true118.i.if.end152.i_crit_edge, label %do.body125.i

land.lhs.true118.i.if.end152.i_crit_edge:         ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152.i

do.body125.i:                                     ; preds = %land.lhs.true118.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !587
  tail call void @arm_heavy_mb() #9
  %107 = ptrtoint ptr %io_port1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %io_port1.i, align 4
  %add130.i = add i32 %108, 18
  %and131.i = and i32 %add130.i, 1048575
  %add132.i = or i32 %and131.i, -18874368
  %109 = inttoptr i32 %add132.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !588
  tail call void @arm_heavy_mb() #9
  %110 = ptrtoint ptr %io_port0.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %io_port0.i.i, align 8
  %add139.i = add i32 %111, 1
  %and140.i = and i32 %add139.i, 1048575
  %add141.i = or i32 %and140.i, -18874368
  %112 = inttoptr i32 %add141.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 40) #9, !srcloc !531
  %113 = ptrtoint ptr %current_SC.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %current_SC.i.i, align 4
  %tobool145.not.i = icmp eq ptr %114, null
  br i1 %tobool145.not.i, label %do.body125.i.if.end152.i_crit_edge, label %if.then146.i

do.body125.i.if.end152.i_crit_edge:               ; preds = %do.body125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152.i

if.then146.i:                                     ; preds = %do.body125.i
  call void @__sanitizer_cov_trace_pc() #11
  %phase150.i = getelementptr inbounds %struct.scsi_cmnd, ptr %114, i32 0, i32 22, i32 9
  %115 = ptrtoint ptr %phase150.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %phase150.i, align 4
  %or.i = or i32 %116, 128
  store volatile i32 %or.i, ptr %phase150.i, align 4
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then146.i, %do.body125.i.if.end152.i_crit_edge, %land.lhs.true118.i.if.end152.i_crit_edge, %if.end112.i.if.end152.i_crit_edge
  %117 = ptrtoint ptr %prevstate.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %prevstate.i.i, align 8
  %119 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp157.not.i = icmp eq i32 %118, %120
  br i1 %cmp157.not.i, label %if.end152.i.if.end169.i_crit_edge, label %land.lhs.true159.i

if.end152.i.if.end169.i_crit_edge:                ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169.i

land.lhs.true159.i:                               ; preds = %if.end152.i
  %121 = and i32 %120, 1073741823
  %122 = lshr i32 13119, %121
  %123 = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool163.not.not.i = icmp eq i32 %123, 0
  br i1 %tobool163.not.not.i, label %if.then164.i, label %land.lhs.true159.i.if.end169.i_crit_edge

land.lhs.true159.i.if.end169.i_crit_edge:         ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169.i

if.then164.i:                                     ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #11
  %init.i = getelementptr [14 x %struct.anon.83], ptr @states, i32 0, i32 %120, i32 1
  %124 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %init.i, align 4
  tail call void %125(ptr noundef nonnull %add.ptr3) #9
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.then164.i, %land.lhs.true159.i.if.end169.i_crit_edge, %if.end152.i.if.end169.i_crit_edge
  %126 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %state.i.i, align 4
  %128 = and i32 %127, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %if.else.i, label %if.then174.i

if.then174.i:                                     ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #11
  %run.i = getelementptr [14 x %struct.anon.83], ptr @states, i32 0, i32 %127, i32 2
  %130 = ptrtoint ptr %run.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %run.i, align 4
  tail call void %131(ptr noundef nonnull %add.ptr3) #9
  br label %do.body185.i

if.else.i:                                        ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %current_SC.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %current_SC.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %133, ptr noundef nonnull @.str.44, i32 noundef %127) #9
  br label %do.body185.i

do.body185.i:                                     ; preds = %if.else.i, %if.then174.i
  %call194.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %call199.i = tail call fastcc i32 @setup_expected_interrupts(ptr noundef nonnull %add.ptr3) #9
  %134 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %state.i.i, align 4
  %arrayidx203.i = getelementptr [14 x i32], ptr %count.i, i32 0, i32 %135
  %136 = ptrtoint ptr %arrayidx203.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx203.i, align 4
  %inc204.i = add i32 %137, 1
  store i32 %inc204.i, ptr %arrayidx203.i, align 4
  %138 = ptrtoint ptr %prevstate.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %prevstate.i.i, align 8
  %140 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %140)
  %cmp209.not.i = icmp eq i32 %139, %140
  br i1 %cmp209.not.i, label %do.body185.i.if.end217.i_crit_edge, label %if.then211.i

do.body185.i.if.end217.i_crit_edge:               ; preds = %do.body185.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end217.i

if.then211.i:                                     ; preds = %do.body185.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx215.i = getelementptr [14 x i32], ptr %count_trans.i, i32 0, i32 %140
  %141 = ptrtoint ptr %arrayidx215.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx215.i, align 4
  %inc216.i = add i32 %142, 1
  store i32 %inc216.i, ptr %arrayidx215.i, align 4
  br label %if.end217.i

if.end217.i:                                      ; preds = %if.then211.i, %do.body185.i.if.end217.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %143 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %143, %6
  %144 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %state.i.i, align 4
  %arrayidx221.i = getelementptr [14 x i32], ptr %time.i, i32 0, i32 %145
  %146 = ptrtoint ptr %arrayidx221.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx221.i, align 4
  %add222.i = add i32 %sub.i, %147
  store i32 %add222.i, ptr %arrayidx221.i, align 4
  %tobool224.not.i = icmp eq i32 %call199.i, 0
  br i1 %tobool224.not.i, label %do.end225.i, label %if.end217.i.do.body22.i_crit_edge

if.end217.i.do.body22.i_crit_edge:                ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i

do.end225.i:                                      ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #11
  %148 = ptrtoint ptr %in_intr.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %in_intr.i, align 8
  %dec.i = add i32 %149, -1
  store i32 %dec.i, ptr %in_intr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !589
  tail call void @arm_heavy_mb() #9
  %150 = ptrtoint ptr %io_port1.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %io_port1.i, align 4
  %add234.i = add i32 %151, 18
  %and235.i = and i32 %add234.i, 1048575
  %add236.i = or i32 %and235.i, -18874368
  %152 = inttoptr i32 %add236.i to ptr
  %153 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %152) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !590
  %154 = or i8 %153, 4
  %155 = ptrtoint ptr %io_port1.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %io_port1.i, align 4
  %add245.i = add i32 %156, 18
  %and246.i = and i32 %add245.i, 1048575
  %add247.i = or i32 %and246.i, -18874368
  %157 = inttoptr i32 %add247.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %157, i8 %154) #9, !srcloc !531
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.end225.i, %do.body1.i.cleanup.sink.split.i_crit_edge
  %call194.lcssa.sink.i = phi i32 [ %call194.i, %do.end225.i ], [ %call2.i, %do.body1.i.cleanup.sink.split.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call194.lcssa.sink.i) #9
  br label %is_complete.exit

is_complete.exit:                                 ; preds = %cleanup.sink.split.i, %for.body.is_complete.exit_crit_edge
  %158 = ptrtoint ptr %.pn13 to i32
  call void @__asan_load4_noabort(i32 %158)
  %.pn = load ptr, ptr %.pn13, align 4
  %cmp.not = icmp eq ptr %.pn, @aha152x_host_list
  br i1 %cmp.not, label %is_complete.exit.for.end_crit_edge, label %is_complete.exit.for.body_crit_edge

is_complete.exit.for.body_crit_edge:              ; preds = %is_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

is_complete.exit.for.end_crit_edge:               ; preds = %is_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %is_complete.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aha152x_error(ptr noundef %shpnt, ptr noundef %msg) unnamed_addr #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.47, ptr noundef %shost_gendev, ptr noundef nonnull @.str.45, ptr noundef %msg) #12
  tail call fastcc void @show_queues(ptr noundef %shpnt)
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #13
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @show_queues(ptr noundef %shpnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 53
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %ptr.055 = load ptr, ptr %hostdata, align 4
  %tobool.not56 = icmp eq ptr %ptr.055, null
  br i1 %tobool.not56, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ptr.057 = phi ptr [ %ptr.0, %for.body.for.body_crit_edge ], [ %ptr.055, %entry.for.body_crit_edge ]
  tail call fastcc void @show_command(ptr noundef nonnull %ptr.057)
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.057, i32 0, i32 23
  %1 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host_scribble, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %ptr.0 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %ptr.0, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #12
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_SC, align 4
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %do.end24, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @show_command(ptr noundef nonnull %5)
  br label %do.end29

do.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #12
  br label %do.end29

do.end29:                                         ; preds = %do.end24, %if.then
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #12
  %disconnected_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1
  %6 = ptrtoint ptr %disconnected_SC to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disconnected_SC, align 8
  %tobool34.not58 = icmp eq ptr %7, null
  br i1 %tobool34.not58, label %do.end29.for.end41_crit_edge, label %do.end29.for.body35_crit_edge

do.end29.for.body35_crit_edge:                    ; preds = %do.end29
  br label %for.body35

do.end29.for.end41_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end41

for.body35:                                       ; preds = %cond.end.for.body35_crit_edge, %do.end29.for.body35_crit_edge
  %ptr.159 = phi ptr [ %11, %cond.end.for.body35_crit_edge ], [ %7, %do.end29.for.body35_crit_edge ]
  tail call fastcc void @show_command(ptr noundef nonnull %ptr.159)
  %host_scribble37 = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.159, i32 0, i32 23
  %8 = ptrtoint ptr %host_scribble37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_scribble37, align 4
  %tobool38.not = icmp eq ptr %9, null
  br i1 %tobool38.not, label %for.body35.for.end41_crit_edge, label %cond.end

for.body35.for.end41_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end41

cond.end:                                         ; preds = %for.body35
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool34.not = icmp eq ptr %11, null
  br i1 %tobool34.not, label %cond.end.for.end41_crit_edge, label %cond.end.for.body35_crit_edge

cond.end.for.body35_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35

cond.end.for.end41_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end41

for.end41:                                        ; preds = %cond.end.for.end41_crit_edge, %for.body35.for.end41_crit_edge, %do.end29.for.end41_crit_edge
  %io_port1.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %12 = ptrtoint ptr %io_port1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_port1.i, align 4
  %add.i = add i32 %13, 16
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add1.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !591
  %conv.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %io_port1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_port1.i, align 4
  %add6.i = add i32 %17, 17
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %18 = inttoptr i32 %add8.i to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !592
  %conv12.i = zext i8 %19 to i32
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 49
  %and13.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.11, ptr @.str.73
  %and14.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %cond16.i = select i1 %tobool15.not.i, ptr @.str.11, ptr @.str.74
  %and17.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %cond19.i = select i1 %tobool18.not.i, ptr @.str.11, ptr @.str.75
  %and20.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %cond22.i = select i1 %tobool21.not.i, ptr @.str.11, ptr @.str.76
  %and23.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %cond25.i = select i1 %tobool24.not.i, ptr @.str.11, ptr @.str.77
  %and26.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %cond28.i = select i1 %tobool27.not.i, ptr @.str.11, ptr @.str.78
  %and29.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  %cond31.i = select i1 %tobool30.not.i, ptr @.str.11, ptr @.str.79
  %and32.i = and i32 %conv12.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  %cond34.i = select i1 %tobool33.not.i, ptr @.str.11, ptr @.str.80
  %and35.i = and i32 %conv12.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %cond37.i = select i1 %tobool36.not.i, ptr @.str.11, ptr @.str.81
  %and38.i = and i32 %conv12.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  %cond40.i = select i1 %tobool39.not.i, ptr @.str.11, ptr @.str.82
  %and41.i = and i32 %conv12.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  %cond43.i = select i1 %tobool42.not.i, ptr @.str.11, ptr @.str.83
  %and44.i = and i32 %conv12.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %cond46.i = select i1 %tobool45.not.i, ptr @.str.11, ptr @.str.84
  %and47.i = and i32 %conv12.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  %cond49.i = select i1 %tobool48.not.i, ptr @.str.11, ptr @.str.85
  %and50.i = and i32 %conv12.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  %cond52.i = select i1 %tobool51.not.i, ptr @.str.11, ptr @.str.86
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.39, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.71, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond16.i, ptr noundef nonnull %cond19.i, ptr noundef nonnull %cond22.i, ptr noundef nonnull %cond25.i, ptr noundef nonnull %cond28.i, ptr noundef nonnull %cond31.i, ptr noundef nonnull %cond34.i, ptr noundef nonnull %cond37.i, ptr noundef nonnull %cond40.i, ptr noundef nonnull %cond43.i, ptr noundef nonnull %cond46.i, ptr noundef nonnull %cond49.i, ptr noundef nonnull %cond52.i) #12
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @show_command(ptr noundef %ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @scsi_print_command(ptr noundef %ptr) #9
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length.i, align 4
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %ptr, i32 0, i32 5
  %2 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resid_len.i, align 4
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr, i32 0, i32 22, i32 9
  %4 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %phase, align 4
  %6 = load volatile i32, ptr %phase, align 4
  %7 = load volatile i32, ptr %phase, align 4
  %8 = load volatile i32, ptr %phase, align 4
  %9 = load volatile i32, ptr %phase, align 4
  %10 = load volatile i32, ptr %phase, align 4
  %11 = load volatile i32, ptr %phase, align 4
  %12 = load volatile i32, ptr %phase, align 4
  %13 = load volatile i32, ptr %phase, align 4
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr, i32 0, i32 23
  %14 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host_scribble, align 4
  %tobool42.not = icmp eq ptr %15, null
  br i1 %tobool42.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond44 = phi ptr [ %17, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %and39 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %cond41 = select i1 %tobool40.not, ptr @.str.11, ptr @.str.70
  %and34 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %cond36 = select i1 %tobool35.not, ptr @.str.11, ptr @.str.69
  %and29 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %cond31 = select i1 %tobool30.not, ptr @.str.11, ptr @.str.68
  %and24 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %cond26 = select i1 %tobool25.not, ptr @.str.11, ptr @.str.67
  %and19 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %cond21 = select i1 %tobool20.not, ptr @.str.11, ptr @.str.66
  %and14 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.11, ptr @.str.65
  %and9 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond11 = select i1 %tobool10.not, ptr @.str.11, ptr @.str.64
  %and4 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %cond6 = select i1 %tobool5.not, ptr @.str.11, ptr @.str.63
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.11, ptr @.str.62
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.39, ptr noundef %ptr, ptr noundef nonnull @.str.61, i32 noundef %1, i32 noundef %3, ptr noundef nonnull %cond, ptr noundef nonnull %cond6, ptr noundef nonnull %cond11, ptr noundef nonnull %cond16, ptr noundef nonnull %cond21, ptr noundef nonnull %cond26, ptr noundef nonnull %cond31, ptr noundef nonnull %cond36, ptr noundef nonnull %cond41, ptr noundef %cond44) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_command(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @seldo_run(ptr noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !593
  tail call void @arm_heavy_mb() #9
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port0, align 8
  %add = add i32 %1, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !594
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_port0, align 8
  %add6 = add i32 %4, 12
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %5 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 8) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !595
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_port0, align 8
  %add14 = add i32 %7, 12
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %8 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 2) #9, !srcloc !531
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %current_SC, align 4
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %10, i32 0, i32 22, i32 9
  %11 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %phase, align 4
  %and19 = and i32 %12, -4
  store volatile i32 %and19, ptr %phase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !596
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_port0, align 8
  %and25 = and i32 %14, 1048575
  %add26 = or i32 %and25, -18874368
  %15 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #9, !srcloc !531
  %16 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_port0, align 8
  %add30 = add i32 %17, 11
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %18 = inttoptr i32 %add32 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !597
  %20 = and i8 %19, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  br i1 %cmp, label %if.then, label %do.body39

if.then:                                          ; preds = %entry
  %21 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %current_SC, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %22, ptr noundef nonnull @.str.103) #9
  %23 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %current_SC, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %done_SC.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %25 = ptrtoint ptr %done_SC.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %done_SC.i, align 4
  %tobool2.not.i = icmp eq ptr %26, null
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %24, ptr noundef nonnull @.str.105, ptr noundef nonnull %26) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %27 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %current_SC, align 4
  %29 = ptrtoint ptr %done_SC.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %done_SC.i, align 4
  store ptr null, ptr %current_SC, align 4
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %30 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %result.i.i, align 4
  %and.i.i = and i32 %31, -256
  store i32 %and.i.i, ptr %result.i.i, align 4
  %32 = load ptr, ptr %done_SC.i, align 4
  %result.i28.i = getelementptr inbounds %struct.scsi_cmnd, ptr %32, i32 0, i32 24
  %33 = ptrtoint ptr %result.i28.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %result.i28.i, align 4
  %and.i29.i = and i32 %34, -16711681
  %or.i31.i = or i32 %and.i29.i, 65536
  store i32 %or.i31.i, ptr %result.i28.i, align 4
  br label %return

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #12
  br label %return

do.body39:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !598
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io_port0, align 8
  %add43 = add i32 %36, 11
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %37 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 64) #9, !srcloc !531
  %msgo_len = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %msgo_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msgo_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %39)
  %cmp48 = icmp slt i32 %39, 256
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body39
  %reconnect = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 1
  %40 = ptrtoint ptr %reconnect to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reconnect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not = icmp eq i32 %41, 0
  %or = select i1 %tobool.not, i32 128, i32 192
  %conv51 = zext i32 %or to i64
  %42 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %current_SC, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %lun, align 8
  %and54 = and i64 %47, 7
  %or55 = or i64 %and54, %conv51
  %conv56 = trunc i64 %or55 to i8
  %msgo = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 0, i32 2
  %inc = add nsw i32 %39, 1
  %48 = ptrtoint ptr %msgo_len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %inc, ptr %msgo_len, align 8
  %arrayidx = getelementptr [256 x i8], ptr %msgo, i32 0, i32 %39
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv56, ptr %arrayidx, align 1
  %50 = load ptr, ptr %current_SC, align 4
  %phase63 = getelementptr inbounds %struct.scsi_cmnd, ptr %50, i32 0, i32 22, i32 9
  %51 = ptrtoint ptr %phase63 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %phase63, align 4
  %and64 = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.else, label %if.then66

cond.false:                                       ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.47, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.104) #12
  tail call fastcc void @show_queues(ptr noundef %shpnt) #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #13
  unreachable

if.then66:                                        ; preds = %cond.true
  %53 = ptrtoint ptr %msgo_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msgo_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %54)
  %cmp69 = icmp slt i32 %54, 256
  br i1 %cmp69, label %cond.true71, label %cond.false78

cond.true71:                                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  %inc76 = add nsw i32 %54, 1
  %55 = ptrtoint ptr %msgo_len to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %inc76, ptr %msgo_len, align 8
  %arrayidx77 = getelementptr [256 x i8], ptr %msgo, i32 0, i32 %54
  %56 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 6, ptr %arrayidx77, align 1
  br label %do.body136

cond.false78:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  %shost_gendev.i191 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.47, ptr noundef %shost_gendev.i191, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.104) #12
  tail call fastcc void @show_queues(ptr noundef %shpnt) #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #13
  unreachable

if.else:                                          ; preds = %cond.true
  %57 = ptrtoint ptr %phase63 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %phase63, align 4
  %and84 = and i32 %58, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.else100, label %if.then86

if.then86:                                        ; preds = %if.else
  %59 = ptrtoint ptr %msgo_len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %msgo_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %60)
  %cmp89 = icmp slt i32 %60, 256
  br i1 %cmp89, label %cond.true91, label %cond.false98

cond.true91:                                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  %inc96 = add nsw i32 %60, 1
  %61 = ptrtoint ptr %msgo_len to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %inc96, ptr %msgo_len, align 8
  %arrayidx97 = getelementptr [256 x i8], ptr %msgo, i32 0, i32 %60
  %62 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 12, ptr %arrayidx97, align 1
  br label %do.body136

cond.false98:                                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  %shost_gendev.i193 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.47, ptr noundef %shost_gendev.i193, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.104) #12
  tail call fastcc void @show_queues(ptr noundef %shpnt) #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #13
  unreachable

if.else100:                                       ; preds = %if.else
  %syncneg = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 9
  %device104 = getelementptr inbounds %struct.scsi_cmnd, ptr %50, i32 0, i32 1
  %63 = ptrtoint ptr %device104 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device104, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %64, i32 0, i32 16
  %65 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id, align 8
  %arrayidx105 = getelementptr [8 x i8], ptr %syncneg, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp107 = icmp eq i8 %68, 0
  br i1 %cmp107, label %land.lhs.true, label %if.else100.do.body136_crit_edge

if.else100.do.body136_crit_edge:                  ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body136

land.lhs.true:                                    ; preds = %if.else100
  %synchronous = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 1, i32 2
  %69 = ptrtoint ptr %synchronous to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %synchronous, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool110.not = icmp eq i32 %70, 0
  br i1 %tobool110.not, label %land.lhs.true.do.body136_crit_edge, label %if.then111

land.lhs.true.do.body136_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body136

if.then111:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %phase63 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %phase63, align 4
  %or116 = or i32 %72, 256
  store volatile i32 %or116, ptr %phase63, align 4
  %73 = ptrtoint ptr %msgo_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %msgo_len, align 8
  %arrayidx121 = getelementptr [256 x i8], ptr %msgo, i32 0, i32 %74
  %call122 = tail call i32 @spi_populate_sync_msg(ptr noundef %arrayidx121, i32 noundef 50, i32 noundef 8) #9
  %75 = ptrtoint ptr %msgo_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msgo_len, align 8
  %add125 = add i32 %76, %call122
  store i32 %add125, ptr %msgo_len, align 8
  %77 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %current_SC, align 4
  %device130 = getelementptr inbounds %struct.scsi_cmnd, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %device130 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device130, align 4
  %id131 = getelementptr inbounds %struct.scsi_device, ptr %80, i32 0, i32 16
  %81 = ptrtoint ptr %id131 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %id131, align 8
  %arrayidx132 = getelementptr [8 x i8], ptr %syncneg, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %arrayidx132, align 1
  br label %do.body136

do.body136:                                       ; preds = %if.then111, %land.lhs.true.do.body136_crit_edge, %if.else100.do.body136_crit_edge, %cond.true91, %cond.true71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !599
  tail call void @arm_heavy_mb() #9
  %syncrate = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 7
  %84 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %current_SC, align 4
  %device141 = getelementptr inbounds %struct.scsi_cmnd, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %device141 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device141, align 4
  %id142 = getelementptr inbounds %struct.scsi_device, ptr %87, i32 0, i32 16
  %88 = ptrtoint ptr %id142 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %id142, align 8
  %arrayidx143 = getelementptr [8 x i8], ptr %syncrate, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx143, align 1
  %92 = and i8 %91, 127
  %93 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %io_port0, align 8
  %add149 = add i32 %94, 4
  %and150 = and i32 %add149, 1048575
  %add151 = or i32 %and150, -18874368
  %95 = inttoptr i32 %add151 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 %92) #9, !srcloc !531
  br label %return

return:                                           ; preds = %do.body136, %do.end.i, %if.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @seldi_run(ptr noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !600
  tail call void @arm_heavy_mb() #9
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 53
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port0, align 8
  %add = add i32 %1, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !601
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_port0, align 8
  %add7 = add i32 %4, 11
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %5 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 32) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !602
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_port0, align 8
  %add16 = add i32 %7, 12
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %8 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 8) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !603
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_port0, align 8
  %add25 = add i32 %10, 12
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %11 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 2) #9, !srcloc !531
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %current_SC, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end53_crit_edge, label %if.then

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then:                                          ; preds = %entry
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %13, i32 0, i32 22, i32 9
  %14 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %phase, align 4
  %and32 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then34, label %if.then.do.body38_crit_edge

if.then.do.body38_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

if.then34:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %13, ptr noundef nonnull @.str.108) #9
  br label %do.body38

do.body38:                                        ; preds = %if.then34, %if.then.do.body38_crit_edge
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 2
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %16 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %current_SC, align 4
  %host_scribble.i = getelementptr inbounds %struct.scsi_cmnd, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %host_scribble.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_scribble.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %19, align 4
  %21 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hostdata, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %do.body38.append_SC.exit_crit_edge, label %do.body38.for.cond.i_crit_edge

do.body38.for.cond.i_crit_edge:                   ; preds = %do.body38
  br label %for.cond.i

do.body38.append_SC.exit_crit_edge:               ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %append_SC.exit

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %do.body38.for.cond.i_crit_edge
  %end.0.i = phi ptr [ %26, %for.cond.i.for.cond.i_crit_edge ], [ %22, %do.body38.for.cond.i_crit_edge ]
  %host_scribble1.i = getelementptr inbounds %struct.scsi_cmnd, ptr %end.0.i, i32 0, i32 23
  %23 = ptrtoint ptr %host_scribble1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host_scribble1.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool3.not.i = icmp eq ptr %26, null
  br i1 %tobool3.not.i, label %for.cond.i.append_SC.exit_crit_edge, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.cond.i.append_SC.exit_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %append_SC.exit

append_SC.exit:                                   ; preds = %for.cond.i.append_SC.exit_crit_edge, %do.body38.append_SC.exit_crit_edge
  %.lcssa.sink.i = phi ptr [ %hostdata, %do.body38.append_SC.exit_crit_edge ], [ %24, %for.cond.i.append_SC.exit_crit_edge ]
  %27 = ptrtoint ptr %.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %17, ptr %.lcssa.sink.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call41) #9
  %28 = ptrtoint ptr %current_SC to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %current_SC, align 4
  br label %if.end53

if.end53:                                         ; preds = %append_SC.exit, %entry.if.end53_crit_edge
  %disconnected_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1
  %29 = ptrtoint ptr %disconnected_SC to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %disconnected_SC, align 8
  %tobool55.not = icmp eq ptr %30, null
  br i1 %tobool55.not, label %if.end53.cleanup_crit_edge, label %if.end57

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %target59 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 6
  %31 = ptrtoint ptr %target59 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %target59, align 8
  %32 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_port0, align 8
  %add62 = add i32 %33, 5
  %and63 = and i32 %add62, 1048575
  %add64 = or i32 %and63, -18874368
  %34 = inttoptr i32 %add64 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !604
  %conv68 = zext i8 %35 to i32
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 25
  %36 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %this_id, align 8
  %shl = shl nuw i32 1, %37
  %neg = xor i32 %shl, -1
  %and69 = and i32 %neg, %conv68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %cmp70 = icmp eq i32 %and69, 0
  br i1 %cmp70, label %do.end75, label %if.end57.for.cond_crit_edge

if.end57.for.cond_crit_edge:                      ; preds = %if.end57
  br label %for.cond

do.end75:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.87, ptr noundef %shost_gendev, ptr noundef nonnull @.str.109, i32 noundef 0) #12
  br label %cleanup

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end57.for.cond_crit_edge
  %target.0 = phi i32 [ %dec, %for.cond.for.cond_crit_edge ], [ 7, %if.end57.for.cond_crit_edge ]
  %shl77 = shl nuw i32 1, %target.0
  %and78 = and i32 %shl77, %and69
  %tobool79.not = icmp eq i32 %and78, 0
  %dec = add i32 %target.0, -1
  br i1 %tobool79.not, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %neg81 = xor i32 %shl77, -1
  %and82 = and i32 %and69, %neg81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %for.end.do.body90_crit_edge, label %do.end87

for.end.do.body90_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body90

do.end87:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %shost_gendev88 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.87, ptr noundef %shost_gendev88, ptr noundef nonnull @.str.112, i32 noundef %and69) #12
  br label %do.body90

do.body90:                                        ; preds = %do.end87, %for.end.do.body90_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !605
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %this_id, align 8
  %shl94 = shl i32 %39, 4
  %or = or i32 %shl94, %target.0
  %conv95 = trunc i32 %or to i8
  %40 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_port0, align 8
  %add98 = add i32 %41, 5
  %and99 = and i32 %add98, 1048575
  %add100 = or i32 %and99, -18874368
  %42 = inttoptr i32 %add100 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %conv95) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !606
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %io_port0, align 8
  %and108 = and i32 %44, 1048575
  %add109 = or i32 %and108, -18874368
  %45 = inttoptr i32 %add109 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !607
  tail call void @arm_heavy_mb() #9
  %syncrate = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 7
  %arrayidx = getelementptr [8 x i8], ptr %syncrate, i32 0, i32 %target.0
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx, align 1
  %48 = and i8 %47, 127
  %49 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_port0, align 8
  %add120 = add i32 %50, 4
  %and121 = and i32 %add120, 1048575
  %add122 = or i32 %and121, -18874368
  %51 = inttoptr i32 %add122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %48) #9, !srcloc !531
  %52 = ptrtoint ptr %target59 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %target.0, ptr %target59, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body90, %do.end75, %if.end53.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @selto_run(ptr nocapture noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !608
  tail call void @arm_heavy_mb() #9
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port0, align 8
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !609
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_port0, align 8
  %add6 = add i32 %4, 12
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %5 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -128) #9, !srcloc !531
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_SC, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %if.end

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end:                                           ; preds = %entry
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 22, i32 9
  %8 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %phase, align 4
  %and13 = and i32 %9, -3
  store volatile i32 %and13, ptr %phase, align 4
  %10 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_SC, align 4
  %phase17 = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 22, i32 9
  %12 = ptrtoint ptr %phase17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %phase17, align 4
  %and18 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then20
  %done_SC.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %14 = ptrtoint ptr %done_SC.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %done_SC.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %11, ptr noundef nonnull @.str.105, ptr noundef nonnull %15) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %16 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %current_SC, align 4
  %18 = ptrtoint ptr %done_SC.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %done_SC.i, align 4
  store ptr null, ptr %current_SC, align 4
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %17, i32 0, i32 24
  %19 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %result.i.i, align 4
  %and.i.i = and i32 %20, -256
  store i32 %and.i.i, ptr %result.i.i, align 4
  %21 = load ptr, ptr %done_SC.i, align 4
  %result.i28.i = getelementptr inbounds %struct.scsi_cmnd, ptr %21, i32 0, i32 24
  %22 = ptrtoint ptr %result.i28.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %result.i28.i, align 4
  %and.i29.i = and i32 %23, -16711681
  %or.i31.i = or i32 %and.i29.i, 327680
  store i32 %or.i31.i, ptr %result.i28.i, align 4
  br label %if.end33

do.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #12
  br label %if.end33

if.else:                                          ; preds = %if.end
  %24 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_port0, align 8
  %add23 = add i32 %25, 11
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %26 = inttoptr i32 %add25 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !610
  %28 = and i8 %27, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp = icmp eq i8 %28, 0
  %29 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %current_SC, align 4
  %tobool.not.i43 = icmp eq ptr %30, null
  br i1 %cmp, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else
  br i1 %tobool.not.i43, label %do.end.i55, label %if.then.i46

if.then.i46:                                      ; preds = %if.then30
  %done_SC.i44 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %31 = ptrtoint ptr %done_SC.i44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %done_SC.i44, align 4
  %tobool2.not.i45 = icmp eq ptr %32, null
  br i1 %tobool2.not.i45, label %if.then.i46.if.end.i53_crit_edge, label %if.then3.i47

if.then.i46.if.end.i53_crit_edge:                 ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i53

if.then3.i47:                                     ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %30, ptr noundef nonnull @.str.105, ptr noundef nonnull %32) #9
  br label %if.end.i53

if.end.i53:                                       ; preds = %if.then3.i47, %if.then.i46.if.end.i53_crit_edge
  %33 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %current_SC, align 4
  %35 = ptrtoint ptr %done_SC.i44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %done_SC.i44, align 4
  store ptr null, ptr %current_SC, align 4
  %result.i.i48 = getelementptr inbounds %struct.scsi_cmnd, ptr %34, i32 0, i32 24
  %36 = ptrtoint ptr %result.i.i48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %result.i.i48, align 4
  %and.i.i49 = and i32 %37, -256
  store i32 %and.i.i49, ptr %result.i.i48, align 4
  %38 = load ptr, ptr %done_SC.i44, align 4
  %result.i28.i50 = getelementptr inbounds %struct.scsi_cmnd, ptr %38, i32 0, i32 24
  %39 = ptrtoint ptr %result.i28.i50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %result.i28.i50, align 4
  %and.i29.i51 = and i32 %40, -16711681
  %or.i31.i52 = or i32 %and.i29.i51, 131072
  store i32 %or.i31.i52, ptr %result.i28.i50, align 4
  br label %if.end33

do.end.i55:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %call.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #12
  br label %if.end33

if.else31:                                        ; preds = %if.else
  br i1 %tobool.not.i43, label %do.end.i70, label %if.then.i61

if.then.i61:                                      ; preds = %if.else31
  %done_SC.i59 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %41 = ptrtoint ptr %done_SC.i59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %done_SC.i59, align 4
  %tobool2.not.i60 = icmp eq ptr %42, null
  br i1 %tobool2.not.i60, label %if.then.i61.if.end.i68_crit_edge, label %if.then3.i62

if.then.i61.if.end.i68_crit_edge:                 ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i68

if.then3.i62:                                     ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %30, ptr noundef nonnull @.str.105, ptr noundef nonnull %42) #9
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.then3.i62, %if.then.i61.if.end.i68_crit_edge
  %43 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %current_SC, align 4
  %45 = ptrtoint ptr %done_SC.i59 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %done_SC.i59, align 4
  store ptr null, ptr %current_SC, align 4
  %result.i.i63 = getelementptr inbounds %struct.scsi_cmnd, ptr %44, i32 0, i32 24
  %46 = ptrtoint ptr %result.i.i63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %result.i.i63, align 4
  %and.i.i64 = and i32 %47, -256
  store i32 %and.i.i64, ptr %result.i.i63, align 4
  %48 = load ptr, ptr %done_SC.i59, align 4
  %result.i28.i65 = getelementptr inbounds %struct.scsi_cmnd, ptr %48, i32 0, i32 24
  %49 = ptrtoint ptr %result.i28.i65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %result.i28.i65, align 4
  %and.i29.i66 = and i32 %50, -16711681
  %or.i31.i67 = or i32 %and.i29.i66, 65536
  store i32 %or.i31.i67, ptr %result.i28.i65, align 4
  br label %if.end33

do.end.i70:                                       ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #11
  %call.i69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #12
  br label %if.end33

if.end33:                                         ; preds = %do.end.i70, %if.end.i68, %do.end.i55, %if.end.i53, %do.end.i, %if.end.i, %entry.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @busfree_run(ptr noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 53
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port0, align 8
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 50) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !612
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_port0, align 8
  %add7 = add i32 %4, 1
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %5 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 32) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !613
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_port0, align 8
  %add16 = add i32 %7, 12
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %8 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 8) #9, !srcloc !531
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %current_SC, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.else82, label %if.then

if.then:                                          ; preds = %entry
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %10, i32 0, i32 22, i32 9
  %11 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %phase, align 4
  %and23 = and i32 %12, -257
  store volatile i32 %and23, ptr %phase, align 4
  %13 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %current_SC, align 4
  %phase27 = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 22, i32 9
  %15 = ptrtoint ptr %phase27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %phase27, align 4
  %and28 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.then
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 22, i32 5
  %17 = ptrtoint ptr %Status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %Status, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then30
  %done_SC.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %19 = ptrtoint ptr %done_SC.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %done_SC.i, align 4
  %tobool2.not.i = icmp eq ptr %20, null
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %14, ptr noundef nonnull @.str.105, ptr noundef nonnull %20) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %21 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %current_SC, align 4
  %23 = ptrtoint ptr %done_SC.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %done_SC.i, align 4
  store ptr null, ptr %current_SC, align 4
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 24
  %24 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %result.i.i, align 4
  %and.i.i = and i32 %25, -256
  %conv.i.i = and i32 %18, 255
  %or.i.i = or i32 %and.i.i, %conv.i.i
  store i32 %or.i.i, ptr %result.i.i, align 4
  %26 = load ptr, ptr %done_SC.i, align 4
  %result.i28.i = getelementptr inbounds %struct.scsi_cmnd, ptr %26, i32 0, i32 24
  %27 = ptrtoint ptr %result.i28.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %result.i28.i, align 4
  %and.i29.i = and i32 %28, -16711681
  store i32 %and.i29.i, ptr %result.i28.i, align 4
  br label %do.body87

do.end.i:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #12
  br label %do.body87

if.else:                                          ; preds = %if.then
  %29 = ptrtoint ptr %phase27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %phase27, align 4
  %and38 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else46, label %if.then40

if.then40:                                        ; preds = %if.else
  %Status44 = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 22, i32 5
  %31 = ptrtoint ptr %Status44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %Status44, align 4
  %tobool.not.i417 = icmp eq ptr %14, null
  br i1 %tobool.not.i417, label %do.end.i430, label %if.then.i420

if.then.i420:                                     ; preds = %if.then40
  %done_SC.i418 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %33 = ptrtoint ptr %done_SC.i418 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %done_SC.i418, align 4
  %tobool2.not.i419 = icmp eq ptr %34, null
  br i1 %tobool2.not.i419, label %if.then.i420.if.end.i428_crit_edge, label %if.then3.i421

if.then.i420.if.end.i428_crit_edge:               ; preds = %if.then.i420
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i428

if.then3.i421:                                    ; preds = %if.then.i420
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %14, ptr noundef nonnull @.str.105, ptr noundef nonnull %34) #9
  br label %if.end.i428

if.end.i428:                                      ; preds = %if.then3.i421, %if.then.i420.if.end.i428_crit_edge
  %35 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %current_SC, align 4
  %37 = ptrtoint ptr %done_SC.i418 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %done_SC.i418, align 4
  store ptr null, ptr %current_SC, align 4
  %result.i.i422 = getelementptr inbounds %struct.scsi_cmnd, ptr %36, i32 0, i32 24
  %38 = ptrtoint ptr %result.i.i422 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %result.i.i422, align 4
  %and.i.i423 = and i32 %39, -256
  %conv.i.i424 = and i32 %32, 255
  %or.i.i425 = or i32 %and.i.i423, %conv.i.i424
  store i32 %or.i.i425, ptr %result.i.i422, align 4
  %40 = load ptr, ptr %done_SC.i418, align 4
  %result.i28.i426 = getelementptr inbounds %struct.scsi_cmnd, ptr %40, i32 0, i32 24
  %41 = ptrtoint ptr %result.i28.i426 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %result.i28.i426, align 4
  %and.i29.i427 = and i32 %42, -16711681
  %or.i31.i = or i32 %and.i29.i427, 327680
  store i32 %or.i31.i, ptr %result.i28.i426, align 4
  br label %do.body87

do.end.i430:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %call.i429 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #12
  br label %do.body87

if.else46:                                        ; preds = %if.else
  %43 = ptrtoint ptr %phase27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %phase27, align 4
  %and51 = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else59, label %if.then53

if.then53:                                        ; preds = %if.else46
  %Status57 = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 22, i32 5
  %45 = ptrtoint ptr %Status57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %Status57, align 4
  %tobool.not.i433 = icmp eq ptr %14, null
  br i1 %tobool.not.i433, label %do.end.i447, label %if.then.i436

if.then.i436:                                     ; preds = %if.then53
  %done_SC.i434 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %47 = ptrtoint ptr %done_SC.i434 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %done_SC.i434, align 4
  %tobool2.not.i435 = icmp eq ptr %48, null
  br i1 %tobool2.not.i435, label %if.then.i436.if.end.i445_crit_edge, label %if.then3.i437

if.then.i436.if.end.i445_crit_edge:               ; preds = %if.then.i436
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i445

if.then3.i437:                                    ; preds = %if.then.i436
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %14, ptr noundef nonnull @.str.105, ptr noundef nonnull %48) #9
  br label %if.end.i445

if.end.i445:                                      ; preds = %if.then3.i437, %if.then.i436.if.end.i445_crit_edge
  %49 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %current_SC, align 4
  %51 = ptrtoint ptr %done_SC.i434 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %done_SC.i434, align 4
  store ptr null, ptr %current_SC, align 4
  %result.i.i438 = getelementptr inbounds %struct.scsi_cmnd, ptr %50, i32 0, i32 24
  %52 = ptrtoint ptr %result.i.i438 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %result.i.i438, align 4
  %and.i.i439 = and i32 %53, -256
  %conv.i.i440 = and i32 %46, 255
  %or.i.i441 = or i32 %and.i.i439, %conv.i.i440
  store i32 %or.i.i441, ptr %result.i.i438, align 4
  %54 = load ptr, ptr %done_SC.i434, align 4
  %result.i28.i442 = getelementptr inbounds %struct.scsi_cmnd, ptr %54, i32 0, i32 24
  %55 = ptrtoint ptr %result.i28.i442 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %result.i28.i442, align 4
  %and.i29.i443 = and i32 %56, -16711681
  %or.i31.i444 = or i32 %and.i29.i443, 524288
  store i32 %or.i31.i444, ptr %result.i28.i442, align 4
  br label %do.body87

do.end.i447:                                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  %call.i446 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #12
  br label %do.body87

if.else59:                                        ; preds = %if.else46
  %57 = ptrtoint ptr %phase27 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %phase27, align 4
  %and64 = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.else78, label %if.then66

if.then66:                                        ; preds = %if.else59
  %disconnections = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %59 = ptrtoint ptr %disconnections to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %disconnections, align 8
  %inc68 = add i32 %60, 1
  store i32 %inc68, ptr %disconnections, align 8
  %disconnected_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1
  %host_scribble.i = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 23
  %61 = ptrtoint ptr %host_scribble.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %host_scribble.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %62, align 4
  %64 = ptrtoint ptr %disconnected_SC to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %disconnected_SC, align 4
  %tobool.not.i449 = icmp eq ptr %65, null
  br i1 %tobool.not.i449, label %if.then66.append_SC.exit_crit_edge, label %if.then66.for.cond.i_crit_edge

if.then66.for.cond.i_crit_edge:                   ; preds = %if.then66
  br label %for.cond.i

if.then66.append_SC.exit_crit_edge:               ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %append_SC.exit

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then66.for.cond.i_crit_edge
  %end.0.i = phi ptr [ %69, %for.cond.i.for.cond.i_crit_edge ], [ %65, %if.then66.for.cond.i_crit_edge ]
  %host_scribble1.i = getelementptr inbounds %struct.scsi_cmnd, ptr %end.0.i, i32 0, i32 23
  %66 = ptrtoint ptr %host_scribble1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %host_scribble1.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %tobool3.not.i = icmp eq ptr %69, null
  br i1 %tobool3.not.i, label %for.cond.i.append_SC.exit_crit_edge, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.cond.i.append_SC.exit_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %append_SC.exit

append_SC.exit:                                   ; preds = %for.cond.i.append_SC.exit_crit_edge, %if.then66.append_SC.exit_crit_edge
  %.lcssa.sink.i = phi ptr [ %disconnected_SC, %if.then66.append_SC.exit_crit_edge ], [ %67, %for.cond.i.append_SC.exit_crit_edge ]
  %70 = ptrtoint ptr %.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %14, ptr %.lcssa.sink.i, align 4
  %71 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %current_SC, align 4
  %phase75 = getelementptr inbounds %struct.scsi_cmnd, ptr %72, i32 0, i32 22, i32 9
  %73 = ptrtoint ptr %phase75 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %phase75, align 4
  %or = or i32 %74, 65536
  store volatile i32 %or, ptr %phase75, align 4
  store ptr null, ptr %current_SC, align 4
  br label %do.body87

if.else78:                                        ; preds = %if.else59
  %tobool.not.i452 = icmp eq ptr %14, null
  br i1 %tobool.not.i452, label %do.end.i464, label %if.then.i455

if.then.i455:                                     ; preds = %if.else78
  %done_SC.i453 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %75 = ptrtoint ptr %done_SC.i453 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %done_SC.i453, align 4
  %tobool2.not.i454 = icmp eq ptr %76, null
  br i1 %tobool2.not.i454, label %if.then.i455.if.end.i462_crit_edge, label %if.then3.i456

if.then.i455.if.end.i462_crit_edge:               ; preds = %if.then.i455
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i462

if.then3.i456:                                    ; preds = %if.then.i455
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %14, ptr noundef nonnull @.str.105, ptr noundef nonnull %76) #9
  br label %if.end.i462

if.end.i462:                                      ; preds = %if.then3.i456, %if.then.i455.if.end.i462_crit_edge
  %77 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %current_SC, align 4
  %79 = ptrtoint ptr %done_SC.i453 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %done_SC.i453, align 4
  store ptr null, ptr %current_SC, align 4
  %result.i.i457 = getelementptr inbounds %struct.scsi_cmnd, ptr %78, i32 0, i32 24
  %80 = ptrtoint ptr %result.i.i457 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %result.i.i457, align 4
  %and.i.i458 = and i32 %81, -256
  store i32 %and.i.i458, ptr %result.i.i457, align 4
  %82 = load ptr, ptr %done_SC.i453, align 4
  %result.i28.i459 = getelementptr inbounds %struct.scsi_cmnd, ptr %82, i32 0, i32 24
  %83 = ptrtoint ptr %result.i28.i459 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %result.i28.i459, align 4
  %and.i29.i460 = and i32 %84, -16711681
  %or.i31.i461 = or i32 %and.i29.i460, 458752
  store i32 %or.i31.i461, ptr %result.i28.i459, align 4
  br label %do.body87

do.end.i464:                                      ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #11
  %call.i463 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #12
  br label %do.body87

if.else82:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %busfree_without_old_command = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5
  %85 = ptrtoint ptr %busfree_without_old_command to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %busfree_without_old_command, align 8
  %inc84 = add i32 %86, 1
  store i32 %inc84, ptr %busfree_without_old_command, align 8
  br label %do.body87

do.body87:                                        ; preds = %if.else82, %do.end.i464, %if.end.i462, %append_SC.exit, %do.end.i447, %if.end.i445, %do.end.i430, %if.end.i428, %do.end.i, %if.end.i
  %action.0 = phi i32 [ 1, %append_SC.exit ], [ 0, %if.else82 ], [ 1, %if.end.i ], [ 1, %do.end.i ], [ 1, %if.end.i428 ], [ 1, %do.end.i430 ], [ 1, %if.end.i445 ], [ 1, %do.end.i447 ], [ 1, %if.end.i462 ], [ 1, %do.end.i464 ]
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 2
  %call91 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %done_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %87 = ptrtoint ptr %done_SC to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %done_SC, align 4
  %tobool97.not = icmp eq ptr %88, null
  br i1 %tobool97.not, label %if.else239, label %if.then98

if.then98:                                        ; preds = %do.body87
  %phase103 = getelementptr inbounds %struct.scsi_cmnd, ptr %88, i32 0, i32 22, i32 9
  %89 = ptrtoint ptr %phase103 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %phase103, align 4
  %and104 = and i32 %90, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.else125, label %if.then106

if.then106:                                       ; preds = %if.then98
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %88, i32 0, i32 23
  %91 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %host_scribble, align 4
  %ses = getelementptr inbounds %struct.aha152x_scdata, ptr %92, i32 0, i32 2
  tail call void @scsi_eh_restore_cmnd(ptr noundef nonnull %88, ptr noundef %ses) #9
  %Status110 = getelementptr inbounds %struct.scsi_cmnd, ptr %88, i32 0, i32 22, i32 5
  %93 = ptrtoint ptr %Status110 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 2, ptr %Status110, align 4
  %commands = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 0, i32 2
  %94 = ptrtoint ptr %commands to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %commands, align 8
  %dec = add i32 %95, -1
  store i32 %dec, ptr %commands, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool114.not = icmp eq i32 %dec, 0
  br i1 %tobool114.not, label %do.body116, label %if.then106.if.end184_crit_edge

if.then106.if.end184_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

do.body116:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  tail call void @arm_heavy_mb() #9
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %96 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %io_port1, align 4
  %add120 = add i32 %97, 26
  %and121 = and i32 %add120, 1048575
  %add122 = or i32 %and121, -18874368
  %98 = inttoptr i32 %add122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 0) #9, !srcloc !531
  br label %if.end184

if.else125:                                       ; preds = %if.then98
  %Status129 = getelementptr inbounds %struct.scsi_cmnd, ptr %88, i32 0, i32 22, i32 5
  %99 = ptrtoint ptr %Status129 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %Status129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %100)
  %cmp130 = icmp eq i32 %100, 2
  br i1 %cmp130, label %if.then132, label %if.else125.if.end184_crit_edge

if.else125.if.end184_crit_edge:                   ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then132:                                       ; preds = %if.else125
  %busfree_with_check_condition = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1, i32 2
  %101 = ptrtoint ptr %busfree_with_check_condition to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %busfree_with_check_condition, align 4
  %inc134 = add i32 %102, 1
  store i32 %inc134, ptr %busfree_with_check_condition, align 4
  %103 = ptrtoint ptr %phase103 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %phase103, align 4
  %and139 = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.then141, label %if.then132.if.end184_crit_edge

if.then132.if.end184_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then141:                                       ; preds = %if.then132
  %105 = ptrtoint ptr %done_SC to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %done_SC, align 4
  %host_scribble147 = getelementptr inbounds %struct.scsi_cmnd, ptr %88, i32 0, i32 23
  %106 = ptrtoint ptr %host_scribble147 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %host_scribble147, align 4
  %tobool149.not = icmp eq ptr %107, null
  br i1 %tobool149.not, label %do.body154, label %do.end162, !prof !615

do.body154:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aha152x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1443, 0\0A.popsection", ""() #9, !srcloc !616
  unreachable

do.end162:                                        ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #11
  %ses163 = getelementptr inbounds %struct.aha152x_scdata, ptr %107, i32 0, i32 2
  tail call void @scsi_eh_prep_cmnd(ptr noundef nonnull %88, ptr noundef %ses163, ptr noundef null, i32 noundef 0, i32 noundef -1) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call91) #9
  %call166 = tail call fastcc i32 @aha152x_internal_queue(ptr noundef nonnull %88, ptr noundef null, i32 noundef 2048)
  %call177 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  br label %if.end184

if.end184:                                        ; preds = %do.end162, %if.then132.if.end184_crit_edge, %if.else125.if.end184_crit_edge, %do.body116, %if.then106.if.end184_crit_edge
  %flags.0 = phi i32 [ %call91, %if.then132.if.end184_crit_edge ], [ %call177, %do.end162 ], [ %call91, %if.else125.if.end184_crit_edge ], [ %call91, %do.body116 ], [ %call91, %if.then106.if.end184_crit_edge ]
  %108 = ptrtoint ptr %done_SC to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %done_SC, align 4
  %tobool187.not = icmp eq ptr %109, null
  br i1 %tobool187.not, label %if.end184.if.end236_crit_edge, label %if.then188

if.end184.if.end236_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.then188:                                       ; preds = %if.end184
  %110 = ptrtoint ptr %done_SC to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %done_SC, align 4
  %commands195 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 0, i32 2
  %111 = ptrtoint ptr %commands195 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %commands195, align 8
  %dec196 = add i32 %112, -1
  store i32 %dec196, ptr %commands195, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec196)
  %tobool199.not = icmp eq i32 %dec196, 0
  br i1 %tobool199.not, label %do.body201, label %if.then188.if.end210_crit_edge

if.then188.if.end210_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end210

do.body201:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !617
  tail call void @arm_heavy_mb() #9
  %io_port1205 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %113 = ptrtoint ptr %io_port1205 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %io_port1205, align 4
  %add206 = add i32 %114, 26
  %and207 = and i32 %add206, 1048575
  %add208 = or i32 %and207, -18874368
  %115 = inttoptr i32 %add208 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 0) #9, !srcloc !531
  br label %if.end210

if.end210:                                        ; preds = %do.body201, %if.then188.if.end210_crit_edge
  %phase212 = getelementptr inbounds %struct.scsi_cmnd, ptr %109, i32 0, i32 22, i32 9
  %116 = ptrtoint ptr %phase212 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %phase212, align 4
  %and213 = and i32 %117, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %if.then215, label %if.end210.if.end218_crit_edge

if.end210.if.end218_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end218

if.then215:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #11
  %host_scribble216 = getelementptr inbounds %struct.scsi_cmnd, ptr %109, i32 0, i32 23
  %118 = ptrtoint ptr %host_scribble216 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %host_scribble216, align 4
  tail call void @kfree(ptr noundef %119) #9
  %120 = ptrtoint ptr %host_scribble216 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %host_scribble216, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then215, %if.end210.if.end218_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #9
  %121 = ptrtoint ptr %phase212 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %phase212, align 4
  %and.i = and i32 %122, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i466 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i466, label %if.else.i, label %if.then.i467

if.then.i467:                                     ; preds = %if.end218
  %host_scribble.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %109, i32 0, i32 23
  %123 = ptrtoint ptr %host_scribble.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %host_scribble.i.i, align 4
  %done.i.i = getelementptr inbounds %struct.aha152x_scdata, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %done.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %126, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i467
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @complete(ptr noundef nonnull %126) #9
  br label %aha152x_scsi_done.exit

do.end.i.i:                                       ; preds = %if.then.i467
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #12
  br label %aha152x_scsi_done.exit

if.else.i:                                        ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @scsi_done(ptr noundef nonnull %109) #9
  br label %aha152x_scsi_done.exit

aha152x_scsi_done.exit:                           ; preds = %if.else.i, %do.end.i.i, %if.then.i.i
  %call231 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  br label %if.end236

if.end236:                                        ; preds = %aha152x_scsi_done.exit, %if.end184.if.end236_crit_edge
  %flags.1 = phi i32 [ %call231, %aha152x_scsi_done.exit ], [ %flags.0, %if.end184.if.end236_crit_edge ]
  %127 = ptrtoint ptr %done_SC to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %done_SC, align 4
  br label %if.end242

if.else239:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  %busfree_without_done_command = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1, i32 1
  %128 = ptrtoint ptr %busfree_without_done_command to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %busfree_without_done_command, align 8
  %inc241 = add i32 %129, 1
  store i32 %inc241, ptr %busfree_without_done_command, align 8
  br label %if.end242

if.end242:                                        ; preds = %if.else239, %if.end236
  %action.1 = phi i32 [ 1, %if.end236 ], [ %action.0, %if.else239 ]
  %flags.2 = phi i32 [ %flags.1, %if.end236 ], [ %call91, %if.else239 ]
  %130 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hostdata, align 8
  %tobool244.not = icmp eq ptr %131, null
  br i1 %tobool244.not, label %if.end242.if.end251_crit_edge, label %remove_first_SC.exit

if.end242.if.end251_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end251

remove_first_SC.exit:                             ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #11
  %host_scribble.i470 = getelementptr inbounds %struct.scsi_cmnd, ptr %131, i32 0, i32 23
  %132 = ptrtoint ptr %host_scribble.i470 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %host_scribble.i470, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %136 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %135, ptr %hostdata, align 4
  %137 = load ptr, ptr %host_scribble.i470, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %137, align 4
  %139 = ptrtoint ptr %current_SC to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %131, ptr %current_SC, align 4
  br label %if.end251

if.end251:                                        ; preds = %remove_first_SC.exit, %if.end242.if.end251_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.2) #9
  %140 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %current_SC, align 4
  %tobool256.not = icmp eq ptr %141, null
  br i1 %tobool256.not, label %if.end331, label %if.end331.thread

if.end331.thread:                                 ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #11
  %phase262 = getelementptr inbounds %struct.scsi_cmnd, ptr %141, i32 0, i32 22, i32 9
  %142 = ptrtoint ptr %phase262 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %phase262, align 4
  %or263 = or i32 %143, 2
  store volatile i32 %or263, ptr %phase262, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !618
  tail call void @arm_heavy_mb() #9
  %144 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %io_port0, align 8
  %add269 = add i32 %145, 12
  %and270 = and i32 %add269, 1048575
  %add271 = or i32 %and270, -18874368
  %146 = inttoptr i32 %add271 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %146, i8 -128) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !619
  tail call void @arm_heavy_mb() #9
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 25
  %147 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %this_id, align 8
  %shl = shl i32 %148, 4
  %149 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %current_SC, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %152, i32 0, i32 16
  %153 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %id, align 8
  %or278 = or i32 %154, %shl
  %conv279 = trunc i32 %or278 to i8
  %155 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %io_port0, align 8
  %add282 = add i32 %156, 5
  %and283 = and i32 %add282, 1048575
  %add284 = or i32 %and283, -18874368
  %157 = inttoptr i32 %add284 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %157, i8 %conv279) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !620
  tail call void @arm_heavy_mb() #9
  %parity = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 1, i32 1
  %158 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %parity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool290.not = icmp eq i32 %159, 0
  %conv292 = select i1 %tobool290.not, i8 4, i8 36
  %160 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %io_port0, align 8
  %add295 = add i32 %161, 2
  %and296 = and i32 %add295, 1048575
  %add297 = or i32 %and296, -18874368
  %162 = inttoptr i32 %add297 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %162, i8 %conv292) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !621
  tail call void @arm_heavy_mb() #9
  %disconnected_SC303 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1
  %163 = ptrtoint ptr %disconnected_SC303 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %disconnected_SC303, align 8
  %tobool304.not = icmp eq ptr %164, null
  %conv307 = select i1 %tobool304.not, i8 72, i8 88
  %165 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %io_port0, align 8
  %and311 = and i32 %166, 1048575
  %add312 = or i32 %and311, -18874368
  %167 = inttoptr i32 %add312 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %167, i8 %conv307) #9, !srcloc !531
  br label %if.end336

if.end331:                                        ; preds = %if.end251
  %busfree_without_new_command = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1
  %168 = ptrtoint ptr %busfree_without_new_command to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %busfree_without_new_command, align 4
  %inc316 = add i32 %169, 1
  store i32 %inc316, ptr %busfree_without_new_command, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !622
  tail call void @arm_heavy_mb() #9
  %disconnected_SC321 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1
  %170 = ptrtoint ptr %disconnected_SC321 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %disconnected_SC321, align 8
  %tobool322.not = icmp eq ptr %171, null
  %conv324 = select i1 %tobool322.not, i8 0, i8 16
  %172 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %io_port0, align 8
  %and328 = and i32 %173, 1048575
  %add329 = or i32 %and328, -18874368
  %174 = inttoptr i32 %add329 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %174, i8 %conv324) #9, !srcloc !531
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action.1)
  %tobool332.not = icmp eq i32 %action.1, 0
  br i1 %tobool332.not, label %if.then333, label %if.end331.if.end336_crit_edge

if.end331.if.end336_crit_edge:                    ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end336

if.then333:                                       ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #11
  %busfree_without_any_action = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 4
  %175 = ptrtoint ptr %busfree_without_any_action to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %busfree_without_any_action, align 4
  %inc335 = add i32 %176, 1
  store i32 %inc335, ptr %busfree_without_any_action, align 4
  br label %if.end336

if.end336:                                        ; preds = %if.then333, %if.end331.if.end336_crit_edge, %if.end331.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msgo_init(ptr noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msgo_len = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %msgo_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msgo_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end50_crit_edge

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then:                                          ; preds = %entry
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_SC, align 4
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 9
  %4 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %phase, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %syncneg = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 9
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %arrayidx = getelementptr [8 x i8], ptr %syncneg, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp5 = icmp eq i8 %11, 2
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true
  %syncrate = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 7
  %arrayidx13 = getelementptr [8 x i8], ptr %syncrate, i32 0, i32 %9
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp15 = icmp eq i8 %13, 0
  br i1 %cmp15, label %cond.true, label %land.lhs.true7.if.else_crit_edge

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

cond.true:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  %reconnect = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 1
  %14 = ptrtoint ptr %reconnect to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reconnect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool23.not = icmp eq i32 %15, 0
  %or = select i1 %tobool23.not, i32 128, i32 192
  %conv24 = zext i32 %or to i64
  %lun = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 18
  %16 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %lun, align 8
  %and28 = and i64 %17, 7
  %or29 = or i64 %and28, %conv24
  %conv30 = trunc i64 %or29 to i8
  %msgo = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 0, i32 2
  %18 = ptrtoint ptr %msgo_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %msgo_len, align 8
  %19 = ptrtoint ptr %msgo to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv30, ptr %msgo, align 1
  br label %if.end50

if.else:                                          ; preds = %land.lhs.true7.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.87, ptr noundef %3, ptr noundef nonnull @.str.118) #9
  %20 = ptrtoint ptr %msgo_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msgo_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %21)
  %cmp39 = icmp slt i32 %21, 256
  br i1 %cmp39, label %cond.true41, label %cond.false48

cond.true41:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %msgo43 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 0, i32 2
  %inc46 = add nsw i32 %21, 1
  %22 = ptrtoint ptr %msgo_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc46, ptr %msgo_len, align 8
  %arrayidx47 = getelementptr [256 x i8], ptr %msgo43, i32 0, i32 %21
  %23 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 7, ptr %arrayidx47, align 1
  br label %if.end50

cond.false48:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.47, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.104) #12
  tail call fastcc void @show_queues(ptr noundef %shpnt) #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #13
  unreachable

if.end50:                                         ; preds = %cond.true41, %cond.true, %entry.if.end50_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msgo_run(ptr nocapture noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %msgo_i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 0, i32 1
  %msgo_len = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %msgo_i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msgo_i, align 4
  %2 = ptrtoint ptr %msgo_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msgo_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp90 = icmp slt i32 %1, %3
  br i1 %cmp90, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %msgo = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 0, i32 2
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %do.body60.while.body_crit_edge, %while.body.lr.ph
  %4 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port0, align 8
  %add = add i32 %5, 11
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %6 = inttoptr i32 %add3 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !623
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp6 = icmp eq i8 %8, 0
  br i1 %cmp6, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = ptrtoint ptr %msgo_i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msgo_i, align 4
  %11 = ptrtoint ptr %msgo_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msgo_len, align 8
  %sub = add i32 %12, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub)
  %cmp12 = icmp eq i32 %10, %sub
  br i1 %cmp12, label %do.body, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !624
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_port0, align 8
  %add17 = add i32 %14, 12
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %15 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 64) #9, !srcloc !531
  br label %if.end21

if.end21:                                         ; preds = %do.body, %if.end.if.end21_crit_edge
  %16 = ptrtoint ptr %msgo_i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msgo_i, align 4
  %arrayidx = getelementptr [256 x i8], ptr %msgo, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %tobool.not = icmp sgt i8 %19, -1
  br i1 %tobool.not, label %if.end21.if.end29_crit_edge, label %if.then27

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %current_SC, align 4
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %21, i32 0, i32 22, i32 9
  %22 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %phase, align 4
  %or = or i32 %23, 4
  store volatile i32 %or, ptr %phase, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end21.if.end29_crit_edge
  %24 = ptrtoint ptr %msgo_i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msgo_i, align 4
  %arrayidx34 = getelementptr [256 x i8], ptr %msgo, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp36 = icmp eq i8 %27, 6
  br i1 %cmp36, label %if.then38, label %if.end29.if.end44_crit_edge

if.end29.if.end44_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %current_SC, align 4
  %phase42 = getelementptr inbounds %struct.scsi_cmnd, ptr %29, i32 0, i32 22, i32 9
  %30 = ptrtoint ptr %phase42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %phase42, align 4
  %or43 = or i32 %31, 32
  store volatile i32 %or43, ptr %phase42, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.end29.if.end44_crit_edge
  %32 = ptrtoint ptr %msgo_i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msgo_i, align 4
  %arrayidx49 = getelementptr [256 x i8], ptr %msgo, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %35)
  %cmp51 = icmp eq i8 %35, 12
  br i1 %cmp51, label %if.then53, label %if.end44.do.body60_crit_edge

if.end44.do.body60_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60

if.then53:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %current_SC, align 4
  %phase57 = getelementptr inbounds %struct.scsi_cmnd, ptr %37, i32 0, i32 22, i32 9
  %38 = ptrtoint ptr %phase57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %phase57, align 4
  %or58 = or i32 %39, 64
  store volatile i32 %or58, ptr %phase57, align 4
  br label %do.body60

do.body60:                                        ; preds = %if.then53, %if.end44.do.body60_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !625
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %msgo_i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msgo_i, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %msgo_i, align 4
  %arrayidx66 = getelementptr [256 x i8], ptr %msgo, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx66, align 1
  %44 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_port0, align 8
  %add69 = add i32 %45, 6
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %46 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %43) #9, !srcloc !531
  %47 = ptrtoint ptr %msgo_i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msgo_i, align 4
  %49 = ptrtoint ptr %msgo_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msgo_len, align 8
  %cmp = icmp slt i32 %48, %50
  br i1 %cmp, label %do.body60.while.body_crit_edge, label %do.body60.while.end_crit_edge

do.body60.while.end_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.body60.while.body_crit_edge:                   ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %do.body60.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msgo_end(ptr nocapture noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msgo_i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 0, i32 1
  %0 = ptrtoint ptr %msgo_i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msgo_i, align 4
  %msgo_len = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %msgo_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msgo_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then:                                          ; preds = %entry
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_SC, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %5, ptr noundef nonnull @.str.119, i32 noundef %1, i32 noundef %3) #9
  %syncneg = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 9
  %6 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_SC, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  %arrayidx = getelementptr [8 x i8], ptr %syncneg, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp10 = icmp eq i8 %13, 1
  br i1 %cmp10, label %if.then12, label %if.then.if.end22_crit_edge

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.87, ptr noundef %7, ptr noundef nonnull @.str.120) #9
  %14 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %current_SC, align 4
  %device19 = getelementptr inbounds %struct.scsi_cmnd, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device19, align 4
  %id20 = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %id20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id20, align 8
  %arrayidx21 = getelementptr [8 x i8], ptr %syncneg, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %arrayidx21, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then12, %if.then.if.end22_crit_edge, %entry.if.end22_crit_edge
  %21 = ptrtoint ptr %msgo_i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %msgo_i, align 4
  %22 = ptrtoint ptr %msgo_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %msgo_len, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmd_init(ptr nocapture noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_SC, align 4
  %sent_command = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 8
  %2 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %1, ptr noundef nonnull @.str.121) #9
  %4 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_SC, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %done_SC.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %done_SC.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %done_SC.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %5, ptr noundef nonnull @.str.105, ptr noundef nonnull %7) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %current_SC, align 4
  %10 = ptrtoint ptr %done_SC.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %done_SC.i, align 4
  store ptr null, ptr %current_SC, align 4
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %9, i32 0, i32 24
  %11 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %result.i.i, align 4
  %and.i.i = and i32 %12, -256
  store i32 %and.i.i, ptr %result.i.i, align 4
  %13 = load ptr, ptr %done_SC.i, align 4
  %result.i28.i = getelementptr inbounds %struct.scsi_cmnd, ptr %13, i32 0, i32 24
  %14 = ptrtoint ptr %result.i28.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %result.i28.i, align 4
  %and.i29.i = and i32 %15, -16711681
  %or.i31.i = or i32 %and.i29.i, 458752
  store i32 %or.i31.i, ptr %result.i28.i, align 4
  br label %return

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 11
  %16 = ptrtoint ptr %cmd_i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %cmd_i, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end.i, %if.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmd_run(ptr nocapture noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %cmd_i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 11
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %cmd_i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_i, align 4
  %2 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_SC, align 4
  %cmd_len25 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %cmd_len25 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cmd_len25, align 4
  %conv26 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv26)
  %cmp27 = icmp slt i32 %1, %conv26
  br i1 %cmp27, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %do.body.while.body_crit_edge, %entry.while.body_crit_edge
  %6 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_port0, align 8
  %add = add i32 %7, 11
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %8 = inttoptr i32 %add4 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !626
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp8 = icmp eq i8 %10, 0
  br i1 %cmp8, label %while.body.while.end_crit_edge, label %do.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.body:                                          ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !627
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %current_SC, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  %15 = ptrtoint ptr %cmd_i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd_i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %cmd_i, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %19 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io_port0, align 8
  %add16 = add i32 %20, 6
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %21 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %18) #9, !srcloc !531
  %22 = ptrtoint ptr %cmd_i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmd_i, align 4
  %24 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %current_SC, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cmd_len, align 4
  %conv = zext i16 %27 to i32
  %cmp = icmp slt i32 %23, %conv
  br i1 %cmp, label %do.body.while.body_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.body.while.body_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %do.body.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmd_end(ptr nocapture noundef readonly %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 11
  %0 = ptrtoint ptr %cmd_i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_i, align 4
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_SC, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cmd_len, align 4
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp slt i32 %1, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %3, ptr noundef nonnull @.str.122, i32 noundef %1, i32 noundef %conv) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sent_command = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 8
  %6 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sent_command, align 4
  %inc = add i32 %7, 1
  store volatile i32 %inc, ptr %sent_command, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msgi_run(ptr noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port0, align 8
  %add436 = add i32 %1, 12
  %and437 = and i32 %add436, 1048575
  %add1438 = or i32 %and437, -18874368
  %2 = inttoptr i32 %add1438 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !628
  %4 = and i8 %3, 27
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %.not439 = icmp eq i8 %4, 1
  br i1 %.not439, label %if.end.lr.ph, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.lr.ph:                                     ; preds = %entry
  %msgi_len = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 12
  %msgi = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 13
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %arrayidx153 = getelementptr [256 x i8], ptr %msgi, i32 0, i32 1
  %arrayidx162 = getelementptr [256 x i8], ptr %msgi, i32 0, i32 2
  %syncrate308 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 7
  %syncneg311 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 9
  %synchronous = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 1, i32 2
  %arrayidx229 = getelementptr [256 x i8], ptr %msgi, i32 0, i32 3
  %arrayidx237 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 13, i32 1
  %msgo_len = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 0, i32 1, i32 1
  %msgo = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 0, i32 2
  %reconnect = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 1
  %laststate = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 5
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 49
  %disconnected_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1
  %target = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 6
  br label %if.end

if.end:                                           ; preds = %cleanup331.if.end_crit_edge, %if.end.lr.ph
  %5 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_port0, align 8
  %add9 = add i32 %6, 11
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %7 = inttoptr i32 %add11 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !629
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end19

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end19:                                         ; preds = %if.end
  %10 = ptrtoint ptr %msgi_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msgi_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %cmp21 = icmp slt i32 %11, 256
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end19
  %12 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_port0, align 8
  %add26 = add i32 %13, 6
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %14 = inttoptr i32 %add28 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !630
  %16 = ptrtoint ptr %msgi_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msgi_len, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %msgi_len, align 8
  %arrayidx = getelementptr [256 x i8], ptr %msgi, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %15, ptr %arrayidx, align 1
  %19 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %current_SC, align 4
  %tobool36.not = icmp eq ptr %20, null
  br i1 %tobool36.not, label %if.then37, label %if.end93

cond.false:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.47, ptr noundef %shost_gendev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.123) #12
  tail call fastcc void @show_queues(ptr noundef %shpnt) #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #13
  unreachable

if.then37:                                        ; preds = %cond.true
  %21 = ptrtoint ptr %laststate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %laststate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp39.not = icmp eq i32 %22, 3
  br i1 %cmp39.not, label %if.then37.if.end42_crit_edge, label %do.end

if.then37.if.end42_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.end:                                           ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %shost_gendev, ptr noundef nonnull @.str.124) #12
  br label %if.end42

if.end42:                                         ; preds = %do.end, %if.then37.if.end42_crit_edge
  %23 = ptrtoint ptr %msgi to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %msgi, align 4
  %conv46 = zext i8 %24 to i32
  %and47 = and i32 %conv46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.end52, label %if.end54

do.end52:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %shost_gendev, ptr noundef nonnull @.str.127) #12
  br label %cleanup331

if.end54:                                         ; preds = %if.end42
  %25 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %target, align 8
  %27 = ptrtoint ptr %disconnected_SC to i32
  call void @__asan_load4_noabort(i32 %27)
  %ptr.031.i = load ptr, ptr %disconnected_SC, align 4
  %tobool.not32.i = icmp eq ptr %ptr.031.i, null
  br i1 %tobool.not32.i, label %if.end54.if.then68_crit_edge, label %land.rhs.lr.ph.i

if.end54.if.then68_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

land.rhs.lr.ph.i:                                 ; preds = %if.end54
  %and61 = and i32 %conv46, 63
  %28 = zext i32 %and61 to i64
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %ptr.034.i = phi ptr [ %ptr.031.i, %land.rhs.lr.ph.i ], [ %ptr.0.i, %for.inc.i.land.rhs.i_crit_edge ]
  %prev.033.i = phi ptr [ null, %land.rhs.lr.ph.i ], [ %ptr.034.i, %for.inc.i.land.rhs.i_crit_edge ]
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.034.i, i32 0, i32 1
  %29 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %26)
  %cmp.not.i = icmp eq i32 %32, %26
  br i1 %cmp.not.i, label %lor.rhs.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.rhs.i:                                        ; preds = %land.rhs.i
  %lun2.i = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 18
  %33 = ptrtoint ptr %lun2.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %lun2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %28)
  %cmp3.not.i = icmp eq i64 %34, %28
  br i1 %cmp3.not.i, label %if.then.critedge.i, label %lor.rhs.i.for.inc.i_crit_edge

lor.rhs.i.for.inc.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.rhs.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge
  %host_scribble.i = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.034.i, i32 0, i32 23
  %35 = ptrtoint ptr %host_scribble.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host_scribble.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %ptr.0.i = load ptr, ptr %36, align 4
  %tobool.not.i = icmp eq ptr %ptr.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.then68_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc.i.if.then68_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

if.then.critedge.i:                               ; preds = %lor.rhs.i
  %tobool6.not.i = icmp eq ptr %prev.033.i, null
  %host_scribble12.i = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.034.i, i32 0, i32 23
  %38 = ptrtoint ptr %host_scribble12.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %host_scribble12.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  br i1 %tobool6.not.i, label %if.then.critedge.i.if.end80_crit_edge, label %if.then7.i

if.then.critedge.i.if.end80_crit_edge:            ; preds = %if.then.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then7.i:                                       ; preds = %if.then.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  %host_scribble10.i = getelementptr inbounds %struct.scsi_cmnd, ptr %prev.033.i, i32 0, i32 23
  %42 = ptrtoint ptr %host_scribble10.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host_scribble10.i, align 4
  br label %if.end80

if.then68:                                        ; preds = %for.inc.i.if.then68_crit_edge, %if.end54.if.then68_crit_edge
  %44 = ptrtoint ptr %current_SC to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %current_SC, align 4
  tail call fastcc void @show_queues(ptr noundef %shpnt)
  %45 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %target, align 8
  %47 = ptrtoint ptr %msgi to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %msgi, align 4
  %49 = and i8 %48, 63
  %and79 = zext i8 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %shost_gendev, ptr noundef nonnull @.str.130, i32 noundef %46, i32 noundef %and79) #12
  br label %cleanup331

if.end80:                                         ; preds = %if.then7.i, %if.then.critedge.i.if.end80_crit_edge
  %SC.sink.i = phi ptr [ %43, %if.then7.i ], [ %disconnected_SC, %if.then.critedge.i.if.end80_crit_edge ]
  %50 = ptrtoint ptr %SC.sink.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %41, ptr %SC.sink.i, align 4
  %51 = ptrtoint ptr %host_scribble12.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %host_scribble12.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %52, align 4
  %54 = ptrtoint ptr %current_SC to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %ptr.034.i, ptr %current_SC, align 4
  %55 = ptrtoint ptr %msgi to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %msgi, align 4
  %conv84 = zext i8 %56 to i32
  %Message = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.034.i, i32 0, i32 22, i32 6
  %57 = ptrtoint ptr %Message to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 %conv84, ptr %Message, align 4
  %58 = load ptr, ptr %current_SC, align 4
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %58, i32 0, i32 22, i32 9
  %59 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %phase, align 4
  %and90 = and i32 %60, -9
  store volatile i32 %and90, ptr %phase, align 4
  %61 = ptrtoint ptr %msgi_len to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %msgi_len, align 8
  br label %cleanup331

if.end93:                                         ; preds = %cond.true
  %62 = ptrtoint ptr %msgi to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %msgi, align 4
  %conv97 = zext i8 %63 to i32
  %Message101 = getelementptr inbounds %struct.scsi_cmnd, ptr %20, i32 0, i32 22, i32 6
  %64 = ptrtoint ptr %Message101 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 %conv97, ptr %Message101, align 4
  %65 = load i8, ptr %msgi, align 4
  %66 = zext i8 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.278)
  switch i8 %65, label %if.end93.sw.epilog328_crit_edge [
    i8 4, label %sw.bb
    i8 0, label %sw.bb116
    i8 7, label %sw.bb122
    i8 1, label %sw.bb143
  ]

if.end93.sw.epilog328_crit_edge:                  ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog328

sw.bb:                                            ; preds = %if.end93
  %67 = ptrtoint ptr %reconnect to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %reconnect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool107.not = icmp eq i32 %68, 0
  br i1 %tobool107.not, label %if.then108, label %sw.bb.if.end111_crit_edge

sw.bb.if.end111_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then108:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %current_SC, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.132, ptr noundef %70, ptr noundef nonnull @.str.133) #9
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %sw.bb.if.end111_crit_edge
  %71 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %current_SC, align 4
  %phase115 = getelementptr inbounds %struct.scsi_cmnd, ptr %72, i32 0, i32 22, i32 9
  %73 = ptrtoint ptr %phase115 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %phase115, align 4
  %or = or i32 %74, 8
  store volatile i32 %or, ptr %phase115, align 4
  br label %sw.epilog328

sw.bb116:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %current_SC, align 4
  %phase120 = getelementptr inbounds %struct.scsi_cmnd, ptr %76, i32 0, i32 22, i32 9
  %77 = ptrtoint ptr %phase120 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %phase120, align 4
  %or121 = or i32 %78, 16
  store volatile i32 %or121, ptr %phase120, align 4
  br label %sw.epilog328

sw.bb122:                                         ; preds = %if.end93
  %79 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %current_SC, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %82, i32 0, i32 16
  %83 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %id, align 8
  %arrayidx126 = getelementptr [8 x i8], ptr %syncneg311, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx126, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %86)
  %cmp128 = icmp eq i8 %86, 1
  br i1 %cmp128, label %if.then130, label %if.else

if.then130:                                       ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.87, ptr noundef %80, ptr noundef nonnull @.str.120) #9
  %87 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %current_SC, align 4
  %device137 = getelementptr inbounds %struct.scsi_cmnd, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %device137 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device137, align 4
  %id138 = getelementptr inbounds %struct.scsi_device, ptr %90, i32 0, i32 16
  %91 = ptrtoint ptr %id138 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %id138, align 8
  %arrayidx139 = getelementptr [8 x i8], ptr %syncneg311, i32 0, i32 %92
  %93 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 2, ptr %arrayidx139, align 1
  br label %sw.epilog328

if.else:                                          ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.87, ptr noundef %80, ptr noundef nonnull @.str.134) #9
  br label %sw.epilog328

sw.bb143:                                         ; preds = %if.end93
  %94 = ptrtoint ptr %msgi_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %msgi_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp146 = icmp slt i32 %95, 2
  br i1 %cmp146, label %sw.bb143.cleanup331_crit_edge, label %lor.lhs.false148

sw.bb143.cleanup331_crit_edge:                    ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup331

lor.lhs.false148:                                 ; preds = %sw.bb143
  %96 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %97 to i32
  %add155 = add nuw nsw i32 %conv154, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %add155)
  %cmp156 = icmp ult i32 %95, %add155
  br i1 %cmp156, label %lor.lhs.false148.cleanup331_crit_edge, label %if.end159

lor.lhs.false148.cleanup331_crit_edge:            ; preds = %lor.lhs.false148
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup331

if.end159:                                        ; preds = %lor.lhs.false148
  %98 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx162, align 2
  %100 = zext i8 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.279)
  switch i8 %99, label %sw.default [
    i8 1, label %sw.bb164
    i8 12, label %for.body.preheader
  ]

for.body.preheader:                               ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  %101 = call ptr @memset(ptr %syncrate308, i32 0, i32 16)
  br label %sw.epilog328

sw.bb164:                                         ; preds = %if.end159
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %97)
  %cmp169.not = icmp eq i8 %97, 3
  br i1 %cmp169.not, label %if.end174, label %if.then171

if.then171:                                       ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %current_SC, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %103, ptr noundef nonnull @.str.135) #9
  br label %sw.epilog328

if.end174:                                        ; preds = %sw.bb164
  %104 = ptrtoint ptr %synchronous to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %synchronous, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool176.not = icmp eq i32 %105, 0
  br i1 %tobool176.not, label %if.end174.sw.epilog328_crit_edge, label %do.end181

if.end174.sw.epilog328_crit_edge:                 ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog328

do.end181:                                        ; preds = %if.end174
  %106 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %current_SC, align 4
  %tobool185.not = icmp eq ptr %107, null
  br i1 %tobool185.not, label %do.end181.cond.end215_crit_edge, label %cond.true207

do.end181.cond.end215_crit_edge:                  ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end215

cond.true207:                                     ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #11
  %device189 = getelementptr inbounds %struct.scsi_cmnd, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %device189 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %device189, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %111, i32 0, i32 17
  %112 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %host_no, align 4
  %id199 = getelementptr inbounds %struct.scsi_device, ptr %109, i32 0, i32 16
  %114 = ptrtoint ptr %id199 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %id199, align 8
  %and200 = and i32 %115, 15
  %lun = getelementptr inbounds %struct.scsi_device, ptr %109, i32 0, i32 18
  %116 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %lun, align 8
  %conv211 = trunc i64 %117 to i32
  %and213 = and i32 %conv211, 7
  br label %cond.end215

cond.end215:                                      ; preds = %cond.true207, %do.end181.cond.end215_crit_edge
  %cond203429 = phi i32 [ %and200, %cond.true207 ], [ -1, %do.end181.cond.end215_crit_edge ]
  %cond425428 = phi i32 [ %113, %cond.true207 ], [ -1, %do.end181.cond.end215_crit_edge ]
  %cond216 = phi i32 [ %and213, %cond.true207 ], [ -1, %do.end181.cond.end215_crit_edge ]
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, i32 noundef %cond425428, i32 noundef %cond203429, i32 noundef %cond216) #12
  %call221 = tail call i32 @spi_print_msg(ptr noundef %msgi) #9
  %call226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #12
  %118 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx229, align 1
  %conv230 = zext i8 %119 to i16
  %mul = shl nuw nsw i16 %conv230, 2
  %add231 = add nuw nsw i16 %mul, 49
  %div = udiv i16 %add231, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %119)
  %cmp232 = icmp ugt i8 %119, 112
  br i1 %cmp232, label %cond.end215.if.then248_crit_edge, label %lor.lhs.false234

cond.end215.if.then248_crit_edge:                 ; preds = %cond.end215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then248

lor.lhs.false234:                                 ; preds = %cond.end215
  %120 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx237, align 4
  %122 = add i8 %121, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %122)
  %123 = icmp ult i8 %122, -8
  br i1 %123, label %lor.lhs.false234.if.then248_crit_edge, label %if.end262

lor.lhs.false234.if.then248_crit_edge:            ; preds = %lor.lhs.false234
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then248

if.then248:                                       ; preds = %lor.lhs.false234.if.then248_crit_edge, %cond.end215.if.then248_crit_edge
  %124 = ptrtoint ptr %msgo_len to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %msgo_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %125)
  %cmp250 = icmp slt i32 %125, 256
  br i1 %cmp250, label %cond.true252, label %cond.false258

cond.true252:                                     ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #11
  %inc256 = add nsw i32 %125, 1
  %126 = ptrtoint ptr %msgo_len to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %inc256, ptr %msgo_len, align 8
  %arrayidx257 = getelementptr [256 x i8], ptr %msgo, i32 0, i32 %125
  %127 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 7, ptr %arrayidx257, align 1
  %128 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %current_SC, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.87, ptr noundef %129, ptr noundef nonnull @.str.142) #9
  br label %sw.epilog328

cond.false258:                                    ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call fastcc void @aha152x_error(ptr noundef %shpnt, ptr noundef nonnull @.str.104)
  unreachable

if.end262:                                        ; preds = %lor.lhs.false234
  call void @__sanitizer_cov_trace_pc() #11
  %130 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %current_SC, align 4
  %device271 = getelementptr inbounds %struct.scsi_cmnd, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %device271 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %device271, align 4
  %id272 = getelementptr inbounds %struct.scsi_device, ptr %133, i32 0, i32 16
  %134 = ptrtoint ptr %id272 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %id272, align 8
  %arrayidx273 = getelementptr [8 x i8], ptr %syncrate308, i32 0, i32 %135
  %136 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx273, align 1
  %div.tr = trunc i16 %div to i8
  %138 = shl i8 %div.tr, 4
  %139 = add i8 %138, -32
  %140 = add i8 %139, %121
  %conv276 = or i8 %137, %140
  store i8 %conv276, ptr %arrayidx273, align 1
  %141 = load ptr, ptr %current_SC, align 4
  %device281 = getelementptr inbounds %struct.scsi_cmnd, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %device281 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %device281, align 4
  %id282 = getelementptr inbounds %struct.scsi_device, ptr %143, i32 0, i32 16
  %144 = ptrtoint ptr %id282 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %id282, align 8
  %arrayidx283 = getelementptr [8 x i8], ptr %syncneg311, i32 0, i32 %145
  %146 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 2, ptr %arrayidx283, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !631
  tail call void @arm_heavy_mb() #9
  %147 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %current_SC, align 4
  %device291 = getelementptr inbounds %struct.scsi_cmnd, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %device291 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %device291, align 4
  %id292 = getelementptr inbounds %struct.scsi_device, ptr %150, i32 0, i32 16
  %151 = ptrtoint ptr %id292 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %id292, align 8
  %arrayidx293 = getelementptr [8 x i8], ptr %syncrate308, i32 0, i32 %152
  %153 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx293, align 1
  %155 = and i8 %154, 127
  %156 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %io_port0, align 8
  %add299 = add i32 %157, 4
  %and300 = and i32 %add299, 1048575
  %add301 = or i32 %and300, -18874368
  %158 = inttoptr i32 %add301 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 %155) #9, !srcloc !531
  br label %sw.epilog328

sw.default:                                       ; preds = %if.end159
  %159 = ptrtoint ptr %msgo_len to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %msgo_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %160)
  %cmp317 = icmp slt i32 %160, 256
  br i1 %cmp317, label %cond.true319, label %cond.false326

cond.true319:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %inc324 = add nsw i32 %160, 1
  %161 = ptrtoint ptr %msgo_len to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %inc324, ptr %msgo_len, align 8
  %arrayidx325 = getelementptr [256 x i8], ptr %msgo, i32 0, i32 %160
  %162 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 7, ptr %arrayidx325, align 1
  br label %sw.epilog328

cond.false326:                                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.47, ptr noundef %shost_gendev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.104) #12
  tail call fastcc void @show_queues(ptr noundef %shpnt) #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #13
  unreachable

sw.epilog328:                                     ; preds = %cond.true319, %if.end262, %cond.true252, %if.end174.sw.epilog328_crit_edge, %if.then171, %for.body.preheader, %if.else, %if.then130, %sw.bb116, %if.end111, %if.end93.sw.epilog328_crit_edge
  %163 = ptrtoint ptr %msgi_len to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %msgi_len, align 8
  br label %cleanup331

cleanup331:                                       ; preds = %sw.epilog328, %lor.lhs.false148.cleanup331_crit_edge, %sw.bb143.cleanup331_crit_edge, %if.end80, %if.then68, %do.end52
  %164 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %io_port0, align 8
  %add = add i32 %165, 12
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %166 = inttoptr i32 %add1 to ptr
  %167 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %166) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !628
  %168 = and i8 %167, 27
  %.not = icmp eq i8 %168, 1
  br i1 %.not, label %cleanup331.if.end_crit_edge, label %cleanup331.return_crit_edge

cleanup331.return_crit_edge:                      ; preds = %cleanup331
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

cleanup331.if.end_crit_edge:                      ; preds = %cleanup331
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

return:                                           ; preds = %cleanup331.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msgi_end(ptr nocapture noundef readonly %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msgi_len = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 12
  %0 = ptrtoint ptr %msgi_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msgi_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_SC, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.132, ptr noundef %3, ptr noundef nonnull @.str.143, i32 noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %msgo_len = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %msgo_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msgo_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5 = icmp sgt i32 %5, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %6 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_port0, align 8
  %add = add i32 %7, 12
  %and = and i32 %add, 1048575
  %add7 = or i32 %and, -18874368
  %8 = inttoptr i32 %add7 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !632
  %10 = and i8 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %do.body, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !633
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_port0, align 8
  %add13 = add i32 %12, 3
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %13 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 -16) #9, !srcloc !531
  br label %if.end17

if.end17:                                         ; preds = %do.body, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @status_run(ptr nocapture noundef readonly %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port0, align 8
  %add = add i32 %1, 11
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !634
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_port0, align 8
  %add8 = add i32 %6, 6
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %7 = inttoptr i32 %add10 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !635
  %conv14 = zext i8 %8 to i32
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %current_SC, align 4
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %10, i32 0, i32 22, i32 5
  %11 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %conv14, ptr %Status, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @datai_init(ptr nocapture noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !636
  tail call void @arm_heavy_mb() #9
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %0 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port1, align 4
  %add = add i32 %1, 18
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 2) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !637
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_port1, align 4
  %add6 = add i32 %4, 18
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %5 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -126) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !638
  tail call void @arm_heavy_mb() #9
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %6 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_port0, align 8
  %add13 = add i32 %7, 1
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %8 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 48) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !639
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_port0, align 8
  %add21 = add i32 %10, 1
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %11 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -32) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !640
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_port1, align 4
  %add29 = add i32 %13, 16
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %14 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !641
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_port1, align 4
  %add37 = add i32 %16, 17
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %17 = inttoptr i32 %add39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 60) #9, !srcloc !531
  %data_len = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 1
  %18 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %data_len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @datai_run(ptr nocapture noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %current_SC127573 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %data_len296 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %0 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port1, align 4
  %add = add i32 %1, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !642
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %lor.lhs.false

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

lor.lhs.false:                                    ; preds = %while.cond
  %5 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_port1, align 4
  %add8 = add i32 %6, 20
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %7 = inttoptr i32 %add10 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !643
  %9 = and i8 %8, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp16 = icmp eq i8 %9, 0
  br i1 %cmp16, label %lor.lhs.false.while.body_crit_edge, label %lor.rhs

lor.lhs.false.while.body_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

lor.rhs:                                          ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_port0, align 8
  %add20 = add i32 %11, 13
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %12 = inttoptr i32 %add22 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !644
  %14 = and i8 %13, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp28 = icmp eq i8 %14, 0
  br i1 %cmp28, label %lor.rhs.while.body_crit_edge, label %lor.rhs.while.end310_crit_edge

lor.rhs.while.end310_crit_edge:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end310

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %lor.lhs.false.while.body_crit_edge, %while.cond.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_port1, align 4
  %add35588 = add i32 %17, 20
  %and36589 = and i32 %add35588, 1048575
  %add37590 = or i32 %and36589, -18874368
  %18 = inttoptr i32 %add37590 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !645
  %20 = and i8 %19, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp43591 = icmp eq i8 %20, 0
  br i1 %cmp43591, label %land.rhs.lr.ph, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %while.body
  %add30.neg = sub i32 -10000, %15
  br label %land.rhs

land.rhs:                                         ; preds = %while.body47.land.rhs_crit_edge, %land.rhs.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add30.neg, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp45 = icmp slt i32 %sub, 0
  br i1 %cmp45, label %while.body47, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body47:                                     ; preds = %land.rhs
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !646
  %22 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_port1, align 4
  %add35 = add i32 %23, 20
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %24 = inttoptr i32 %add37 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !645
  %26 = and i8 %25, 48
  %cmp43 = icmp eq i8 %26, 0
  br i1 %cmp43, label %while.body47.land.rhs_crit_edge, label %while.body47.while.end_crit_edge

while.body47.while.end_crit_edge:                 ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body47.land.rhs_crit_edge:                  ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end:                                        ; preds = %while.body47.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.body.while.end_crit_edge
  %27 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %io_port1, align 4
  %add51 = add i32 %28, 20
  %and52 = and i32 %add51, 1048575
  %add53 = or i32 %and52, -18874368
  %29 = inttoptr i32 %add53 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !647
  %31 = and i8 %30, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp59 = icmp eq i8 %31, 0
  br i1 %cmp59, label %while.end.while.end310.sink.split_crit_edge, label %if.end

while.end.while.end310.sink.split_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end310.sink.split

if.end:                                           ; preds = %while.end
  %32 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_port1, align 4
  %add65 = add i32 %33, 20
  %and66 = and i32 %add65, 1048575
  %add67 = or i32 %and66, -18874368
  %34 = inttoptr i32 %add67 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !648
  %36 = and i8 %35, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp73.not = icmp eq i8 %36, 0
  br i1 %cmp73.not, label %if.else, label %if.end125.thread

if.else:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %38 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_port0, align 8
  %add81592 = add i32 %39, 13
  %and82593 = and i32 %add81592, 1048575
  %add83594 = or i32 %and82593, -18874368
  %40 = inttoptr i32 %add83594 to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !649
  %42 = and i8 %41, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp89595 = icmp eq i8 %42, 0
  br i1 %cmp89595, label %land.rhs91.lr.ph, label %if.else.while.end97_crit_edge

if.else.while.end97_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end97

land.rhs91.lr.ph:                                 ; preds = %if.else
  %add76.neg = sub i32 -10000, %37
  br label %land.rhs91

land.rhs91:                                       ; preds = %while.body96.land.rhs91_crit_edge, %land.rhs91.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %sub92 = add i32 %add76.neg, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub92)
  %cmp93 = icmp slt i32 %sub92, 0
  br i1 %cmp93, label %while.body96, label %land.rhs91.while.end97_crit_edge

land.rhs91.while.end97_crit_edge:                 ; preds = %land.rhs91
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end97

while.body96:                                     ; preds = %land.rhs91
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !650
  %44 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_port0, align 8
  %add81 = add i32 %45, 13
  %and82 = and i32 %add81, 1048575
  %add83 = or i32 %and82, -18874368
  %46 = inttoptr i32 %add83 to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !649
  %48 = and i8 %47, 16
  %cmp89 = icmp eq i8 %48, 0
  br i1 %cmp89, label %while.body96.land.rhs91_crit_edge, label %while.body96.while.end97_crit_edge

while.body96.while.end97_crit_edge:               ; preds = %while.body96
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end97

while.body96.land.rhs91_crit_edge:                ; preds = %while.body96
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs91

while.end97:                                      ; preds = %while.body96.while.end97_crit_edge, %land.rhs91.while.end97_crit_edge, %if.else.while.end97_crit_edge
  %49 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_port0, align 8
  %add101 = add i32 %50, 13
  %and102 = and i32 %add101, 1048575
  %add103 = or i32 %and102, -18874368
  %51 = inttoptr i32 %add103 to ptr
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !651
  %53 = and i8 %52, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp109 = icmp eq i8 %53, 0
  br i1 %cmp109, label %while.end97.while.end310.sink.split_crit_edge, label %if.end125

while.end97.while.end310.sink.split_crit_edge:    ; preds = %while.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end310.sink.split

if.end125:                                        ; preds = %while.end97
  %54 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_port1, align 4
  %add118 = add i32 %55, 21
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %56 = inttoptr i32 %add120 to ptr
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !652
  %conv124 = zext i8 %57 to i32
  %58 = ptrtoint ptr %current_SC127573 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %current_SC127573, align 4
  %this_residual = getelementptr inbounds %struct.scsi_cmnd, ptr %59, i32 0, i32 22, i32 1
  %60 = ptrtoint ptr %this_residual to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %this_residual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp128 = icmp sgt i32 %61, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp132598.not = icmp eq i8 %57, 0
  br i1 %cmp128, label %while.cond131.preheader, label %if.else256

if.end125.thread:                                 ; preds = %if.end
  %62 = ptrtoint ptr %current_SC127573 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %current_SC127573, align 4
  %this_residual574 = getelementptr inbounds %struct.scsi_cmnd, ptr %63, i32 0, i32 22, i32 1
  %64 = ptrtoint ptr %this_residual574 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %this_residual574, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp128575 = icmp sgt i32 %65, 0
  br i1 %cmp128575, label %if.end125.thread.land.rhs134.preheader_crit_edge, label %if.end125.thread.if.then259_crit_edge

if.end125.thread.if.then259_crit_edge:            ; preds = %if.end125.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then259

if.end125.thread.land.rhs134.preheader_crit_edge: ; preds = %if.end125.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs134.preheader

while.cond131.preheader:                          ; preds = %if.end125
  br i1 %cmp132598.not, label %while.cond131.preheader.while.cond.backedge_crit_edge, label %while.cond131.preheader.land.rhs134.preheader_crit_edge

while.cond131.preheader.land.rhs134.preheader_crit_edge: ; preds = %while.cond131.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs134.preheader

while.cond131.preheader.while.cond.backedge_crit_edge: ; preds = %while.cond131.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.body299, %if.else256.while.cond.backedge_crit_edge, %if.end254.while.cond.backedge_crit_edge, %land.rhs134.while.cond.backedge_crit_edge, %while.cond131.preheader.while.cond.backedge_crit_edge
  br label %while.cond

land.rhs134.preheader:                            ; preds = %while.cond131.preheader.land.rhs134.preheader_crit_edge, %if.end125.thread.land.rhs134.preheader_crit_edge
  %fifodata.1599.ph = phi i32 [ 128, %if.end125.thread.land.rhs134.preheader_crit_edge ], [ %conv124, %while.cond131.preheader.land.rhs134.preheader_crit_edge ]
  br label %land.rhs134

land.rhs134:                                      ; preds = %if.end254.land.rhs134_crit_edge, %land.rhs134.preheader
  %fifodata.1599 = phi i32 [ %sub153, %if.end254.land.rhs134_crit_edge ], [ %fifodata.1599.ph, %land.rhs134.preheader ]
  %66 = ptrtoint ptr %current_SC127573 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %current_SC127573, align 4
  %this_residual138 = getelementptr inbounds %struct.scsi_cmnd, ptr %67, i32 0, i32 22, i32 1
  %68 = ptrtoint ptr %this_residual138 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %this_residual138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp139 = icmp sgt i32 %69, 0
  br i1 %cmp139, label %while.body142, label %land.rhs134.while.cond.backedge_crit_edge

land.rhs134.while.cond.backedge_crit_edge:        ; preds = %land.rhs134
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.body142:                                    ; preds = %land.rhs134
  %70 = tail call i32 @llvm.umin.i32(i32 %fifodata.1599, i32 %69)
  %sub153 = sub nsw i32 %fifodata.1599, %70
  %and154 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool.not = icmp eq i32 %and154, 0
  br i1 %tobool.not, label %while.body142.if.end188_crit_edge, label %do.body

while.body142.if.end188_crit_edge:                ; preds = %while.body142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

do.body:                                          ; preds = %while.body142
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !653
  tail call void @arm_heavy_mb() #9
  %71 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %io_port1, align 4
  %add158 = add i32 %72, 18
  %and159 = and i32 %add158, 1048575
  %add160 = or i32 %and159, -18874368
  %73 = inttoptr i32 %add160 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 -64) #9, !srcloc !531
  %74 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %io_port1, align 4
  %add165 = add i32 %75, 22
  %and166 = and i32 %add165, 1048575
  %add167 = or i32 %and166, -18874368
  %76 = inttoptr i32 %add167 to ptr
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %76) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !654
  %78 = ptrtoint ptr %current_SC127573 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %current_SC127573, align 4
  %SCp173 = getelementptr inbounds %struct.scsi_cmnd, ptr %79, i32 0, i32 22
  %80 = ptrtoint ptr %SCp173 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %SCp173, align 4
  %incdec.ptr = getelementptr i8, ptr %81, i32 1
  store ptr %incdec.ptr, ptr %SCp173, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %77, ptr %81, align 1
  %83 = load ptr, ptr %current_SC127573, align 4
  %this_residual177 = getelementptr inbounds %struct.scsi_cmnd, ptr %83, i32 0, i32 22, i32 1
  %84 = ptrtoint ptr %this_residual177 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %this_residual177, align 4
  %dec = add i32 %85, -1
  store i32 %dec, ptr %this_residual177, align 4
  %86 = ptrtoint ptr %data_len296 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %data_len296, align 4
  %inc = add i32 %87, 1
  store i32 %inc, ptr %data_len296, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !655
  tail call void @arm_heavy_mb() #9
  %88 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %io_port1, align 4
  %add184 = add i32 %89, 18
  %and185 = and i32 %add184, 1048575
  %add186 = or i32 %and185, -18874368
  %90 = inttoptr i32 %add186 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 -128) #9, !srcloc !531
  br label %if.end188

if.end188:                                        ; preds = %do.body, %while.body142.if.end188_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp189 = icmp ugt i32 %70, 1
  br i1 %cmp189, label %if.then191, label %if.end188.if.end216_crit_edge

if.end188.if.end216_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end216

if.then191:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  %shr581 = lshr i32 %70, 1
  %91 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %io_port1, align 4
  %add194 = add i32 %92, 22
  %and195 = and i32 %add194, 1048575
  %add196 = or i32 %and195, -18874368
  %93 = inttoptr i32 %add196 to ptr
  %94 = ptrtoint ptr %current_SC127573 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %current_SC127573, align 4
  %SCp200 = getelementptr inbounds %struct.scsi_cmnd, ptr %95, i32 0, i32 22
  %96 = ptrtoint ptr %SCp200 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %SCp200, align 4
  tail call void @__raw_readsw(ptr noundef nonnull %93, ptr noundef %97, i32 noundef %shr581) #9
  %mul = and i32 %70, -2
  %98 = ptrtoint ptr %current_SC127573 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %current_SC127573, align 4
  %SCp204 = getelementptr inbounds %struct.scsi_cmnd, ptr %99, i32 0, i32 22
  %100 = ptrtoint ptr %SCp204 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %SCp204, align 4
  %add.ptr = getelementptr i8, ptr %101, i32 %mul
  store ptr %add.ptr, ptr %SCp204, align 4
  %102 = load ptr, ptr %current_SC127573, align 4
  %this_residual210 = getelementptr inbounds %struct.scsi_cmnd, ptr %102, i32 0, i32 22, i32 1
  %103 = ptrtoint ptr %this_residual210 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %this_residual210, align 4
  %sub211 = sub i32 %104, %mul
  store i32 %sub211, ptr %this_residual210, align 4
  %105 = ptrtoint ptr %data_len296 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %data_len296, align 4
  %add215 = add i32 %106, %mul
  store i32 %add215, ptr %data_len296, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.then191, %if.end188.if.end216_crit_edge
  %107 = ptrtoint ptr %current_SC127573 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %current_SC127573, align 4
  %this_residual220 = getelementptr inbounds %struct.scsi_cmnd, ptr %108, i32 0, i32 22, i32 1
  %109 = ptrtoint ptr %this_residual220 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %this_residual220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp221 = icmp eq i32 %110, 0
  br i1 %cmp221, label %land.lhs.true, label %if.end216.if.end254_crit_edge

if.end216.if.end254_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end254

land.lhs.true:                                    ; preds = %if.end216
  %buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %108, i32 0, i32 22, i32 2
  %111 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %buffer, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %and.i = and i32 %114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then227, label %land.lhs.true.if.end254_crit_edge

land.lhs.true.if.end254_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end254

if.then227:                                       ; preds = %land.lhs.true
  %call232 = tail call ptr @sg_next(ptr noundef %112) #9
  %115 = ptrtoint ptr %current_SC127573 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %current_SC127573, align 4
  %buffer236 = getelementptr inbounds %struct.scsi_cmnd, ptr %116, i32 0, i32 22, i32 2
  %117 = ptrtoint ptr %buffer236 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call232, ptr %buffer236, align 4
  %118 = load ptr, ptr %current_SC127573, align 4
  %buffer240 = getelementptr inbounds %struct.scsi_cmnd, ptr %118, i32 0, i32 22, i32 2
  %119 = ptrtoint ptr %buffer240 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %buffer240, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %and.i.i.i = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !656

do.body2.i.i:                                     ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !657
  unreachable

sg_virt.exit:                                     ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = and i32 %122, -4
  %123 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %123) #9
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %120, i32 0, i32 1
  %124 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %125
  %126 = ptrtoint ptr %current_SC127573 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %current_SC127573, align 4
  %SCp244 = getelementptr inbounds %struct.scsi_cmnd, ptr %127, i32 0, i32 22
  %128 = ptrtoint ptr %SCp244 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %add.ptr.i, ptr %SCp244, align 4
  %129 = load ptr, ptr %current_SC127573, align 4
  %buffer249 = getelementptr inbounds %struct.scsi_cmnd, ptr %129, i32 0, i32 22, i32 2
  %130 = ptrtoint ptr %buffer249 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %buffer249, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %length, align 4
  %this_residual253 = getelementptr inbounds %struct.scsi_cmnd, ptr %129, i32 0, i32 22, i32 1
  %134 = ptrtoint ptr %this_residual253 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %this_residual253, align 4
  br label %if.end254

if.end254:                                        ; preds = %sg_virt.exit, %land.lhs.true.if.end254_crit_edge, %if.end216.if.end254_crit_edge
  %cmp132 = icmp sgt i32 %sub153, 0
  br i1 %cmp132, label %if.end254.land.rhs134_crit_edge, label %if.end254.while.cond.backedge_crit_edge

if.end254.while.cond.backedge_crit_edge:          ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end254.land.rhs134_crit_edge:                  ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs134

if.else256:                                       ; preds = %if.end125
  br i1 %cmp132598.not, label %if.else256.while.cond.backedge_crit_edge, label %if.else256.if.then259_crit_edge

if.else256.if.then259_crit_edge:                  ; preds = %if.else256
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then259

if.else256.while.cond.backedge_crit_edge:         ; preds = %if.else256
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then259:                                       ; preds = %if.else256.if.then259_crit_edge, %if.end125.thread.if.then259_crit_edge
  %fifodata.0576580 = phi i32 [ %conv124, %if.else256.if.then259_crit_edge ], [ 128, %if.end125.thread.if.then259_crit_edge ]
  %135 = phi ptr [ %59, %if.else256.if.then259_crit_edge ], [ %63, %if.end125.thread.if.then259_crit_edge ]
  %136 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %io_port1, align 4
  %add265 = add i32 %137, 21
  %and266 = and i32 %add265, 1048575
  %add267 = or i32 %and266, -18874368
  %138 = inttoptr i32 %add267 to ptr
  %139 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %138) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !658
  %conv271 = zext i8 %139 to i32
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %135, ptr noundef nonnull @.str.146, i32 noundef %fifodata.0576580, i32 noundef %conv271) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !659
  tail call void @arm_heavy_mb() #9
  %140 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %io_port1, align 4
  %add277 = add i32 %141, 18
  %and278 = and i32 %add277, 1048575
  %add279 = or i32 %and278, -18874368
  %142 = inttoptr i32 %add279 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 -64) #9, !srcloc !531
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fifodata.0576580)
  %cmp282596.not = icmp eq i32 %fifodata.0576580, 0
  br i1 %cmp282596.not, label %if.then259.do.body299_crit_edge, label %if.then259.while.body284_crit_edge

if.then259.while.body284_crit_edge:               ; preds = %if.then259
  br label %while.body284

if.then259.do.body299_crit_edge:                  ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body299

while.body284:                                    ; preds = %while.body284.while.body284_crit_edge, %if.then259.while.body284_crit_edge
  %fifodata.2597 = phi i32 [ %dec294, %while.body284.while.body284_crit_edge ], [ %fifodata.0576580, %if.then259.while.body284_crit_edge ]
  %143 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %io_port1, align 4
  %add288 = add i32 %144, 22
  %and289 = and i32 %add288, 1048575
  %add290 = or i32 %and289, -18874368
  %145 = inttoptr i32 %add290 to ptr
  %146 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %145) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !660
  %dec294 = add nsw i32 %fifodata.2597, -1
  %147 = ptrtoint ptr %data_len296 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %data_len296, align 4
  %inc297 = add i32 %148, 1
  store i32 %inc297, ptr %data_len296, align 4
  %cmp282 = icmp ugt i32 %fifodata.2597, 1
  br i1 %cmp282, label %while.body284.while.body284_crit_edge, label %while.body284.do.body299_crit_edge

while.body284.do.body299_crit_edge:               ; preds = %while.body284
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body299

while.body284.while.body284_crit_edge:            ; preds = %while.body284
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body284

do.body299:                                       ; preds = %while.body284.do.body299_crit_edge, %if.then259.do.body299_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !661
  tail call void @arm_heavy_mb() #9
  %149 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %io_port1, align 4
  %add304 = add i32 %150, 18
  %and305 = and i32 %add304, 1048575
  %add306 = or i32 %and305, -18874368
  %151 = inttoptr i32 %add306 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %151, i8 -64) #9, !srcloc !531
  br label %while.cond.backedge

while.end310.sink.split:                          ; preds = %while.end97.while.end310.sink.split_crit_edge, %while.end.while.end310.sink.split_crit_edge
  %.str.145.sink = phi ptr [ @.str.144, %while.end.while.end310.sink.split_crit_edge ], [ @.str.145, %while.end97.while.end310.sink.split_crit_edge ]
  %152 = ptrtoint ptr %current_SC127573 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %current_SC127573, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %153, ptr noundef nonnull %.str.145.sink) #9
  br label %while.end310

while.end310:                                     ; preds = %while.end310.sink.split, %lor.rhs.while.end310_crit_edge
  %154 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %io_port1, align 4
  %add314 = add i32 %155, 20
  %and315 = and i32 %add314, 1048575
  %add316 = or i32 %and315, -18874368
  %156 = inttoptr i32 %add316 to ptr
  %157 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %156) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !662
  %158 = and i8 %157, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %cmp322 = icmp eq i8 %158, 0
  br i1 %cmp322, label %while.end310.if.then365_crit_edge, label %lor.lhs.false324

while.end310.if.then365_crit_edge:                ; preds = %while.end310
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then365

lor.lhs.false324:                                 ; preds = %while.end310
  %159 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %io_port1, align 4
  %add328 = add i32 %160, 20
  %and329 = and i32 %add328, 1048575
  %add330 = or i32 %and329, -18874368
  %161 = inttoptr i32 %add330 to ptr
  %162 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %161) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !663
  %163 = and i8 %162, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %cmp336 = icmp eq i8 %163, 0
  br i1 %cmp336, label %lor.lhs.false324.if.then365_crit_edge, label %lor.lhs.false338

lor.lhs.false324.if.then365_crit_edge:            ; preds = %lor.lhs.false324
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then365

lor.lhs.false338:                                 ; preds = %lor.lhs.false324
  %164 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %io_port0, align 8
  %add342 = add i32 %165, 13
  %and343 = and i32 %add342, 1048575
  %add344 = or i32 %and343, -18874368
  %166 = inttoptr i32 %add344 to ptr
  %167 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %166) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !664
  %168 = and i8 %167, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %cmp350 = icmp eq i8 %168, 0
  br i1 %cmp350, label %lor.lhs.false338.if.then365_crit_edge, label %lor.lhs.false352

lor.lhs.false338.if.then365_crit_edge:            ; preds = %lor.lhs.false338
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then365

lor.lhs.false352:                                 ; preds = %lor.lhs.false338
  %169 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %io_port1, align 4
  %add356 = add i32 %170, 21
  %and357 = and i32 %add356, 1048575
  %add358 = or i32 %and357, -18874368
  %171 = inttoptr i32 %add358 to ptr
  %172 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %171) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !665
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %cmp363.not = icmp eq i8 %172, 0
  br i1 %cmp363.not, label %lor.lhs.false352.if.end368_crit_edge, label %lor.lhs.false352.if.then365_crit_edge

lor.lhs.false352.if.then365_crit_edge:            ; preds = %lor.lhs.false352
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then365

lor.lhs.false352.if.end368_crit_edge:             ; preds = %lor.lhs.false352
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end368

if.then365:                                       ; preds = %lor.lhs.false352.if.then365_crit_edge, %lor.lhs.false338.if.then365_crit_edge, %lor.lhs.false324.if.then365_crit_edge, %while.end310.if.then365_crit_edge
  %173 = ptrtoint ptr %current_SC127573 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %current_SC127573, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %174, ptr noundef nonnull @.str.147) #9
  br label %if.end368

if.end368:                                        ; preds = %if.then365, %lor.lhs.false352.if.end368_crit_edge
  %175 = ptrtoint ptr %data_len296 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %data_len296, align 4
  %177 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %io_port0, align 8
  %add374 = add i32 %178, 10
  %and375 = and i32 %add374, 1048575
  %add376 = or i32 %and375, -18874368
  %179 = inttoptr i32 %add376 to ptr
  %180 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %179) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !666
  %conv380 = zext i8 %180 to i32
  %shl = shl nuw nsw i32 %conv380, 16
  %181 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %io_port0, align 8
  %add384 = add i32 %182, 9
  %and385 = and i32 %add384, 1048575
  %add386 = or i32 %and385, -18874368
  %183 = inttoptr i32 %add386 to ptr
  %184 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %183) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !667
  %conv390 = zext i8 %184 to i32
  %shl391 = shl nuw nsw i32 %conv390, 8
  %add392 = or i32 %shl391, %shl
  %185 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %io_port0, align 8
  %add396 = add i32 %186, 8
  %and397 = and i32 %add396, 1048575
  %add398 = or i32 %and397, -18874368
  %187 = inttoptr i32 %add398 to ptr
  %188 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %187) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !668
  %conv402 = zext i8 %188 to i32
  %add403 = or i32 %add392, %conv402
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %add403)
  %cmp404.not = icmp eq i32 %176, %add403
  br i1 %cmp404.not, label %if.end368.if.end497_crit_edge, label %if.then406

if.end368.if.end497_crit_edge:                    ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end497

if.then406:                                       ; preds = %if.end368
  %189 = ptrtoint ptr %current_SC127573 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %current_SC127573, align 4
  %191 = ptrtoint ptr %data_len296 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %data_len296, align 4
  %193 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %io_port0, align 8
  %add414 = add i32 %194, 10
  %and415 = and i32 %add414, 1048575
  %add416 = or i32 %and415, -18874368
  %195 = inttoptr i32 %add416 to ptr
  %196 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %195) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !669
  %conv420 = zext i8 %196 to i32
  %shl421 = shl nuw nsw i32 %conv420, 16
  %197 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %io_port0, align 8
  %add425 = add i32 %198, 9
  %and426 = and i32 %add425, 1048575
  %add427 = or i32 %and426, -18874368
  %199 = inttoptr i32 %add427 to ptr
  %200 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %199) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !670
  %conv431 = zext i8 %200 to i32
  %shl432 = shl nuw nsw i32 %conv431, 8
  %add433 = or i32 %shl432, %shl421
  %201 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %io_port0, align 8
  %add437 = add i32 %202, 8
  %and438 = and i32 %add437, 1048575
  %add439 = or i32 %and438, -18874368
  %203 = inttoptr i32 %add439 to ptr
  %204 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %203) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !671
  %conv443 = zext i8 %204 to i32
  %add444 = or i32 %add433, %conv443
  %205 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %io_port0, align 8
  %add448 = add i32 %206, 10
  %and449 = and i32 %add448, 1048575
  %add450 = or i32 %and449, -18874368
  %207 = inttoptr i32 %add450 to ptr
  %208 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %207) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !672
  %conv454 = zext i8 %208 to i32
  %shl455 = shl nuw nsw i32 %conv454, 16
  %209 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %io_port0, align 8
  %add459 = add i32 %210, 9
  %and460 = and i32 %add459, 1048575
  %add461 = or i32 %and460, -18874368
  %211 = inttoptr i32 %add461 to ptr
  %212 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %211) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !673
  %conv465 = zext i8 %212 to i32
  %shl466 = shl nuw nsw i32 %conv465, 8
  %add467 = or i32 %shl466, %shl455
  %213 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %io_port0, align 8
  %add471 = add i32 %214, 8
  %and472 = and i32 %add471, 1048575
  %add473 = or i32 %and472, -18874368
  %215 = inttoptr i32 %add473 to ptr
  %216 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %215) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !674
  %conv477 = zext i8 %216 to i32
  %add478 = or i32 %add467, %conv477
  %217 = ptrtoint ptr %data_len296 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %data_len296, align 4
  %sub481 = sub i32 %add478, %218
  %219 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %io_port1, align 4
  %add485 = add i32 %220, 21
  %and486 = and i32 %add485, 1048575
  %add487 = or i32 %and486, -18874368
  %221 = inttoptr i32 %add487 to ptr
  %222 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %221) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !675
  %conv491 = zext i8 %222 to i32
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %190, ptr noundef nonnull @.str.148, i32 noundef %192, i32 noundef %add444, i32 noundef %sub481, i32 noundef %conv491) #9
  br label %while.body495

while.body495:                                    ; preds = %while.body495.while.body495_crit_edge, %if.then406
  %__ms.0600 = phi i32 [ 10000, %if.then406 ], [ %dec493, %while.body495.while.body495_crit_edge ]
  %dec493 = add nsw i32 %__ms.0600, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %223 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %223(i32 noundef 214748000) #9
  %tobool494.not = icmp eq i32 %dec493, 0
  br i1 %tobool494.not, label %while.body495.if.end497_crit_edge, label %while.body495.while.body495_crit_edge

while.body495.while.body495_crit_edge:            ; preds = %while.body495
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body495

while.body495.if.end497_crit_edge:                ; preds = %while.body495
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end497

if.end497:                                        ; preds = %while.body495.if.end497_crit_edge, %if.end368.if.end497_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @datai_end(ptr nocapture noundef readonly %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_SC, align 4
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %2 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_port0, align 8
  %add = add i32 %3, 10
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %4 = inttoptr i32 %add2 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !676
  %conv = zext i8 %5 to i32
  %shl.neg = mul nsw i32 %conv, -65536
  %6 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_port0, align 8
  %add7 = add i32 %7, 9
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %8 = inttoptr i32 %add9 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !677
  %conv13 = zext i8 %9 to i32
  %shl14.neg = mul nsw i32 %conv13, -256
  %add15.neg = add nsw i32 %shl14.neg, %shl.neg
  %10 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_port0, align 8
  %add19 = add i32 %11, 8
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %12 = inttoptr i32 %add21 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !678
  %conv25 = zext i8 %13 to i32
  %add26.neg = sub nsw i32 %add15.neg, %conv25
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resid_len.i.i, align 4
  %add.i = add i32 %add26.neg, %15
  store i32 %add.i, ptr %resid_len.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !679
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_port0, align 8
  %add29 = add i32 %17, 1
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %18 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 48) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !680
  tail call void @arm_heavy_mb() #9
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %19 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io_port1, align 4
  %add36 = add i32 %20, 18
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %21 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #9, !srcloc !531
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @datao_init(ptr nocapture noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !681
  tail call void @arm_heavy_mb() #9
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %0 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port1, align 4
  %add = add i32 %1, 18
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 10) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !682
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_port1, align 4
  %add6 = add i32 %4, 18
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %5 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -120) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !683
  tail call void @arm_heavy_mb() #9
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %6 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_port0, align 8
  %add13 = add i32 %7, 1
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %8 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 48) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !684
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_port0, align 8
  %add21 = add i32 %10, 1
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %11 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -32) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !685
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_port1, align 4
  %add29 = add i32 %13, 16
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %14 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !686
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_port1, align 4
  %add37 = add i32 %16, 17
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %17 = inttoptr i32 %add39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 60) #9, !srcloc !531
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %current_SC, align 4
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resid_len.i, align 4
  %data_len = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 1
  %22 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %data_len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @datao_run(ptr nocapture noundef readonly %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.end.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port1, align 4
  %add = add i32 %1, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !687
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %land.rhs, label %while.cond.while.end183_crit_edge

while.cond.while.end183_crit_edge:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end183

land.rhs:                                         ; preds = %while.cond
  %5 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %current_SC, align 4
  %this_residual = getelementptr inbounds %struct.scsi_cmnd, ptr %6, i32 0, i32 22, i32 1
  %7 = ptrtoint ptr %this_residual to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %this_residual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp sgt i32 %8, 0
  br i1 %cmp6, label %while.body, label %land.rhs.while.end183_crit_edge

land.rhs.while.end183_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end183

while.body:                                       ; preds = %land.rhs
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 128)
  %10 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_port1, align 4
  %add21 = add i32 %11, 20
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %12 = inttoptr i32 %add23 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !688
  %14 = and i8 %13, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp29 = icmp eq i8 %14, 0
  br i1 %cmp29, label %if.then31, label %if.end44

if.then31:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %current_SC, align 4
  %17 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_port1, align 4
  %add37 = add i32 %18, 21
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %19 = inttoptr i32 %add39 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !689
  %conv43 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %16, ptr noundef nonnull @.str.149, i32 noundef %conv43) #9
  br label %while.end183

if.end44:                                         ; preds = %while.body
  %and45 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool.not = icmp eq i32 %and45, 0
  br i1 %tobool.not, label %if.end44.if.end80_crit_edge, label %do.body

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

do.body:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !690
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io_port1, align 4
  %add49 = add i32 %22, 18
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %23 = inttoptr i32 %add51 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 -56) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !691
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %current_SC, align 4
  %SCp58 = getelementptr inbounds %struct.scsi_cmnd, ptr %25, i32 0, i32 22
  %26 = ptrtoint ptr %SCp58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %SCp58, align 4
  %incdec.ptr = getelementptr i8, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %SCp58, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %30 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_port1, align 4
  %add61 = add i32 %31, 22
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %32 = inttoptr i32 %add63 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %29) #9, !srcloc !531
  %33 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %current_SC, align 4
  %this_residual68 = getelementptr inbounds %struct.scsi_cmnd, ptr %34, i32 0, i32 22, i32 1
  %35 = ptrtoint ptr %this_residual68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %this_residual68, align 4
  %dec = add i32 %36, -1
  store i32 %dec, ptr %this_residual68, align 4
  %37 = load ptr, ptr %current_SC, align 4
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %resid_len.i.i, align 4
  %add.i = add i32 %39, -1
  store i32 %add.i, ptr %resid_len.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !692
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_port1, align 4
  %add76 = add i32 %41, 18
  %and77 = and i32 %add76, 1048575
  %add78 = or i32 %and77, -18874368
  %42 = inttoptr i32 %add78 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 -120) #9, !srcloc !531
  br label %if.end80

if.end80:                                         ; preds = %do.body, %if.end44.if.end80_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp81 = icmp ugt i32 %9, 1
  br i1 %cmp81, label %if.then83, label %if.end80.if.end106_crit_edge

if.end80.if.end106_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %shr221 = lshr i32 %9, 1
  %43 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %io_port1, align 4
  %add86 = add i32 %44, 22
  %and87 = and i32 %add86, 1048575
  %add88 = or i32 %and87, -18874368
  %45 = inttoptr i32 %add88 to ptr
  %46 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %current_SC, align 4
  %SCp92 = getelementptr inbounds %struct.scsi_cmnd, ptr %47, i32 0, i32 22
  %48 = ptrtoint ptr %SCp92 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %SCp92, align 4
  tail call void @__raw_writesw(ptr noundef nonnull %45, ptr noundef %49, i32 noundef %shr221) #9
  %mul = and i32 %9, 254
  %50 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %current_SC, align 4
  %SCp96 = getelementptr inbounds %struct.scsi_cmnd, ptr %51, i32 0, i32 22
  %52 = ptrtoint ptr %SCp96 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %SCp96, align 4
  %add.ptr = getelementptr i8, ptr %53, i32 %mul
  store ptr %add.ptr, ptr %SCp96, align 4
  %54 = load ptr, ptr %current_SC, align 4
  %this_residual102 = getelementptr inbounds %struct.scsi_cmnd, ptr %54, i32 0, i32 22, i32 1
  %55 = ptrtoint ptr %this_residual102 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %this_residual102, align 4
  %sub = sub i32 %56, %mul
  store i32 %sub, ptr %this_residual102, align 4
  %57 = load ptr, ptr %current_SC, align 4
  %mul105 = mul nsw i32 %shr221, -2
  %resid_len.i.i219 = getelementptr inbounds %struct.scsi_request, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %resid_len.i.i219 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %resid_len.i.i219, align 4
  %add.i220 = add i32 %59, %mul105
  store i32 %add.i220, ptr %resid_len.i.i219, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then83, %if.end80.if.end106_crit_edge
  %60 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %current_SC, align 4
  %this_residual110 = getelementptr inbounds %struct.scsi_cmnd, ptr %61, i32 0, i32 22, i32 1
  %62 = ptrtoint ptr %this_residual110 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %this_residual110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp111 = icmp eq i32 %63, 0
  br i1 %cmp111, label %land.lhs.true, label %if.end106.if.end144_crit_edge

if.end106.if.end144_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

land.lhs.true:                                    ; preds = %if.end106
  %buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %61, i32 0, i32 22, i32 2
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %and.i = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then117, label %land.lhs.true.if.end144_crit_edge

land.lhs.true.if.end144_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

if.then117:                                       ; preds = %land.lhs.true
  %call122 = tail call ptr @sg_next(ptr noundef %65) #9
  %68 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %current_SC, align 4
  %buffer126 = getelementptr inbounds %struct.scsi_cmnd, ptr %69, i32 0, i32 22, i32 2
  %70 = ptrtoint ptr %buffer126 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call122, ptr %buffer126, align 4
  %71 = load ptr, ptr %current_SC, align 4
  %buffer130 = getelementptr inbounds %struct.scsi_cmnd, ptr %71, i32 0, i32 22, i32 2
  %72 = ptrtoint ptr %buffer130 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buffer130, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %and.i.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !656

do.body2.i.i:                                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !657
  unreachable

sg_virt.exit:                                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = and i32 %75, -4
  %76 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %76) #9
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %73, i32 0, i32 1
  %77 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %78
  %79 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %current_SC, align 4
  %SCp134 = getelementptr inbounds %struct.scsi_cmnd, ptr %80, i32 0, i32 22
  %81 = ptrtoint ptr %SCp134 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr.i, ptr %SCp134, align 4
  %82 = load ptr, ptr %current_SC, align 4
  %buffer139 = getelementptr inbounds %struct.scsi_cmnd, ptr %82, i32 0, i32 22, i32 2
  %83 = ptrtoint ptr %buffer139 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buffer139, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %length, align 4
  %this_residual143 = getelementptr inbounds %struct.scsi_cmnd, ptr %82, i32 0, i32 22, i32 1
  %87 = ptrtoint ptr %this_residual143 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %this_residual143, align 4
  br label %if.end144

if.end144:                                        ; preds = %sg_virt.exit, %land.lhs.true.if.end144_crit_edge, %if.end106.if.end144_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %89 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %io_port1, align 4
  %add150227 = add i32 %90, 20
  %and151228 = and i32 %add150227, 1048575
  %add152229 = or i32 %and151228, -18874368
  %91 = inttoptr i32 %add152229 to ptr
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %91) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !693
  %93 = and i8 %92, 40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp158230 = icmp eq i8 %93, 0
  br i1 %cmp158230, label %land.rhs160.lr.ph, label %if.end144.while.end_crit_edge

if.end144.while.end_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs160.lr.ph:                                ; preds = %if.end144
  %add145.neg = sub i32 -10000, %88
  br label %land.rhs160

land.rhs160:                                      ; preds = %while.body165.land.rhs160_crit_edge, %land.rhs160.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %sub161 = add i32 %add145.neg, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub161)
  %cmp162 = icmp slt i32 %sub161, 0
  br i1 %cmp162, label %while.body165, label %land.rhs160.while.end_crit_edge

land.rhs160.while.end_crit_edge:                  ; preds = %land.rhs160
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body165:                                    ; preds = %land.rhs160
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !694
  %95 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %io_port1, align 4
  %add150 = add i32 %96, 20
  %and151 = and i32 %add150, 1048575
  %add152 = or i32 %and151, -18874368
  %97 = inttoptr i32 %add152 to ptr
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %97) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !693
  %99 = and i8 %98, 40
  %cmp158 = icmp eq i8 %99, 0
  br i1 %cmp158, label %while.body165.land.rhs160_crit_edge, label %while.body165.while.end_crit_edge

while.body165.while.end_crit_edge:                ; preds = %while.body165
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body165.land.rhs160_crit_edge:              ; preds = %while.body165
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs160

while.end:                                        ; preds = %while.body165.while.end_crit_edge, %land.rhs160.while.end_crit_edge, %if.end144.while.end_crit_edge
  %100 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %io_port1, align 4
  %add169 = add i32 %101, 20
  %and170 = and i32 %add169, 1048575
  %add171 = or i32 %and170, -18874368
  %102 = inttoptr i32 %add171 to ptr
  %103 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %102) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !695
  %104 = and i8 %103, 40
  %cmp177 = icmp eq i8 %104, 0
  br i1 %cmp177, label %if.then179, label %while.end.while.cond_crit_edge

while.end.while.cond_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then179:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %current_SC, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %106, ptr noundef nonnull @.str.150) #9
  br label %while.end183

while.end183:                                     ; preds = %if.then179, %if.then31, %land.rhs.while.end183_crit_edge, %while.cond.while.end183_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @datao_end(ptr nocapture noundef readonly %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %0 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port1, align 4
  %add = add i32 %1, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !696
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  %io_port0 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %5 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_port0, align 8
  %add7 = add i32 %6, 10
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %7 = inttoptr i32 %add9 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !697
  %conv13 = zext i8 %8 to i32
  %shl.neg = mul nsw i32 %conv13, -65536
  %9 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_port0, align 8
  %add17 = add i32 %10, 9
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %11 = inttoptr i32 %add19 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !698
  %conv23 = zext i8 %12 to i32
  %shl24.neg = mul nsw i32 %conv23, -256
  %add25.neg139 = add nsw i32 %shl24.neg, %shl.neg
  %13 = ptrtoint ptr %io_port0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_port0, align 8
  %add29 = add i32 %14, 8
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %15 = inttoptr i32 %add31 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !699
  %conv35 = zext i8 %16 to i32
  %data_len = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 1
  %17 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len, align 4
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %current_SC, align 4
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %20, i32 0, i32 5
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdb.i, align 4
  %sub45 = sub nsw i32 %add25.neg139, %conv35
  %add.i = add i32 %sub45, %18
  %23 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %resid_len.i, align 4
  %24 = load ptr, ptr %current_SC, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %24, i32 0, i32 17, i32 1
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length.i, align 4
  %resid_len.i129 = getelementptr inbounds %struct.scsi_request, ptr %24, i32 0, i32 5
  %27 = ptrtoint ptr %resid_len.i129 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resid_len.i129, align 4
  %sub52 = sub i32 %26, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub52)
  %cmp53131 = icmp sgt i32 %sub52, 0
  br i1 %cmp53131, label %if.then.land.rhs_crit_edge, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then.land.rhs_crit_edge:                       ; preds = %if.then
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %if.then.land.rhs_crit_edge
  %sg.0133 = phi ptr [ %call61, %if.end.land.rhs_crit_edge ], [ %22, %if.then.land.rhs_crit_edge ]
  %done.0132 = phi i32 [ %sub60, %if.end.land.rhs_crit_edge ], [ %sub52, %if.then.land.rhs_crit_edge ]
  %29 = ptrtoint ptr %sg.0133 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sg.0133, align 4
  %and.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0133, i32 0, i32 2
  %31 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %done.0132, i32 %32)
  %cmp56 = icmp ult i32 %done.0132, %32
  br i1 %cmp56, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %sub60 = sub i32 %done.0132, %32
  %call61 = tail call ptr @sg_next(ptr noundef %sg.0133) #9
  %cmp53 = icmp sgt i32 %sub60, 0
  br i1 %cmp53, label %if.end.land.rhs_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.then.while.end_crit_edge
  %done.0.lcssa = phi i32 [ %sub52, %if.then.while.end_crit_edge ], [ %sub60, %if.end.while.end_crit_edge ], [ %done.0132, %while.body.while.end_crit_edge ], [ %done.0132, %land.rhs.while.end_crit_edge ]
  %sg.0.lcssa = phi ptr [ %22, %if.then.while.end_crit_edge ], [ %call61, %if.end.while.end_crit_edge ], [ %sg.0133, %while.body.while.end_crit_edge ], [ %sg.0133, %land.rhs.while.end_crit_edge ]
  %33 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %current_SC, align 4
  %buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %34, i32 0, i32 22, i32 2
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %sg.0.lcssa, ptr %buffer, align 4
  %36 = load ptr, ptr %current_SC, align 4
  %buffer67 = getelementptr inbounds %struct.scsi_cmnd, ptr %36, i32 0, i32 22, i32 2
  %37 = ptrtoint ptr %buffer67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer67, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %and.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !656

do.body2.i.i:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !657
  unreachable

sg_virt.exit:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = and i32 %40, -4
  %41 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %41) #9
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %43
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %done.0.lcssa
  %44 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %current_SC, align 4
  %SCp71 = getelementptr inbounds %struct.scsi_cmnd, ptr %45, i32 0, i32 22
  %46 = ptrtoint ptr %SCp71 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr, ptr %SCp71, align 4
  %47 = load ptr, ptr %current_SC, align 4
  %buffer75 = getelementptr inbounds %struct.scsi_cmnd, ptr %47, i32 0, i32 22, i32 2
  %48 = ptrtoint ptr %buffer75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer75, align 4
  %length76 = getelementptr inbounds %struct.scatterlist, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %length76 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length76, align 4
  %sub77 = sub i32 %51, %done.0.lcssa
  %this_residual = getelementptr inbounds %struct.scsi_cmnd, ptr %47, i32 0, i32 22, i32 1
  %52 = ptrtoint ptr %this_residual to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub77, ptr %this_residual, align 4
  br label %do.body

do.body:                                          ; preds = %sg_virt.exit, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !700
  tail call void @arm_heavy_mb() #9
  %io_port083 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %53 = ptrtoint ptr %io_port083 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %io_port083, align 8
  %add84 = add i32 %54, 1
  %and85 = and i32 %add84, 1048575
  %add86 = or i32 %and85, -18874368
  %55 = inttoptr i32 %add86 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 50) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !701
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %io_port083 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %io_port083, align 8
  %add92 = add i32 %57, 1
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %58 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 32) #9, !srcloc !531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !702
  tail call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %io_port1, align 4
  %add100 = add i32 %60, 18
  %and101 = and i32 %add100, 1048575
  %add102 = or i32 %and101, -18874368
  %61 = inttoptr i32 %add102 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 0) #9, !srcloc !531
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parerr_run(ptr nocapture noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_SC, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %1, ptr noundef nonnull @.str.151) #9
  %2 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_SC, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %done_SC.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %done_SC.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %done_SC.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %3, ptr noundef nonnull @.str.105, ptr noundef nonnull %5) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %6 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_SC, align 4
  %8 = ptrtoint ptr %done_SC.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %done_SC.i, align 4
  store ptr null, ptr %current_SC, align 4
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 24
  %9 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %result.i.i, align 4
  %and.i.i = and i32 %10, -256
  store i32 %and.i.i, ptr %result.i.i, align 4
  %11 = load ptr, ptr %done_SC.i, align 4
  %result.i28.i = getelementptr inbounds %struct.scsi_cmnd, ptr %11, i32 0, i32 24
  %12 = ptrtoint ptr %result.i28.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %result.i28.i, align 4
  %and.i29.i = and i32 %13, -16711681
  %or.i31.i = or i32 %and.i29.i, 393216
  store i32 %or.i31.i, ptr %result.i28.i, align 4
  br label %done.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #12
  br label %done.exit

done.exit:                                        ; preds = %do.end.i, %if.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsti_run(ptr noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.154, ptr noundef %shost_gendev, ptr noundef nonnull @.str.152) #12
  %disconnected_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1
  %0 = ptrtoint ptr %disconnected_SC to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disconnected_SC, align 8
  %tobool.not42 = icmp eq ptr %1, null
  br i1 %tobool.not42, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %ptr.043 = phi ptr [ %5, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.043, i32 0, i32 23
  %2 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_scribble, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.043, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %soft_reset = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 41
  %8 = ptrtoint ptr %soft_reset to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load = load i64, ptr %soft_reset, align 4
  %9 = and i64 %bf.load, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool2.not = icmp eq i64 %9, 0
  br i1 %tobool2.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %while.body
  %10 = ptrtoint ptr %disconnected_SC to i32
  call void @__asan_load4_noabort(i32 %10)
  %ptr.023.i = load ptr, ptr %disconnected_SC, align 4
  %tobool.not24.i = icmp eq ptr %ptr.023.i, null
  %cmp.not25.i = icmp eq ptr %ptr.023.i, %ptr.043
  %or.cond26.i = or i1 %tobool.not24.i, %cmp.not25.i
  br i1 %or.cond26.i, label %for.end.thread.i, label %if.then.for.inc.i_crit_edge

if.then.for.inc.i_crit_edge:                      ; preds = %if.then
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %if.then.for.inc.i_crit_edge
  %ptr.027.i = phi ptr [ %ptr.0.i, %for.inc.i.for.inc.i_crit_edge ], [ %ptr.023.i, %if.then.for.inc.i_crit_edge ]
  %host_scribble.i = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.027.i, i32 0, i32 23
  %11 = ptrtoint ptr %host_scribble.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host_scribble.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %ptr.0.i = load ptr, ptr %12, align 4
  %tobool.not.i = icmp eq ptr %ptr.0.i, null
  %cmp.not.i = icmp eq ptr %ptr.0.i, %ptr.043
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %for.end.i, label %for.inc.i.for.inc.i_crit_edge

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %tobool.not.i, label %for.end.i.remove_SC.exit_crit_edge, label %for.end.i.if.end.i_crit_edge

for.end.i.if.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.end.i.remove_SC.exit_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_SC.exit

for.end.thread.i:                                 ; preds = %if.then
  br i1 %tobool.not24.i, label %for.end.thread.i.remove_SC.exit_crit_edge, label %for.end.thread.i.if.end.i_crit_edge

for.end.thread.i.if.end.i_crit_edge:              ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.end.thread.i.remove_SC.exit_crit_edge:        ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_SC.exit

if.end.i:                                         ; preds = %for.end.thread.i.if.end.i_crit_edge, %for.end.i.if.end.i_crit_edge
  %SC.sink.i = phi ptr [ %12, %for.end.i.if.end.i_crit_edge ], [ %disconnected_SC, %for.end.thread.i.if.end.i_crit_edge ]
  %ptr.0.lcssa3641.i = phi ptr [ %ptr.0.i, %for.end.i.if.end.i_crit_edge ], [ %ptr.023.i, %for.end.thread.i.if.end.i_crit_edge ]
  %.sink.in.in.i = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.0.lcssa3641.i, i32 0, i32 23
  %14 = ptrtoint ptr %.sink.in.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.sink.in.i = load ptr, ptr %.sink.in.in.i, align 4
  %15 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.sink.i = load ptr, ptr %.sink.in.i, align 4
  %16 = ptrtoint ptr %SC.sink.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.sink.i, ptr %SC.sink.i, align 4
  %17 = load ptr, ptr %.sink.in.in.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %17, align 4
  br label %remove_SC.exit

remove_SC.exit:                                   ; preds = %if.end.i, %for.end.thread.i.remove_SC.exit_crit_edge, %for.end.i.remove_SC.exit_crit_edge
  %19 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_scribble, align 4
  tail call void @kfree(ptr noundef %20) #9
  %21 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %host_scribble, align 4
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.043, i32 0, i32 24
  %22 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %result.i, align 4
  %and.i = and i32 %23, -16711681
  %or.i = or i32 %and.i, 524288
  store i32 %or.i, ptr %result.i, align 4
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.043, i32 0, i32 22, i32 9
  %24 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %phase.i, align 4
  %and.i34 = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i35 = icmp eq i32 %and.i34, 0
  br i1 %tobool.not.i35, label %if.else.i36, label %if.then.i

if.then.i:                                        ; preds = %remove_SC.exit
  call void @__asan_load4_noabort(i32 4)
  %26 = load ptr, ptr inttoptr (i32 4 to ptr), align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @complete(ptr noundef nonnull %26) #9
  br label %if.end

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #12
  br label %if.end

if.else.i36:                                      ; preds = %remove_SC.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @scsi_done(ptr noundef nonnull %ptr.043) #9
  br label %if.end

if.end:                                           ; preds = %if.else.i36, %do.end.i.i, %if.then.i.i, %while.body.if.end_crit_edge
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %current_SC, align 4
  %tobool8.not = icmp eq ptr %28, null
  br i1 %tobool8.not, label %while.end.if.end19_crit_edge, label %land.lhs.true

while.end.if.end19_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %while.end
  %device11 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %device11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device11, align 4
  %soft_reset12 = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 41
  %31 = ptrtoint ptr %soft_reset12 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %bf.load13 = load i64, ptr %soft_reset12, align 4
  %32 = and i64 %bf.load13, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool17.not = icmp eq i64 %32, 0
  br i1 %tobool17.not, label %if.then.i39, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then.i39:                                      ; preds = %land.lhs.true
  %done_SC.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %33 = ptrtoint ptr %done_SC.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %done_SC.i, align 4
  %tobool2.not.i = icmp eq ptr %34, null
  br i1 %tobool2.not.i, label %if.then.i39.done.exit_crit_edge, label %if.then3.i40

if.then.i39.done.exit_crit_edge:                  ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.exit

if.then3.i40:                                     ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %28, ptr noundef nonnull @.str.105, ptr noundef nonnull %34) #9
  br label %done.exit

done.exit:                                        ; preds = %if.then3.i40, %if.then.i39.done.exit_crit_edge
  %35 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %current_SC, align 4
  %37 = ptrtoint ptr %done_SC.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %done_SC.i, align 4
  store ptr null, ptr %current_SC, align 4
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %36, i32 0, i32 24
  %38 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %result.i.i, align 4
  %and.i.i = and i32 %39, -256
  store i32 %and.i.i, ptr %result.i.i, align 4
  %40 = load ptr, ptr %done_SC.i, align 4
  %result.i28.i = getelementptr inbounds %struct.scsi_cmnd, ptr %40, i32 0, i32 24
  %41 = ptrtoint ptr %result.i28.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %result.i28.i, align 4
  %and.i29.i = and i32 %42, -16711681
  %or.i31.i = or i32 %and.i29.i, 524288
  store i32 %or.i31.i, ptr %result.i28.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %done.exit, %land.lhs.true.if.end19_crit_edge, %while.end.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_populate_sync_msg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_restore_cmnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_prep_cmnd(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aha152x_internal_queue(ptr noundef %SCpnt, ptr noundef %complete, i32 noundef %phase) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %or = or i32 %phase, 1
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22
  %phase1 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 9
  %4 = ptrtoint ptr %phase1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %or, ptr %phase1, align 4
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 5
  %5 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %Status, align 4
  %Message = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 6
  %6 = ptrtoint ptr %Message to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %Message, align 4
  %have_data_in = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 7
  %7 = ptrtoint ptr %have_data_in to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %have_data_in, align 4
  %sent_command = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 8
  %8 = ptrtoint ptr %sent_command to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %sent_command, align 4
  %9 = load volatile i32, ptr %phase1, align 4
  %and = and i32 %9, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 23
  %10 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_scribble, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.then.if.then14_crit_edge, label %lor.lhs.false

if.then.if.then14_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.then
  %done = getelementptr inbounds %struct.aha152x_scdata, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %done, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %lor.lhs.false11.if.end20_crit_edge, label %lor.lhs.false11.if.then14_crit_edge

lor.lhs.false11.if.then14_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

lor.lhs.false11.if.end20_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then14:                                        ; preds = %lor.lhs.false11.if.then14_crit_edge, %lor.lhs.false.if.then14_crit_edge, %if.then.if.then14_crit_edge
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %SCpnt, ptr noundef nonnull @.str.114) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2592, i32 noundef 88) #14
  %host_scribble15 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 23
  %17 = ptrtoint ptr %host_scribble15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %host_scribble15, align 4
  %tobool17.not = icmp eq ptr %call7.i, null
  br i1 %tobool17.not, label %if.then18, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %SCpnt, ptr noundef nonnull @.str.115) #9
  br label %cleanup

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %lor.lhs.false11.if.end20_crit_edge
  %host_scribble21 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 23
  %18 = ptrtoint ptr %host_scribble21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_scribble21, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %19, align 4
  %21 = load ptr, ptr %host_scribble21, align 4
  %done24 = getelementptr inbounds %struct.aha152x_scdata, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %done24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %complete, ptr %done24, align 4
  %and25 = and i32 %phase, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %if.end20.if.then30_crit_edge

if.end20.if.then30_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false27:                                  ; preds = %if.end20
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 17
  %23 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdb.i, align 4
  %tobool29.not = icmp eq ptr %24, null
  br i1 %tobool29.not, label %lor.lhs.false27.if.then30_crit_edge, label %if.else34

lor.lhs.false27.if.then30_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false27.if.then30_crit_edge, %if.end20.if.then30_crit_edge
  %25 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %SCp, align 4
  %this_residual = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 1
  %26 = ptrtoint ptr %this_residual to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %this_residual, align 4
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %SCpnt, i32 0, i32 5
  %27 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %resid_len.i, align 4
  %buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 2
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %buffer, align 4
  br label %do.body49

if.else34:                                        ; preds = %lor.lhs.false27
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 17, i32 1
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i, align 4
  %resid_len.i117 = getelementptr inbounds %struct.scsi_request, ptr %SCpnt, i32 0, i32 5
  %31 = ptrtoint ptr %resid_len.i117 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %resid_len.i117, align 4
  %buffer38 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 2
  %32 = ptrtoint ptr %buffer38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %24, ptr %buffer38, align 4
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %24, align 4
  %and.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !656

do.body2.i.i:                                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !657
  unreachable

sg_virt.exit:                                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = and i32 %34, -4
  %35 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %35) #9
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 1
  %36 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %37
  %38 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i, ptr %SCp, align 4
  %39 = ptrtoint ptr %buffer38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer38, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length, align 4
  %this_residual47 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 1
  %43 = ptrtoint ptr %this_residual47 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %this_residual47, align 4
  br label %do.body49

do.body49:                                        ; preds = %sg_virt.exit, %if.then30
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 2
  %call51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %total_commands = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %44 = ptrtoint ptr %total_commands to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %total_commands, align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr %total_commands, align 4
  %commands = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 0, i32 0, i32 2
  %46 = ptrtoint ptr %commands to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %commands, align 8
  %inc56 = add i32 %47, 1
  store i32 %inc56, ptr %commands, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp59 = icmp eq i32 %47, 0
  br i1 %cmp59, label %do.body62, label %do.body49.if.end69_crit_edge

do.body49.if.end69_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

do.body62:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !703
  tail call void @arm_heavy_mb() #9
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 10, i32 1, i32 3
  %48 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io_port1, align 4
  %add = add i32 %49, 26
  %and66 = and i32 %add, 1048575
  %add67 = or i32 %and66, -18874368
  %50 = inttoptr i32 %add67 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 1) #9, !srcloc !531
  br label %if.end69

if.end69:                                         ; preds = %do.body62, %do.body49.if.end69_crit_edge
  %51 = ptrtoint ptr %host_scribble21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %host_scribble21, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %52, align 4
  %54 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hostdata, align 4
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %if.end69.append_SC.exit_crit_edge, label %if.end69.for.cond.i_crit_edge

if.end69.for.cond.i_crit_edge:                    ; preds = %if.end69
  br label %for.cond.i

if.end69.append_SC.exit_crit_edge:                ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %append_SC.exit

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end69.for.cond.i_crit_edge
  %end.0.i = phi ptr [ %59, %for.cond.i.for.cond.i_crit_edge ], [ %55, %if.end69.for.cond.i_crit_edge ]
  %host_scribble1.i = getelementptr inbounds %struct.scsi_cmnd, ptr %end.0.i, i32 0, i32 23
  %56 = ptrtoint ptr %host_scribble1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %host_scribble1.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %tobool3.not.i = icmp eq ptr %59, null
  br i1 %tobool3.not.i, label %for.cond.i.append_SC.exit_crit_edge, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.cond.i.append_SC.exit_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %append_SC.exit

append_SC.exit:                                   ; preds = %for.cond.i.append_SC.exit_crit_edge, %if.end69.append_SC.exit_crit_edge
  %.lcssa.sink.i = phi ptr [ %hostdata, %if.end69.append_SC.exit_crit_edge ], [ %57, %for.cond.i.append_SC.exit_crit_edge ]
  %60 = ptrtoint ptr %.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %SCpnt, ptr %.lcssa.sink.i, align 4
  %in_intr = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 2
  %61 = ptrtoint ptr %in_intr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %in_intr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool72.not = icmp eq i32 %62, 0
  br i1 %tobool72.not, label %if.then73, label %append_SC.exit.if.end75_crit_edge

append_SC.exit.if.end75_crit_edge:                ; preds = %append_SC.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then73:                                        ; preds = %append_SC.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call74 = tail call fastcc i32 @setup_expected_interrupts(ptr noundef %3)
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %append_SC.exit.if.end75_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call51) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then18, %if.then14
  %retval.0 = phi i32 [ 8195, %if.then14 ], [ 0, %if.end75 ], [ 8195, %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_print_msg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aha152x_queue(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %call.i = tail call fastcc i32 @aha152x_internal_queue(ptr noundef %cmd, ptr noundef null, i32 noundef 0) #9
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call2) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aha152x_abort(ptr noundef %SCpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %ptr.023.i = load ptr, ptr %hostdata, align 4
  %tobool.not24.i = icmp eq ptr %ptr.023.i, null
  %cmp.not25.i = icmp eq ptr %ptr.023.i, %SCpnt
  %or.cond26.i = or i1 %tobool.not24.i, %cmp.not25.i
  br i1 %or.cond26.i, label %for.end.thread.i, label %entry.for.inc.i_crit_edge

entry.for.inc.i_crit_edge:                        ; preds = %entry
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %ptr.027.i = phi ptr [ %ptr.0.i, %for.inc.i.for.inc.i_crit_edge ], [ %ptr.023.i, %entry.for.inc.i_crit_edge ]
  %host_scribble.i = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.027.i, i32 0, i32 23
  %5 = ptrtoint ptr %host_scribble.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host_scribble.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %ptr.0.i = load ptr, ptr %6, align 4
  %tobool.not.i = icmp eq ptr %ptr.0.i, null
  %cmp.not.i = icmp eq ptr %ptr.0.i, %SCpnt
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %for.end.i, label %for.inc.i.for.inc.i_crit_edge

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %tobool.not.i, label %for.end.i.if.end21_crit_edge, label %for.end.i.if.then_crit_edge

for.end.i.if.then_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.end.i.if.end21_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

for.end.thread.i:                                 ; preds = %entry
  br i1 %tobool.not24.i, label %for.end.thread.i.if.end21_crit_edge, label %for.end.thread.i.if.then_crit_edge

for.end.thread.i.if.then_crit_edge:               ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.end.thread.i.if.end21_crit_edge:              ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then:                                          ; preds = %for.end.thread.i.if.then_crit_edge, %for.end.i.if.then_crit_edge
  %SC.sink.i = phi ptr [ %6, %for.end.i.if.then_crit_edge ], [ %hostdata, %for.end.thread.i.if.then_crit_edge ]
  %ptr.0.lcssa3641.i = phi ptr [ %ptr.0.i, %for.end.i.if.then_crit_edge ], [ %ptr.023.i, %for.end.thread.i.if.then_crit_edge ]
  %.sink.in.in.i = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.0.lcssa3641.i, i32 0, i32 23
  %8 = ptrtoint ptr %.sink.in.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.sink.in.i = load ptr, ptr %.sink.in.in.i, align 4
  %9 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.sink.i = load ptr, ptr %.sink.in.i, align 4
  %10 = ptrtoint ptr %SC.sink.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.sink.i, ptr %SC.sink.i, align 4
  %11 = load ptr, ptr %.sink.in.in.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %11, align 4
  %commands = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %commands to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %commands, align 8
  %dec = add i32 %14, -1
  store i32 %dec, ptr %commands, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %do.body12, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !704
  tail call void @arm_heavy_mb() #9
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 10, i32 1, i32 3
  %15 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_port1, align 4
  %add = add i32 %16, 26
  %and = and i32 %add, 1048575
  %add16 = or i32 %and, -18874368
  %17 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #9, !srcloc !531
  br label %if.end

if.end:                                           ; preds = %do.body12, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 23
  %18 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_scribble, align 4
  tail call void @kfree(ptr noundef %19) #9
  %20 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %host_scribble, align 4
  br label %cleanup

if.end21:                                         ; preds = %for.end.thread.i.if.end21_crit_edge, %for.end.i.if.end21_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %SCpnt, ptr noundef nonnull @.str.156) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end
  %retval.0 = phi i32 [ 8194, %if.end ], [ 8195, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aha152x_device_reset(ptr noundef %SCpnt) #0 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #9
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %done, align 4
  %wait = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %magic = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -559067475, ptr %magic, align 4
  %owner_cpu = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %owner_cpu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %owner_cpu, align 4
  %owner = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %owner, align 4
  %dep_map = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1, i32 0, i32 4
  %9 = call ptr @memset(ptr %dep_map, i32 0, i32 28)
  %name = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.157, ptr %name, align 4
  %wait_type_inner = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %wait_type_inner, align 1
  %task_list = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %task_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %task_list, ptr %task_list, align 4
  %prev = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %task_list, ptr %prev, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 14
  %14 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cmd_len, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %current_SC, align 4
  %cmp = icmp eq ptr %17, %SCpnt
  br i1 %cmp, label %if.then, label %do.body7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef %SCpnt, ptr noundef nonnull @.str.158) #9
  br label %cleanup

do.body7:                                         ; preds = %entry
  %lock11 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 2
  %call12 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock11) #9
  %18 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %ptr.023.i = load ptr, ptr %hostdata, align 4
  %tobool.not24.i = icmp eq ptr %ptr.023.i, null
  %cmp.not25.i = icmp eq ptr %ptr.023.i, %SCpnt
  %or.cond26.i = or i1 %tobool.not24.i, %cmp.not25.i
  br i1 %or.cond26.i, label %for.end.thread.i, label %do.body7.for.inc.i_crit_edge

do.body7.for.inc.i_crit_edge:                     ; preds = %do.body7
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %do.body7.for.inc.i_crit_edge
  %ptr.027.i = phi ptr [ %ptr.0.i, %for.inc.i.for.inc.i_crit_edge ], [ %ptr.023.i, %do.body7.for.inc.i_crit_edge ]
  %host_scribble.i = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.027.i, i32 0, i32 23
  %19 = ptrtoint ptr %host_scribble.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_scribble.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %ptr.0.i = load ptr, ptr %20, align 4
  %tobool.not.i = icmp eq ptr %ptr.0.i, null
  %cmp.not.i = icmp eq ptr %ptr.0.i, %SCpnt
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %for.end.i, label %for.inc.i.for.inc.i_crit_edge

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %tobool.not.i, label %for.end.i.land.rhs_crit_edge, label %for.end.i.remove_SC.exit_crit_edge

for.end.i.remove_SC.exit_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_SC.exit

for.end.i.land.rhs_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end.thread.i:                                 ; preds = %do.body7
  br i1 %tobool.not24.i, label %for.end.thread.i.land.rhs_crit_edge, label %for.end.thread.i.remove_SC.exit_crit_edge

for.end.thread.i.remove_SC.exit_crit_edge:        ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_SC.exit

for.end.thread.i.land.rhs_crit_edge:              ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

remove_SC.exit:                                   ; preds = %for.end.thread.i.remove_SC.exit_crit_edge, %for.end.i.remove_SC.exit_crit_edge
  %SC.sink.i = phi ptr [ %20, %for.end.i.remove_SC.exit_crit_edge ], [ %hostdata, %for.end.thread.i.remove_SC.exit_crit_edge ]
  %ptr.0.lcssa3641.i = phi ptr [ %ptr.0.i, %for.end.i.remove_SC.exit_crit_edge ], [ %ptr.023.i, %for.end.thread.i.remove_SC.exit_crit_edge ]
  %.sink.in.in.i = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.0.lcssa3641.i, i32 0, i32 23
  %22 = ptrtoint ptr %.sink.in.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.sink.in.i = load ptr, ptr %.sink.in.in.i, align 4
  %23 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.sink.i = load ptr, ptr %.sink.in.i, align 4
  %24 = ptrtoint ptr %SC.sink.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %.sink.i, ptr %SC.sink.i, align 4
  %25 = load ptr, ptr %.sink.in.in.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %25, align 4
  br label %land.end

land.rhs:                                         ; preds = %for.end.thread.i.land.rhs_crit_edge, %for.end.i.land.rhs_crit_edge
  %disconnected_SC = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1
  %27 = ptrtoint ptr %disconnected_SC to i32
  call void @__asan_load4_noabort(i32 %27)
  %ptr.023.i135 = load ptr, ptr %disconnected_SC, align 4
  %tobool.not24.i136 = icmp eq ptr %ptr.023.i135, null
  %cmp.not25.i137 = icmp eq ptr %ptr.023.i135, %SCpnt
  %or.cond26.i138 = or i1 %tobool.not24.i136, %cmp.not25.i137
  br i1 %or.cond26.i138, label %for.end.thread.i147, label %land.rhs.for.inc.i145_crit_edge

land.rhs.for.inc.i145_crit_edge:                  ; preds = %land.rhs
  br label %for.inc.i145

for.inc.i145:                                     ; preds = %for.inc.i145.for.inc.i145_crit_edge, %land.rhs.for.inc.i145_crit_edge
  %ptr.027.i139 = phi ptr [ %ptr.0.i141, %for.inc.i145.for.inc.i145_crit_edge ], [ %ptr.023.i135, %land.rhs.for.inc.i145_crit_edge ]
  %host_scribble.i140 = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.027.i139, i32 0, i32 23
  %28 = ptrtoint ptr %host_scribble.i140 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host_scribble.i140, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %ptr.0.i141 = load ptr, ptr %29, align 4
  %tobool.not.i142 = icmp eq ptr %ptr.0.i141, null
  %cmp.not.i143 = icmp eq ptr %ptr.0.i141, %SCpnt
  %or.cond.i144 = or i1 %tobool.not.i142, %cmp.not.i143
  br i1 %or.cond.i144, label %for.end.i146, label %for.inc.i145.for.inc.i145_crit_edge

for.inc.i145.for.inc.i145_crit_edge:              ; preds = %for.inc.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i145

for.end.i146:                                     ; preds = %for.inc.i145
  br i1 %tobool.not.i142, label %for.end.i146.remove_SC.exit159_crit_edge, label %for.end.i146.if.end.i157_crit_edge

for.end.i146.if.end.i157_crit_edge:               ; preds = %for.end.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i157

for.end.i146.remove_SC.exit159_crit_edge:         ; preds = %for.end.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_SC.exit159

for.end.thread.i147:                              ; preds = %land.rhs
  br i1 %tobool.not24.i136, label %for.end.thread.i147.remove_SC.exit159_crit_edge, label %for.end.thread.i147.if.end.i157_crit_edge

for.end.thread.i147.if.end.i157_crit_edge:        ; preds = %for.end.thread.i147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i157

for.end.thread.i147.remove_SC.exit159_crit_edge:  ; preds = %for.end.thread.i147
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_SC.exit159

if.end.i157:                                      ; preds = %for.end.thread.i147.if.end.i157_crit_edge, %for.end.i146.if.end.i157_crit_edge
  %SC.sink.i151 = phi ptr [ %29, %for.end.i146.if.end.i157_crit_edge ], [ %disconnected_SC, %for.end.thread.i147.if.end.i157_crit_edge ]
  %ptr.0.lcssa3641.i152 = phi ptr [ %ptr.0.i141, %for.end.i146.if.end.i157_crit_edge ], [ %ptr.023.i135, %for.end.thread.i147.if.end.i157_crit_edge ]
  %.sink.in.in.i153 = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.0.lcssa3641.i152, i32 0, i32 23
  %31 = ptrtoint ptr %.sink.in.in.i153 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.sink.in.i154 = load ptr, ptr %.sink.in.in.i153, align 4
  %32 = ptrtoint ptr %.sink.in.i154 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.sink.i155 = load ptr, ptr %.sink.in.i154, align 4
  %33 = ptrtoint ptr %SC.sink.i151 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %.sink.i155, ptr %SC.sink.i151, align 4
  %34 = load ptr, ptr %.sink.in.in.i153, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %34, align 4
  br label %remove_SC.exit159

remove_SC.exit159:                                ; preds = %if.end.i157, %for.end.thread.i147.remove_SC.exit159_crit_edge, %for.end.i146.remove_SC.exit159_crit_edge
  %ptr.0.lcssa37.i158 = phi ptr [ null, %for.end.thread.i147.remove_SC.exit159_crit_edge ], [ %ptr.0.lcssa3641.i152, %if.end.i157 ], [ null, %for.end.i146.remove_SC.exit159_crit_edge ]
  %tobool21 = icmp ne ptr %ptr.0.lcssa37.i158, null
  br label %land.end

land.end:                                         ; preds = %remove_SC.exit159, %remove_SC.exit
  %cmp17199 = phi i1 [ false, %remove_SC.exit ], [ true, %remove_SC.exit159 ]
  %36 = phi i1 [ false, %remove_SC.exit ], [ %tobool21, %remove_SC.exit159 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11, i32 noundef %call12) #9
  %37 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %cmd_len, align 4
  %call25 = call fastcc i32 @aha152x_internal_queue(ptr noundef %SCpnt, ptr noundef nonnull %done, i32 noundef 1024)
  %call26 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done, i32 noundef 10000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body30, label %land.end.if.end49_crit_edge

land.end.if.end49_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

do.body30:                                        ; preds = %land.end
  %call39 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock11) #9
  %38 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %ptr.023.i160 = load ptr, ptr %hostdata, align 4
  %tobool.not24.i161 = icmp eq ptr %ptr.023.i160, null
  %cmp.not25.i162 = icmp eq ptr %ptr.023.i160, %SCpnt
  %or.cond26.i163 = or i1 %tobool.not24.i161, %cmp.not25.i162
  br i1 %or.cond26.i163, label %for.end.thread.i172, label %do.body30.for.inc.i170_crit_edge

do.body30.for.inc.i170_crit_edge:                 ; preds = %do.body30
  br label %for.inc.i170

for.inc.i170:                                     ; preds = %for.inc.i170.for.inc.i170_crit_edge, %do.body30.for.inc.i170_crit_edge
  %ptr.027.i164 = phi ptr [ %ptr.0.i166, %for.inc.i170.for.inc.i170_crit_edge ], [ %ptr.023.i160, %do.body30.for.inc.i170_crit_edge ]
  %host_scribble.i165 = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.027.i164, i32 0, i32 23
  %39 = ptrtoint ptr %host_scribble.i165 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host_scribble.i165, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %ptr.0.i166 = load ptr, ptr %40, align 4
  %tobool.not.i167 = icmp eq ptr %ptr.0.i166, null
  %cmp.not.i168 = icmp eq ptr %ptr.0.i166, %SCpnt
  %or.cond.i169 = or i1 %tobool.not.i167, %cmp.not.i168
  br i1 %or.cond.i169, label %for.end.i171, label %for.inc.i170.for.inc.i170_crit_edge

for.inc.i170.for.inc.i170_crit_edge:              ; preds = %for.inc.i170
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i170

for.end.i171:                                     ; preds = %for.inc.i170
  br i1 %tobool.not.i167, label %for.end.i171.remove_SC.exit184_crit_edge, label %for.end.i171.if.end.i182_crit_edge

for.end.i171.if.end.i182_crit_edge:               ; preds = %for.end.i171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i182

for.end.i171.remove_SC.exit184_crit_edge:         ; preds = %for.end.i171
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_SC.exit184

for.end.thread.i172:                              ; preds = %do.body30
  br i1 %tobool.not24.i161, label %for.end.thread.i172.remove_SC.exit184_crit_edge, label %for.end.thread.i172.if.end.i182_crit_edge

for.end.thread.i172.if.end.i182_crit_edge:        ; preds = %for.end.thread.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i182

for.end.thread.i172.remove_SC.exit184_crit_edge:  ; preds = %for.end.thread.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_SC.exit184

if.end.i182:                                      ; preds = %for.end.thread.i172.if.end.i182_crit_edge, %for.end.i171.if.end.i182_crit_edge
  %SC.sink.i176 = phi ptr [ %40, %for.end.i171.if.end.i182_crit_edge ], [ %hostdata, %for.end.thread.i172.if.end.i182_crit_edge ]
  %ptr.0.lcssa3641.i177 = phi ptr [ %ptr.0.i166, %for.end.i171.if.end.i182_crit_edge ], [ %ptr.023.i160, %for.end.thread.i172.if.end.i182_crit_edge ]
  %.sink.in.in.i178 = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.0.lcssa3641.i177, i32 0, i32 23
  %42 = ptrtoint ptr %.sink.in.in.i178 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.sink.in.i179 = load ptr, ptr %.sink.in.in.i178, align 4
  %43 = ptrtoint ptr %.sink.in.i179 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.sink.i180 = load ptr, ptr %.sink.in.i179, align 4
  %44 = ptrtoint ptr %SC.sink.i176 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %.sink.i180, ptr %SC.sink.i176, align 4
  %45 = load ptr, ptr %.sink.in.in.i178, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %45, align 4
  br label %remove_SC.exit184

remove_SC.exit184:                                ; preds = %if.end.i182, %for.end.thread.i172.remove_SC.exit184_crit_edge, %for.end.i171.remove_SC.exit184_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11, i32 noundef %call39) #9
  br label %if.end49

if.end49:                                         ; preds = %remove_SC.exit184, %land.end.if.end49_crit_edge
  %conv50 = and i16 %15, 255
  %47 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv50, ptr %cmd_len, align 4
  %call62 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock11) #9
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 9
  %48 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %phase, align 4
  %and = and i32 %49, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool67.not = icmp eq i32 %and, 0
  br i1 %tobool67.not, label %if.else, label %if.then68

if.then68:                                        ; preds = %if.end49
  %commands = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 0, i32 0, i32 2
  %50 = ptrtoint ptr %commands to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %commands, align 8
  %dec = add i32 %51, -1
  store i32 %dec, ptr %commands, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool72.not = icmp eq i32 %dec, 0
  br i1 %tobool72.not, label %do.body74, label %if.then68.if.end81_crit_edge

if.then68.if.end81_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

do.body74:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !705
  call void @arm_heavy_mb() #9
  %io_port1 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 10, i32 1, i32 3
  %52 = ptrtoint ptr %io_port1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %io_port1, align 4
  %add = add i32 %53, 26
  %and78 = and i32 %add, 1048575
  %add79 = or i32 %and78, -18874368
  %54 = inttoptr i32 %add79 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 0) #9, !srcloc !531
  br label %if.end81

if.end81:                                         ; preds = %do.body74, %if.then68.if.end81_crit_edge
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 23
  %55 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %host_scribble, align 4
  call void @kfree(ptr noundef %56) #9
  %57 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %host_scribble, align 4
  br label %if.end94

if.else:                                          ; preds = %if.end49
  br i1 %cmp17199, label %if.else87, label %if.then84

if.then84:                                        ; preds = %if.else
  %host_scribble.i185 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 23
  %58 = ptrtoint ptr %host_scribble.i185 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %host_scribble.i185, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %59, align 4
  %61 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hostdata, align 4
  %tobool.not.i186 = icmp eq ptr %62, null
  br i1 %tobool.not.i186, label %if.then84.append_SC.exit_crit_edge, label %if.then84.for.cond.i_crit_edge

if.then84.for.cond.i_crit_edge:                   ; preds = %if.then84
  br label %for.cond.i

if.then84.append_SC.exit_crit_edge:               ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %append_SC.exit

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then84.for.cond.i_crit_edge
  %end.0.i = phi ptr [ %66, %for.cond.i.for.cond.i_crit_edge ], [ %62, %if.then84.for.cond.i_crit_edge ]
  %host_scribble1.i = getelementptr inbounds %struct.scsi_cmnd, ptr %end.0.i, i32 0, i32 23
  %63 = ptrtoint ptr %host_scribble1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %host_scribble1.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %tobool3.not.i = icmp eq ptr %66, null
  br i1 %tobool3.not.i, label %for.cond.i.append_SC.exit_crit_edge, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.cond.i.append_SC.exit_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %append_SC.exit

append_SC.exit:                                   ; preds = %for.cond.i.append_SC.exit_crit_edge, %if.then84.append_SC.exit_crit_edge
  %.lcssa.sink.i = phi ptr [ %hostdata, %if.then84.append_SC.exit_crit_edge ], [ %64, %for.cond.i.append_SC.exit_crit_edge ]
  %67 = ptrtoint ptr %.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %SCpnt, ptr %.lcssa.sink.i, align 4
  br label %if.end94

if.else87:                                        ; preds = %if.else
  br i1 %36, label %if.then89, label %if.else87.if.end94_crit_edge

if.else87.if.end94_crit_edge:                     ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then89:                                        ; preds = %if.else87
  %disconnected_SC91 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1
  %host_scribble.i188 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 23
  %68 = ptrtoint ptr %host_scribble.i188 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %host_scribble.i188, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %69, align 4
  %71 = ptrtoint ptr %disconnected_SC91 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %disconnected_SC91, align 4
  %tobool.not.i189 = icmp eq ptr %72, null
  br i1 %tobool.not.i189, label %if.then89.append_SC.exit196_crit_edge, label %if.then89.for.cond.i193_crit_edge

if.then89.for.cond.i193_crit_edge:                ; preds = %if.then89
  br label %for.cond.i193

if.then89.append_SC.exit196_crit_edge:            ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %append_SC.exit196

for.cond.i193:                                    ; preds = %for.cond.i193.for.cond.i193_crit_edge, %if.then89.for.cond.i193_crit_edge
  %end.0.i190 = phi ptr [ %76, %for.cond.i193.for.cond.i193_crit_edge ], [ %72, %if.then89.for.cond.i193_crit_edge ]
  %host_scribble1.i191 = getelementptr inbounds %struct.scsi_cmnd, ptr %end.0.i190, i32 0, i32 23
  %73 = ptrtoint ptr %host_scribble1.i191 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %host_scribble1.i191, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %tobool3.not.i192 = icmp eq ptr %76, null
  br i1 %tobool3.not.i192, label %for.cond.i193.append_SC.exit196_crit_edge, label %for.cond.i193.for.cond.i193_crit_edge

for.cond.i193.for.cond.i193_crit_edge:            ; preds = %for.cond.i193
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i193

for.cond.i193.append_SC.exit196_crit_edge:        ; preds = %for.cond.i193
  call void @__sanitizer_cov_trace_pc() #11
  br label %append_SC.exit196

append_SC.exit196:                                ; preds = %for.cond.i193.append_SC.exit196_crit_edge, %if.then89.append_SC.exit196_crit_edge
  %.lcssa.sink.i194 = phi ptr [ %disconnected_SC91, %if.then89.append_SC.exit196_crit_edge ], [ %74, %for.cond.i193.append_SC.exit196_crit_edge ]
  %77 = ptrtoint ptr %.lcssa.sink.i194 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %SCpnt, ptr %.lcssa.sink.i194, align 4
  br label %if.end94

if.end94:                                         ; preds = %append_SC.exit196, %if.else87.if.end94_crit_edge, %append_SC.exit, %if.end81
  %ret.0 = phi i32 [ 8194, %if.end81 ], [ 8195, %if.else87.if.end94_crit_edge ], [ 8195, %append_SC.exit196 ], [ 8195, %append_SC.exit ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11, i32 noundef %call62) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.then
  %retval.0 = phi i32 [ 8195, %if.then ], [ %ret.0, %if.end94 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aha152x_bus_reset(ptr nocapture noundef readonly %SCpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call fastcc void @aha152x_bus_reset_host(ptr noundef %3)
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aha152x_adjust_queue(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_bounce_limit(ptr noundef %1, i32 noundef 1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aha152x_biosparam(ptr nocapture noundef readonly %sdev, ptr noundef %bdev, i64 noundef %capacity, ptr nocapture noundef writeonly %info_array) #0 align 64 {
entry:
  %info = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %2 = ptrtoint ptr %info_array to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 64, ptr %info_array, align 4
  %arrayidx1 = getelementptr i32, ptr %info_array, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %arrayidx1, align 4
  %conv = trunc i64 %capacity to i32
  %div69 = lshr i32 %conv, 11
  %arrayidx2 = getelementptr i32, ptr %info_array, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div69, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %conv)
  %cmp = icmp ugt i32 %conv, 2097151
  br i1 %cmp, label %if.then, label %entry.if.end56_crit_edge

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info) #9
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %info, align 4, !annotation !706
  %6 = getelementptr inbounds [3 x i32], ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !706
  %8 = getelementptr inbounds [3 x i32], ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !706
  %call = call i32 @scsicam_bios_param(ptr noundef %bdev, i64 noundef %capacity, ptr noundef nonnull %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then.if.then21_crit_edge, label %lor.lhs.false

if.then.if.then21_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.then
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.280)
  switch i32 %11, label %lor.lhs.false.if.then21_crit_edge [
    i32 64, label %land.lhs.true
    i32 255, label %land.lhs.true17
  ]

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp11 = icmp eq i32 %14, 32
  br i1 %cmp11, label %if.else34, label %land.lhs.true.if.then21_crit_edge

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

land.lhs.true17:                                  ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %16)
  %cmp19 = icmp eq i32 %16, 63
  br i1 %cmp19, label %land.lhs.true44, label %land.lhs.true17.if.then21_crit_edge

land.lhs.true17.if.then21_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %land.lhs.true17.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge, %lor.lhs.false.if.then21_crit_edge, %if.then.if.then21_crit_edge
  %ext_trans = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %ext_trans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ext_trans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %do.end31, label %do.end

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #12
  %19 = ptrtoint ptr %info_array to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 255, ptr %info_array, align 4
  %20 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 63, ptr %arrayidx1, align 4
  %div27 = udiv i32 %conv, 16065
  %21 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div27, ptr %arrayidx2, align 4
  br label %if.end55

do.end31:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #12
  br label %if.end55

if.else34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %info_array to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 64, ptr %info_array, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %6, align 4
  %25 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx1, align 4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %8, align 4
  %28 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx2, align 4
  br label %if.end55

land.lhs.true44:                                  ; preds = %land.lhs.true17
  %29 = ptrtoint ptr %info_array to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 255, ptr %info_array, align 4
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %6, align 4
  %32 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx1, align 4
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %8, align 4
  %35 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx2, align 4
  %ext_trans46 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %ext_trans46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ext_trans46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool47.not = icmp eq i32 %37, 0
  br i1 %tobool47.not, label %do.end51, label %land.lhs.true44.if.end55_crit_edge

land.lhs.true44.if.end55_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.end51:                                         ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165) #12
  br label %if.end55

if.end55:                                         ; preds = %do.end51, %land.lhs.true44.if.end55_crit_edge, %if.else34, %do.end31, %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info) #9
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %entry.if.end56_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aha152x_show_info(ptr noundef %m, ptr noundef %shpnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.167) #9
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 44
  %0 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port, align 8
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 45
  %2 = ptrtoint ptr %n_io_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %n_io_port, align 4
  %conv = zext i8 %3 to i32
  %add = add i32 %1, -1
  %sub = add i32 %add, %conv
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, i32 noundef %1, i32 noundef %sub) #9
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 47
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.169, i32 noundef %5) #9
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 53
  %reconnect = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 1
  %6 = ptrtoint ptr %reconnect to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reconnect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.170, ptr noundef nonnull %cond) #9
  %parity = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  %cond4 = select i1 %tobool3.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.171, ptr noundef nonnull %cond4) #9
  %synchronous = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %synchronous to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %synchronous, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.172, ptr noundef nonnull %cond7) #9
  %commands = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %commands to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %commands, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.173, i32 noundef %13) #9
  %14 = ptrtoint ptr %synchronous to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %synchronous, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %entry.if.end35_crit_edge, label %if.then

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then:                                          ; preds = %entry
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.174) #9
  %syncrate = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 7
  %16 = ptrtoint ptr %syncrate to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %syncrate, align 1
  %conv14 = zext i8 %17 to i32
  %and = and i32 %conv14, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then.for.inc_crit_edge, label %if.then16

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %and21 = lshr i32 %conv14, 4
  %18 = and i32 %and21, 7
  %add22 = add nuw nsw i32 %18, 2
  %mul = mul nuw nsw i32 %add22, 50
  %and34 = and i32 %conv14, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, i32 noundef 0, i32 noundef %add22, i32 noundef %mul, i32 noundef %and34) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.then.for.inc_crit_edge
  %arrayidx.1 = getelementptr [8 x i8], ptr %syncrate, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.1, align 1
  %conv14.1 = zext i8 %20 to i32
  %and.1 = and i32 %conv14.1, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool15.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool15.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then16.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then16.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %and21.1 = lshr i32 %conv14.1, 4
  %21 = and i32 %and21.1, 7
  %add22.1 = add nuw nsw i32 %21, 2
  %mul.1 = mul nuw nsw i32 %add22.1, 50
  %and34.1 = and i32 %conv14.1, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, i32 noundef 1, i32 noundef %add22.1, i32 noundef %mul.1, i32 noundef %and34.1) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then16.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr [8 x i8], ptr %syncrate, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.2, align 1
  %conv14.2 = zext i8 %23 to i32
  %and.2 = and i32 %conv14.2, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool15.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool15.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then16.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then16.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %and21.2 = lshr i32 %conv14.2, 4
  %24 = and i32 %and21.2, 7
  %add22.2 = add nuw nsw i32 %24, 2
  %mul.2 = mul nuw nsw i32 %add22.2, 50
  %and34.2 = and i32 %conv14.2, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, i32 noundef 2, i32 noundef %add22.2, i32 noundef %mul.2, i32 noundef %and34.2) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then16.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr [8 x i8], ptr %syncrate, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.3, align 1
  %conv14.3 = zext i8 %26 to i32
  %and.3 = and i32 %conv14.3, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool15.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool15.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then16.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then16.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %and21.3 = lshr i32 %conv14.3, 4
  %27 = and i32 %and21.3, 7
  %add22.3 = add nuw nsw i32 %27, 2
  %mul.3 = mul nuw nsw i32 %add22.3, 50
  %and34.3 = and i32 %conv14.3, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, i32 noundef 3, i32 noundef %add22.3, i32 noundef %mul.3, i32 noundef %and34.3) #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then16.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 8
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.4, align 1
  %conv14.4 = zext i8 %29 to i32
  %and.4 = and i32 %conv14.4, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool15.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool15.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then16.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then16.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  %and21.4 = lshr i32 %conv14.4, 4
  %30 = and i32 %and21.4, 7
  %add22.4 = add nuw nsw i32 %30, 2
  %mul.4 = mul nuw nsw i32 %add22.4, 50
  %and34.4 = and i32 %conv14.4, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, i32 noundef 4, i32 noundef %add22.4, i32 noundef %mul.4, i32 noundef %and34.4) #9
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then16.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr [8 x i8], ptr %syncrate, i32 0, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.5, align 1
  %conv14.5 = zext i8 %32 to i32
  %and.5 = and i32 %conv14.5, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool15.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool15.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then16.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then16.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  %and21.5 = lshr i32 %conv14.5, 4
  %33 = and i32 %and21.5, 7
  %add22.5 = add nuw nsw i32 %33, 2
  %mul.5 = mul nuw nsw i32 %add22.5, 50
  %and34.5 = and i32 %conv14.5, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, i32 noundef 5, i32 noundef %add22.5, i32 noundef %mul.5, i32 noundef %and34.5) #9
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then16.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr [8 x i8], ptr %syncrate, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.6, align 1
  %conv14.6 = zext i8 %35 to i32
  %and.6 = and i32 %conv14.6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool15.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool15.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then16.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.then16.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  %and21.6 = lshr i32 %conv14.6, 4
  %36 = and i32 %and21.6, 7
  %add22.6 = add nuw nsw i32 %36, 2
  %mul.6 = mul nuw nsw i32 %add22.6, 50
  %and34.6 = and i32 %conv14.6, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, i32 noundef 6, i32 noundef %add22.6, i32 noundef %mul.6, i32 noundef %and34.6) #9
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then16.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr [8 x i8], ptr %syncrate, i32 0, i32 7
  %37 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.7, align 1
  %conv14.7 = zext i8 %38 to i32
  %and.7 = and i32 %conv14.7, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool15.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool15.not.7, label %for.inc.6.if.end35_crit_edge, label %if.then16.7

for.inc.6.if.end35_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then16.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  %and21.7 = lshr i32 %conv14.7, 4
  %39 = and i32 %and21.7, 7
  %add22.7 = add nuw nsw i32 %39, 2
  %mul.7 = mul nuw nsw i32 %add22.7, 50
  %and34.7 = and i32 %conv14.7, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, i32 noundef 7, i32 noundef %add22.7, i32 noundef %mul.7, i32 noundef %and34.7) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then16.7, %for.inc.6.if.end35_crit_edge, %entry.if.end35_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.176) #9
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 2
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %40 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hostdata, align 8
  %tobool44.not = icmp eq ptr %41, null
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end35
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.177) #9
  %42 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %ptr.0169 = load ptr, ptr %hostdata, align 4
  %tobool49.not170 = icmp eq ptr %ptr.0169, null
  br i1 %tobool49.not170, label %if.then45.if.end53_crit_edge, label %if.then45.for.body50_crit_edge

if.then45.for.body50_crit_edge:                   ; preds = %if.then45
  br label %for.body50

if.then45.if.end53_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %if.then45.for.body50_crit_edge
  %ptr.0171 = phi ptr [ %ptr.0, %for.body50.for.body50_crit_edge ], [ %ptr.0169, %if.then45.for.body50_crit_edge ]
  tail call fastcc void @get_command(ptr noundef %m, ptr noundef nonnull %ptr.0171)
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.0171, i32 0, i32 23
  %43 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host_scribble, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %ptr.0 = load ptr, ptr %44, align 4
  %tobool49.not = icmp eq ptr %ptr.0, null
  br i1 %tobool49.not, label %for.body50.if.end53_crit_edge, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50

for.body50.if.end53_crit_edge:                    ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.178) #9
  br label %if.end53

if.end53:                                         ; preds = %if.else, %for.body50.if.end53_crit_edge, %if.then45.if.end53_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #9
  %current_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %current_SC, align 4
  %tobool57.not = icmp eq ptr %47, null
  br i1 %tobool57.not, label %if.else61, label %if.then58

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.179) #9
  %48 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %current_SC, align 4
  tail call fastcc void @get_command(ptr noundef %m, ptr noundef %49)
  br label %if.end62

if.else61:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.180) #9
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.then58
  %disconnected_SC = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1
  %50 = ptrtoint ptr %disconnected_SC to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %disconnected_SC, align 8
  %tobool64.not = icmp eq ptr %51, null
  br i1 %tobool64.not, label %if.else75, label %if.then65

if.then65:                                        ; preds = %if.end62
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.181) #9
  %52 = ptrtoint ptr %disconnected_SC to i32
  call void @__asan_load4_noabort(i32 %52)
  %ptr.1172 = load ptr, ptr %disconnected_SC, align 4
  %tobool69.not173 = icmp eq ptr %ptr.1172, null
  br i1 %tobool69.not173, label %if.then65.if.end76_crit_edge, label %if.then65.for.body70_crit_edge

if.then65.for.body70_crit_edge:                   ; preds = %if.then65
  br label %for.body70

if.then65.if.end76_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %if.then65.for.body70_crit_edge
  %ptr.1174 = phi ptr [ %ptr.1, %for.body70.for.body70_crit_edge ], [ %ptr.1172, %if.then65.for.body70_crit_edge ]
  tail call fastcc void @get_command(ptr noundef %m, ptr noundef nonnull %ptr.1174)
  %host_scribble72 = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr.1174, i32 0, i32 23
  %53 = ptrtoint ptr %host_scribble72 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %host_scribble72, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %ptr.1 = load ptr, ptr %54, align 4
  %tobool69.not = icmp eq ptr %ptr.1, null
  br i1 %tobool69.not, label %for.body70.if.end76_crit_edge, label %for.body70.for.body70_crit_edge

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body70

for.body70.if.end76_crit_edge:                    ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.else75:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.182) #9
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %for.body70.if.end76_crit_edge, %if.then65.if.end76_crit_edge
  %56 = ptrtoint ptr %current_SC to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %current_SC, align 4
  %tobool.not.i = icmp eq ptr %57, null
  %cond.i = select i1 %tobool.not.i, ptr @.str.191, ptr @.str.190
  %state.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 3
  %58 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state.i, align 4
  %arrayidx.i = getelementptr [14 x %struct.anon.83], ptr @states, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 4
  %prevstate.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 4
  %62 = ptrtoint ptr %prevstate.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %prevstate.i, align 8
  %arrayidx3.i = getelementptr [14 x %struct.anon.83], ptr @states, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx3.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.189, ptr noundef nonnull %cond.i, ptr noundef %61, ptr noundef %65) #9
  %io_port0.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 2
  %66 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %io_port0.i, align 8
  %and.i = and i32 %67, 1048575
  %add6.i = or i32 %and.i, -18874368
  %68 = inttoptr i32 %add6.i to ptr
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !707
  %conv.i = zext i8 %69 to i32
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.192) #9
  %and8.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end76.if.end.i_crit_edge, label %if.then.i

if.end76.if.end.i_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.193) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end76.if.end.i_crit_edge
  %and10.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then12.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.194) #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end.i.if.end13.i_crit_edge
  %and14.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end17.i_crit_edge, label %if.then16.i

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.195) #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end17.i_crit_edge
  %and18.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end21.i_crit_edge, label %if.then20.i

if.end17.i.if.end21.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.196) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end21.i_crit_edge
  %and22.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end25.i_crit_edge, label %if.then24.i

if.end21.i.if.end25.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.197) #9
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end25.i_crit_edge
  %and26.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end29.i_crit_edge, label %if.then28.i

if.end25.i.if.end29.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.198) #9
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %if.end25.i.if.end29.i_crit_edge
  %and30.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.if.end33.i_crit_edge, label %if.then32.i

if.end29.i.if.end33.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.199) #9
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end33.i_crit_edge
  %and34.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.end37.i_crit_edge, label %if.then36.i

if.end33.i.if.end37.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.200) #9
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then36.i, %if.end33.i.if.end37.i_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.201) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.202) #9
  %70 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %io_port0.i, align 8
  %add41.i = add i32 %71, 3
  %and42.i = and i32 %add41.i, 1048575
  %add43.i = or i32 %and42.i, -18874368
  %72 = inttoptr i32 %add43.i to ptr
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %72) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !708
  %74 = lshr i8 %73, 5
  %75 = zext i8 %74 to i32
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.aha152x_show_info, i32 0, i32 %75
  %76 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %76)
  %switch.load = load ptr, ptr %switch.gep, align 4
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %switch.load) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.210) #9
  %io_port1.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 10, i32 1, i32 3
  %77 = ptrtoint ptr %io_port1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %io_port1.i, align 4
  %add56.i = add i32 %78, 20
  %and57.i = and i32 %add56.i, 1048575
  %add58.i = or i32 %and57.i, -18874368
  %79 = inttoptr i32 %add58.i to ptr
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !709
  %81 = and i8 %80, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp.not.i = icmp eq i8 %81, 0
  %cond65.i = select i1 %cmp.not.i, ptr @.str.213, ptr @.str.212
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.211, ptr noundef nonnull %cond65.i) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.214) #9
  %82 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %io_port0.i, align 8
  %add69.i = add i32 %83, 11
  %and70.i = and i32 %add69.i, 1048575
  %add71.i = or i32 %and70.i, -18874368
  %84 = inttoptr i32 %add71.i to ptr
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %84) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !710
  %conv75.i = zext i8 %85 to i32
  %and76.i = and i32 %conv75.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %tobool77.not.i, label %if.end37.i.if.end79.i_crit_edge, label %if.then78.i

if.end37.i.if.end79.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

if.then78.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.215) #9
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then78.i, %if.end37.i.if.end79.i_crit_edge
  %and80.i = and i32 %conv75.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.end79.i.if.end83.i_crit_edge, label %if.then82.i

if.end79.i.if.end83.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

if.then82.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.216) #9
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then82.i, %if.end79.i.if.end83.i_crit_edge
  %and84.i = and i32 %conv75.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %if.end83.i.if.end87.i_crit_edge, label %if.then86.i

if.end83.i.if.end87.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.i

if.then86.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.217) #9
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then86.i, %if.end83.i.if.end87.i_crit_edge
  %and88.i = and i32 %conv75.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %if.end87.i.if.end91.i_crit_edge, label %if.then90.i

if.end87.i.if.end91.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91.i

if.then90.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.218) #9
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then90.i, %if.end87.i.if.end91.i_crit_edge
  %and92.i = and i32 %conv75.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %if.end91.i.if.end95.i_crit_edge, label %if.then94.i

if.end91.i.if.end95.i_crit_edge:                  ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

if.then94.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.219) #9
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then94.i, %if.end91.i.if.end95.i_crit_edge
  %and96.i = and i32 %conv75.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %if.end95.i.if.end99.i_crit_edge, label %if.then98.i

if.end95.i.if.end99.i_crit_edge:                  ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99.i

if.then98.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.220) #9
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then98.i, %if.end95.i.if.end99.i_crit_edge
  %and100.i = and i32 %conv75.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  br i1 %tobool101.not.i, label %if.end99.i.if.end103.i_crit_edge, label %if.then102.i

if.end99.i.if.end103.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103.i

if.then102.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.221) #9
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then102.i, %if.end99.i.if.end103.i_crit_edge
  %and104.i = and i32 %conv75.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %if.end103.i.if.end107.i_crit_edge, label %if.then106.i

if.end103.i.if.end107.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107.i

if.then106.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.222) #9
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.then106.i, %if.end103.i.if.end107.i_crit_edge
  %86 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %io_port0.i, align 8
  %add111.i = add i32 %87, 12
  %and112.i = and i32 %add111.i, 1048575
  %add113.i = or i32 %and112.i, -18874368
  %88 = inttoptr i32 %add113.i to ptr
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %88) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !711
  %conv117.i = zext i8 %89 to i32
  %and118.i = and i32 %conv117.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.i)
  %tobool119.not.i = icmp eq i32 %and118.i, 0
  br i1 %tobool119.not.i, label %if.end107.i.if.end121.i_crit_edge, label %if.then120.i

if.end107.i.if.end121.i_crit_edge:                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

if.then120.i:                                     ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.223) #9
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then120.i, %if.end107.i.if.end121.i_crit_edge
  %and122.i = and i32 %conv117.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i)
  %tobool123.not.i = icmp eq i32 %and122.i, 0
  br i1 %tobool123.not.i, label %if.end121.i.if.end125.i_crit_edge, label %if.then124.i

if.end121.i.if.end125.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125.i

if.then124.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.224) #9
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then124.i, %if.end121.i.if.end125.i_crit_edge
  %and126.i = and i32 %conv117.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126.i)
  %tobool127.not.i = icmp eq i32 %and126.i, 0
  br i1 %tobool127.not.i, label %if.end125.i.if.end129.i_crit_edge, label %if.then128.i

if.end125.i.if.end129.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129.i

if.then128.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.225) #9
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then128.i, %if.end125.i.if.end129.i_crit_edge
  %and130.i = and i32 %conv117.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  br i1 %tobool131.not.i, label %if.end129.i.if.end133.i_crit_edge, label %if.then132.i

if.end129.i.if.end133.i_crit_edge:                ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133.i

if.then132.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.226) #9
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then132.i, %if.end129.i.if.end133.i_crit_edge
  %and134.i = and i32 %conv117.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134.i)
  %tobool135.not.i = icmp eq i32 %and134.i, 0
  br i1 %tobool135.not.i, label %if.end133.i.if.end137.i_crit_edge, label %if.then136.i

if.end133.i.if.end137.i_crit_edge:                ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137.i

if.then136.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.227) #9
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.then136.i, %if.end133.i.if.end137.i_crit_edge
  %and138.i = and i32 %conv117.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i)
  %tobool139.not.i = icmp eq i32 %and138.i, 0
  br i1 %tobool139.not.i, label %if.end137.i.if.end141.i_crit_edge, label %if.then140.i

if.end137.i.if.end141.i_crit_edge:                ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141.i

if.then140.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.228) #9
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.then140.i, %if.end137.i.if.end141.i_crit_edge
  %and142.i = and i32 %conv117.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i)
  %tobool143.not.i = icmp eq i32 %and142.i, 0
  br i1 %tobool143.not.i, label %if.end141.i.if.end145.i_crit_edge, label %if.then144.i

if.end141.i.if.end145.i_crit_edge:                ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145.i

if.then144.i:                                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.229) #9
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then144.i, %if.end141.i.if.end145.i_crit_edge
  %and146.i = and i32 %conv117.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i)
  %tobool147.not.i = icmp eq i32 %and146.i, 0
  br i1 %tobool147.not.i, label %if.end145.i.if.end149.i_crit_edge, label %if.then148.i

if.end145.i.if.end149.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149.i

if.then148.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.230) #9
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.then148.i, %if.end145.i.if.end149.i_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.210) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.214) #9
  %90 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %io_port0.i, align 8
  %add153.i = add i32 %91, 11
  %and154.i = and i32 %add153.i, 1048575
  %add155.i = or i32 %and154.i, -18874368
  %92 = inttoptr i32 %add155.i to ptr
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %92) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !712
  %94 = ptrtoint ptr %io_port1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %io_port1.i, align 4
  %add163.i = add i32 %95, 16
  %and164.i = and i32 %add163.i, 1048575
  %add165.i = or i32 %and164.i, -18874368
  %96 = inttoptr i32 %add165.i to ptr
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %96) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !713
  %and170781.i = and i8 %97, %93
  %and170.i = zext i8 %and170781.i to i32
  %and171.i = and i32 %and170.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171.i)
  %tobool172.not.i = icmp eq i32 %and171.i, 0
  br i1 %tobool172.not.i, label %if.end149.i.if.end174.i_crit_edge, label %if.then173.i

if.end149.i.if.end174.i_crit_edge:                ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end174.i

if.then173.i:                                     ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.215) #9
  br label %if.end174.i

if.end174.i:                                      ; preds = %if.then173.i, %if.end149.i.if.end174.i_crit_edge
  %and175.i = and i32 %and170.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175.i)
  %tobool176.not.i = icmp eq i32 %and175.i, 0
  br i1 %tobool176.not.i, label %if.end174.i.if.end178.i_crit_edge, label %if.then177.i

if.end174.i.if.end178.i_crit_edge:                ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178.i

if.then177.i:                                     ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.216) #9
  br label %if.end178.i

if.end178.i:                                      ; preds = %if.then177.i, %if.end174.i.if.end178.i_crit_edge
  %and179.i = and i32 %and170.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179.i)
  %tobool180.not.i = icmp eq i32 %and179.i, 0
  br i1 %tobool180.not.i, label %if.end178.i.if.end182.i_crit_edge, label %if.then181.i

if.end178.i.if.end182.i_crit_edge:                ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end182.i

if.then181.i:                                     ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.217) #9
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.then181.i, %if.end178.i.if.end182.i_crit_edge
  %and183.i = and i32 %and170.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183.i)
  %tobool184.not.i = icmp eq i32 %and183.i, 0
  br i1 %tobool184.not.i, label %if.end182.i.if.end186.i_crit_edge, label %if.then185.i

if.end182.i.if.end186.i_crit_edge:                ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186.i

if.then185.i:                                     ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.218) #9
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.then185.i, %if.end182.i.if.end186.i_crit_edge
  %and187.i = and i32 %and170.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187.i)
  %tobool188.not.i = icmp eq i32 %and187.i, 0
  br i1 %tobool188.not.i, label %if.end186.i.if.end190.i_crit_edge, label %if.then189.i

if.end186.i.if.end190.i_crit_edge:                ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end190.i

if.then189.i:                                     ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.219) #9
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.then189.i, %if.end186.i.if.end190.i_crit_edge
  %and191.i = and i32 %and170.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191.i)
  %tobool192.not.i = icmp eq i32 %and191.i, 0
  br i1 %tobool192.not.i, label %if.end190.i.if.end194.i_crit_edge, label %if.then193.i

if.end190.i.if.end194.i_crit_edge:                ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end194.i

if.then193.i:                                     ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.220) #9
  br label %if.end194.i

if.end194.i:                                      ; preds = %if.then193.i, %if.end190.i.if.end194.i_crit_edge
  %and195.i = and i32 %and170.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195.i)
  %tobool196.not.i = icmp eq i32 %and195.i, 0
  br i1 %tobool196.not.i, label %if.end194.i.if.end198.i_crit_edge, label %if.then197.i

if.end194.i.if.end198.i_crit_edge:                ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end198.i

if.then197.i:                                     ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.221) #9
  br label %if.end198.i

if.end198.i:                                      ; preds = %if.then197.i, %if.end194.i.if.end198.i_crit_edge
  %and199.i = and i32 %and170.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199.i)
  %tobool200.not.i = icmp eq i32 %and199.i, 0
  br i1 %tobool200.not.i, label %if.end198.i.if.end202.i_crit_edge, label %if.then201.i

if.end198.i.if.end202.i_crit_edge:                ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202.i

if.then201.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.222) #9
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.then201.i, %if.end198.i.if.end202.i_crit_edge
  %98 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %io_port0.i, align 8
  %add206.i = add i32 %99, 12
  %and207.i = and i32 %add206.i, 1048575
  %add208.i = or i32 %and207.i, -18874368
  %100 = inttoptr i32 %add208.i to ptr
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %100) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !714
  %102 = ptrtoint ptr %io_port1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %io_port1.i, align 4
  %add216.i = add i32 %103, 17
  %and217.i = and i32 %add216.i, 1048575
  %add218.i = or i32 %and217.i, -18874368
  %104 = inttoptr i32 %add218.i to ptr
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %104) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !715
  %and223782.i = and i8 %105, %101
  %and223.i = zext i8 %and223782.i to i32
  %and224.i = and i32 %and223.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224.i)
  %tobool225.not.i = icmp eq i32 %and224.i, 0
  br i1 %tobool225.not.i, label %if.end202.i.if.end227.i_crit_edge, label %if.then226.i

if.end202.i.if.end227.i_crit_edge:                ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end227.i

if.then226.i:                                     ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.223) #9
  br label %if.end227.i

if.end227.i:                                      ; preds = %if.then226.i, %if.end202.i.if.end227.i_crit_edge
  %and228.i = and i32 %and223.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228.i)
  %tobool229.not.i = icmp eq i32 %and228.i, 0
  br i1 %tobool229.not.i, label %if.end227.i.if.end231.i_crit_edge, label %if.then230.i

if.end227.i.if.end231.i_crit_edge:                ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231.i

if.then230.i:                                     ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.224) #9
  br label %if.end231.i

if.end231.i:                                      ; preds = %if.then230.i, %if.end227.i.if.end231.i_crit_edge
  %and232.i = and i32 %and223.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232.i)
  %tobool233.not.i = icmp eq i32 %and232.i, 0
  br i1 %tobool233.not.i, label %if.end231.i.if.end235.i_crit_edge, label %if.then234.i

if.end231.i.if.end235.i_crit_edge:                ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end235.i

if.then234.i:                                     ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.225) #9
  br label %if.end235.i

if.end235.i:                                      ; preds = %if.then234.i, %if.end231.i.if.end235.i_crit_edge
  %and236.i = and i32 %and223.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236.i)
  %tobool237.not.i = icmp eq i32 %and236.i, 0
  br i1 %tobool237.not.i, label %if.end235.i.if.end239.i_crit_edge, label %if.then238.i

if.end235.i.if.end239.i_crit_edge:                ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end239.i

if.then238.i:                                     ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.226) #9
  br label %if.end239.i

if.end239.i:                                      ; preds = %if.then238.i, %if.end235.i.if.end239.i_crit_edge
  %and240.i = and i32 %and223.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240.i)
  %tobool241.not.i = icmp eq i32 %and240.i, 0
  br i1 %tobool241.not.i, label %if.end239.i.if.end243.i_crit_edge, label %if.then242.i

if.end239.i.if.end243.i_crit_edge:                ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end243.i

if.then242.i:                                     ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.227) #9
  br label %if.end243.i

if.end243.i:                                      ; preds = %if.then242.i, %if.end239.i.if.end243.i_crit_edge
  %and244.i = and i32 %and223.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244.i)
  %tobool245.not.i = icmp eq i32 %and244.i, 0
  br i1 %tobool245.not.i, label %if.end243.i.if.end247.i_crit_edge, label %if.then246.i

if.end243.i.if.end247.i_crit_edge:                ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end247.i

if.then246.i:                                     ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.228) #9
  br label %if.end247.i

if.end247.i:                                      ; preds = %if.then246.i, %if.end243.i.if.end247.i_crit_edge
  %and248.i = and i32 %and223.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248.i)
  %tobool249.not.i = icmp eq i32 %and248.i, 0
  br i1 %tobool249.not.i, label %if.end247.i.if.end251.i_crit_edge, label %if.then250.i

if.end247.i.if.end251.i_crit_edge:                ; preds = %if.end247.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end251.i

if.then250.i:                                     ; preds = %if.end247.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.229) #9
  br label %if.end251.i

if.end251.i:                                      ; preds = %if.then250.i, %if.end247.i.if.end251.i_crit_edge
  %and252.i = and i32 %and223.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252.i)
  %tobool253.not.i = icmp eq i32 %and252.i, 0
  br i1 %tobool253.not.i, label %if.end251.i.if.end255.i_crit_edge, label %if.then254.i

if.end251.i.if.end255.i_crit_edge:                ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end255.i

if.then254.i:                                     ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.230) #9
  br label %if.end255.i

if.end255.i:                                      ; preds = %if.then254.i, %if.end251.i.if.end255.i_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.210) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.231) #9
  %106 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %io_port0.i, align 8
  %add259.i = add i32 %107, 1
  %and260.i = and i32 %add259.i, 1048575
  %add261.i = or i32 %and260.i, -18874368
  %108 = inttoptr i32 %add261.i to ptr
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %108) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !716
  %conv265.i = zext i8 %109 to i32
  %and266.i = and i32 %conv265.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266.i)
  %tobool267.not.i = icmp eq i32 %and266.i, 0
  br i1 %tobool267.not.i, label %if.end255.i.if.end269.i_crit_edge, label %if.then268.i

if.end255.i.if.end269.i_crit_edge:                ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end269.i

if.then268.i:                                     ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.232) #9
  br label %if.end269.i

if.end269.i:                                      ; preds = %if.then268.i, %if.end255.i.if.end269.i_crit_edge
  %and270.i = and i32 %conv265.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270.i)
  %tobool271.not.i = icmp eq i32 %and270.i, 0
  br i1 %tobool271.not.i, label %if.end269.i.if.end273.i_crit_edge, label %if.then272.i

if.end269.i.if.end273.i_crit_edge:                ; preds = %if.end269.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end273.i

if.then272.i:                                     ; preds = %if.end269.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.233) #9
  br label %if.end273.i

if.end273.i:                                      ; preds = %if.then272.i, %if.end269.i.if.end273.i_crit_edge
  %and274.i = and i32 %conv265.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274.i)
  %tobool275.not.i = icmp eq i32 %and274.i, 0
  br i1 %tobool275.not.i, label %if.end273.i.if.end277.i_crit_edge, label %if.then276.i

if.end273.i.if.end277.i_crit_edge:                ; preds = %if.end273.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end277.i

if.then276.i:                                     ; preds = %if.end273.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.234) #9
  br label %if.end277.i

if.end277.i:                                      ; preds = %if.then276.i, %if.end273.i.if.end277.i_crit_edge
  %and278.i = and i32 %conv265.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278.i)
  %tobool279.not.i = icmp eq i32 %and278.i, 0
  br i1 %tobool279.not.i, label %if.end277.i.if.end281.i_crit_edge, label %if.then280.i

if.end277.i.if.end281.i_crit_edge:                ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end281.i

if.then280.i:                                     ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.235) #9
  br label %if.end281.i

if.end281.i:                                      ; preds = %if.then280.i, %if.end277.i.if.end281.i_crit_edge
  %and282.i = and i32 %conv265.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282.i)
  %tobool283.not.i = icmp eq i32 %and282.i, 0
  br i1 %tobool283.not.i, label %if.end281.i.if.end285.i_crit_edge, label %if.then284.i

if.end281.i.if.end285.i_crit_edge:                ; preds = %if.end281.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end285.i

if.then284.i:                                     ; preds = %if.end281.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.236) #9
  br label %if.end285.i

if.end285.i:                                      ; preds = %if.then284.i, %if.end281.i.if.end285.i_crit_edge
  %and286.i = and i32 %conv265.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286.i)
  %tobool287.not.i = icmp eq i32 %and286.i, 0
  br i1 %tobool287.not.i, label %if.end285.i.if.end289.i_crit_edge, label %if.then288.i

if.end285.i.if.end289.i_crit_edge:                ; preds = %if.end285.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end289.i

if.then288.i:                                     ; preds = %if.end285.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.237) #9
  br label %if.end289.i

if.end289.i:                                      ; preds = %if.then288.i, %if.end285.i.if.end289.i_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.210) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.238) #9
  %110 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %io_port0.i, align 8
  %add293.i = add i32 %111, 3
  %and294.i = and i32 %add293.i, 1048575
  %add295.i = or i32 %and294.i, -18874368
  %112 = inttoptr i32 %add295.i to ptr
  %113 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %112) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !717
  %conv299.i = zext i8 %113 to i32
  %and300.i = and i32 %conv299.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and300.i)
  %tobool301.not.i = icmp eq i32 %and300.i, 0
  br i1 %tobool301.not.i, label %if.end289.i.if.end303.i_crit_edge, label %if.then302.i

if.end289.i.if.end303.i_crit_edge:                ; preds = %if.end289.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end303.i

if.then302.i:                                     ; preds = %if.end289.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.239) #9
  br label %if.end303.i

if.end303.i:                                      ; preds = %if.then302.i, %if.end289.i.if.end303.i_crit_edge
  %and304.i = and i32 %conv299.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and304.i)
  %tobool305.not.i = icmp eq i32 %and304.i, 0
  br i1 %tobool305.not.i, label %if.end303.i.if.end307.i_crit_edge, label %if.then306.i

if.end303.i.if.end307.i_crit_edge:                ; preds = %if.end303.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end307.i

if.then306.i:                                     ; preds = %if.end303.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.195) #9
  br label %if.end307.i

if.end307.i:                                      ; preds = %if.then306.i, %if.end303.i.if.end307.i_crit_edge
  %and308.i = and i32 %conv299.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and308.i)
  %tobool309.not.i = icmp eq i32 %and308.i, 0
  br i1 %tobool309.not.i, label %if.end307.i.if.end311.i_crit_edge, label %if.then310.i

if.end307.i.if.end311.i_crit_edge:                ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end311.i

if.then310.i:                                     ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.240) #9
  br label %if.end311.i

if.end311.i:                                      ; preds = %if.then310.i, %if.end307.i.if.end311.i_crit_edge
  %and312.i = and i32 %conv299.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and312.i)
  %tobool313.not.i = icmp eq i32 %and312.i, 0
  br i1 %tobool313.not.i, label %if.end311.i.if.end315.i_crit_edge, label %if.then314.i

if.end311.i.if.end315.i_crit_edge:                ; preds = %if.end311.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end315.i

if.then314.i:                                     ; preds = %if.end311.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.241) #9
  br label %if.end315.i

if.end315.i:                                      ; preds = %if.then314.i, %if.end311.i.if.end315.i_crit_edge
  %and316.i = and i32 %conv299.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and316.i)
  %tobool317.not.i = icmp eq i32 %and316.i, 0
  br i1 %tobool317.not.i, label %if.end315.i.if.end319.i_crit_edge, label %if.then318.i

if.end315.i.if.end319.i_crit_edge:                ; preds = %if.end315.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end319.i

if.then318.i:                                     ; preds = %if.end315.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.242) #9
  br label %if.end319.i

if.end319.i:                                      ; preds = %if.then318.i, %if.end315.i.if.end319.i_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.210) #9
  %114 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %io_port0.i, align 8
  %add323.i = add i32 %115, 5
  %and324.i = and i32 %add323.i, 1048575
  %add325.i = or i32 %and324.i, -18874368
  %116 = inttoptr i32 %add325.i to ptr
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %116) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !718
  %conv329.i = zext i8 %117 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.243, i32 noundef %conv329.i) #9
  %118 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %io_port0.i, align 8
  %add333.i = add i32 %119, 10
  %and334.i = and i32 %add333.i, 1048575
  %add335.i = or i32 %and334.i, -18874368
  %120 = inttoptr i32 %add335.i to ptr
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %120) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !719
  %conv339.i = zext i8 %121 to i32
  %shl.i = shl nuw nsw i32 %conv339.i, 16
  %122 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %io_port0.i, align 8
  %add343.i = add i32 %123, 9
  %and344.i = and i32 %add343.i, 1048575
  %add345.i = or i32 %and344.i, -18874368
  %124 = inttoptr i32 %add345.i to ptr
  %125 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %124) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !720
  %conv349.i = zext i8 %125 to i32
  %shl350.i = shl nuw nsw i32 %conv349.i, 8
  %add351.i = or i32 %shl350.i, %shl.i
  %126 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %io_port0.i, align 8
  %add355.i = add i32 %127, 8
  %and356.i = and i32 %add355.i, 1048575
  %add357.i = or i32 %and356.i, -18874368
  %128 = inttoptr i32 %add357.i to ptr
  %129 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %128) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !721
  %conv361.i = zext i8 %129 to i32
  %add362.i = or i32 %add351.i, %conv361.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.244, i32 noundef %add362.i) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.245) #9
  %130 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %io_port0.i, align 8
  %add366.i = add i32 %131, 13
  %and367.i = and i32 %add366.i, 1048575
  %add368.i = or i32 %and367.i, -18874368
  %132 = inttoptr i32 %add368.i to ptr
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %132) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !722
  %conv372.i = zext i8 %133 to i32
  %and373.i = and i32 %conv372.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and373.i)
  %tobool374.not.i = icmp eq i32 %and373.i, 0
  br i1 %tobool374.not.i, label %if.end319.i.if.end376.i_crit_edge, label %if.then375.i

if.end319.i.if.end376.i_crit_edge:                ; preds = %if.end319.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end376.i

if.then375.i:                                     ; preds = %if.end319.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.246) #9
  br label %if.end376.i

if.end376.i:                                      ; preds = %if.then375.i, %if.end319.i.if.end376.i_crit_edge
  %and377.i = and i32 %conv372.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and377.i)
  %tobool378.not.i = icmp eq i32 %and377.i, 0
  br i1 %tobool378.not.i, label %if.end376.i.if.end380.i_crit_edge, label %if.then379.i

if.end376.i.if.end380.i_crit_edge:                ; preds = %if.end376.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end380.i

if.then379.i:                                     ; preds = %if.end376.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.247) #9
  br label %if.end380.i

if.end380.i:                                      ; preds = %if.then379.i, %if.end376.i.if.end380.i_crit_edge
  %and381.i = and i32 %conv372.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and381.i)
  %tobool382.not.i = icmp eq i32 %and381.i, 0
  br i1 %tobool382.not.i, label %if.end380.i.if.end384.i_crit_edge, label %if.then383.i

if.end380.i.if.end384.i_crit_edge:                ; preds = %if.end380.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end384.i

if.then383.i:                                     ; preds = %if.end380.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.248) #9
  br label %if.end384.i

if.end384.i:                                      ; preds = %if.then383.i, %if.end380.i.if.end384.i_crit_edge
  %and385.i = and i32 %conv372.i, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.249, i32 noundef %and385.i) #9
  %134 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %io_port0.i, align 8
  %add389.i = add i32 %135, 14
  %and390.i = and i32 %add389.i, 1048575
  %add391.i = or i32 %and390.i, -18874368
  %136 = inttoptr i32 %add391.i to ptr
  %137 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %136) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !723
  %conv395.i = zext i8 %137 to i32
  %138 = lshr i32 %conv395.i, 4
  %and397.i = and i32 %conv395.i, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.250, i32 noundef %138, i32 noundef %and397.i) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.251) #9
  %139 = ptrtoint ptr %io_port0.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %io_port0.i, align 8
  %add401.i = add i32 %140, 15
  %and402.i = and i32 %add401.i, 1048575
  %add403.i = or i32 %and402.i, -18874368
  %141 = inttoptr i32 %add403.i to ptr
  %142 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %141) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !724
  %conv407.i = zext i8 %142 to i32
  %and408.i = and i32 %conv407.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and408.i)
  %tobool409.not.i = icmp eq i32 %and408.i, 0
  br i1 %tobool409.not.i, label %if.end384.i.if.end411.i_crit_edge, label %if.then410.i

if.end384.i.if.end411.i_crit_edge:                ; preds = %if.end384.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end411.i

if.then410.i:                                     ; preds = %if.end384.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.252) #9
  br label %if.end411.i

if.end411.i:                                      ; preds = %if.then410.i, %if.end384.i.if.end411.i_crit_edge
  %and412.i = and i32 %conv407.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and412.i)
  %tobool413.not.i = icmp eq i32 %and412.i, 0
  br i1 %tobool413.not.i, label %if.end411.i.if.end415.i_crit_edge, label %if.then414.i

if.end411.i.if.end415.i_crit_edge:                ; preds = %if.end411.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end415.i

if.then414.i:                                     ; preds = %if.end411.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.253) #9
  br label %if.end415.i

if.end415.i:                                      ; preds = %if.then414.i, %if.end411.i.if.end415.i_crit_edge
  %and416.i = and i32 %conv407.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416.i)
  %tobool417.not.i = icmp eq i32 %and416.i, 0
  br i1 %tobool417.not.i, label %if.end415.i.if.end419.i_crit_edge, label %if.then418.i

if.end415.i.if.end419.i_crit_edge:                ; preds = %if.end415.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end419.i

if.then418.i:                                     ; preds = %if.end415.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.254) #9
  br label %if.end419.i

if.end419.i:                                      ; preds = %if.then418.i, %if.end415.i.if.end419.i_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.210) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.255) #9
  %143 = ptrtoint ptr %io_port1.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %io_port1.i, align 4
  %add423.i = add i32 %144, 18
  %and424.i = and i32 %add423.i, 1048575
  %add425.i = or i32 %and424.i, -18874368
  %145 = inttoptr i32 %add425.i to ptr
  %146 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %145) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !725
  %conv429.i = zext i8 %146 to i32
  %and430.i = and i32 %conv429.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and430.i)
  %tobool431.not.i = icmp eq i32 %and430.i, 0
  %cond432.i = select i1 %tobool431.not.i, ptr @.str.258, ptr @.str.257
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.256, ptr noundef nonnull %cond432.i) #9
  %and433.i = and i32 %conv429.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and433.i)
  %tobool434.not.i = icmp eq i32 %and433.i, 0
  %cond435.i = select i1 %tobool434.not.i, ptr @.str.260, ptr @.str.259
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.256, ptr noundef nonnull %cond435.i) #9
  %and436.i = and i32 %conv429.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and436.i)
  %tobool437.not.i = icmp eq i32 %and436.i, 0
  %cond438.i = select i1 %tobool437.not.i, ptr @.str.262, ptr @.str.261
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.256, ptr noundef nonnull %cond438.i) #9
  %and439.i = and i32 %conv429.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and439.i)
  %tobool440.not.i = icmp eq i32 %and439.i, 0
  br i1 %tobool440.not.i, label %if.end419.i.if.end442.i_crit_edge, label %if.then441.i

if.end419.i.if.end442.i_crit_edge:                ; preds = %if.end419.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end442.i

if.then441.i:                                     ; preds = %if.end419.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.263) #9
  br label %if.end442.i

if.end442.i:                                      ; preds = %if.then441.i, %if.end419.i.if.end442.i_crit_edge
  %and443.i = and i32 %conv429.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and443.i)
  %tobool444.not.i = icmp eq i32 %and443.i, 0
  br i1 %tobool444.not.i, label %if.end442.i.if.end446.i_crit_edge, label %if.then445.i

if.end442.i.if.end446.i_crit_edge:                ; preds = %if.end442.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end446.i

if.then445.i:                                     ; preds = %if.end442.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.264) #9
  br label %if.end446.i

if.end446.i:                                      ; preds = %if.then445.i, %if.end442.i.if.end446.i_crit_edge
  %and447.i = and i32 %conv429.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and447.i)
  %tobool448.not.i = icmp eq i32 %and447.i, 0
  br i1 %tobool448.not.i, label %if.end446.i.if.end450.i_crit_edge, label %if.then449.i

if.end446.i.if.end450.i_crit_edge:                ; preds = %if.end446.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end450.i

if.then449.i:                                     ; preds = %if.end446.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.265) #9
  br label %if.end450.i

if.end450.i:                                      ; preds = %if.then449.i, %if.end446.i.if.end450.i_crit_edge
  %and451.i = and i32 %conv429.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and451.i)
  %tobool452.not.i = icmp eq i32 %and451.i, 0
  br i1 %tobool452.not.i, label %if.end450.i.if.end454.i_crit_edge, label %if.then453.i

if.end450.i.if.end454.i_crit_edge:                ; preds = %if.end450.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end454.i

if.then453.i:                                     ; preds = %if.end450.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.266) #9
  br label %if.end454.i

if.end454.i:                                      ; preds = %if.then453.i, %if.end450.i.if.end454.i_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.210) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.267) #9
  %147 = ptrtoint ptr %io_port1.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %io_port1.i, align 4
  %add458.i = add i32 %148, 20
  %and459.i = and i32 %add458.i, 1048575
  %add460.i = or i32 %and459.i, -18874368
  %149 = inttoptr i32 %add460.i to ptr
  %150 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %149) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !726
  %conv464.i = zext i8 %150 to i32
  %and465.i = and i32 %conv464.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and465.i)
  %tobool466.not.i = icmp eq i32 %and465.i, 0
  br i1 %tobool466.not.i, label %if.end454.i.if.end468.i_crit_edge, label %if.then467.i

if.end454.i.if.end468.i_crit_edge:                ; preds = %if.end454.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end468.i

if.then467.i:                                     ; preds = %if.end454.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.268) #9
  br label %if.end468.i

if.end468.i:                                      ; preds = %if.then467.i, %if.end454.i.if.end468.i_crit_edge
  %and469.i = and i32 %conv464.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and469.i)
  %tobool470.not.i = icmp eq i32 %and469.i, 0
  br i1 %tobool470.not.i, label %if.end468.i.if.end472.i_crit_edge, label %if.then471.i

if.end468.i.if.end472.i_crit_edge:                ; preds = %if.end468.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end472.i

if.then471.i:                                     ; preds = %if.end468.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.269) #9
  br label %if.end472.i

if.end472.i:                                      ; preds = %if.then471.i, %if.end468.i.if.end472.i_crit_edge
  %and473.i = and i32 %conv464.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and473.i)
  %tobool474.not.i = icmp eq i32 %and473.i, 0
  br i1 %tobool474.not.i, label %if.end472.i.if.end476.i_crit_edge, label %if.then475.i

if.end472.i.if.end476.i_crit_edge:                ; preds = %if.end472.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end476.i

if.then475.i:                                     ; preds = %if.end472.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.270) #9
  br label %if.end476.i

if.end476.i:                                      ; preds = %if.then475.i, %if.end472.i.if.end476.i_crit_edge
  %and477.i = and i32 %conv464.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and477.i)
  %tobool478.not.i = icmp eq i32 %and477.i, 0
  br i1 %tobool478.not.i, label %if.end476.i.if.end480.i_crit_edge, label %if.then479.i

if.end476.i.if.end480.i_crit_edge:                ; preds = %if.end476.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end480.i

if.then479.i:                                     ; preds = %if.end476.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.271) #9
  br label %if.end480.i

if.end480.i:                                      ; preds = %if.then479.i, %if.end476.i.if.end480.i_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.272) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.273) #9
  %151 = ptrtoint ptr %io_port1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %io_port1.i, align 4
  %add484.i = add i32 %152, 16
  %and485.i = and i32 %add484.i, 1048575
  %add486.i = or i32 %and485.i, -18874368
  %153 = inttoptr i32 %add486.i to ptr
  %154 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %153) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !727
  %conv490.i = zext i8 %154 to i32
  %and491.i = and i32 %conv490.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and491.i)
  %tobool492.not.i = icmp eq i32 %and491.i, 0
  br i1 %tobool492.not.i, label %if.end480.i.if.end494.i_crit_edge, label %if.then493.i

if.end480.i.if.end494.i_crit_edge:                ; preds = %if.end480.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end494.i

if.then493.i:                                     ; preds = %if.end480.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.73) #9
  br label %if.end494.i

if.end494.i:                                      ; preds = %if.then493.i, %if.end480.i.if.end494.i_crit_edge
  %and495.i = and i32 %conv490.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and495.i)
  %tobool496.not.i = icmp eq i32 %and495.i, 0
  br i1 %tobool496.not.i, label %if.end494.i.if.end498.i_crit_edge, label %if.then497.i

if.end494.i.if.end498.i_crit_edge:                ; preds = %if.end494.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end498.i

if.then497.i:                                     ; preds = %if.end494.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.74) #9
  br label %if.end498.i

if.end498.i:                                      ; preds = %if.then497.i, %if.end494.i.if.end498.i_crit_edge
  %and499.i = and i32 %conv490.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and499.i)
  %tobool500.not.i = icmp eq i32 %and499.i, 0
  br i1 %tobool500.not.i, label %if.end498.i.if.end502.i_crit_edge, label %if.then501.i

if.end498.i.if.end502.i_crit_edge:                ; preds = %if.end498.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end502.i

if.then501.i:                                     ; preds = %if.end498.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.75) #9
  br label %if.end502.i

if.end502.i:                                      ; preds = %if.then501.i, %if.end498.i.if.end502.i_crit_edge
  %and503.i = and i32 %conv490.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and503.i)
  %tobool504.not.i = icmp eq i32 %and503.i, 0
  br i1 %tobool504.not.i, label %if.end502.i.if.end506.i_crit_edge, label %if.then505.i

if.end502.i.if.end506.i_crit_edge:                ; preds = %if.end502.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end506.i

if.then505.i:                                     ; preds = %if.end502.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.76) #9
  br label %if.end506.i

if.end506.i:                                      ; preds = %if.then505.i, %if.end502.i.if.end506.i_crit_edge
  %and507.i = and i32 %conv490.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and507.i)
  %tobool508.not.i = icmp eq i32 %and507.i, 0
  br i1 %tobool508.not.i, label %if.end506.i.if.end510.i_crit_edge, label %if.then509.i

if.end506.i.if.end510.i_crit_edge:                ; preds = %if.end506.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end510.i

if.then509.i:                                     ; preds = %if.end506.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.77) #9
  br label %if.end510.i

if.end510.i:                                      ; preds = %if.then509.i, %if.end506.i.if.end510.i_crit_edge
  %and511.i = and i32 %conv490.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and511.i)
  %tobool512.not.i = icmp eq i32 %and511.i, 0
  br i1 %tobool512.not.i, label %if.end510.i.if.end514.i_crit_edge, label %if.then513.i

if.end510.i.if.end514.i_crit_edge:                ; preds = %if.end510.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end514.i

if.then513.i:                                     ; preds = %if.end510.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.78) #9
  br label %if.end514.i

if.end514.i:                                      ; preds = %if.then513.i, %if.end510.i.if.end514.i_crit_edge
  %and515.i = and i32 %conv490.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and515.i)
  %tobool516.not.i = icmp eq i32 %and515.i, 0
  br i1 %tobool516.not.i, label %if.end514.i.if.end518.i_crit_edge, label %if.then517.i

if.end514.i.if.end518.i_crit_edge:                ; preds = %if.end514.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end518.i

if.then517.i:                                     ; preds = %if.end514.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.79) #9
  br label %if.end518.i

if.end518.i:                                      ; preds = %if.then517.i, %if.end514.i.if.end518.i_crit_edge
  %155 = ptrtoint ptr %io_port1.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %io_port1.i, align 4
  %add522.i = add i32 %156, 17
  %and523.i = and i32 %add522.i, 1048575
  %add524.i = or i32 %and523.i, -18874368
  %157 = inttoptr i32 %add524.i to ptr
  %158 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %157) #9, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !728
  %conv528.i = zext i8 %158 to i32
  %and529.i = and i32 %conv528.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and529.i)
  %tobool530.not.i = icmp eq i32 %and529.i, 0
  br i1 %tobool530.not.i, label %if.end518.i.if.end532.i_crit_edge, label %if.then531.i

if.end518.i.if.end532.i_crit_edge:                ; preds = %if.end518.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end532.i

if.then531.i:                                     ; preds = %if.end518.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.80) #9
  br label %if.end532.i

if.end532.i:                                      ; preds = %if.then531.i, %if.end518.i.if.end532.i_crit_edge
  %and533.i = and i32 %conv528.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and533.i)
  %tobool534.not.i = icmp eq i32 %and533.i, 0
  br i1 %tobool534.not.i, label %if.end532.i.if.end536.i_crit_edge, label %if.then535.i

if.end532.i.if.end536.i_crit_edge:                ; preds = %if.end532.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end536.i

if.then535.i:                                     ; preds = %if.end532.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.81) #9
  br label %if.end536.i

if.end536.i:                                      ; preds = %if.then535.i, %if.end532.i.if.end536.i_crit_edge
  %and537.i = and i32 %conv528.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and537.i)
  %tobool538.not.i = icmp eq i32 %and537.i, 0
  br i1 %tobool538.not.i, label %if.end536.i.if.end540.i_crit_edge, label %if.then539.i

if.end536.i.if.end540.i_crit_edge:                ; preds = %if.end536.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end540.i

if.then539.i:                                     ; preds = %if.end536.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.82) #9
  br label %if.end540.i

if.end540.i:                                      ; preds = %if.then539.i, %if.end536.i.if.end540.i_crit_edge
  %and541.i = and i32 %conv528.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and541.i)
  %tobool542.not.i = icmp eq i32 %and541.i, 0
  br i1 %tobool542.not.i, label %if.end540.i.if.end544.i_crit_edge, label %if.then543.i

if.end540.i.if.end544.i_crit_edge:                ; preds = %if.end540.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end544.i

if.then543.i:                                     ; preds = %if.end540.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.83) #9
  br label %if.end544.i

if.end544.i:                                      ; preds = %if.then543.i, %if.end540.i.if.end544.i_crit_edge
  %and545.i = and i32 %conv528.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and545.i)
  %tobool546.not.i = icmp eq i32 %and545.i, 0
  br i1 %tobool546.not.i, label %if.end544.i.if.end548.i_crit_edge, label %if.then547.i

if.end544.i.if.end548.i_crit_edge:                ; preds = %if.end544.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end548.i

if.then547.i:                                     ; preds = %if.end544.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.84) #9
  br label %if.end548.i

if.end548.i:                                      ; preds = %if.then547.i, %if.end544.i.if.end548.i_crit_edge
  %and549.i = and i32 %conv528.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and549.i)
  %tobool550.not.i = icmp eq i32 %and549.i, 0
  br i1 %tobool550.not.i, label %if.end548.i.if.end552.i_crit_edge, label %if.then551.i

if.end548.i.if.end552.i_crit_edge:                ; preds = %if.end548.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end552.i

if.then551.i:                                     ; preds = %if.end548.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.85) #9
  br label %if.end552.i

if.end552.i:                                      ; preds = %if.then551.i, %if.end548.i.if.end552.i_crit_edge
  %and553.i = and i32 %conv528.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and553.i)
  %tobool554.not.i = icmp eq i32 %and553.i, 0
  br i1 %tobool554.not.i, label %if.end552.i.get_ports.exit_crit_edge, label %if.then555.i

if.end552.i.get_ports.exit_crit_edge:             ; preds = %if.end552.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_ports.exit

if.then555.i:                                     ; preds = %if.end552.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.86) #9
  br label %get_ports.exit

get_ports.exit:                                   ; preds = %if.then555.i, %if.end552.i.get_ports.exit_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.272) #9
  %total_commands = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %159 = ptrtoint ptr %total_commands to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %total_commands, align 4
  %disconnections = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %161 = ptrtoint ptr %disconnections to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %disconnections, align 8
  %busfree_with_check_condition = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1, i32 2
  %163 = ptrtoint ptr %busfree_with_check_condition to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %busfree_with_check_condition, align 4
  %busfree_without_old_command = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5
  %165 = ptrtoint ptr %busfree_without_old_command to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %busfree_without_old_command, align 8
  %busfree_without_new_command = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1
  %167 = ptrtoint ptr %busfree_without_new_command to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %busfree_without_new_command, align 4
  %busfree_without_done_command = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1, i32 1
  %169 = ptrtoint ptr %busfree_without_done_command to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %busfree_without_done_command, align 8
  %busfree_without_any_action = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 4
  %171 = ptrtoint ptr %busfree_without_any_action to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %busfree_without_any_action, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.183, i32 noundef %160, i32 noundef %162, i32 noundef %164, i32 noundef %166, i32 noundef %168, i32 noundef %170, i32 noundef %172) #9
  %count_trans = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 5, i32 1, i32 1
  %count = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1, i32 3
  %time = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %173 = ptrtoint ptr %count_trans to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %count_trans, align 4
  %175 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %count, align 4
  %177 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %time, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.89, i32 noundef %174, i32 noundef %176, i32 noundef %178) #9
  %arrayidx90.1 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 5, i32 2
  %179 = ptrtoint ptr %arrayidx90.1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx90.1, align 4
  %arrayidx92.1 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1, i32 4
  %181 = ptrtoint ptr %arrayidx92.1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx92.1, align 4
  %arrayidx94.1 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4
  %183 = ptrtoint ptr %arrayidx94.1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx94.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.90, i32 noundef %180, i32 noundef %182, i32 noundef %184) #9
  %arrayidx90.2 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 5, i32 3
  %185 = ptrtoint ptr %arrayidx90.2 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx90.2, align 4
  %arrayidx92.2 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1, i32 4, i32 1
  %187 = ptrtoint ptr %arrayidx92.2 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx92.2, align 4
  %arrayidx94.2 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 1
  %189 = ptrtoint ptr %arrayidx94.2 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx94.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.91, i32 noundef %186, i32 noundef %188, i32 noundef %190) #9
  %arrayidx90.3 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 5, i32 6
  %191 = ptrtoint ptr %arrayidx90.3 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx90.3, align 4
  %arrayidx92.3 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1, i32 4, i32 1, i32 1
  %193 = ptrtoint ptr %arrayidx92.3 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx92.3, align 4
  %arrayidx94.3 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %195 = ptrtoint ptr %arrayidx94.3 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx94.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.92, i32 noundef %192, i32 noundef %194, i32 noundef %196) #9
  %arrayidx90.4 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 5, i32 7
  %197 = ptrtoint ptr %arrayidx90.4 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx90.4, align 4
  %arrayidx92.4 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1, i32 4, i32 2
  %199 = ptrtoint ptr %arrayidx92.4 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx92.4, align 4
  %arrayidx94.4 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 2
  %201 = ptrtoint ptr %arrayidx94.4 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx94.4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.93, i32 noundef %198, i32 noundef %200, i32 noundef %202) #9
  %arrayidx90.5 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 6
  %203 = ptrtoint ptr %arrayidx90.5 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx90.5, align 4
  %arrayidx92.5 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1, i32 4, i32 3
  %205 = ptrtoint ptr %arrayidx92.5 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx92.5, align 4
  %arrayidx94.5 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 3
  %207 = ptrtoint ptr %arrayidx94.5 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx94.5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.94, i32 noundef %204, i32 noundef %206, i32 noundef %208) #9
  %arrayidx90.6 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 6, i32 1
  %209 = ptrtoint ptr %arrayidx90.6 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx90.6, align 4
  %arrayidx92.6 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1, i32 4, i32 6
  %211 = ptrtoint ptr %arrayidx92.6 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx92.6, align 4
  %arrayidx94.6 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 6
  %213 = ptrtoint ptr %arrayidx94.6 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx94.6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.95, i32 noundef %210, i32 noundef %212, i32 noundef %214) #9
  %arrayidx90.7 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 7
  %215 = ptrtoint ptr %arrayidx90.7 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx90.7, align 4
  %arrayidx92.7 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1, i32 4, i32 7
  %217 = ptrtoint ptr %arrayidx92.7 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx92.7, align 4
  %arrayidx94.7 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 7
  %219 = ptrtoint ptr %arrayidx94.7 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx94.7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.96, i32 noundef %216, i32 noundef %218, i32 noundef %220) #9
  %arrayidx90.8 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 7, i32 1
  %221 = ptrtoint ptr %arrayidx90.8 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx90.8, align 4
  %arrayidx92.8 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 2
  %223 = ptrtoint ptr %arrayidx92.8 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx92.8, align 4
  %arrayidx94.8 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 10, i32 1
  %225 = ptrtoint ptr %arrayidx94.8 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx94.8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.97, i32 noundef %222, i32 noundef %224, i32 noundef %226) #9
  %arrayidx90.9 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 8
  %227 = ptrtoint ptr %arrayidx90.9 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx90.9, align 4
  %arrayidx92.9 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 3
  %229 = ptrtoint ptr %arrayidx92.9 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx92.9, align 4
  %arrayidx94.9 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 10, i32 1, i32 1
  %231 = ptrtoint ptr %arrayidx94.9 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx94.9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.98, i32 noundef %228, i32 noundef %230, i32 noundef %232) #9
  %arrayidx90.10 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 9
  %233 = ptrtoint ptr %arrayidx90.10 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx90.10, align 4
  %arrayidx92.10 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 3, i32 1
  %235 = ptrtoint ptr %arrayidx92.10 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx92.10, align 4
  %arrayidx94.10 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 11
  %237 = ptrtoint ptr %arrayidx94.10 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx94.10, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.99, i32 noundef %234, i32 noundef %236, i32 noundef %238) #9
  %arrayidx90.11 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 10
  %239 = ptrtoint ptr %arrayidx90.11 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx90.11, align 4
  %arrayidx92.11 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 4
  %241 = ptrtoint ptr %arrayidx92.11 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx92.11, align 4
  %arrayidx94.11 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 12
  %243 = ptrtoint ptr %arrayidx94.11 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx94.11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.100, i32 noundef %240, i32 noundef %242, i32 noundef %244) #9
  %arrayidx90.12 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 10, i32 0, i32 0, i32 0, i32 1
  %245 = ptrtoint ptr %arrayidx90.12 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx90.12, align 4
  %arrayidx92.12 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 5
  %247 = ptrtoint ptr %arrayidx92.12 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx92.12, align 4
  %arrayidx94.12 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13
  %249 = ptrtoint ptr %arrayidx94.12 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx94.12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.101, i32 noundef %246, i32 noundef %248, i32 noundef %250) #9
  %arrayidx90.13 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 10, i32 0, i32 0, i32 0, i32 2
  %251 = ptrtoint ptr %arrayidx90.13 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx90.13, align 4
  %arrayidx92.13 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 5, i32 1
  %253 = ptrtoint ptr %arrayidx92.13 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx92.13, align 4
  %arrayidx94.13 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 13, i32 0, i32 0, i32 1
  %255 = ptrtoint ptr %arrayidx94.13 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx94.13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.102, i32 noundef %252, i32 noundef %254, i32 noundef %256) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aha152x_set_info(ptr noundef %shpnt, ptr noundef readonly %buffer, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %shpnt, null
  %tobool1.not = icmp eq ptr %buffer, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %length)
  %cmp = icmp slt i32 %length, 8
  %or.cond41 = or i1 %or.cond, %cmp
  br i1 %or.cond41, label %entry.return_crit_edge, label %lor.lhs.false3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false3:                                   ; preds = %entry
  %call = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.274, ptr noundef nonnull %buffer, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %length)
  %cmp5 = icmp ugt i32 %length, 13
  %or.cond42 = and i1 %cmp5, %cmp4.not
  br i1 %or.cond42, label %land.lhs.true, label %lor.lhs.false3.return_crit_edge

lor.lhs.false3.return_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %add.ptr = getelementptr i8, ptr %buffer, i32 8
  %call6 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.275, ptr noundef %add.ptr, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %total_commands = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 49
  %0 = call ptr @memset(ptr %total_commands, i32 0, i32 196)
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.87, ptr noundef %shost_gendev, ptr noundef nonnull @.str.276) #12
  br label %return

return:                                           ; preds = %if.then8, %land.lhs.true.return_crit_edge, %lor.lhs.false3.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %length, %if.then8 ], [ -22, %lor.lhs.false3.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_bounce_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsicam_bios_param(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_command(ptr noundef %m, ptr noundef %ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %lun, align 8
  %conv = trunc i64 %5 to i32
  %conv2 = and i32 %conv, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.185, ptr noundef %ptr, i32 noundef %3, i32 noundef %conv2) #9
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr, i32 0, i32 16
  %6 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmnd, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %10 = lshr i8 %9, 5
  %11 = zext i8 %10 to i32
  %arrayidx485 = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx485, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp87.not = icmp eq i8 %13, 0
  br i1 %cmp87.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %14 = phi ptr [ %18, %for.body.for.body_crit_edge ], [ %7, %entry.for.body_crit_edge ]
  %i.088 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx8 = getelementptr i8, ptr %14, i32 %i.088
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.186, i32 noundef %conv9) #9
  %inc = add nuw nsw i32 %i.088, 1
  %17 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmnd, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %21 = lshr i8 %20, 5
  %22 = zext i8 %21 to i32
  %arrayidx4 = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %24 to i32
  %cmp = icmp ult i32 %inc, %conv5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %ptr, i32 0, i32 5
  %25 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resid_len.i, align 4
  %this_residual = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr, i32 0, i32 22, i32 1
  %27 = ptrtoint ptr %this_residual to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %this_residual, align 4
  %buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr, i32 0, i32 22, i32 2
  %29 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buffer, align 4
  %call11 = tail call i32 @sg_nents(ptr noundef %30) #9
  %sub = add i32 %call11, -1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.187, i32 noundef %26, i32 noundef %28, i32 noundef %sub) #9
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr, i32 0, i32 22, i32 9
  %31 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %phase, align 4
  %and13 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.62) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %33 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %phase, align 4
  %and16 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end.if.end19_crit_edge, label %if.then18

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.63) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end.if.end19_crit_edge
  %35 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %phase, align 4
  %and22 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end19.if.end25_crit_edge, label %if.then24

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.65) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end19.if.end25_crit_edge
  %37 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %phase, align 4
  %and28 = and i32 %38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end25.if.end31_crit_edge, label %if.then30

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.69) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end25.if.end31_crit_edge
  %39 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %phase, align 4
  %and34 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end31.if.end37_crit_edge, label %if.then36

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.64) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end31.if.end37_crit_edge
  %41 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %phase, align 4
  %and40 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end37.if.end43_crit_edge, label %if.then42

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.66) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end37.if.end43_crit_edge
  %43 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %phase, align 4
  %and46 = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end43.if.end49_crit_edge, label %if.then48

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.67) #9
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end43.if.end49_crit_edge
  %45 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %phase, align 4
  %and52 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end49.if.end55_crit_edge, label %if.then54

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.68) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end49.if.end55_crit_edge
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %ptr, i32 0, i32 23
  %47 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host_scribble, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.188, ptr noundef %50) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 276)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 276)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !70, !72, !74, !76, !78, !80, !81, !82, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !186, !187, !188, !190, !192, !193, !194, !195, !197, !198, !199, !201, !203, !205, !206, !207, !208, !210, !212, !214, !216, !218, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !237, !239, !241, !243, !244, !245, !247, !248, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !272, !273, !274, !275, !277, !279, !281, !283, !285, !287, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !519, !520}
!llvm.module.flags = !{!521, !522, !523, !524, !525, !526, !527, !528}
!llvm.ident = !{!529}

!0 = !{ptr @__UNIQUE_ID_author285, !1, !"__UNIQUE_ID_author285", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aha152x.c", i32 316, i32 1}
!2 = !{ptr @__UNIQUE_ID_description286, !3, !"__UNIQUE_ID_description286", i1 false, i1 false}
!3 = !{!"../drivers/scsi/aha152x.c", i32 317, i32 1}
!4 = !{ptr @__UNIQUE_ID_license287, !5, !"__UNIQUE_ID_license287", i1 false, i1 false}
!5 = !{!"../drivers/scsi/aha152x.c", i32 318, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aha152x.c", i32 721, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @aha152x_probe_one._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @aha152x_probe_one._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @aha152x_probe_one.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/scsi/aha152x.c", i32 743, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/aha152x.c", i32 757, i32 2}
!17 = !{ptr @aha152x_probe_one._entry.4, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @aha152x_probe_one._entry_ptr.6, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/aha152x.c", i32 765, i32 2}
!21 = !{ptr @aha152x_probe_one._entry.7, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @aha152x_probe_one._entry_ptr.9, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/aha152x.c", i32 791, i32 51}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/aha152x.c", i32 792, i32 3}
!31 = !{ptr @aha152x_probe_one._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @aha152x_probe_one._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/aha152x.c", i32 798, i32 2}
!35 = !{ptr @aha152x_probe_one._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @aha152x_probe_one._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/aha152x.c", i32 807, i32 4}
!39 = !{ptr @aha152x_probe_one._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @aha152x_probe_one._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/aha152x.c", i32 809, i32 4}
!43 = !{ptr @aha152x_probe_one._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @aha152x_probe_one._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/aha152x.c", i32 814, i32 3}
!47 = !{ptr @aha152x_probe_one._entry.27, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @aha152x_probe_one._entry_ptr.29, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/aha152x.c", i32 818, i32 2}
!51 = !{ptr @aha152x_probe_one._entry.30, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @aha152x_probe_one._entry_ptr.32, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/aha152x.c", i32 826, i32 3}
!55 = !{ptr @aha152x_probe_one._entry.33, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @aha152x_probe_one._entry_ptr.35, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/aha152x.c", i32 832, i32 3}
!59 = !{ptr @aha152x_probe_one._entry.36, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @aha152x_probe_one._entry_ptr.38, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @aha152x_host_list, !62, !"aha152x_host_list", i1 false, i1 false}
!62 = !{!"../drivers/scsi/aha152x.c", i32 255, i32 8}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/aha152x.c", i32 1121, i32 16}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/aha152x.c", i32 1122, i32 9}
!67 = !{ptr @intr.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/scsi/aha152x.c", i32 1354, i32 3}
!69 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @aha152x_tq, !71, !"aha152x_tq", i1 false, i1 false}
!71 = !{!"../drivers/scsi/aha152x.c", i32 1297, i32 27}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/aha152x.c", i32 2302, i32 24}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/aha152x.c", i32 2371, i32 16}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/aha152x.c", i32 2372, i32 9}
!78 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/aha152x.c", i32 2406, i32 2}
!80 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.48, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @aha152x_error._entry, !79, !"_entry", i1 false, i1 false}
!84 = !{ptr @aha152x_error._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/aha152x.c", i32 2408, i32 8}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/aha152x.c", i32 2470, i32 2}
!89 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @show_queues._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @show_queues._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/aha152x.c", i32 2475, i32 2}
!94 = !{ptr @show_queues._entry.52, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @show_queues._entry_ptr.54, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/aha152x.c", i32 2479, i32 3}
!98 = !{ptr @show_queues._entry.55, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @show_queues._entry_ptr.57, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/aha152x.c", i32 2481, i32 2}
!102 = !{ptr @show_queues._entry.58, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @show_queues._entry_ptr.60, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/aha152x.c", i32 2446, i32 7}
!106 = !{ptr @.str.62, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/aha152x.c", i32 2449, i32 39}
!108 = !{ptr @.str.63, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/aha152x.c", i32 2450, i32 38}
!110 = !{ptr @.str.64, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/aha152x.c", i32 2451, i32 39}
!112 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/aha152x.c", i32 2452, i32 41}
!114 = !{ptr @.str.66, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/aha152x.c", i32 2453, i32 38}
!116 = !{ptr @.str.67, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/aha152x.c", i32 2454, i32 36}
!118 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/aha152x.c", i32 2455, i32 36}
!120 = !{ptr @.str.69, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/aha152x.c", i32 2456, i32 36}
!122 = !{ptr @.str.70, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/aha152x.c", i32 2457, i32 37}
!124 = !{ptr @.str.71, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/aha152x.c", i32 2421, i32 2}
!126 = !{ptr @.str.72, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @disp_enintr._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @disp_enintr._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.73, !125, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.74, !125, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.75, !125, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.76, !125, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.77, !125, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.78, !125, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.79, !125, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.80, !125, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.81, !125, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.82, !125, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.83, !125, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.84, !125, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.85, !125, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.86, !125, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.87, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/aha152x.c", i32 2223, i32 15}
!145 = !{ptr @.str.88, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/aha152x.c", i32 2223, i32 38}
!147 = !{ptr @.str.89, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/aha152x.c", i32 602, i32 4}
!149 = !{ptr @.str.90, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/aha152x.c", i32 603, i32 4}
!151 = !{ptr @.str.91, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/aha152x.c", i32 604, i32 4}
!153 = !{ptr @.str.92, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/aha152x.c", i32 605, i32 4}
!155 = !{ptr @.str.93, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/aha152x.c", i32 606, i32 4}
!157 = !{ptr @.str.94, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/aha152x.c", i32 607, i32 4}
!159 = !{ptr @.str.95, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/aha152x.c", i32 608, i32 4}
!161 = !{ptr @.str.96, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/aha152x.c", i32 609, i32 4}
!163 = !{ptr @.str.97, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/aha152x.c", i32 610, i32 4}
!165 = !{ptr @.str.98, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/aha152x.c", i32 611, i32 4}
!167 = !{ptr @.str.99, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/aha152x.c", i32 612, i32 4}
!169 = !{ptr @.str.100, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/aha152x.c", i32 613, i32 4}
!171 = !{ptr @.str.101, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/aha152x.c", i32 614, i32 4}
!173 = !{ptr @.str.102, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/aha152x.c", i32 615, i32 4}
!175 = !{ptr @states, !176, !"states", i1 false, i1 false}
!176 = !{!"../drivers/scsi/aha152x.c", i32 601, i32 3}
!177 = !{ptr @.str.103, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/aha152x.c", i32 1525, i32 8}
!179 = !{ptr @.str.104, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/aha152x.c", i32 1532, i32 2}
!181 = !{ptr @.str.105, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/aha152x.c", i32 1286, i32 9}
!183 = !{ptr @.str.106, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/aha152x.c", i32 1294, i32 3}
!185 = !{ptr @.str.107, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @done._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @done._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.108, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/aha152x.c", i32 1592, i32 9}
!190 = !{ptr @.str.109, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/aha152x.c", i32 1609, i32 3}
!192 = !{ptr @.str.110, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @seldi_run._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @seldi_run._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.112, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/aha152x.c", i32 1618, i32 3}
!197 = !{ptr @seldi_run._entry.111, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @seldi_run._entry_ptr.113, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.114, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/aha152x.c", i32 921, i32 33}
!201 = !{ptr @.str.115, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/aha152x.c", i32 927, i32 33}
!203 = !{ptr @.str.116, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/aha152x.c", i32 994, i32 3}
!205 = !{ptr @.str.117, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @reset_done._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @reset_done._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.118, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/aha152x.c", i32 1840, i32 9}
!210 = !{ptr @.str.119, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/aha152x.c", i32 1880, i32 8}
!212 = !{ptr @.str.120, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/aha152x.c", i32 1884, i32 9}
!214 = !{ptr @.str.121, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/aha152x.c", i32 1901, i32 8}
!216 = !{ptr @.str.122, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/aha152x.c", i32 1927, i32 8}
!218 = !{ptr @.str.123, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/aha152x.c", i32 1655, i32 3}
!220 = !{ptr @.str.124, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/aha152x.c", i32 1659, i32 5}
!222 = !{ptr @.str.125, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @msgi_run._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @msgi_run._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.127, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/aha152x.c", i32 1668, i32 5}
!227 = !{ptr @msgi_run._entry.126, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @msgi_run._entry_ptr.128, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.130, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/aha152x.c", i32 1677, i32 5}
!231 = !{ptr @msgi_run._entry.129, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @msgi_run._entry_ptr.131, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.132, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/aha152x.c", i32 1698, i32 17}
!235 = !{ptr @.str.133, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/scsi/aha152x.c", i32 1699, i32 10}
!237 = !{ptr @.str.134, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/aha152x.c", i32 1716, i32 10}
!239 = !{ptr @.str.135, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/aha152x.c", i32 1738, i32 12}
!241 = !{ptr @.str.137, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/aha152x.c", i32 1745, i32 6}
!243 = !{ptr @msgi_run._entry.136, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @msgi_run._entry_ptr.138, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.140, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/scsi/aha152x.c", i32 1747, i32 6}
!247 = !{ptr @msgi_run._entry.139, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @msgi_run._entry_ptr.141, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.142, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/scsi/aha152x.c", i32 1757, i32 13}
!251 = !{ptr @.str.143, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/aha152x.c", i32 1822, i32 8}
!253 = !{ptr @.str.144, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/scsi/aha152x.c", i32 1983, i32 38}
!255 = !{ptr @.str.145, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/aha152x.c", i32 1996, i32 10}
!257 = !{ptr @.str.146, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/aha152x.c", i32 2036, i32 9}
!259 = !{ptr @.str.147, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/scsi/aha152x.c", i32 2058, i32 8}
!261 = !{ptr @.str.148, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/aha152x.c", i32 2063, i32 8}
!263 = !{ptr @.str.149, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/aha152x.c", i32 2110, i32 9}
!265 = !{ptr @.str.150, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/aha152x.c", i32 2144, i32 38}
!267 = !{ptr @.str.151, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/aha152x.c", i32 2241, i32 36}
!269 = !{ptr @.str.152, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/aha152x.c", i32 2253, i32 2}
!271 = !{ptr @.str.153, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.154, !270, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @rsti_run._entry, !270, !"_entry", i1 false, i1 false}
!274 = !{ptr @rsti_run._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.155, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/aha152x.c", i32 2907, i32 13}
!277 = !{ptr @aha152x_driver_template, !278, !"aha152x_driver_template", i1 false, i1 false}
!278 = !{!"../drivers/scsi/aha152x.c", i32 2905, i32 34}
!279 = !{ptr @.str.156, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/scsi/aha152x.c", i32 1042, i32 7}
!281 = !{ptr @.str.157, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/aha152x.c", i32 1054, i32 2}
!283 = !{ptr @.str.158, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/aha152x.c", i32 1061, i32 32}
!285 = !{ptr @.str.159, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/aha152x.c", i32 1247, i32 5}
!287 = !{ptr @.str.160, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @aha152x_biosparam._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @aha152x_biosparam._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.162, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/aha152x.c", i32 1254, i32 5}
!292 = !{ptr @aha152x_biosparam._entry.161, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @aha152x_biosparam._entry_ptr.163, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.165, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/aha152x.c", i32 1266, i32 5}
!296 = !{ptr @aha152x_biosparam._entry.164, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @aha152x_biosparam._entry_ptr.166, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.167, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/aha152x.c", i32 2820, i32 14}
!300 = !{ptr @.str.168, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/aha152x.c", i32 2822, i32 16}
!302 = !{ptr @.str.169, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/aha152x.c", i32 2824, i32 16}
!304 = !{ptr @.str.170, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/aha152x.c", i32 2825, i32 16}
!306 = !{ptr @.str.171, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/aha152x.c", i32 2827, i32 16}
!308 = !{ptr @.str.172, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/aha152x.c", i32 2829, i32 16}
!310 = !{ptr @.str.173, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/aha152x.c", i32 2831, i32 16}
!312 = !{ptr @.str.174, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/aha152x.c", i32 2834, i32 15}
!314 = !{ptr @.str.175, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/aha152x.c", i32 2837, i32 19}
!316 = !{ptr @.str.176, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/aha152x.c", i32 2843, i32 14}
!318 = !{ptr @.str.177, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/aha152x.c", i32 2846, i32 15}
!320 = !{ptr @.str.178, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/aha152x.c", i32 2850, i32 15}
!322 = !{ptr @.str.179, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/aha152x.c", i32 2854, i32 15}
!324 = !{ptr @.str.180, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/aha152x.c", i32 2857, i32 15}
!326 = !{ptr @.str.181, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/scsi/aha152x.c", i32 2860, i32 15}
!328 = !{ptr @.str.182, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/aha152x.c", i32 2864, i32 15}
!330 = !{ptr @.str.183, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/scsi/aha152x.c", i32 2869, i32 16}
!332 = !{ptr @.str.184, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/aha152x.c", i32 2889, i32 17}
!334 = !{ptr @.str.185, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/aha152x.c", i32 2492, i32 16}
!336 = !{ptr @.str.186, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/aha152x.c", i32 2496, i32 17}
!338 = !{ptr @.str.187, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/aha152x.c", i32 2498, i32 16}
!340 = !{ptr @.str.188, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/aha152x.c", i32 2518, i32 16}
!342 = !{ptr @.str.189, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/scsi/aha152x.c", i32 2525, i32 16}
!344 = !{ptr @.str.190, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/aha152x.c", i32 2525, i32 46}
!346 = !{ptr @.str.191, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/scsi/aha152x.c", i32 2525, i32 57}
!348 = !{ptr @.str.192, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/aha152x.c", i32 2528, i32 14}
!350 = !{ptr @.str.193, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/aha152x.c", i32 2530, i32 15}
!352 = !{ptr @.str.194, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/aha152x.c", i32 2532, i32 15}
!354 = !{ptr @.str.195, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/aha152x.c", i32 2534, i32 15}
!356 = !{ptr @.str.196, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/aha152x.c", i32 2536, i32 15}
!358 = !{ptr @.str.197, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/scsi/aha152x.c", i32 2538, i32 15}
!360 = !{ptr @.str.198, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/scsi/aha152x.c", i32 2540, i32 15}
!362 = !{ptr @.str.199, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/scsi/aha152x.c", i32 2542, i32 15}
!364 = !{ptr @.str.200, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/scsi/aha152x.c", i32 2544, i32 15}
!366 = !{ptr @.str.201, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/scsi/aha152x.c", i32 2545, i32 14}
!368 = !{ptr @.str.202, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/scsi/aha152x.c", i32 2547, i32 14}
!370 = !{ptr @.str.203, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/scsi/aha152x.c", i32 2551, i32 15}
!372 = !{ptr @.str.204, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/scsi/aha152x.c", i32 2554, i32 15}
!374 = !{ptr @.str.205, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/scsi/aha152x.c", i32 2557, i32 15}
!376 = !{ptr @.str.206, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/scsi/aha152x.c", i32 2560, i32 15}
!378 = !{ptr @.str.207, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/scsi/aha152x.c", i32 2563, i32 15}
!380 = !{ptr @.str.208, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/aha152x.c", i32 2566, i32 15}
!382 = !{ptr @.str.209, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/scsi/aha152x.c", i32 2569, i32 15}
!384 = !{ptr @.str.210, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/scsi/aha152x.c", i32 2573, i32 14}
!386 = !{ptr @.str.211, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/scsi/aha152x.c", i32 2575, i32 16}
!388 = !{ptr @.str.212, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/scsi/aha152x.c", i32 2575, i32 61}
!390 = !{ptr @.str.213, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/scsi/aha152x.c", i32 2575, i32 68}
!392 = !{ptr @.str.214, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/aha152x.c", i32 2577, i32 14}
!394 = !{ptr @.str.215, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/scsi/aha152x.c", i32 2580, i32 15}
!396 = !{ptr @.str.216, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/scsi/aha152x.c", i32 2582, i32 15}
!398 = !{ptr @.str.217, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/scsi/aha152x.c", i32 2584, i32 15}
!400 = !{ptr @.str.218, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/scsi/aha152x.c", i32 2586, i32 15}
!402 = !{ptr @.str.219, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/scsi/aha152x.c", i32 2588, i32 15}
!404 = !{ptr @.str.220, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/scsi/aha152x.c", i32 2590, i32 15}
!406 = !{ptr @.str.221, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/scsi/aha152x.c", i32 2592, i32 15}
!408 = !{ptr @.str.222, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/scsi/aha152x.c", i32 2594, i32 15}
!410 = !{ptr @.str.223, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/scsi/aha152x.c", i32 2598, i32 15}
!412 = !{ptr @.str.224, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/scsi/aha152x.c", i32 2600, i32 15}
!414 = !{ptr @.str.225, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/scsi/aha152x.c", i32 2602, i32 15}
!416 = !{ptr @.str.226, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/scsi/aha152x.c", i32 2604, i32 15}
!418 = !{ptr @.str.227, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/scsi/aha152x.c", i32 2606, i32 15}
!420 = !{ptr @.str.228, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/scsi/aha152x.c", i32 2608, i32 15}
!422 = !{ptr @.str.229, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/scsi/aha152x.c", i32 2610, i32 15}
!424 = !{ptr @.str.230, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/scsi/aha152x.c", i32 2612, i32 15}
!426 = !{ptr @.str.231, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/scsi/aha152x.c", i32 2657, i32 14}
!428 = !{ptr @.str.232, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/scsi/aha152x.c", i32 2661, i32 15}
!430 = !{ptr @.str.233, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/scsi/aha152x.c", i32 2663, i32 15}
!432 = !{ptr @.str.234, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/scsi/aha152x.c", i32 2665, i32 15}
!434 = !{ptr @.str.235, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/scsi/aha152x.c", i32 2667, i32 15}
!436 = !{ptr @.str.236, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/scsi/aha152x.c", i32 2669, i32 15}
!438 = !{ptr @.str.237, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/scsi/aha152x.c", i32 2671, i32 15}
!440 = !{ptr @.str.238, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/scsi/aha152x.c", i32 2674, i32 14}
!442 = !{ptr @.str.239, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/scsi/aha152x.c", i32 2678, i32 15}
!444 = !{ptr @.str.240, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/scsi/aha152x.c", i32 2682, i32 15}
!446 = !{ptr @.str.241, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/scsi/aha152x.c", i32 2684, i32 15}
!448 = !{ptr @.str.242, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/scsi/aha152x.c", i32 2686, i32 15}
!450 = !{ptr @.str.243, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/scsi/aha152x.c", i32 2689, i32 16}
!452 = !{ptr @.str.244, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/scsi/aha152x.c", i32 2691, i32 16}
!454 = !{ptr @.str.245, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/scsi/aha152x.c", i32 2693, i32 14}
!456 = !{ptr @.str.246, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/scsi/aha152x.c", i32 2697, i32 15}
!458 = !{ptr @.str.247, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/scsi/aha152x.c", i32 2699, i32 15}
!460 = !{ptr @.str.248, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/scsi/aha152x.c", i32 2701, i32 15}
!462 = !{ptr @.str.249, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/scsi/aha152x.c", i32 2702, i32 16}
!464 = !{ptr @.str.250, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/scsi/aha152x.c", i32 2705, i32 16}
!466 = !{ptr @.str.251, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/scsi/aha152x.c", i32 2707, i32 14}
!468 = !{ptr @.str.252, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/scsi/aha152x.c", i32 2710, i32 15}
!470 = !{ptr @.str.253, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/scsi/aha152x.c", i32 2712, i32 15}
!472 = !{ptr @.str.254, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/scsi/aha152x.c", i32 2714, i32 15}
!474 = !{ptr @.str.255, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/scsi/aha152x.c", i32 2717, i32 14}
!476 = !{ptr @.str.256, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/scsi/aha152x.c", i32 2719, i32 16}
!478 = !{ptr @.str.257, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/scsi/aha152x.c", i32 2719, i32 35}
!480 = !{ptr @.str.258, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/scsi/aha152x.c", i32 2719, i32 44}
!482 = !{ptr @.str.259, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/scsi/aha152x.c", i32 2720, i32 33}
!484 = !{ptr @.str.260, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/scsi/aha152x.c", i32 2720, i32 41}
!486 = !{ptr @.str.261, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/scsi/aha152x.c", i32 2721, i32 40}
!488 = !{ptr @.str.262, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/scsi/aha152x.c", i32 2721, i32 50}
!490 = !{ptr @.str.263, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/scsi/aha152x.c", i32 2723, i32 15}
!492 = !{ptr @.str.264, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/scsi/aha152x.c", i32 2725, i32 15}
!494 = !{ptr @.str.265, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/scsi/aha152x.c", i32 2727, i32 15}
!496 = !{ptr @.str.266, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/scsi/aha152x.c", i32 2729, i32 15}
!498 = !{ptr @.str.267, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/scsi/aha152x.c", i32 2732, i32 14}
!500 = !{ptr @.str.268, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/scsi/aha152x.c", i32 2735, i32 15}
!502 = !{ptr @.str.269, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/scsi/aha152x.c", i32 2737, i32 15}
!504 = !{ptr @.str.270, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/scsi/aha152x.c", i32 2739, i32 15}
!506 = !{ptr @.str.271, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/scsi/aha152x.c", i32 2741, i32 15}
!508 = !{ptr @.str.272, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/scsi/aha152x.c", i32 2742, i32 14}
!510 = !{ptr @.str.273, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/scsi/aha152x.c", i32 2744, i32 14}
!512 = !{ptr @.str.274, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/scsi/aha152x.c", i32 2782, i32 46}
!514 = !{ptr @.str.275, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/scsi/aha152x.c", i32 2786, i32 26}
!516 = !{ptr @.str.276, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/scsi/aha152x.c", i32 2802, i32 3}
!518 = !{ptr @.str.277, !517, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @aha152x_set_info._entry, !517, !"_entry", i1 false, i1 false}
!520 = !{ptr @aha152x_set_info._entry_ptr, !517, !"_entry_ptr", i1 false, i1 false}
!521 = !{i32 1, !"wchar_size", i32 2}
!522 = !{i32 1, !"min_enum_size", i32 4}
!523 = !{i32 8, !"branch-target-enforcement", i32 0}
!524 = !{i32 8, !"sign-return-address", i32 0}
!525 = !{i32 8, !"sign-return-address-all", i32 0}
!526 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!527 = !{i32 7, !"uwtable", i32 1}
!528 = !{i32 7, !"frame-pointer", i32 2}
!529 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!530 = !{i64 2154843178}
!531 = !{i64 4118727}
!532 = !{i64 2154845188}
!533 = !{i64 2154847154}
!534 = !{i64 4119122}
!535 = !{i64 2154853408}
!536 = !{i64 2154854449}
!537 = !{i64 2154855107}
!538 = !{i64 2154862547}
!539 = !{i64 2154863051}
!540 = !{i64 2154865229}
!541 = !{i64 2154868164}
!542 = !{i64 2154871700}
!543 = !{i64 2154872364}
!544 = !{i64 2154902876}
!545 = !{i64 2154903534}
!546 = !{i64 2154904192}
!547 = !{i64 2154904850}
!548 = !{i64 2154905564}
!549 = !{i64 2154906228}
!550 = !{i64 2154906892}
!551 = !{i64 2154907599}
!552 = !{i64 2154908257}
!553 = !{i64 2154908915}
!554 = !{i64 2154909579}
!555 = !{i64 2154910286}
!556 = !{i64 2154910955}
!557 = !{i64 2154839746}
!558 = !{i64 2154926240}
!559 = !{i64 2154926827}
!560 = !{i64 2154927440}
!561 = !{i64 2154928685}
!562 = !{i64 2154928432}
!563 = !{i64 2154897464}
!564 = !{i64 2154899430}
!565 = !{i64 2154902087}
!566 = !{i64 2154877393}
!567 = !{i64 2154878062}
!568 = !{i64 2154879732}
!569 = !{i64 2154881194}
!570 = !{i64 2154883234}
!571 = !{i64 2154884714}
!572 = !{i64 2154884462}
!573 = !{i64 2154885521}
!574 = !{i64 2155048637}
!575 = !{i64 2155049224}
!576 = !{i64 2155050019}
!577 = !{i64 2155050688}
!578 = !{i64 2155051937}
!579 = !{i64 2155052689}
!580 = !{i64 2155053465}
!581 = !{i64 2155058759}
!582 = !{i64 2155059417}
!583 = !{i64 2155060252}
!584 = !{i64 2155062111}
!585 = !{i64 2155061844}
!586 = !{i64 2155062780}
!587 = !{i64 2155063598}
!588 = !{i64 2155064286}
!589 = !{i64 2155067705}
!590 = !{i64 2155067453}
!591 = !{i64 2155070013}
!592 = !{i64 2155070600}
!593 = !{i64 2154945223}
!594 = !{i64 2154945892}
!595 = !{i64 2154946561}
!596 = !{i64 2154947302}
!597 = !{i64 2154948099}
!598 = !{i64 2154948687}
!599 = !{i64 2154952811}
!600 = !{i64 2154955658}
!601 = !{i64 2154956327}
!602 = !{i64 2154956996}
!603 = !{i64 2154957665}
!604 = !{i64 2154959818}
!605 = !{i64 2154963642}
!606 = !{i64 2154964300}
!607 = !{i64 2154965265}
!608 = !{i64 2154953469}
!609 = !{i64 2154954138}
!610 = !{i64 2154955184}
!611 = !{i64 2154930813}
!612 = !{i64 2154931482}
!613 = !{i64 2154932151}
!614 = !{i64 2154934952}
!615 = !{!"branch_weights", i32 1, i32 2000}
!616 = !{i64 2154935902, i64 2154936390, i64 2154935939, i64 2154935995, i64 2154936029, i64 2154936053, i64 2154936094, i64 2154936115, i64 2154936143, i64 2154936177}
!617 = !{i64 2154938693}
!618 = !{i64 2154940737}
!619 = !{i64 2154941688}
!620 = !{i64 2154942597}
!621 = !{i64 2154943550}
!622 = !{i64 2154944512}
!623 = !{i64 2154991054}
!624 = !{i64 2154991699}
!625 = !{i64 2154993742}
!626 = !{i64 2154996024}
!627 = !{i64 2154996929}
!628 = !{i64 2154966115}
!629 = !{i64 2154966748}
!630 = !{i64 2154967669}
!631 = !{i64 2154985760}
!632 = !{i64 2154987483}
!633 = !{i64 2154988065}
!634 = !{i64 2154998234}
!635 = !{i64 2154998904}
!636 = !{i64 2154999389}
!637 = !{i64 2155000077}
!638 = !{i64 2155000765}
!639 = !{i64 2155001472}
!640 = !{i64 2155002130}
!641 = !{i64 2155002856}
!642 = !{i64 2155003734}
!643 = !{i64 2155004347}
!644 = !{i64 2155004960}
!645 = !{i64 2155005599}
!646 = !{i64 2155006065}
!647 = !{i64 2155006644}
!648 = !{i64 2155007370}
!649 = !{i64 2155007997}
!650 = !{i64 2155008463}
!651 = !{i64 2155009030}
!652 = !{i64 2155009720}
!653 = !{i64 2155010556}
!654 = !{i64 2155011410}
!655 = !{i64 2155012059}
!656 = !{!"branch_weights", i32 2000, i32 1}
!657 = !{i64 2154583764, i64 2154584256, i64 2154583801, i64 2154583857, i64 2154583891, i64 2154583915, i64 2154583956, i64 2154583977, i64 2154584005, i64 2154584039}
!658 = !{i64 2155014485}
!659 = !{i64 2155014989}
!660 = !{i64 2155015760}
!661 = !{i64 2155016345}
!662 = !{i64 2155017142}
!663 = !{i64 2155017755}
!664 = !{i64 2155018368}
!665 = !{i64 2155018955}
!666 = !{i64 2155019836}
!667 = !{i64 2155020423}
!668 = !{i64 2155021010}
!669 = !{i64 2155021891}
!670 = !{i64 2155022478}
!671 = !{i64 2155023065}
!672 = !{i64 2155023762}
!673 = !{i64 2155024349}
!674 = !{i64 2155024936}
!675 = !{i64 2155025604}
!676 = !{i64 2155027712}
!677 = !{i64 2155028299}
!678 = !{i64 2155028886}
!679 = !{i64 2155029390}
!680 = !{i64 2155030048}
!681 = !{i64 2155030736}
!682 = !{i64 2155031424}
!683 = !{i64 2155032112}
!684 = !{i64 2155032819}
!685 = !{i64 2155033477}
!686 = !{i64 2155034203}
!687 = !{i64 2155035164}
!688 = !{i64 2155036026}
!689 = !{i64 2155036716}
!690 = !{i64 2155037239}
!691 = !{i64 2155038134}
!692 = !{i64 2155038988}
!693 = !{i64 2155041366}
!694 = !{i64 2155041832}
!695 = !{i64 2155042411}
!696 = !{i64 2155043127}
!697 = !{i64 2155043824}
!698 = !{i64 2155044411}
!699 = !{i64 2155044998}
!700 = !{i64 2155046539}
!701 = !{i64 2155047208}
!702 = !{i64 2155047866}
!703 = !{i64 2154887342}
!704 = !{i64 2154891384}
!705 = !{i64 2154895527}
!706 = !{!"auto-init"}
!707 = !{i64 2155081503}
!708 = !{i64 2155082130}
!709 = !{i64 2155082928}
!710 = !{i64 2155083515}
!711 = !{i64 2155084142}
!712 = !{i64 2155084769}
!713 = !{i64 2155085356}
!714 = !{i64 2155085983}
!715 = !{i64 2155086570}
!716 = !{i64 2155087197}
!717 = !{i64 2155087814}
!718 = !{i64 2155088426}
!719 = !{i64 2155089123}
!720 = !{i64 2155089710}
!721 = !{i64 2155090297}
!722 = !{i64 2155090884}
!723 = !{i64 2155091505}
!724 = !{i64 2155092092}
!725 = !{i64 2155092694}
!726 = !{i64 2155093316}
!727 = !{i64 2155093923}
!728 = !{i64 2155094545}
