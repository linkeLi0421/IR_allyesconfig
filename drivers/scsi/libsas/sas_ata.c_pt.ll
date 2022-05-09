; ModuleID = '/llk/IR_all_yes/drivers/scsi/libsas/sas_ata.c_pt.bc'
source_filename = "../drivers/scsi/libsas/sas_ata.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sas_ata_schedule_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_sas_ata_schedule_reset\09\09\09\09"
module asm "\09.long\09__crc_sas_ata_schedule_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sas_ata_schedule_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22sas_ata_schedule_reset\22\09\09\09\09\09"
module asm "__kstrtabns_sas_ata_schedule_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ex_phy = type { i32, i32, i32, i32, i8, i32, i32, [8 x i8], i8, i32, i32, i8, i32, ptr, ptr }
%struct.domain_device = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, [8 x i8], [3 x i8], [32 x i8], [101 x i8], %union.anon.79, ptr, i32, %struct.kref, [116 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { %struct.sata_device }
%struct.sata_device = type { i32, i8, ptr, ptr, [112 x i8], %struct.smp_resp, [24 x i8], [44 x i8] }
%struct.smp_resp = type { i8, i8, i8, i8, %union.anon.81 }
%union.anon.81 = type { %struct.report_phy_sata_resp }
%struct.report_phy_sata_resp = type { [5 x i8], i8, i8, i8, i32, [8 x i8], %struct.dev_to_host_fis, i32, [8 x i8], i32 }
%struct.dev_to_host_fis = type { i8, i8, i8, i8, i8, %union.anon.82, %union.anon.83, i8, i8, i8, i8, i8, %union.anon.84, i8, i8, i8, i32 }
%union.anon.82 = type { i8 }
%union.anon.83 = type { i8 }
%union.anon.84 = type { i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.80, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.80 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pm_message = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.scsi_core = type { ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.sas_task = type { ptr, %struct.spinlock, i32, i32, %union.anon.90, ptr, i32, i32, i8, %struct.task_status_struct, ptr, ptr, ptr, ptr }
%union.anon.90 = type { %struct.sas_smp_task }
%struct.sas_smp_task = type { %struct.scatterlist, %struct.scatterlist }
%struct.task_status_struct = type { i32, i32, i32, [96 x i8], i32, i32 }
%struct.sas_rphy = type { %struct.device, %struct.sas_identify, %struct.list_head, ptr, i32 }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.async_domain = type { %struct.list_head, i8 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.sas_ata_task = type <{ %struct.host_to_dev_fis, [16 x i8], i8, i8 }>
%struct.host_to_dev_fis = type { i8, i8, i8, i8, i8, %union.anon.91, %union.anon.92, i8, i8, i8, i8, i8, %union.anon.93, i8, i8, i8, i32 }
%union.anon.91 = type { i8 }
%union.anon.92 = type { i8 }
%union.anon.93 = type { i8 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.sas_internal = type { %struct.scsi_transport_template, ptr, ptr, [0 x %struct.device_attribute], [17 x %struct.device_attribute], [1 x %struct.device_attribute], [8 x %struct.device_attribute], [5 x %struct.device_attribute], [7 x %struct.device_attribute], %struct.transport_container, %struct.transport_container, %struct.transport_container, %struct.transport_container, %struct.transport_container, [1 x ptr], [18 x ptr], [2 x ptr], [9 x ptr], [6 x ptr], [8 x ptr] }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.sas_domain_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sas_phy = type { %struct.device, i32, i32, %struct.sas_identify, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr }

@sas_get_ata_info.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 67, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"libsas\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sas_get_ata_info\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/libsas/sas_ata.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"report phy sata to %016llx:%02d returned 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"sas: report phy sata to %016llx:%02d returned 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@sas_ata_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013sas: ata host alloc failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sas_ata_init\00", [19 x i8] zeroinitializer }, align 32
@sas_ata_init._entry_ptr = internal global ptr @sas_ata_init._entry, section ".printk_index", align 4
@sas_sata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr @ata_std_qc_defer, ptr null, ptr @ata_noop_qc_prep, ptr @sas_ata_qc_issue, ptr @sas_ata_qc_fill_rtf, ptr null, ptr null, ptr null, ptr @sas_ata_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sas_ata_prereset, ptr null, ptr @sas_ata_hard_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_std_error_handler, ptr null, ptr @sas_ata_post_internal, ptr @sas_ata_sched_eh, ptr @sas_ata_end_eh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sas_port_start, ptr @ata_sas_port_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@sata_port_info = internal global { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 17826946, i32 0, i32 31, i32 7, i32 127, ptr @sas_sata_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@sas_ata_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013sas: ata_sas_port_alloc failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@sas_ata_init._entry_ptr.9 = internal global ptr @sas_ata_init._entry.7, section ".printk_index", align 4
@__func__.sas_probe_sata = private unnamed_addr constant [15 x i8] c"sas_probe_sata\00", align 1
@__func__.sas_suspend_sata = private unnamed_addr constant [17 x i8] c"sas_suspend_sata\00", align 1
@__func__.sas_resume_sata = private unnamed_addr constant [16 x i8] c"sas_resume_sata\00", align 1
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmd error handler\0A\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_sas_ata_schedule_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_sas_ata_schedule_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_sas_ata_schedule_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sas_ata_schedule_reset to i32), ptr @__kstrtab_sas_ata_schedule_reset, ptr @__kstrtabns_sas_ata_schedule_reset }, section "___ksymtab_gpl+sas_ata_schedule_reset", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sas_ata_qc_issue.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 55, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sas_ata_qc_issue\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lldd_execute_task returned: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sas: lldd_execute_task returned: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@sas_ata_task_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014sas: %s: SAS error 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sas_ata_task_done\00", [46 x i8] zeroinitializer }, align 32
@sas_ata_task_done._entry_ptr = internal global ptr @sas_ata_task_done._entry, section ".printk_index", align 4
@sas_to_ata_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014sas: %s: Saw error %d.  What to do?\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sas_to_ata_err\00", [17 x i8] zeroinitializer }, align 32
@sas_to_ata_err._entry_ptr = internal global ptr @sas_to_ata_err._entry, section ".printk_index", align 4
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to reset ata device?\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reset failed (errno=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@sas_ata_internal_abort.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sas_ata_internal_abort\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Task %p already finished.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sas: %s: Task %p already finished.\0A\00", [60 x i8] zeroinitializer }, align 32
@sas_ata_internal_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014sas: %s: Task %p leaked.\0A\00", [36 x i8] zeroinitializer }, align 32
@sas_ata_internal_abort._entry_ptr = internal global ptr @sas_ata_internal_abort._entry, section ".printk_index", align 4
@sas_fail_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.28, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014sas: %s: for %s device %016llx returned %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sas_fail_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/libsas/sas_internal.h\00", [61 x i8] zeroinitializer }, align 32
@sas_fail_probe._entry_ptr = internal global ptr @sas_fail_probe._entry, section ".printk_index", align 4
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"exp-attached\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"direct-attached\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dev error handler\0A\00", [45 x i8] zeroinitializer }, align 32
@sas_ata_printk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%ssas: ata%u: %s: %pV\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sas_ata_printk\00", [17 x i8] zeroinitializer }, align 32
@sas_ata_printk._entry_ptr = internal global ptr @sas_ata_printk._entry, section ".printk_index", align 4
@switch.table.sas_discover_sata = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 2, i32 3, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 4, i64 6, i64 8, i64 10]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 4, i64 6, i64 8, i64 10]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 8, i64 96, i64 97, i64 99, i64 100, i64 101]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 137]
@__sancov_gen_cov_switch_values.50 = internal global [14 x i64] [i64 12, i64 32, i64 2, i64 128, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 138, i64 139, i64 141]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967226]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 268, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 556, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"sas_sata_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 521, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"sata_port_info\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 537, i32 29 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 564, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 810, i32 19 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 810, i32 39 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 223, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 135, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 59, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 384, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 395, i32 18 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 395, i32 33 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 417, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 437, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [38 x i8] c"../drivers/scsi/libsas/sas_internal.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 112, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 738, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [33 x i8] c"../drivers/scsi/libsas/sas_ata.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 361, i32 6 }
@___asan_gen_.176 = private unnamed_addr constant [31 x i8] c"switch.table.sas_discover_sata\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @__ksymtab_sas_ata_schedule_reset, ptr @sas_ata_init._entry, ptr @sas_ata_init._entry.7, ptr @sas_ata_init._entry_ptr, ptr @sas_ata_init._entry_ptr.9, ptr @sas_ata_internal_abort._entry, ptr @sas_ata_internal_abort._entry_ptr, ptr @sas_ata_printk._entry, ptr @sas_ata_printk._entry_ptr, ptr @sas_ata_task_done._entry, ptr @sas_ata_task_done._entry_ptr, ptr @sas_fail_probe._entry, ptr @sas_fail_probe._entry_ptr, ptr @sas_to_ata_err._entry, ptr @sas_to_ata_err._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sas_sata_ops, ptr @sata_port_info, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @switch.table.sas_discover_sata], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ata_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_sata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ata_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ata_task_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_to_ata_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ata_internal_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_fail_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ata_printk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sas_discover_sata to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_get_ata_info(ptr noundef %dev, ptr nocapture noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  %tf.i = alloca %struct.ata_taskfile, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %attached_tproto = getelementptr inbounds %struct.ex_phy, ptr %phy, i32 0, i32 5
  %0 = ptrtoint ptr %attached_tproto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attached_tproto, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tproto = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %tproto to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tproto, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %attached_sata_dev = getelementptr inbounds %struct.ex_phy, ptr %phy, i32 0, i32 4
  %3 = ptrtoint ptr %attached_sata_dev to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %attached_sata_dev, align 4
  %4 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %tproto4 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 13
  %5 = ptrtoint ptr %tproto4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tproto4, align 8
  %or = or i32 %6, 5
  store i32 %or, ptr %tproto4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %attached_dev_type = getelementptr inbounds %struct.ex_phy, ptr %phy, i32 0, i32 2
  %7 = ptrtoint ptr %attached_dev_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attached_dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %8)
  %cmp = icmp eq i32 %8, 9
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9, ptr %dev_type, align 4
  br label %return

if.else:                                          ; preds = %if.end5
  %10 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %dev_type, align 4
  %parent = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 6
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 64
  %13 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phy, align 4
  %rps_resp = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 5
  %call = tail call i32 @sas_get_report_phy_sata(ptr noundef %12, i32 noundef %14, ptr noundef %rps_resp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end19, label %do.body

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_get_ata_info.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_get_ata_info, %return)) #7
          to label %if.then15 [label %return], !srcloc !86

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 64
  %sas_addr = getelementptr inbounds %struct.domain_device, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sas_addr, align 16
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_get_ata_info.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.4, i64 noundef %18, i32 noundef %20, i32 noundef %call) #7
  br label %return

if.end19:                                         ; preds = %if.else
  %21 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  %frame_rcvd = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 17
  %fis = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 5, i32 4, i32 0, i32 6
  %22 = call ptr @memcpy(ptr %frame_rcvd, ptr %fis, i32 20)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i) #7
  %23 = call ptr @memset(ptr %tf.i, i32 255, i32 24)
  %24 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %25)
  %cmp.i = icmp eq i32 %25, 9
  br i1 %cmp.i, label %if.end19.cleanup_crit_edge, label %if.end.i

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void @ata_tf_from_fis(ptr noundef %frame_rcvd, ptr noundef nonnull %tf.i) #7
  %call.i = call i32 @ata_dev_classify(ptr noundef nonnull %tf.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end19.cleanup_crit_edge
  %retval.0.i41 = phi i32 [ %call.i, %if.end.i ], [ 0, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i) #7
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i41, ptr %21, align 128
  br label %return

return:                                           ; preds = %cleanup, %if.then15, %do.body, %if.then6
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %if.then6 ], [ %call, %if.then15 ], [ %call, %do.body ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_get_report_phy_sata(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_ata_end_eh(ptr nocapture noundef readonly %ap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %ha1 = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %ha1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha1, align 4
  %lock = getelementptr inbounds %struct.sas_ha_struct, ptr %5, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 21
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %eh_active = getelementptr inbounds %struct.sas_ha_struct, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %eh_active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eh_active, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %eh_active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_ata_init(ptr noundef %found_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %found_dev, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha1 = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha1, align 4
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 176) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void @ata_host_init(ptr noundef nonnull %call7.i.i, ptr noundef %8, ptr noundef nonnull @sas_sata_ops) #7
  %call4 = tail call ptr @ata_sas_port_alloc(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @sata_port_info, ptr noundef %5) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %free_host

if.end12:                                         ; preds = %if.end
  %private_data = getelementptr inbounds %struct.ata_port, ptr %call4, i32 0, i32 48
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %found_dev, ptr %private_data, align 4
  %cbl = getelementptr inbounds %struct.ata_port, ptr %call4, i32 0, i32 18
  %10 = ptrtoint ptr %cbl to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %cbl, align 4
  %11 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %call4, align 128
  %call13 = tail call i32 @ata_sas_port_init(ptr noundef nonnull %call4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.destroy_port_crit_edge

if.end12.destroy_port_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_port

if.end16:                                         ; preds = %if.end12
  %dev17 = getelementptr inbounds %struct.ata_host, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev17, align 4
  %call18 = tail call i32 @ata_sas_tport_add(ptr noundef %13, ptr noundef nonnull %call4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.destroy_port_crit_edge

if.end16.destroy_port_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_port

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %ata_host22 = getelementptr inbounds %struct.domain_device, ptr %found_dev, i32 0, i32 19, i32 0, i32 3
  %14 = ptrtoint ptr %ata_host22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %ata_host22, align 4
  %ap23 = getelementptr inbounds %struct.domain_device, ptr %found_dev, i32 0, i32 19, i32 0, i32 2
  %15 = ptrtoint ptr %ap23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call4, ptr %ap23, align 8
  br label %cleanup

destroy_port:                                     ; preds = %if.end16.destroy_port_crit_edge, %if.end12.destroy_port_crit_edge
  %rc.0 = phi i32 [ %call13, %if.end12.destroy_port_crit_edge ], [ %call18, %if.end16.destroy_port_crit_edge ]
  tail call void @ata_sas_port_destroy(ptr noundef nonnull %call4) #7
  br label %free_host

free_host:                                        ; preds = %destroy_port, %do.end9
  %rc.1 = phi i32 [ %rc.0, %destroy_port ], [ -19, %do.end9 ]
  tail call void @ata_host_put(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_host, %if.end21, %do.end
  %retval.0 = phi i32 [ %rc.1, %free_host ], [ 0, %if.end21 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_sas_port_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sas_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sas_tport_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sas_port_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_ata_task_abort(ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %uldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 12
  %0 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uldd_task, align 4
  %scsicmd = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %scsicmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scsicmd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -192
  tail call void @blk_abort_request(ptr noundef %add.ptr.i.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, -65538
  %or = or i32 %and, 65536
  store i32 %or, ptr %flags, align 4
  %err_mask = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %err_mask, align 4
  %or3 = or i32 %7, 4
  store i32 %or3, ptr %err_mask, align 4
  %private_data = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  tail call void @complete(ptr noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_abort_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_probe_sata(ptr noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 21
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %disco_mutex = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %disco_mutex, i32 noundef 0) #7
  %disco_list = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 4
  %2 = ptrtoint ptr %disco_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn66 = load ptr, ptr %disco_list, align 4
  %cmp.not67 = icmp eq ptr %.pn66, %disco_list
  br i1 %cmp.not67, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn68 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn66, %entry.for.body_crit_edge ]
  %dev_type.i = getelementptr i8, ptr %.pn68, i32 -48
  %3 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_type.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %for.body.for.inc_crit_edge [
    i32 5, label %for.body.if.end_crit_edge
    i32 7, label %for.body.if.end_crit_edge75
    i32 8, label %for.body.if.end_crit_edge76
    i32 9, label %for.body.if.end_crit_edge77
  ]

for.body.if.end_crit_edge77:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.if.end_crit_edge76:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.if.end_crit_edge75:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.body.if.end_crit_edge75, %for.body.if.end_crit_edge76, %for.body.if.end_crit_edge77
  %ap = getelementptr i8, ptr %.pn68, i32 172
  %6 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ap, align 8
  tail call void @ata_sas_async_probe(ptr noundef %7) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %.pn68 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn68, align 4
  %cmp.not = icmp eq ptr %.pn, %disco_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %9 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ha, align 4
  %disco_mutex8 = getelementptr inbounds %struct.sas_ha_struct, ptr %10, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %disco_mutex8) #7
  %11 = ptrtoint ptr %disco_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disco_list, align 4
  %cmp22.not71 = icmp eq ptr %12, %disco_list
  br i1 %cmp22.not71, label %for.end.for.end40_crit_edge, label %for.end.for.body24_crit_edge

for.end.for.body24_crit_edge:                     ; preds = %for.end
  br label %for.body24

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end40

for.body24:                                       ; preds = %for.inc34.for.body24_crit_edge, %for.end.for.body24_crit_edge
  %.pn56.in72 = phi ptr [ %.pn5674, %for.inc34.for.body24_crit_edge ], [ %12, %for.end.for.body24_crit_edge ]
  %dev.173 = getelementptr i8, ptr %.pn56.in72, i32 -92
  %13 = ptrtoint ptr %.pn56.in72 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn5674 = load ptr, ptr %.pn56.in72, align 4
  %dev_type.i58 = getelementptr i8, ptr %.pn56.in72, i32 -48
  %14 = ptrtoint ptr %dev_type.i58 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_type.i58, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %15, label %for.body24.for.inc34_crit_edge [
    i32 5, label %for.body24.if.end.i_crit_edge
    i32 7, label %for.body24.if.end.i_crit_edge78
    i32 8, label %for.body24.if.end.i_crit_edge79
    i32 9, label %for.body24.if.end.i_crit_edge80
  ]

for.body24.if.end.i_crit_edge80:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body24.if.end.i_crit_edge79:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body24.if.end.i_crit_edge78:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body24.if.end.i_crit_edge:                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body24.for.inc34_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

if.end.i:                                         ; preds = %for.body24.if.end.i_crit_edge, %for.body24.if.end.i_crit_edge78, %for.body24.if.end.i_crit_edge79, %for.body24.if.end.i_crit_edge80
  %ap1.i = getelementptr i8, ptr %.pn56.in72, i32 172
  %17 = ptrtoint ptr %ap1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ap1.i, align 8
  tail call void @ata_port_wait_eh(ptr noundef %18) #7
  %19 = ptrtoint ptr %ap1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ap1.i, align 8
  %class.i = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 25, i32 14, i32 0, i32 9
  %21 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %class.i, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %22, label %if.then32 [
    i32 1, label %if.end.i.for.inc34_crit_edge
    i32 3, label %if.end.i.for.inc34_crit_edge81
    i32 5, label %if.end.i.for.inc34_crit_edge82
    i32 7, label %if.end.i.for.inc34_crit_edge83
    i32 9, label %if.end.i.for.inc34_crit_edge84
  ]

if.end.i.for.inc34_crit_edge84:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

if.end.i.for.inc34_crit_edge83:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

if.end.i.for.inc34_crit_edge82:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

if.end.i.for.inc34_crit_edge81:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

if.end.i.for.inc34_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

if.then32:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %parent.i = getelementptr i8, ptr %.pn56.in72, i32 -28
  %24 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i, align 64
  %tobool.not.i = icmp eq ptr %25, null
  %cond.i = select i1 %tobool.not.i, ptr @.str.30, ptr @.str.29
  %sas_addr.i = getelementptr i8, ptr %.pn56.in72, i32 20
  %26 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sas_addr.i, align 16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.sas_probe_sata, ptr noundef nonnull %cond.i, i64 noundef %27, i32 noundef -19) #11
  %port.i = getelementptr i8, ptr %.pn56.in72, i32 -16
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port.i, align 4
  tail call void @sas_unregister_dev(ptr noundef %29, ptr noundef %dev.173) #7
  br label %for.inc34

for.inc34:                                        ; preds = %if.then32, %if.end.i.for.inc34_crit_edge, %if.end.i.for.inc34_crit_edge81, %if.end.i.for.inc34_crit_edge82, %if.end.i.for.inc34_crit_edge83, %if.end.i.for.inc34_crit_edge84, %for.body24.for.inc34_crit_edge
  %cmp22.not = icmp eq ptr %.pn5674, %disco_list
  br i1 %cmp22.not, label %for.inc34.for.end40_crit_edge, label %for.inc34.for.body24_crit_edge

for.inc34.for.body24_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

for.inc34.for.end40_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end40

for.end40:                                        ; preds = %for.inc34.for.end40_crit_edge, %for.end.for.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sas_async_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_ata_wait_eh(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 5, label %entry.if.end_crit_edge
    i32 7, label %entry.if.end_crit_edge4
    i32 8, label %entry.if.end_crit_edge5
    i32 9, label %entry.if.end_crit_edge6
  ]

entry.if.end_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge4, %entry.if.end_crit_edge5, %entry.if.end_crit_edge6
  %ap1 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 2
  %3 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ap1, align 8
  tail call void @ata_port_wait_eh(ptr noundef %4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_suspend_sata(ptr noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 21
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %disco_mutex = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %disco_mutex, i32 noundef 0) #7
  %dev_list = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 3
  %2 = ptrtoint ptr %dev_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn22 = load ptr, ptr %dev_list, align 4
  %cmp.not23 = icmp eq ptr %.pn22, %dev_list
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn22, %entry.for.body_crit_edge ]
  %dev_type.i = getelementptr i8, ptr %.pn24, i32 -40
  %3 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_type.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %4, label %for.body.cleanup_crit_edge [
    i32 5, label %for.body.if.end_crit_edge
    i32 7, label %for.body.if.end_crit_edge25
    i32 8, label %for.body.if.end_crit_edge26
    i32 9, label %for.body.if.end_crit_edge27
  ]

for.body.if.end_crit_edge27:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.if.end_crit_edge26:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.if.end_crit_edge25:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.body.if.end_crit_edge25, %for.body.if.end_crit_edge26, %for.body.if.end_crit_edge27
  %ap = getelementptr i8, ptr %.pn24, i32 180
  %6 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ap, align 8
  %pm_mesg = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 42
  %8 = ptrtoint ptr %pm_mesg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pm_mesg, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp2 = icmp eq i32 %9, 2
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ata_sas_port_suspend(ptr noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %10 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %dev_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ha, align 4
  %disco_mutex12 = getelementptr inbounds %struct.sas_ha_struct, ptr %12, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %disco_mutex12) #7
  %13 = ptrtoint ptr %dev_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_list, align 4
  %cmp.not29.i = icmp eq ptr %14, %dev_list
  br i1 %cmp.not29.i, label %for.end.sas_ata_flush_pm_eh.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.sas_ata_flush_pm_eh.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sas_ata_flush_pm_eh.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %.pn.in30.i = phi ptr [ %.pn32.i, %for.inc.i.for.body.i_crit_edge ], [ %14, %for.end.for.body.i_crit_edge ]
  %dev.031.i = getelementptr i8, ptr %.pn.in30.i, i32 -84
  %15 = ptrtoint ptr %.pn.in30.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn32.i = load ptr, ptr %.pn.in30.i, align 4
  %dev_type.i.i = getelementptr i8, ptr %.pn.in30.i, i32 -40
  %16 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_type.i.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %17, label %for.body.i.for.inc.i_crit_edge [
    i32 5, label %for.body.i.if.end.i.i_crit_edge
    i32 7, label %for.body.i.if.end.i.i_crit_edge28
    i32 8, label %for.body.i.if.end.i.i_crit_edge29
    i32 9, label %for.body.i.if.end.i.i_crit_edge30
  ]

for.body.i.if.end.i.i_crit_edge30:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.body.i.if.end.i.i_crit_edge29:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.body.i.if.end.i.i_crit_edge28:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i.i:                                       ; preds = %for.body.i.if.end.i.i_crit_edge, %for.body.i.if.end.i.i_crit_edge28, %for.body.i.if.end.i.i_crit_edge29, %for.body.i.if.end.i.i_crit_edge30
  %ap1.i.i = getelementptr i8, ptr %.pn.in30.i, i32 180
  %19 = ptrtoint ptr %ap1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ap1.i.i, align 8
  tail call void @ata_port_wait_eh(ptr noundef %20) #7
  %21 = ptrtoint ptr %ap1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ap1.i.i, align 8
  %class.i.i = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 25, i32 14, i32 0, i32 9
  %23 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %class.i.i, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %24, label %if.end.i.i.for.inc.i_crit_edge [
    i32 2, label %if.end.i.i.if.then10.i_crit_edge
    i32 4, label %if.end.i.i.if.then10.i_crit_edge31
    i32 6, label %if.end.i.i.if.then10.i_crit_edge32
    i32 8, label %if.end.i.i.if.then10.i_crit_edge33
    i32 10, label %if.end.i.i.if.then10.i_crit_edge34
  ]

if.end.i.i.if.then10.i_crit_edge34:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.end.i.i.if.then10.i_crit_edge33:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.end.i.i.if.then10.i_crit_edge32:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.end.i.i.if.then10.i_crit_edge31:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.end.i.i.if.then10.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then10.i:                                      ; preds = %if.end.i.i.if.then10.i_crit_edge, %if.end.i.i.if.then10.i_crit_edge31, %if.end.i.i.if.then10.i_crit_edge32, %if.end.i.i.if.then10.i_crit_edge33, %if.end.i.i.if.then10.i_crit_edge34
  %parent.i.i = getelementptr i8, ptr %.pn.in30.i, i32 -20
  %26 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i.i, align 64
  %tobool.not.i.i = icmp eq ptr %27, null
  %cond.i.i = select i1 %tobool.not.i.i, ptr @.str.30, ptr @.str.29
  %sas_addr.i.i = getelementptr i8, ptr %.pn.in30.i, i32 28
  %28 = ptrtoint ptr %sas_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sas_addr.i.i, align 16
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.sas_suspend_sata, ptr noundef nonnull %cond.i.i, i64 noundef %29, i32 noundef -19) #11
  %port.i.i = getelementptr i8, ptr %.pn.in30.i, i32 -8
  %30 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port.i.i, align 4
  tail call void @sas_unregister_dev(ptr noundef %31, ptr noundef %dev.031.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %if.end.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn32.i, %dev_list
  br i1 %cmp.not.i, label %for.inc.i.sas_ata_flush_pm_eh.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.sas_ata_flush_pm_eh.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sas_ata_flush_pm_eh.exit

sas_ata_flush_pm_eh.exit:                         ; preds = %for.inc.i.sas_ata_flush_pm_eh.exit_crit_edge, %for.end.sas_ata_flush_pm_eh.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sas_port_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_resume_sata(ptr noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 21
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %disco_mutex = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %disco_mutex, i32 noundef 0) #7
  %dev_list = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 3
  %2 = ptrtoint ptr %dev_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn22 = load ptr, ptr %dev_list, align 4
  %cmp.not23 = icmp eq ptr %.pn22, %dev_list
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn22, %entry.for.body_crit_edge ]
  %dev_type.i = getelementptr i8, ptr %.pn24, i32 -40
  %3 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_type.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %4, label %for.body.cleanup_crit_edge [
    i32 5, label %for.body.if.end_crit_edge
    i32 7, label %for.body.if.end_crit_edge25
    i32 8, label %for.body.if.end_crit_edge26
    i32 9, label %for.body.if.end_crit_edge27
  ]

for.body.if.end_crit_edge27:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.if.end_crit_edge26:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.if.end_crit_edge25:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.body.if.end_crit_edge25, %for.body.if.end_crit_edge26, %for.body.if.end_crit_edge27
  %ap = getelementptr i8, ptr %.pn24, i32 180
  %6 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ap, align 8
  %pm_mesg = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 42
  %8 = ptrtoint ptr %pm_mesg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pm_mesg, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ata_sas_port_resume(ptr noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %10 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %dev_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ha, align 4
  %disco_mutex12 = getelementptr inbounds %struct.sas_ha_struct, ptr %12, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %disco_mutex12) #7
  %13 = ptrtoint ptr %dev_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_list, align 4
  %cmp.not29.i = icmp eq ptr %14, %dev_list
  br i1 %cmp.not29.i, label %for.end.sas_ata_flush_pm_eh.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.sas_ata_flush_pm_eh.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sas_ata_flush_pm_eh.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %.pn.in30.i = phi ptr [ %.pn32.i, %for.inc.i.for.body.i_crit_edge ], [ %14, %for.end.for.body.i_crit_edge ]
  %dev.031.i = getelementptr i8, ptr %.pn.in30.i, i32 -84
  %15 = ptrtoint ptr %.pn.in30.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn32.i = load ptr, ptr %.pn.in30.i, align 4
  %dev_type.i.i = getelementptr i8, ptr %.pn.in30.i, i32 -40
  %16 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_type.i.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %17, label %for.body.i.for.inc.i_crit_edge [
    i32 5, label %for.body.i.if.end.i.i_crit_edge
    i32 7, label %for.body.i.if.end.i.i_crit_edge28
    i32 8, label %for.body.i.if.end.i.i_crit_edge29
    i32 9, label %for.body.i.if.end.i.i_crit_edge30
  ]

for.body.i.if.end.i.i_crit_edge30:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.body.i.if.end.i.i_crit_edge29:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.body.i.if.end.i.i_crit_edge28:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i.i:                                       ; preds = %for.body.i.if.end.i.i_crit_edge, %for.body.i.if.end.i.i_crit_edge28, %for.body.i.if.end.i.i_crit_edge29, %for.body.i.if.end.i.i_crit_edge30
  %ap1.i.i = getelementptr i8, ptr %.pn.in30.i, i32 180
  %19 = ptrtoint ptr %ap1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ap1.i.i, align 8
  tail call void @ata_port_wait_eh(ptr noundef %20) #7
  %21 = ptrtoint ptr %ap1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ap1.i.i, align 8
  %class.i.i = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 25, i32 14, i32 0, i32 9
  %23 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %class.i.i, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %24, label %if.end.i.i.for.inc.i_crit_edge [
    i32 2, label %if.end.i.i.if.then10.i_crit_edge
    i32 4, label %if.end.i.i.if.then10.i_crit_edge31
    i32 6, label %if.end.i.i.if.then10.i_crit_edge32
    i32 8, label %if.end.i.i.if.then10.i_crit_edge33
    i32 10, label %if.end.i.i.if.then10.i_crit_edge34
  ]

if.end.i.i.if.then10.i_crit_edge34:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.end.i.i.if.then10.i_crit_edge33:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.end.i.i.if.then10.i_crit_edge32:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.end.i.i.if.then10.i_crit_edge31:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.end.i.i.if.then10.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then10.i:                                      ; preds = %if.end.i.i.if.then10.i_crit_edge, %if.end.i.i.if.then10.i_crit_edge31, %if.end.i.i.if.then10.i_crit_edge32, %if.end.i.i.if.then10.i_crit_edge33, %if.end.i.i.if.then10.i_crit_edge34
  %parent.i.i = getelementptr i8, ptr %.pn.in30.i, i32 -20
  %26 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i.i, align 64
  %tobool.not.i.i = icmp eq ptr %27, null
  %cond.i.i = select i1 %tobool.not.i.i, ptr @.str.30, ptr @.str.29
  %sas_addr.i.i = getelementptr i8, ptr %.pn.in30.i, i32 28
  %28 = ptrtoint ptr %sas_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sas_addr.i.i, align 16
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.sas_resume_sata, ptr noundef nonnull %cond.i.i, i64 noundef %29, i32 noundef -19) #11
  %port.i.i = getelementptr i8, ptr %.pn.in30.i, i32 -8
  %30 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port.i.i, align 4
  tail call void @sas_unregister_dev(ptr noundef %31, ptr noundef %dev.031.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %if.end.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn32.i, %dev_list
  br i1 %cmp.not.i, label %for.inc.i.sas_ata_flush_pm_eh.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.sas_ata_flush_pm_eh.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sas_ata_flush_pm_eh.exit

sas_ata_flush_pm_eh.exit:                         ; preds = %for.inc.i.sas_ata_flush_pm_eh.exit_crit_edge, %for.end.sas_ata_flush_pm_eh.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sas_port_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_discover_sata(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tf.i = alloca %struct.ata_taskfile, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i) #7
  %2 = call ptr @memset(ptr %tf.i, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp.i = icmp eq i32 %1, 9
  br i1 %cmp.i, label %if.end.sas_get_ata_command_set.exit_crit_edge, label %if.end.i

if.end.sas_get_ata_command_set.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sas_get_ata_command_set.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %frame_rcvd.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 17
  call void @ata_tf_from_fis(ptr noundef %frame_rcvd.i, ptr noundef nonnull %tf.i) #7
  %call.i = call i32 @ata_dev_classify(ptr noundef nonnull %tf.i) #7
  br label %sas_get_ata_command_set.exit

sas_get_ata_command_set.exit:                     ; preds = %if.end.i, %if.end.sas_get_ata_command_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %if.end.sas_get_ata_command_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i) #7
  %3 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval.0.i, ptr %3, align 128
  %rphy = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rphy, align 4
  %sas_addr.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %7 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sas_addr.i, align 16
  %sas_address.i = getelementptr inbounds %struct.sas_rphy, ptr %6, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %sas_address.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %sas_address.i, align 8
  %iproto.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 12
  %10 = ptrtoint ptr %iproto.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iproto.i, align 4
  %initiator_port_protocols.i = getelementptr inbounds %struct.sas_rphy, ptr %6, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %initiator_port_protocols.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %initiator_port_protocols.i, align 4
  %tproto.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 13
  %13 = ptrtoint ptr %tproto.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tproto.i, align 8
  %target_port_protocols.i = getelementptr inbounds %struct.sas_rphy, ptr %6, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %target_port_protocols.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %target_port_protocols.i, align 8
  %16 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_type, align 4
  %switch.tableidx = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %18 = icmp ult i32 %switch.tableidx, 9
  br i1 %18, label %switch.lookup, label %sas_get_ata_command_set.exit.sas_fill_in_rphy.exit_crit_edge

sas_get_ata_command_set.exit.sas_fill_in_rphy.exit_crit_edge: ; preds = %sas_get_ata_command_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sas_fill_in_rphy.exit

switch.lookup:                                    ; preds = %sas_get_ata_command_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.sas_discover_sata, i32 0, i32 %switch.tableidx
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sas_fill_in_rphy.exit

sas_fill_in_rphy.exit:                            ; preds = %switch.lookup, %sas_get_ata_command_set.exit.sas_fill_in_rphy.exit_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %sas_get_ata_command_set.exit.sas_fill_in_rphy.exit_crit_edge ]
  %identify.i = getelementptr inbounds %struct.sas_rphy, ptr %6, i32 0, i32 1
  %20 = ptrtoint ptr %identify.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink.i, ptr %identify.i, align 8
  %call1 = call i32 @sas_notify_lldd_dev_found(ptr noundef %dev) #7
  br label %return

return:                                           ; preds = %sas_fill_in_rphy.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %sas_fill_in_rphy.exit ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_notify_lldd_dev_found(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_ata_strategy_handler(ptr nocapture noundef readonly %shost) local_unnamed_addr #0 align 64 {
entry:
  %async = alloca %struct.async_domain, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %async) #7
  %2 = getelementptr inbounds i8, ptr %async, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %async to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %async, ptr %async, align 4
  %prev = getelementptr inbounds %struct.list_head, ptr %async, i32 0, i32 1
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %async, ptr %prev, align 4
  %registered = getelementptr inbounds %struct.async_domain, ptr %async, i32 0, i32 1
  %6 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 127, ptr %registered, align 4
  call void @sas_disable_revalidation(ptr noundef %1) #7
  %phy_port_lock = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 16
  call void @_raw_spin_lock_irq(ptr noundef %phy_port_lock) #7
  %num_phys = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp38 = icmp sgt i32 %8, 0
  br i1 %cmp38, label %for.body.lr.ph, label %entry.for.end16_crit_edge

entry.for.end16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end16

for.body.lr.ph:                                   ; preds = %entry
  %sas_port = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %sas_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sas_port, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %i.039
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %dev_list_lock = getelementptr inbounds %struct.asd_sas_port, ptr %12, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %dev_list_lock) #7
  %dev_list = getelementptr inbounds %struct.asd_sas_port, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn33 = load ptr, ptr %dev_list, align 4
  %cmp6.not35 = icmp eq ptr %.pn33, %dev_list
  br i1 %cmp6.not35, label %for.body.for.end_crit_edge, label %for.body.for.body7_crit_edge

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %.pn36 = phi ptr [ %.pn, %for.inc.for.body7_crit_edge ], [ %.pn33, %for.body.for.body7_crit_edge ]
  %dev.037 = getelementptr i8, ptr %.pn36, i32 -84
  %dev_type.i = getelementptr i8, ptr %.pn36, i32 -40
  %14 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_type.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %15, label %for.body7.for.inc_crit_edge [
    i32 5, label %for.body7.if.end_crit_edge
    i32 7, label %for.body7.if.end_crit_edge40
    i32 8, label %for.body7.if.end_crit_edge41
    i32 9, label %for.body7.if.end_crit_edge42
  ]

for.body7.if.end_crit_edge42:                     ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body7.if.end_crit_edge41:                     ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body7.if.end_crit_edge40:                     ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body7.if.end_crit_edge:                       ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body7.for.inc_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body7.if.end_crit_edge, %for.body7.if.end_crit_edge40, %for.body7.if.end_crit_edge41, %for.body7.if.end_crit_edge42
  %kref = getelementptr i8, ptr %.pn36, i32 436
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #7
  %17 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #7, !srcloc !87
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !88

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !89

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #7
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %call.i = call i64 @async_schedule_node_domain(ptr noundef nonnull @async_sas_ata_eh, ptr noundef %dev.037, i32 noundef -1, ptr noundef nonnull %async) #7
  br label %for.inc

for.inc:                                          ; preds = %kref_get.exit, %for.body7.for.inc_crit_edge
  %19 = ptrtoint ptr %.pn36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn36, align 4
  %cmp6.not = icmp eq ptr %.pn, %dev_list
  br i1 %cmp6.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dev_list_lock) #7
  %inc = add nuw nsw i32 %i.039, 1
  %20 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_phys, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end16_crit_edge

for.end.for.end16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end16

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end16:                                        ; preds = %for.end.for.end16_crit_edge, %entry.for.end16_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %phy_port_lock) #7
  call void @async_synchronize_full_domain(ptr noundef nonnull %async) #7
  call void @sas_enable_revalidation(ptr noundef %1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %async) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_disable_revalidation(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @async_sas_ata_eh(ptr noundef %data, i64 noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ap1 = getelementptr inbounds %struct.domain_device, ptr %data, i32 0, i32 19, i32 0, i32 2
  %0 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ap1, align 8
  %port = getelementptr inbounds %struct.domain_device, ptr %data, i32 0, i32 8
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %ha2 = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %ha2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha2, align 4
  tail call void (ptr, ptr, ptr, ...) @sas_ata_printk(ptr noundef nonnull @.str.10, ptr noundef %data, ptr noundef nonnull @.str.31)
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  tail call void @ata_scsi_port_error_handler(ptr noundef %7, ptr noundef %1) #7
  %kref.i = getelementptr inbounds %struct.domain_device, ptr %data, i32 0, i32 22
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #7, !srcloc !91
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sas_put_device.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !89

if.end5.i.i.i.i.i.sas_put_device.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sas_put_device.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #7
  br label %sas_put_device.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @sas_free_device(ptr noundef %kref.i) #7
  br label %sas_put_device.exit

sas_put_device.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sas_put_device.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_enable_revalidation(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_ata_eh(ptr noundef %shost, ptr noundef readonly %work_q, ptr nocapture noundef readnone %done_q) local_unnamed_addr #0 align 64 {
entry:
  %sata_q = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.list_head, ptr %sata_q, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end28.do.body_crit_edge, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sata_q) #7
  %1 = ptrtoint ptr %sata_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sata_q, ptr %sata_q, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sata_q, ptr %0, align 4
  %3 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %work_q, align 4
  %cmp.not52 = icmp eq ptr %4, %work_q
  br i1 %cmp.not52, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn.in54 = phi ptr [ %.pn56, %cleanup.for.body_crit_edge ], [ %4, %do.body.for.body_crit_edge ]
  %eh_dev.053 = phi ptr [ %eh_dev.1, %cleanup.for.body_crit_edge ], [ null, %do.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn56 = load ptr, ptr %.pn.in54, align 4
  %device.i = getelementptr i8, ptr %.pn.in54, i32 -4
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %sdev_target.i.i = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 37
  %8 = ptrtoint ptr %sdev_target.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev_target.i.i, align 8
  %hostdata.i.i.i = getelementptr inbounds %struct.scsi_target, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %hostdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hostdata.i.i.i, align 8
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_type.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %13, label %for.body.cleanup_crit_edge [
    i32 5, label %for.body.lor.lhs.false_crit_edge
    i32 7, label %for.body.lor.lhs.false_crit_edge58
    i32 8, label %for.body.lor.lhs.false_crit_edge59
    i32 9, label %for.body.lor.lhs.false_crit_edge60
  ]

for.body.lor.lhs.false_crit_edge60:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.body.lor.lhs.false_crit_edge59:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.body.lor.lhs.false_crit_edge58:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge58, %for.body.lor.lhs.false_crit_edge59, %for.body.lor.lhs.false_crit_edge60
  %host_scribble = getelementptr i8, ptr %.pn.in54, i32 224
  %15 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host_scribble, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool9.not = icmp eq ptr %eh_dev.053, null
  %cmp10.not = icmp eq ptr %eh_dev.053, %11
  %or.cond = or i1 %tobool9.not, %cmp10.not
  br i1 %or.cond, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in54) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.__list_del_entry.exit.i_crit_edge

if.end12.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in54, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in54, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end12.__list_del_entry.exit.i_crit_edge
  %23 = ptrtoint ptr %sata_q to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sata_q, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in54, ptr noundef nonnull %sata_q, ptr noundef %24) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.cleanup_crit_edge

__list_del_entry.exit.i.cleanup_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.pn.in54, ptr %prev1.i.i2.i, align 4
  %26 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %.pn.in54, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in54, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sata_q, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %sata_q to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %.pn.in54, ptr %sata_q, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %eh_dev.1 = phi ptr [ %eh_dev.053, %lor.lhs.false.cleanup_crit_edge ], [ %eh_dev.053, %if.end.cleanup_crit_edge ], [ %11, %__list_del_entry.exit.i.cleanup_crit_edge ], [ %11, %if.end.i.i.i ], [ %eh_dev.053, %for.body.cleanup_crit_edge ]
  %cmp.not = icmp eq ptr %.pn56, %work_q
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.body.for.end_crit_edge
  %eh_dev.0.lcssa = phi ptr [ null, %do.body.for.end_crit_edge ], [ %eh_dev.1, %cleanup.for.end_crit_edge ]
  %29 = ptrtoint ptr %sata_q to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %sata_q, align 4
  %cmp.i.not = icmp eq ptr %30, %sata_q
  br i1 %cmp.i.not, label %for.end.if.end28_crit_edge, label %if.then21

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then21:                                        ; preds = %for.end
  %ap22 = getelementptr inbounds %struct.domain_device, ptr %eh_dev.0.lcssa, i32 0, i32 19, i32 0, i32 2
  %31 = ptrtoint ptr %ap22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ap22, align 8
  call void (ptr, ptr, ptr, ...) @sas_ata_printk(ptr noundef nonnull @.str.10, ptr noundef %eh_dev.0.lcssa, ptr noundef nonnull @.str.11)
  call void @ata_scsi_cmd_error_handler(ptr noundef %shost, ptr noundef %32, ptr noundef nonnull %sata_q) #7
  %33 = ptrtoint ptr %sata_q to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %sata_q, align 4
  %cmp.i43.not57 = icmp eq ptr %34, %sata_q
  br i1 %cmp.i43.not57, label %if.then21.if.end28_crit_edge, label %if.then21.while.body_crit_edge

if.then21.while.body_crit_edge:                   ; preds = %if.then21
  br label %while.body

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %if.then21.while.body_crit_edge
  %35 = phi ptr [ %45, %list_del_init.exit.while.body_crit_edge ], [ %34, %if.then21.while.body_crit_edge ]
  %call.i.i45 = call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #7
  br i1 %call.i.i45, label %if.end.i.i48, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i48:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i46 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i46, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %prev1.i.i.i47 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i47, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i48, %while.body.list_del_init.exit_crit_edge
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %35, ptr %35, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %35, ptr %prev.i3.i, align 4
  %44 = ptrtoint ptr %sata_q to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %sata_q, align 4
  %cmp.i43.not = icmp eq ptr %45, %sata_q
  br i1 %cmp.i43.not, label %list_del_init.exit.if.end28_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

list_del_init.exit.if.end28_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %list_del_init.exit.if.end28_crit_edge, %if.then21.if.end28_crit_edge, %for.end.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sata_q) #7
  %tobool29.not = icmp eq ptr %eh_dev.0.lcssa, null
  br i1 %tobool29.not, label %do.end, label %if.end28.do.body_crit_edge

if.end28.do.body_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_ata_printk(ptr noundef %level, ptr nocapture noundef readonly %ddev, ptr noundef %fmt, ...) unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ap1 = getelementptr inbounds %struct.domain_device, ptr %ddev, i32 0, i32 19, i32 0, i32 2
  %0 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ap1, align 8
  %rphy = getelementptr inbounds %struct.domain_device, ptr %ddev, i32 0, i32 14
  %2 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rphy, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #7
  %4 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #7
  %5 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !93
  call void @llvm.va_start(ptr nonnull %args)
  %6 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fmt, ptr %vaf, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %args, ptr %4, align 4
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %print_id, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %entry.dev_name.exit_crit_edge ]
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %level, i32 noundef %9, ptr noundef %retval.0.i, ptr noundef nonnull %vaf) #11
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_cmd_error_handler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_ata_schedule_reset(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 5, label %entry.if.end_crit_edge
    i32 7, label %entry.if.end_crit_edge17
    i32 8, label %entry.if.end_crit_edge18
    i32 9, label %entry.if.end_crit_edge19
  ]

entry.if.end_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge17, %entry.if.end_crit_edge18, %entry.if.end_crit_edge19
  %ap1 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 2
  %3 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ap1, align 8
  %lock = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %err_mask = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 25, i32 11, i32 2
  %7 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %err_mask, align 4
  %or = or i32 %8, 4
  store i32 %or, ptr %err_mask, align 4
  %action = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 25, i32 11, i32 3
  %9 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %action, align 4
  %or7 = or i32 %10, 6
  store i32 %or7, ptr %action, align 4
  tail call void @ata_port_schedule_eh(ptr noundef %4) #7
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_schedule_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_wait_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_qc_defer(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_noop_qc_prep(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sas_ata_qc_issue(ptr noundef %qc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ha, align 4
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %transportt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transportt, align 4
  %lock = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock(ptr noundef %13) #7
  %state = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @sas_alloc_task(i32 noundef 2592) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end5:                                          ; preds = %if.end
  %16 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %3, ptr %call2, align 4
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 3
  %17 = ptrtoint ptr %task_proto to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %task_proto, align 4
  %task_done = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 10
  %18 = ptrtoint ptr %task_done to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sas_ata_task_done, ptr %task_done, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %command = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %19 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %command, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %20, label %if.end5.if.end33_crit_edge [
    i8 97, label %if.end5.if.then31_crit_edge
    i8 96, label %if.end5.if.then31_crit_edge189
    i8 101, label %if.end5.if.then31_crit_edge190
    i8 100, label %if.end5.if.then31_crit_edge191
    i8 99, label %if.end5.if.then31_crit_edge192
  ]

if.end5.if.then31_crit_edge192:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.end5.if.then31_crit_edge191:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.end5.if.then31_crit_edge190:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.end5.if.then31_crit_edge189:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.end5.if.then31_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.end5.if.end33_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then31:                                        ; preds = %if.end5.if.then31_crit_edge, %if.end5.if.then31_crit_edge189, %if.end5.if.then31_crit_edge190, %if.end5.if.then31_crit_edge191, %if.end5.if.then31_crit_edge192
  %nsect = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 9
  %22 = ptrtoint ptr %nsect to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %nsect, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end5.if.end33_crit_edge
  %dev35 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %23 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev35, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 128
  %pmp = getelementptr inbounds %struct.ata_link, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pmp, align 4
  %conv36 = trunc i32 %28 to i8
  %29 = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 4
  tail call void @ata_tf_to_fis(ptr noundef %tf, i8 noundef zeroext %conv36, i32 noundef 1, ptr noundef %29) #7
  %uldd_task = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 12
  %30 = ptrtoint ptr %uldd_task to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %qc, ptr %uldd_task, align 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %protocol, align 4
  %33 = and i8 %32, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.i.not = icmp eq i8 %33, 0
  br i1 %tobool.i.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %atapi_packet = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 4, i32 0, i32 1
  %cdb = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 5
  %34 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev35, align 4
  %cdb_len = getelementptr inbounds %struct.ata_device, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %cdb_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cdb_len, align 32
  %38 = call ptr @memcpy(ptr %atapi_packet, ptr %cdb, i32 %37)
  %nbytes = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 13
  %39 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nbytes, align 4
  %total_xfer_len = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 7
  %41 = ptrtoint ptr %total_xfer_len to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %total_xfer_len, align 4
  %n_elem = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %42 = ptrtoint ptr %n_elem to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_elem, align 4
  %num_scatter = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 6
  %44 = ptrtoint ptr %num_scatter to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %num_scatter, align 4
  %dma_dir = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 11
  %45 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_dir, align 4
  %conv42 = trunc i32 %46 to i8
  %data_dir = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 8
  %47 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load = load i8, ptr %data_dir, align 4
  %bf.shl = shl i8 %conv42, 6
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %data_dir, align 4
  br label %if.end70

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp46 = icmp eq i8 %32, 0
  br i1 %cmp46, label %if.then48, label %if.else53

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %data_dir49 = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 8
  %48 = ptrtoint ptr %data_dir49 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load50 = load i8, ptr %data_dir49, align 4
  %bf.set52 = or i8 %bf.load50, -64
  store i8 %bf.set52, ptr %data_dir49, align 4
  br label %if.end70

if.else53:                                        ; preds = %if.else
  %n_elem55 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %49 = ptrtoint ptr %n_elem55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n_elem55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp56184.not = icmp eq i32 %50, 0
  br i1 %cmp56184.not, label %if.else53.for.end_crit_edge, label %for.body.preheader

if.else53.for.end_crit_edge:                      ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.else53
  %sg54 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %51 = ptrtoint ptr %sg54 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sg54, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %sg.0187 = phi ptr [ %call58, %for.body.for.body_crit_edge ], [ %52, %for.body.preheader ]
  %si.0186 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %xfer.0185 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0187, i32 0, i32 4
  %53 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_length, align 4
  %add = add i32 %54, %xfer.0185
  %inc = add nuw i32 %si.0186, 1
  %call58 = tail call ptr @sg_next(ptr noundef %sg.0187) #7
  %55 = ptrtoint ptr %n_elem55 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n_elem55, align 4
  %cmp56 = icmp ult i32 %inc, %56
  br i1 %cmp56, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.else53.for.end_crit_edge
  %xfer.0.lcssa = phi i32 [ 0, %if.else53.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %si.0.lcssa = phi i32 [ 0, %if.else53.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %total_xfer_len59 = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 7
  %57 = ptrtoint ptr %total_xfer_len59 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %xfer.0.lcssa, ptr %total_xfer_len59, align 4
  %num_scatter60 = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 6
  %58 = ptrtoint ptr %num_scatter60 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %si.0.lcssa, ptr %num_scatter60, align 4
  %dma_dir61 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 11
  %59 = ptrtoint ptr %dma_dir61 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_dir61, align 4
  %conv62 = trunc i32 %60 to i8
  %data_dir63 = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 8
  %61 = ptrtoint ptr %data_dir63 to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load64 = load i8, ptr %data_dir63, align 4
  %bf.shl66 = shl i8 %conv62, 6
  %bf.clear67 = and i8 %bf.load64, 63
  %bf.set68 = or i8 %bf.clear67, %bf.shl66
  store i8 %bf.set68, ptr %data_dir63, align 4
  br label %if.end70

if.end70:                                         ; preds = %for.end, %if.then48, %if.then39
  %sg71 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %62 = ptrtoint ptr %sg71 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sg71, align 4
  %scatter = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 5
  %64 = ptrtoint ptr %scatter to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %scatter, align 4
  %retry_count = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 4, i32 0, i32 1, i32 4
  %65 = ptrtoint ptr %retry_count to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %retry_count, align 4
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %call2, i32 0, i32 2
  %66 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %task_state_flags, align 4
  %lldd_task = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 24
  %67 = ptrtoint ptr %lldd_task to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call2, ptr %lldd_task, align 4
  %68 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %protocol, align 4
  %use_ncq = getelementptr inbounds %struct.sas_ata_task, ptr %29, i32 0, i32 3
  %70 = ptrtoint ptr %use_ncq to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load76 = load i8, ptr %use_ncq, align 1
  %71 = shl i8 %69, 4
  %72 = and i8 %71, 64
  %bf.clear79 = and i8 %bf.load76, -65
  %bf.set80 = or i8 %bf.clear79, %72
  store i8 %bf.set80, ptr %use_ncq, align 1
  %73 = load i8, ptr %protocol, align 4
  %74 = shl i8 %73, 6
  %75 = and i8 %74, -128
  %bf.clear88 = and i8 %bf.set80, 127
  %bf.set89 = or i8 %75, %bf.clear88
  store i8 %bf.set89, ptr %use_ncq, align 1
  %scsicmd = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 2
  %76 = ptrtoint ptr %scsicmd to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %scsicmd, align 4
  %tobool90.not = icmp eq ptr %77, null
  br i1 %tobool90.not, label %if.end70.if.end93_crit_edge, label %do.body

if.end70.if.end93_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

do.body:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %77, i32 0, i32 23
  %78 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call2, ptr %host_scribble, align 4
  br label %if.end93

if.end93:                                         ; preds = %do.body, %if.end70.if.end93_crit_edge
  %dft = getelementptr inbounds %struct.sas_internal, ptr %11, i32 0, i32 2
  %79 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dft, align 4
  %lldd_execute_task = getelementptr inbounds %struct.sas_domain_function_template, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %lldd_execute_task to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lldd_execute_task, align 4
  %call94 = tail call i32 %82(ptr noundef nonnull %call2, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end93.out_crit_edge, label %do.body97

if.end93.out_crit_edge:                           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body97:                                        ; preds = %if.end93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_ata_qc_issue.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_ata_qc_issue, %do.end107)) #7
          to label %if.then104 [label %do.end107], !srcloc !86

if.then104:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_ata_qc_issue.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.14, i32 noundef %call94) #7
  br label %do.end107

do.end107:                                        ; preds = %if.then104, %do.body97
  %83 = ptrtoint ptr %scsicmd to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %scsicmd, align 4
  %tobool109.not = icmp eq ptr %84, null
  br i1 %tobool109.not, label %do.end107.if.end116_crit_edge, label %do.body111

do.end107.if.end116_crit_edge:                    ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

do.body111:                                       ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #9
  %host_scribble113 = getelementptr inbounds %struct.scsi_cmnd, ptr %84, i32 0, i32 23
  %85 = ptrtoint ptr %host_scribble113 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %host_scribble113, align 4
  br label %if.end116

if.end116:                                        ; preds = %do.body111, %do.end107.if.end116_crit_edge
  tail call void @sas_free_task(ptr noundef nonnull %call2) #7
  %86 = ptrtoint ptr %lldd_task to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %lldd_task, align 4
  br label %out

out:                                              ; preds = %if.end116, %if.end93.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 64, %entry.out_crit_edge ], [ 64, %if.end116 ], [ 0, %if.end93.out_crit_edge ], [ 64, %if.end.out_crit_edge ]
  %87 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_lock(ptr noundef %88) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sas_ata_qc_fill_rtf(ptr noundef %qc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %fis = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 19, i32 0, i32 6
  %result_tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 21
  tail call void @ata_tf_from_fis(ptr noundef %fis, ptr noundef %result_tf) #7
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_ata_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readnone %ata_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port.i = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha.i, align 4
  %core.i = getelementptr inbounds %struct.sas_ha_struct, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core.i, align 4
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %transportt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transportt.i, align 4
  %dft = getelementptr inbounds %struct.sas_internal, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dft, align 4
  %lldd_ata_set_dmamode = getelementptr inbounds %struct.sas_domain_function_template, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %lldd_ata_set_dmamode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lldd_ata_set_dmamode, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %13(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sas_ata_prereset(ptr nocapture noundef readonly %link, i32 noundef %deadline) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call = tail call ptr @sas_get_local_phy(ptr noundef %3) #7
  %enabled = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %res.0 = phi i32 [ -2, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  tail call void @put_device(ptr noundef %call) #7
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sas_ata_hard_reset(ptr noundef %link, ptr nocapture noundef writeonly %class, i32 noundef %deadline) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %port.i = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port.i, align 4
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ha.i, align 4
  %core.i = getelementptr inbounds %struct.sas_ha_struct, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core.i, align 4
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %transportt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transportt.i, align 4
  %dft = getelementptr inbounds %struct.sas_internal, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dft, align 4
  %lldd_I_T_nexus_reset = getelementptr inbounds %struct.sas_domain_function_template, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %lldd_I_T_nexus_reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lldd_I_T_nexus_reset, align 4
  %call2 = tail call i32 %15(ptr noundef %3) #7
  %16 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call2, label %if.then4 [
    i32 -19, label %entry.cleanup_crit_edge
    i32 0, label %entry.if.end6_crit_edge
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @sas_ata_printk(ptr noundef nonnull @.str.10, ptr noundef %3, ptr noundef nonnull @.str.19)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry.if.end6_crit_edge
  %call7 = tail call ptr @sas_get_local_phy(ptr noundef %3) #7
  %parent = getelementptr inbounds %struct.device, ptr %call7, i32 0, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 8
  %call9 = tail call i32 @scsi_is_host_device(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  %smp_ata_check_ready.local_ata_check_ready = select i1 %tobool.not, ptr @smp_ata_check_ready, ptr @local_ata_check_ready
  tail call void @put_device(ptr noundef %call7) #7
  %call12 = tail call i32 @ata_wait_after_reset(ptr noundef %link, i32 noundef %deadline, ptr noundef nonnull %smp_ata_check_ready.local_ata_check_ready) #7
  %19 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call12, label %if.then15 [
    i32 0, label %if.end6.if.end17_crit_edge
    i32 -11, label %if.end6.if.end17_crit_edge38
  ]

if.end6.if.end17_crit_edge38:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @sas_ata_printk(ptr noundef nonnull @.str.20, ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %call12)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end6.if.end17_crit_edge, %if.end6.if.end17_crit_edge38
  %20 = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 19
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 128
  %23 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %class, align 4
  %cbl = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 18
  %24 = ptrtoint ptr %cbl to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6, ptr %cbl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end17 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_std_error_handler(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_ata_post_internal(ptr nocapture noundef %qc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %err_mask = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 20
  %2 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %err_mask, align 4
  %or = or i32 %3, 256
  store i32 %or, ptr %err_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err_mask1 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 20
  %4 = ptrtoint ptr %err_mask1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err_mask1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %lldd_task = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 24
  %6 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldd_task, align 4
  store ptr null, ptr %lldd_task, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.end7

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %uldd_task = getelementptr inbounds %struct.sas_task, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %uldd_task to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %uldd_task, align 4
  tail call fastcc void @sas_ata_internal_abort(ptr noundef nonnull %7)
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_ata_sched_eh(ptr noundef %ap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %ha1 = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %ha1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha1, align 4
  %lock = getelementptr inbounds %struct.sas_ha_struct, ptr %5, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 21
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %eh_active = getelementptr inbounds %struct.sas_ha_struct, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %eh_active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eh_active, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %eh_active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @ata_std_sched_eh(ptr noundef %ap) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sas_port_start(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sas_port_stop(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_alloc_task(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_ata_task_done(ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %uldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 12
  %0 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uldd_task, align 4
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 4
  %task_status = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9
  %port = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ha, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %state = getelementptr inbounds %struct.sas_ha_struct, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %if.end14.thread

if.end14.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %if.end14.thread181, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %scsicmd = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %scsicmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scsicmd, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %land.lhs.true.if.end14_crit_edge, label %do.body10

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.body10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %host_scribble, align 4
  br label %if.end14

if.end14:                                         ; preds = %do.body10, %land.lhs.true.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #7
  %tobool16.not = icmp eq ptr %task, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end24, !prof !88

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.thread181:                               ; preds = %if.else
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #7
  %tobool16.not183 = icmp eq ptr %task, null
  br i1 %tobool16.not183, label %if.end14.thread181.cleanup_crit_edge, label %if.end14.thread181.qc_already_gone_crit_edge, !prof !88

if.end14.thread181.qc_already_gone_crit_edge:     ; preds = %if.end14.thread181
  call void @__sanitizer_cov_trace_pc() #9
  br label %qc_already_gone

if.end14.thread181.cleanup_crit_edge:             ; preds = %if.end14.thread181
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %lock = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock, align 8
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #7
  %pflags = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pflags, align 16
  %and = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end53, label %if.then47, !prof !89

if.then47:                                        ; preds = %if.end24
  %20 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call35) #7
  %22 = ptrtoint ptr %scsicmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %scsicmd, align 4
  %tobool50.not = icmp eq ptr %23, null
  br i1 %tobool50.not, label %if.then47.cleanup_crit_edge, label %if.then47.qc_already_gone_crit_edge

if.then47.qc_already_gone_crit_edge:              ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %qc_already_gone

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %if.end24
  %stat54 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %stat54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stat54, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %25, label %if.end53.if.else94_crit_edge [
    i32 137, label %if.end53.if.then67_crit_edge
    i32 0, label %if.end53.if.then67_crit_edge189
    i32 2, label %land.lhs.true64
  ]

if.end53.if.then67_crit_edge189:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

if.end53.if.then67_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

if.end53.if.else94_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else94

land.lhs.true64:                                  ; preds = %if.end53
  %27 = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 19
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp65 = icmp eq i32 %29, 3
  br i1 %cmp65, label %land.lhs.true64.if.then67_crit_edge, label %land.lhs.true64.if.else94_crit_edge

land.lhs.true64.if.else94_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else94

land.lhs.true64.if.then67_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

if.then67:                                        ; preds = %land.lhs.true64.if.then67_crit_edge, %if.end53.if.then67_crit_edge, %if.end53.if.then67_crit_edge189
  %fis = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 19, i32 0, i32 6
  %ending_fis = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 3, i32 2
  %30 = call ptr @memcpy(ptr %fis, ptr %ending_fis, i32 24)
  %sactive = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 25, i32 4
  %31 = ptrtoint ptr %sactive to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sactive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool70.not = icmp eq i32 %32, 0
  %arrayidx = getelementptr %struct.domain_device, ptr %3, i32 0, i32 19, i32 0, i32 6, i32 2
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 2
  %conv.i = zext i8 %34 to i32
  %and.i = and i32 %conv.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp ne i32 %and2.i, 0
  %..i = zext i1 %tobool3.not.i to i32
  %retval.0.i = select i1 %tobool.not.i, i32 %..i, i32 2
  br i1 %tobool70.not, label %if.then71, label %if.else74

if.then71:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %err_mask = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 20
  %35 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %err_mask, align 4
  %or = or i32 %retval.0.i, %36
  store i32 %or, ptr %err_mask, align 4
  br label %if.end120

if.else74:                                        ; preds = %if.then67
  %err_mask78 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 25, i32 11, i32 2
  %37 = ptrtoint ptr %err_mask78 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %err_mask78, align 8
  %or79 = or i32 %retval.0.i, %38
  store i32 %or79, ptr %err_mask78, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or79)
  %tobool82.not = icmp eq i32 %or79, 0
  br i1 %tobool82.not, label %if.else74.if.end120_crit_edge, label %if.then89, !prof !89

if.else74.if.end120_crit_edge:                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then89:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #9
  %flags90 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %flags90 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags90, align 4
  %or91 = or i32 %40, 65536
  store i32 %or91, ptr %flags90, align 4
  br label %if.end120

if.else94:                                        ; preds = %land.lhs.true64.if.else94_crit_edge, %if.end53.if.else94_crit_edge
  %41 = ptrtoint ptr %task_status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %task_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp.i = icmp eq i32 %42, -1
  br i1 %cmp.i, label %if.else94.do.end100_crit_edge, label %if.end.i

if.else94.do.end100_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end100

if.end.i:                                         ; preds = %if.else94
  %43 = ptrtoint ptr %stat54 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stat54, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %44, label %if.end.i.if.end120_crit_edge [
    i32 128, label %if.end.i.do.end100_crit_edge
    i32 131, label %if.end.i.sw.bb1.i_crit_edge
    i32 138, label %if.end.i.sw.bb1.i_crit_edge190
    i32 139, label %if.end.i.sw.bb1.i_crit_edge191
    i32 141, label %if.end.i.sw.bb6.i_crit_edge
    i32 130, label %if.end.i.sw.bb3.i_crit_edge
    i32 132, label %if.end.i.sw.bb3.i_crit_edge192
    i32 133, label %if.end.i.sw.bb3.i_crit_edge193
    i32 134, label %if.end.i.sw.bb3.i_crit_edge194
    i32 136, label %if.end.i.do.end.i_crit_edge
    i32 135, label %if.end.i.do.end.i_crit_edge195
    i32 2, label %if.end.i.sw.bb6.i_crit_edge196
  ]

if.end.i.sw.bb6.i_crit_edge196:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

if.end.i.do.end.i_crit_edge195:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.sw.bb3.i_crit_edge194:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

if.end.i.sw.bb3.i_crit_edge193:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

if.end.i.sw.bb3.i_crit_edge192:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

if.end.i.sw.bb3.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

if.end.i.sw.bb6.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

if.end.i.sw.bb1.i_crit_edge191:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end.i.sw.bb1.i_crit_edge190:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end.i.sw.bb1.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end.i.do.end100_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end100

if.end.i.if.end120_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

sw.bb1.i:                                         ; preds = %if.end.i.sw.bb1.i_crit_edge, %if.end.i.sw.bb1.i_crit_edge190, %if.end.i.sw.bb1.i_crit_edge191
  br label %do.end100

sw.bb3.i:                                         ; preds = %if.end.i.sw.bb3.i_crit_edge, %if.end.i.sw.bb3.i_crit_edge192, %if.end.i.sw.bb3.i_crit_edge193, %if.end.i.sw.bb3.i_crit_edge194
  br label %do.end100

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge195
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %44) #11
  br label %do.end100

sw.bb6.i:                                         ; preds = %if.end.i.sw.bb6.i_crit_edge, %if.end.i.sw.bb6.i_crit_edge196
  br label %do.end100

do.end100:                                        ; preds = %sw.bb6.i, %do.end.i, %sw.bb3.i, %sw.bb1.i, %if.end.i.do.end100_crit_edge, %if.else94.do.end100_crit_edge
  %retval.0.i178.ph = phi i32 [ 4, %if.end.i.do.end100_crit_edge ], [ 16, %if.else94.do.end100_crit_edge ], [ 16, %sw.bb1.i ], [ 128, %sw.bb3.i ], [ 256, %do.end.i ], [ 1, %sw.bb6.i ]
  %46 = ptrtoint ptr %stat54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stat54, align 4
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %47) #11
  %sactive104 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 25, i32 4
  %48 = ptrtoint ptr %sactive104 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sactive104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool105.not = icmp eq i32 %49, 0
  br i1 %tobool105.not, label %if.then106, label %if.else108

if.then106:                                       ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #9
  %err_mask107 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 20
  %50 = ptrtoint ptr %err_mask107 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i178.ph, ptr %err_mask107, align 4
  br label %if.end114

if.else108:                                       ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #9
  %err_mask110 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 25, i32 11, i32 2
  %51 = ptrtoint ptr %err_mask110 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %err_mask110, align 8
  %or111 = or i32 %52, 1
  store i32 %or111, ptr %err_mask110, align 8
  %flags112 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 6
  %53 = ptrtoint ptr %flags112 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags112, align 4
  %or113 = or i32 %54, 65536
  store i32 %or113, ptr %flags112, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.else108, %if.then106
  %arrayidx116 = getelementptr %struct.domain_device, ptr %3, i32 0, i32 19, i32 0, i32 6, i32 3
  %55 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 4, ptr %arrayidx116, align 1
  %arrayidx118 = getelementptr %struct.domain_device, ptr %3, i32 0, i32 19, i32 0, i32 6, i32 2
  %56 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %arrayidx118, align 2
  br label %if.end120

if.end120:                                        ; preds = %if.end114, %if.end.i.if.end120_crit_edge, %if.then89, %if.else74.if.end120_crit_edge, %if.then71
  %lldd_task = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 24
  %57 = ptrtoint ptr %lldd_task to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %lldd_task, align 4
  tail call void @ata_qc_complete(ptr noundef nonnull %1) #7
  %58 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %call35) #7
  br label %qc_already_gone

qc_already_gone:                                  ; preds = %if.end120, %if.then47.qc_already_gone_crit_edge, %if.end14.thread181.qc_already_gone_crit_edge
  tail call void @sas_free_task(ptr noundef nonnull %task) #7
  br label %cleanup

cleanup:                                          ; preds = %qc_already_gone, %if.then47.cleanup_crit_edge, %if.end14.thread181.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end14.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_free_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_qc_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_from_fis(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_get_local_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @local_ata_check_ready(ptr nocapture noundef readonly %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %port.i = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port.i, align 4
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ha.i, align 4
  %core.i = getelementptr inbounds %struct.sas_ha_struct, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core.i, align 4
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %transportt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transportt.i, align 4
  %dft = getelementptr inbounds %struct.sas_internal, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dft, align 4
  %lldd_ata_check_ready = getelementptr inbounds %struct.sas_domain_function_template, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %lldd_ata_check_ready to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lldd_ata_check_ready, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 %15(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smp_ata_check_ready(ptr nocapture noundef readonly %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %parent = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 64
  %call = tail call ptr @sas_get_local_phy(ptr noundef %3) #7
  %ex_phy2 = getelementptr inbounds %struct.domain_device, ptr %5, i32 0, i32 19, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %ex_phy2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ex_phy2, align 8
  %number = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 8
  %arrayidx = getelementptr %struct.ex_phy, ptr %7, i32 %9
  %call4 = tail call i32 @sas_ex_phy_discover(ptr noundef %5, i32 noundef %9) #7
  tail call void @put_device(ptr noundef %call) #7
  %10 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call4, label %if.then6 [
    i32 -70, label %entry.cleanup_crit_edge
    i32 0, label %if.end7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %attached_dev_type = getelementptr %struct.ex_phy, ptr %7, i32 %9, i32 2
  %11 = ptrtoint ptr %attached_dev_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attached_dev_type, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %12, label %if.end7.sw.default_crit_edge [
    i32 9, label %if.end7.cleanup_crit_edge
    i32 1, label %sw.bb8
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.sw.default_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb8:                                           ; preds = %if.end7
  %attached_sata_dev = getelementptr %struct.ex_phy, ptr %7, i32 %9, i32 4
  %14 = ptrtoint ptr %attached_sata_dev to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %attached_sata_dev, align 4
  %15 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %sw.bb8.sw.default_crit_edge, label %if.then9

sw.bb8.sw.default_crit_edge:                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.then9:                                         ; preds = %sw.bb8
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 9
  br i1 %cmp.not.i, label %if.end.i, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @sas_get_ata_info(ptr noundef %3, ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %..i = zext i1 %tobool.not.i to i32
  br label %cleanup

sw.default:                                       ; preds = %sw.bb8.sw.default_crit_edge, %if.end7.sw.default_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end.i, %if.then9.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -19, %sw.default ], [ %call4, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 1, %if.then9.cleanup_crit_edge ], [ %..i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_wait_after_reset(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_ex_phy_discover(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sas_ata_internal_abort(ptr noundef %task) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %port.i = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha.i, align 4
  %core.i = getelementptr inbounds %struct.sas_ha_struct, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core.i, align 4
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %transportt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transportt.i, align 4
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #7
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 2
  %10 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %task_state_flags, align 4
  %12 = and i32 %11, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.end20, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_ata_internal_abort.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_ata_internal_abort, %out)) #7
          to label %if.then17 [label %out], !srcloc !86

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_ata_internal_abort.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, ptr noundef %task) #7
  br label %out

if.end20:                                         ; preds = %entry
  %or = or i32 %11, 4
  %14 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %task_state_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call3) #7
  %dft = getelementptr inbounds %struct.sas_internal, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dft, align 4
  %lldd_abort_task = getelementptr inbounds %struct.sas_domain_function_template, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %lldd_abort_task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lldd_abort_task, align 4
  %call23 = tail call i32 %18(ptr noundef %task) #7
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #7
  %19 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %task_state_flags, align 4
  %and39 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp ne i32 %and39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp42 = icmp eq i32 %call23, 0
  %or.cond81 = select i1 %tobool40.not, i1 true, i1 %cmp42
  br i1 %or.cond81, label %if.then44, label %do.end49

if.then44:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call33) #7
  br label %out

do.end49:                                         ; preds = %if.end20
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.22, ptr noundef %task) #11
  %21 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %task_state_flags, align 4
  %and53 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then55, label %do.end49.if.end58_crit_edge

do.end49.if.end58_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then55:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  %and57 = and i32 %22, -5
  %23 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and57, ptr %task_state_flags, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %do.end49.if.end58_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call33) #7
  br label %cleanup

out:                                              ; preds = %if.then44, %if.then17, %if.then
  tail call void @sas_free_task(ptr noundef %task) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_std_sched_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_dev_classify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_unregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @async_schedule_node_domain(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_port_error_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !68, !69, !70, !72, !74, !75, !76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 268, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sas_get_ata_info.__UNIQUE_ID_ddebug292, !1, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 556, i32 3}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sas_ata_init._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @sas_ata_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 564, i32 3}
!14 = !{ptr @sas_ata_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sas_ata_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__func__.sas_probe_sata, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 648, i32 24}
!18 = !{ptr @__func__.sas_suspend_sata, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 688, i32 28}
!20 = !{ptr @__func__.sas_resume_sata, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 710, i32 28}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 810, i32 19}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 810, i32 39}
!26 = !{ptr @__ksymtab_sas_ata_schedule_reset, !27, !"__ksymtab_sas_ata_schedule_reset", i1 false, i1 false}
!27 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 847, i32 1}
!28 = !{ptr @sas_sata_ops, !29, !"sas_sata_ops", i1 false, i1 false}
!29 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 521, i32 35}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 223, i32 3}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sas_ata_qc_issue.__UNIQUE_ID_ddebug291, !31, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!34 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 135, i32 4}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sas_ata_task_done._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @sas_ata_task_done._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 59, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sas_to_ata_err._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @sas_to_ata_err._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 384, i32 35}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 395, i32 18}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 395, i32 33}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 417, i32 3}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sas_ata_internal_abort.__UNIQUE_ID_ddebug293, !52, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!55 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 437, i32 2}
!58 = !{ptr @sas_ata_internal_abort._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @sas_ata_internal_abort._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @sata_port_info, !61, !"sata_port_info", i1 false, i1 false}
!61 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 537, i32 29}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/libsas/sas_internal.h", i32 112, i32 2}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sas_fail_probe._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @sas_fail_probe._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 738, i32 34}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/libsas/sas_ata.c", i32 361, i32 6}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sas_ata_printk._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @sas_ata_printk._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 2148207729, i64 2148207734, i64 2148207747, i64 2148207791, i64 2148207825, i64 2148207846}
!87 = !{i64 2148718771, i64 2148718803, i64 2148718832, i64 2148718866, i64 2148718897, i64 2148718920}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 2148806796}
!91 = !{i64 2148721236, i64 2148721268, i64 2148721297, i64 2148721331, i64 2148721362, i64 2148721385}
!92 = !{i64 2149989220}
!93 = !{!"auto-init"}
