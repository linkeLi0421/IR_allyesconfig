; ModuleID = '/llk/IR_all_yes/drivers/scsi/pcmcia/nsp_cs.c_pt.bc'
source_filename = "../drivers/scsi/pcmcia/nsp_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct._nsp_hw_data = type { i32, i32, i32, i32, i32, i8, i8, i32, i32, ptr, i32, [20 x i8], i32, [8 x %struct._sync_data], [110 x i8], %struct.spinlock, ptr }
%struct._sync_data = type { i32, i32, i32, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nsp_sync_table = type { i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_info_t = type { ptr, ptr, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.__va_list = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author287 = internal constant [55 x i8] c"author=YOKOTA Hiroshi <yokota@netlab.is.tsukuba.ac.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [88 x i8] c"description=WorkBit NinjaSCSI-3 / NinjaSCSI-32Bi(16bit) PCMCIA SCSI host adapter module\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 128
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nsp_burst_mode = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_nsp_burst_mode = internal constant %struct.kernel_param { ptr @___asan_gen_.64, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nsp_burst_mode } }, section "__param", align 4
@__UNIQUE_ID_nsp_burst_modetype290 = internal constant [28 x i8] c"parmtype=nsp_burst_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nsp_burst_mode291 = internal constant [74 x i8] c"parm=nsp_burst_mode:Burst transfer mode (0=io8, 1=io32, 2=mem32(default))\00", section ".modinfo", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@free_ports = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_free_ports = internal constant %struct.kernel_param { ptr @___asan_gen_.67, ptr @__this_module, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @free_ports } }, section "__param", align 4
@__UNIQUE_ID_free_portstype292 = internal constant [25 x i8] c"parmtype=free_ports:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_free_ports293 = internal constant [73 x i8] c"parm=free_ports:Release IO ports after configuration? (default: 0 (=no))\00", section ".modinfo", align 1
@nsp_cs_ids = internal constant [8 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1417570012, i32 224633853, i32 1373503546, i32 0], [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1397490364, i32 1375765512, i32 1373503546, i32 0], [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1397490364, i32 -888547918, i32 1373503546, i32 0], [4 x ptr] [ptr @.str.3, ptr @.str.5, ptr @.str.2, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1397490364, i32 -1139874524, i32 1373503546, i32 0], [4 x ptr] [ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1397490364, i32 577400967, i32 1373503546, i32 0], [4 x ptr] [ptr @.str.3, ptr @.str.7, ptr @.str.2, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -944078753, i32 -37238403, i32 1769173262, i32 0], [4 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 672732184, i32 -1223734519, i32 1373503546, i32 0], [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IO DATA\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CBSC16       \00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KME    \00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCSI-CARD-001\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCSI-CARD-002\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCSI-CARD-003\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCSI-CARD-004\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WBT\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NinjaSCSI-3\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"R1.0\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WORKBIT\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UltraNinja-16\00", [18 x i8] zeroinitializer }, align 32
@nsp_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str.13, ptr @nsp_cs_probe, ptr @nsp_cs_detach, ptr @nsp_cs_suspend, ptr @nsp_cs_resume, ptr @__this_module, ptr @nsp_cs_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nsp_cs\00", [25 x i8] zeroinitializer }, align 32
@nsp_data_base = internal global { %struct._nsp_hw_data, [64 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@nsp_driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @nsp_queuecommand, ptr null, ptr null, ptr @.str.35, ptr @nsp_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsp_eh_bus_reset, ptr @nsp_eh_host_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsp_show_info, ptr null, ptr null, ptr null, ptr null, ptr @.str.13, ptr null, i32 1, i32 7, i16 128, i16 0, i32 0, i32 0, i32 4095, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bus reset (power off?)\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"CurrentSC==NULL irq_status=0x%x phase=0x%x irq_phase=0x%x this can't be happen. reset everything\00", [63 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"unexpected bus free. irq_status=0x%x, phase=0x%x, irq_phase=0x%x\00", [63 x i8] zeroinitializer }, align 32
@nsp_cs_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%snsp_cs: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nsp_cs_message\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/pcmcia/nsp_cs.c\00", [35 x i8] zeroinitializer }, align 32
@nsp_cs_message._entry_ptr = internal global ptr @nsp_cs_message._entry, section ".printk_index", align 4
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"XXX: reselect ID must be %d in this implementation.\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reselect<SEL>\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" %s signal off timeout\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pio write timeout resid=0x%x\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"pio read timeout resid=%d this_residual=%d buffers_residual=%d\00", [33 x i8] zeroinitializer }, align 32
@nsp_sync_table_20M = internal constant { [4 x %struct.nsp_sync_table], [32 x i8] } { [4 x %struct.nsp_sync_table] [%struct.nsp_sync_table { i32 25, i32 25, i32 1, i32 0 }, %struct.nsp_sync_table { i32 26, i32 37, i32 2, i32 0 }, %struct.nsp_sync_table { i32 38, i32 50, i32 3, i32 1 }, %struct.nsp_sync_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nsp_sync_table_40M = internal constant { [5 x %struct.nsp_sync_table], [48 x i8] } { [5 x %struct.nsp_sync_table] [%struct.nsp_sync_table { i32 12, i32 12, i32 1, i32 0 }, %struct.nsp_sync_table { i32 25, i32 25, i32 3, i32 1 }, %struct.nsp_sync_table { i32 26, i32 37, i32 5, i32 2 }, %struct.nsp_sync_table { i32 38, i32 50, i32 7, i32 3 }, %struct.nsp_sync_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msgout: xfer short\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xfer<ack>\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msgin<REQ>\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"terminator power on\00", [44 x i8] zeroinitializer }, align 32
@nsp_detect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&(data->Lock)\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"NinjaSCSI-3/32Bi Driver $Revision: 1.23 $ IO:0x%04lx-0x%04lx MMIO(virt addr):0x%04lx IRQ:%02d\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WorkBit NinjaSCSI-3/32Bi(16bit)\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CurrentSC!=NULL this can't be happen\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"NinjaSCSI status\0A\0ADriver version:        $Revision: 1.23 $\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SCSI host No.:         %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IRQ:                   %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"IO:                    0x%lx-0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MMIO(virtual address): 0x%lx-0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sg_tablesize:          %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"burst transfer mode:   \00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"io8\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"io32\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mem32\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CurrentSC:             0x%p\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SDTR status\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"id %d: \00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"----- NinjaSCSI-3 host adapter\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" sync\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" none\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"?????\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" transfer %d.%dMB/s, offset %d\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unexpected card release call.\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clear SDTR status\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reset host and bus\00", [45 x i8] zeroinitializer }, align 32
@switch.table.nsp_show_info = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46], [20 x i8] zeroinitializer }, align 32
@switch.table.nsp_show_info.60 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.54, ptr @.str.52, ptr @.str.53], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.61 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 16, i64 32]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 16, i64 32]
@___asan_gen_.64 = private constant [15 x i8] c"nsp_burst_mode\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 65, i32 18 }
@___asan_gen_.67 = private constant [11 x i8] c"free_ports\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 70, i32 19 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1722, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1723, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1724, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1725, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1726, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1727, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1728, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"nsp_driver\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1733, i32 29 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1735, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"nsp_data_base\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 89, i32 20 }
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"nsp_driver_template\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 74, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1026, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1042, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1147, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 147, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 669, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 672, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 530, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 895, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 799, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [19 x i8] c"nsp_sync_table_20M\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 430, i32 30 }
@___asan_gen_.166 = private unnamed_addr constant [19 x i8] c"nsp_sync_table_40M\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 422, i32 30 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 69, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 605, i32 40 }
@___asan_gen_.176 = private unnamed_addr constant [37 x i8] c"../drivers/scsi/pcmcia/nsp_message.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 36, i32 40 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 335, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1334, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1338, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 77, i32 13 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 200, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1371, i32 14 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1373, i32 16 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1374, i32 16 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1375, i32 16 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1376, i32 16 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1377, i32 16 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1379, i32 14 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1382, i32 15 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1385, i32 15 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1388, i32 15 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1391, i32 15 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1398, i32 16 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1401, i32 14 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1404, i32 17 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1407, i32 16 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1413, i32 16 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1416, i32 16 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1419, i32 16 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1422, i32 16 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1429, i32 18 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1653, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1685, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private constant [32 x i8] c"../drivers/scsi/pcmcia/nsp_cs.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1707, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [27 x i8] c"switch.table.nsp_show_info\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [30 x i8] c"switch.table.nsp_show_info.60\00", align 1
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_free_ports293, ptr @__UNIQUE_ID_free_portstype292, ptr @__UNIQUE_ID_license289, ptr @__UNIQUE_ID_nsp_burst_mode291, ptr @__UNIQUE_ID_nsp_burst_modetype290, ptr @__param_free_ports, ptr @__param_nsp_burst_mode, ptr @nsp_cs_message._entry, ptr @nsp_cs_message._entry_ptr, ptr @nsp_burst_mode, ptr @free_ports, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @nsp_driver, ptr @.str.13, ptr @nsp_data_base, ptr @nsp_driver_template, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @nsp_sync_table_20M, ptr @nsp_sync_table_40M, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @nsp_detect.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @switch.table.nsp_show_info, ptr @switch.table.nsp_show_info.60], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_burst_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_ports to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_data_base to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_cs_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_sync_table_20M to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_sync_table_40M to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_detect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nsp_show_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nsp_show_info.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@__mod_pcmcia__nsp_cs_ids_device_table = dso_local alias [8 x %struct.pcmcia_device_id], ptr @nsp_cs_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @nsp_driver) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @nsp_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_cs_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %link, ptr %call7.i.i, align 8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 8
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct._nsp_hw_data, ptr @nsp_data_base, i32 0, i32 16), align 4
  %config_flags.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %3 = ptrtoint ptr %config_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %config_flags.i, align 4
  %or.i = or i32 %4, 7937
  store i32 %or.i, ptr %config_flags.i, align 4
  %call.i = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @nsp_cs_config_check, ptr noundef nonnull @nsp_data_base) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cs_failed.i_crit_edge

if.end.cs_failed.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cs_failed.i

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @pcmcia_request_irq(ptr noundef %link, ptr noundef nonnull @nspintr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cs_failed.i_crit_edge

if.end.i.cs_failed.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cs_failed.i

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @pcmcia_enable_device(ptr noundef %link) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.cs_failed.i_crit_edge

if.end4.i.cs_failed.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cs_failed.i

if.end8.i:                                        ; preds = %if.end4.i
  %5 = load i8, ptr @free_ports, align 1, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not.i = icmp eq i8 %5, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end30.i_crit_edge, label %if.then10.i

if.end8.i.if.end30.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

if.then10.i:                                      ; preds = %if.end8.i
  %resource.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %6 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resource.i, align 4
  %tobool11.not.i = icmp eq ptr %7, null
  br i1 %tobool11.not.i, label %if.then10.i.if.end18.i_crit_edge, label %if.then12.i

if.then10.i.if.end18.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %9
  %add.i.i = add i32 %sub.i.i, %11
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %9, i32 noundef %add.i.i) #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then12.i, %if.then10.i.if.end18.i_crit_edge
  %arrayidx20.i = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx20.i, align 4
  %tobool21.not.i = icmp eq ptr %13, null
  br i1 %tobool21.not.i, label %if.end18.i.if.end30.i_crit_edge, label %if.then22.i

if.end18.i.if.end30.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %end.i76.i = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %end.i76.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i76.i, align 4
  %sub.i77.i = sub i32 1, %15
  %add.i78.i = add i32 %sub.i77.i, %17
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %15, i32 noundef %add.i78.i) #12
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then22.i, %if.end18.i.if.end30.i_crit_edge, %if.end8.i.if.end30.i_crit_edge
  %resource31.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %18 = ptrtoint ptr %resource31.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resource31.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  store i32 %21, ptr @nsp_data_base, align 4
  %end.i79.i = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %end.i79.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end.i79.i, align 4
  %24 = load i32, ptr %19, align 4
  %sub.i80.i = add i32 %23, 1
  %add.i81.i = sub i32 %sub.i80.i, %24
  store i32 %add.i81.i, ptr getelementptr inbounds (%struct._nsp_hw_data, ptr @nsp_data_base, i32 0, i32 1), align 4
  %irq.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %25 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq.i, align 8
  store i32 %26, ptr getelementptr inbounds (%struct._nsp_hw_data, ptr @nsp_data_base, i32 0, i32 2), align 4
  tail call fastcc void @nsphw_init(ptr noundef nonnull @nsp_data_base) #12
  %call.i.i = tail call ptr @scsi_host_alloc(ptr noundef nonnull @nsp_driver_template, i32 noundef 352) #12
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %if.end30.i.cs_failed.i_crit_edge, label %if.end43.i

if.end30.i.cs_failed.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cs_failed.i

if.end43.i:                                       ; preds = %if.end30.i
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 0, i32 53
  %27 = call ptr @memcpy(ptr %hostdata.i.i, ptr @nsp_data_base, i32 352)
  %ScsiInfo.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 13, i32 13, i32 1, i32 3
  %28 = ptrtoint ptr %ScsiInfo.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ScsiInfo.i.i, align 4
  %host3.i.i = getelementptr inbounds %struct.scsi_info_t, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %host3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i, ptr %host3.i.i, align 4
  %31 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hostdata.i.i, align 4
  %unique_id.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 0, i32 23
  %33 = ptrtoint ptr %unique_id.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %unique_id.i.i, align 8
  %io_port.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 0, i32 44
  %34 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %io_port.i.i, align 8
  %NumAddress.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %NumAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %NumAddress.i.i, align 4
  %conv.i.i = trunc i32 %36 to i8
  %n_io_port.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 0, i32 45
  %37 = ptrtoint ptr %n_io_port.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i.i, ptr %n_io_port.i.i, align 4
  %IrqNumber.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 1
  %38 = ptrtoint ptr %IrqNumber.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %IrqNumber.i.i, align 4
  %irq.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 0, i32 47
  %40 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %irq.i.i, align 8
  %MmioAddress.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 1, i32 1
  %41 = ptrtoint ptr %MmioAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %MmioAddress.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 0, i32 43
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %base.i.i, align 4
  %Lock.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 13, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %Lock.i.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @nsp_detect.__key, i16 noundef signext 3) #12
  %nspinfo.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 10, i32 0, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_port.i.i, align 8
  %46 = ptrtoint ptr %n_io_port.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %n_io_port.i.i, align 4
  %conv10.i.i = zext i8 %47 to i32
  %add.i82.i = add i32 %45, -1
  %sub.i83.i = add i32 %add.i82.i, %conv10.i.i
  %48 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %base.i.i, align 4
  %50 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq.i.i, align 8
  %call13.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %nspinfo.i.i, i32 noundef 110, ptr noundef nonnull @.str.34, i32 noundef %45, i32 noundef %sub.i83.i, i32 noundef %49, i32 noundef %51) #12
  store ptr %nspinfo.i.i, ptr getelementptr inbounds (%struct.scsi_host_template, ptr @nsp_driver_template, i32 0, i32 4), align 8
  %call.i84.i = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call.i.i, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i)
  %tobool45.not.i = icmp eq i32 %call.i84.i, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %if.end43.i.cs_failed.i_crit_edge

if.end43.i.cs_failed.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cs_failed.i

if.end47.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_scan_host(ptr noundef nonnull %call.i.i) #12
  %host48.i = getelementptr inbounds %struct.scsi_info_t, ptr %call7.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %host48.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i.i, ptr %host48.i, align 4
  br label %cleanup

cs_failed.i:                                      ; preds = %if.end43.i.cs_failed.i_crit_edge, %if.end30.i.cs_failed.i_crit_edge, %if.end4.i.cs_failed.i_crit_edge, %if.end.i.cs_failed.i_crit_edge, %if.end.cs_failed.i_crit_edge
  tail call fastcc void @nsp_cs_release(ptr noundef %link) #12
  br label %cleanup

cleanup:                                          ; preds = %cs_failed.i, %if.end47.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -19, %cs_failed.i ], [ 0, %if.end47.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsp_cs_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %stop = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %stop, align 4
  tail call fastcc void @nsp_cs_release(ptr noundef %link)
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  tail call void @kfree(ptr noundef %4) #12
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %priv, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_cs_suspend(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %host = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.58)
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %arrayidx.i = getelementptr %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %6 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 128)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stop = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %stop, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_cs_resume(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %stop = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %stop, align 4
  %host = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.59)
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 53
  tail call fastcc void @nsphw_init(ptr noundef %hostdata)
  tail call fastcc void @nsp_bus_reset(ptr noundef %hostdata)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_cs_config_check(ptr noundef %p_dev, ptr nocapture noundef writeonly %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 12
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.next_entry_crit_edge

if.end.next_entry_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_entry

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %sub.i = add i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %7)
  %tobool.not = icmp eq i32 %sub.i, %7
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  %flags = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 3
  store i32 %or, ptr %flags, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %end = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %13)
  %cmp10 = icmp ult i32 %13, 4096
  br i1 %cmp10, label %if.then11, label %if.then5.if.end15_crit_edge

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4096, ptr %end, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then5.if.end15_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call18 = tail call i32 @pcmcia_request_window(ptr noundef %p_dev, ptr noundef %16, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end21, label %if.end15.next_entry_crit_edge

if.end15.next_entry_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_entry

if.end21:                                         ; preds = %if.end15
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %card_addr = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 8
  %19 = ptrtoint ptr %card_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %card_addr, align 4
  %call24 = tail call i32 @pcmcia_map_mem_page(ptr noundef %p_dev, ptr noundef %18, i32 noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end27, label %if.end21.next_entry_crit_edge

if.end21.next_entry_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_entry

if.end27:                                         ; preds = %if.end21
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %end.i58 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %end.i58 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i58, align 4
  %sub.i59 = sub i32 1, %24
  %add.i60 = add i32 %sub.i59, %26
  %call33 = tail call ptr @ioremap(i32 noundef %24, i32 noundef %add.i60) #12
  %27 = ptrtoint ptr %call33 to i32
  %MmioAddress = getelementptr inbounds %struct._nsp_hw_data, ptr %priv_data, i32 0, i32 3
  %28 = ptrtoint ptr %MmioAddress to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %MmioAddress, align 4
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %if.end27.next_entry_crit_edge, label %if.end37

if.end27.next_entry_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_entry

if.end37:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %end.i61 = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %end.i61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.i61, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 4
  %sub.i62 = add i32 %32, 1
  %add.i63 = sub i32 %sub.i62, %34
  %MmioLength = getelementptr inbounds %struct._nsp_hw_data, ptr %priv_data, i32 0, i32 4
  %35 = ptrtoint ptr %MmioLength to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add.i63, ptr %MmioLength, align 4
  br label %cleanup

next_entry:                                       ; preds = %if.end27.next_entry_crit_edge, %if.end21.next_entry_crit_edge, %if.end15.next_entry_crit_edge, %if.end.next_entry_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %p_dev) #12
  br label %cleanup

cleanup:                                          ; preds = %next_entry, %if.end37, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %next_entry ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end37 ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nspintr(i32 noundef %irq, ptr noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %dev_id, null
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %host = getelementptr inbounds %struct.scsi_info_t, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hostdata, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @arm_heavy_mb() #12
  %and.i = and i32 %3, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -16) #12, !srcloc !156
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp3 = icmp eq i8 %5, -1
  br i1 %cmp3, label %if.then.if.then8_crit_edge, label %lor.lhs.false

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.then
  %and = and i32 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %lor.lhs.false.if.then8_crit_edge, label %if.end9

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.then.if.then8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 0) #12, !srcloc !156
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  %add.i = add i32 %3, 2
  %and.i501 = and i32 %add.i, 1048575
  %add1.i502 = or i32 %and.i501, -18874368
  %6 = inttoptr i32 %add1.i502 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 25) #12, !srcloc !156
  %add2.i = add i32 %3, 3
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %7 = inttoptr i32 %add4.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %and12 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 0
  br i1 %cmp13.not, label %if.end9.if.end18_crit_edge, label %if.then15

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 22) #12, !srcloc !156
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %phi.cast = zext i8 %9 to i32
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end9.if.end18_crit_edge
  %irq_phase.0 = phi i32 [ %phi.cast, %if.then15 ], [ 0, %if.end9.if.end18_crit_edge ]
  %TimerCount = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3
  %10 = ptrtoint ptr %TimerCount to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %TimerCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp19.not = icmp eq i32 %11, 0
  br i1 %cmp19.not, label %if.end18.if.end23_crit_edge, label %if.then21

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 23) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 23) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #12, !srcloc !156
  %12 = ptrtoint ptr %TimerCount to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %TimerCount, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp26 = icmp eq i32 %and, 4
  br i1 %cmp26, label %land.lhs.true28, label %if.end23.if.end32_crit_edge

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true28:                                  ; preds = %if.end23
  %SelectionTimeOut = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %SelectionTimeOut to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %SelectionTimeOut, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp29 = icmp eq i32 %14, 0
  br i1 %cmp29, label %if.then31, label %land.lhs.true28.if.end32_crit_edge

land.lhs.true28.if.end32_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then31:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 4) #12, !srcloc !156
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true28.if.end32_crit_edge, %if.end23.if.end32_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 12) #12, !srcloc !156
  %and37 = and i32 %irq_phase.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %or.cond = select i1 %cmp13.not, i1 true, i1 %tobool38.not
  br i1 %or.cond, label %if.end52, label %if.then39

if.then39:                                        ; preds = %if.end32
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16)
  tail call fastcc void @nsphw_init(ptr noundef %hostdata)
  tail call fastcc void @nsp_bus_reset(ptr noundef %hostdata)
  %CurrentSC = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %CurrentSC to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %CurrentSC, align 4
  %cmp42.not = icmp eq ptr %16, null
  br i1 %cmp42.not, label %if.then39.cleanup_crit_edge, label %if.then44

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %Message = getelementptr inbounds %struct.scsi_cmnd, ptr %16, i32 0, i32 22, i32 6
  %17 = ptrtoint ptr %Message to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %Message, align 4
  %and46 = shl i32 %18, 8
  %shl = and i32 %and46, 65280
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %16, i32 0, i32 22, i32 5
  %19 = ptrtoint ptr %Status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %Status, align 4
  %and48 = and i32 %20, 255
  %or = or i32 %and48, %shl
  %or50 = or i32 %or, 524288
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %16, i32 0, i32 24
  %21 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or50, ptr %result, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %16, i32 0, i32 1
  %22 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %CurrentSC.i = getelementptr inbounds %struct.Scsi_Host, ptr %25, i32 1, i32 3, i32 0, i32 0, i32 2
  %26 = ptrtoint ptr %CurrentSC.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %CurrentSC.i, align 4
  tail call void @scsi_done(ptr noundef nonnull %16) #12
  br label %cleanup

if.end52:                                         ; preds = %if.end32
  %CurrentSC53 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %CurrentSC53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %CurrentSC53, align 4
  %cmp54 = icmp eq ptr %28, null
  br i1 %cmp54, label %if.then56, label %if.end62

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %conv58 = zext i8 %8 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv58, i32 noundef %irq_phase.0)
  tail call fastcc void @nsphw_init(ptr noundef %hostdata)
  tail call fastcc void @nsp_bus_reset(ptr noundef %hostdata)
  br label %cleanup

if.end62:                                         ; preds = %if.end52
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 8
  %lun66 = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 18
  %33 = ptrtoint ptr %lun66 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %lun66, align 8
  %conv67 = trunc i64 %34 to i8
  %Sync = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %idxprom = and i32 %32, 255
  %arrayidx = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %idxprom
  br i1 %cmp13.not, label %if.end62.if.end88_crit_edge, label %if.then71

if.end62.if.end88_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then71:                                        ; preds = %if.end62
  %and73 = and i32 %irq_phase.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end81, label %if.then75

if.then75:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 1) #12, !srcloc !156
  tail call fastcc void @nsp_reselected(ptr noundef nonnull %28)
  br label %cleanup

if.end81:                                         ; preds = %if.then71
  %and83 = and i32 %irq_phase.0, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %cmp84 = icmp eq i32 %and83, 0
  br i1 %cmp84, label %if.end81.cleanup_crit_edge, label %if.end81.if.end88_crit_edge

if.end81.if.end88_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end88:                                         ; preds = %if.end81.if.end88_crit_edge, %if.end62.if.end88_crit_edge
  %phase90 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22, i32 9
  %35 = ptrtoint ptr %phase90 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %phase90, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %if.end88.sw.default_crit_edge [
    i32 2, label %sw.bb
    i32 10, label %sw.bb108
  ]

if.end88.sw.default_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

sw.bb:                                            ; preds = %if.end88
  %38 = and i8 %8, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp93 = icmp eq i8 %38, 0
  %SelectionTimeOut96 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 1
  br i1 %cmp93, label %if.then95, label %if.end104

if.then95:                                        ; preds = %sw.bb
  %39 = ptrtoint ptr %SelectionTimeOut96 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %SelectionTimeOut96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %40)
  %cmp97 = icmp sgt i32 %40, 199
  br i1 %cmp97, label %if.then99, label %if.end102

if.then99:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %SelectionTimeOut96 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %SelectionTimeOut96, align 4
  tail call fastcc void @nsp_index_write(i32 noundef %3, i32 noundef 24, i8 noundef zeroext 0)
  %result101 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %42 = ptrtoint ptr %result101 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 196608, ptr %result101, align 4
  %43 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %CurrentSC.i526 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 1, i32 3, i32 0, i32 0, i32 2
  %47 = ptrtoint ptr %CurrentSC.i526 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %CurrentSC.i526, align 4
  tail call void @scsi_done(ptr noundef nonnull %28) #12
  br label %cleanup

if.end102:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  %add = add nsw i32 %40, 1
  %48 = ptrtoint ptr %SelectionTimeOut96 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add, ptr %SelectionTimeOut96, align 4
  tail call fastcc void @nsp_start_timer(ptr noundef nonnull %28, i32 noundef 19)
  br label %cleanup

if.end104:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %SelectionTimeOut96 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %SelectionTimeOut96, align 4
  %50 = ptrtoint ptr %phase90 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 3, ptr %phase90, align 4
  tail call fastcc void @nsp_index_write(i32 noundef %3, i32 noundef 24, i8 noundef zeroext 8)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #12
  tail call fastcc void @nsp_index_write(i32 noundef %3, i32 noundef 24, i8 noundef zeroext -56)
  br label %cleanup

sw.bb108:                                         ; preds = %if.end88
  %52 = and i8 %8, 71
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %52)
  %cmp111.not = icmp eq i8 %52, 7
  br i1 %cmp111.not, label %sw.bb108.sw.default_crit_edge, label %if.then113

sw.bb108.sw.default_crit_edge:                    ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

if.then113:                                       ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #14
  %result114 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %53 = ptrtoint ptr %result114 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 327680, ptr %result114, align 4
  %54 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %30, align 8
  %CurrentSC.i528 = getelementptr inbounds %struct.Scsi_Host, ptr %55, i32 1, i32 3, i32 0, i32 0, i32 2
  %56 = ptrtoint ptr %CurrentSC.i528 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %CurrentSC.i528, align 4
  tail call void @scsi_done(ptr noundef nonnull %28) #12
  br label %cleanup

sw.default:                                       ; preds = %sw.bb108.sw.default_crit_edge, %if.end88.sw.default_crit_edge
  %and117 = and i32 %conv, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %cmp118 = icmp eq i32 %and117, 0
  br i1 %cmp118, label %sw.default.cleanup_crit_edge, label %sw.epilog

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.default
  %57 = ptrtoint ptr %phase90 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %phase90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %58)
  %cmp124 = icmp eq i32 %58, 7
  br i1 %cmp124, label %land.lhs.true131, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %sw.epilog
  %59 = ptrtoint ptr %phase90 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %phase90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %60)
  %cmp129 = icmp ne i32 %60, 8
  %and133 = and i32 %irq_phase.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %cmp134.not = icmp eq i32 %and133, 0
  %or.cond496 = select i1 %cmp129, i1 true, i1 %cmp134.not
  br i1 %or.cond496, label %lor.lhs.false126.if.end154_crit_edge, label %lor.lhs.false126.if.then136_crit_edge

lor.lhs.false126.if.then136_crit_edge:            ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then136

lor.lhs.false126.if.end154_crit_edge:             ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

land.lhs.true131:                                 ; preds = %sw.epilog
  %and133.old = and i32 %irq_phase.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.old)
  %cmp134.not.old = icmp eq i32 %and133.old, 0
  br i1 %cmp134.not.old, label %land.lhs.true131.if.end154_crit_edge, label %land.lhs.true131.if.then136_crit_edge

land.lhs.true131.if.then136_crit_edge:            ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then136

land.lhs.true131.if.end154_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

if.then136:                                       ; preds = %land.lhs.true131.if.then136_crit_edge, %lor.lhs.false126.if.then136_crit_edge
  %Message138 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22, i32 6
  %61 = ptrtoint ptr %Message138 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %Message138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp139 = icmp eq i32 %62, 0
  br i1 %cmp139, label %if.then141, label %if.then136.cleanup_crit_edge

if.then136.cleanup_crit_edge:                     ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then141:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %Message138 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %Message138, align 4
  %and144 = shl i32 %64, 8
  %shl145 = and i32 %and144, 65280
  %Status148 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22, i32 5
  %65 = ptrtoint ptr %Status148 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %Status148, align 4
  %and149 = and i32 %66, 255
  %or151 = or i32 %shl145, %and149
  %result152 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %67 = ptrtoint ptr %result152 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or151, ptr %result152, align 4
  %68 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %30, align 8
  %CurrentSC.i530 = getelementptr inbounds %struct.Scsi_Host, ptr %69, i32 1, i32 3, i32 0, i32 0, i32 2
  %70 = ptrtoint ptr %CurrentSC.i530 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %CurrentSC.i530, align 4
  tail call void @scsi_done(ptr noundef nonnull %28) #12
  br label %cleanup

if.end154:                                        ; preds = %land.lhs.true131.if.end154_crit_edge, %lor.lhs.false126.if.end154_crit_edge
  %conv155 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp156 = icmp eq i8 %8, 0
  br i1 %cmp156, label %if.then158, label %if.end163

if.then158:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef 0, i32 noundef %irq_phase.0)
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %arrayidx, align 4
  %result162 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %72 = ptrtoint ptr %result162 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 458752, ptr %result162, align 4
  %73 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %CurrentSC.i532 = getelementptr inbounds %struct.Scsi_Host, ptr %76, i32 1, i32 3, i32 0, i32 0, i32 2
  %77 = ptrtoint ptr %CurrentSC.i532 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %CurrentSC.i532, align 4
  tail call void @scsi_done(ptr noundef nonnull %28) #12
  br label %cleanup

if.end163:                                        ; preds = %if.end154
  %and165 = and i32 %conv155, 71
  %78 = zext i32 %and165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %and165, label %if.end163.cleanup_crit_edge [
    i32 4, label %sw.bb166
    i32 0, label %sw.bb180
    i32 2, label %sw.bb184
    i32 6, label %sw.bb189
    i32 5, label %sw.bb197
    i32 7, label %sw.bb239
  ]

if.end163.cleanup_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb166:                                         ; preds = %if.end163
  %and168 = and i32 %conv155, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %cmp169 = icmp eq i32 %and168, 0
  br i1 %cmp169, label %sw.bb166.cleanup_crit_edge, label %if.end172

sw.bb166.cleanup_crit_edge:                       ; preds = %sw.bb166
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end172:                                        ; preds = %sw.bb166
  %79 = ptrtoint ptr %phase90 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 4, ptr %phase90, align 4
  tail call fastcc void @nsp_nexus(ptr noundef nonnull %28)
  tail call fastcc void @nsp_index_write(i32 noundef %3, i32 noundef 28, i8 noundef zeroext 1)
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 14
  %80 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp177536.not = icmp eq i16 %81, 0
  br i1 %cmp177536.not, label %if.end172.for.end_crit_edge, label %for.body.lr.ph

if.end172.for.end_crit_edge:                      ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end172
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0537 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %82 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cmnd, align 4
  %arrayidx179 = getelementptr i8, ptr %83, i32 %i.0537
  %84 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx179, align 1
  tail call fastcc void @nsp_index_write(i32 noundef %3, i32 noundef 29, i8 noundef zeroext %85)
  %inc = add nuw nsw i32 %i.0537, 1
  %86 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %cmd_len, align 4
  %conv176 = zext i16 %87 to i32
  %cmp177 = icmp ult i32 %inc, %conv176
  br i1 %cmp177, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end172.for.end_crit_edge
  tail call fastcc void @nsp_index_write(i32 noundef %3, i32 noundef 28, i8 noundef zeroext 3)
  br label %cleanup

sw.bb180:                                         ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %phase90 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 5, ptr %phase90, align 4
  %have_data_in = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22, i32 7
  %89 = ptrtoint ptr %have_data_in to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 2, ptr %have_data_in, align 4
  tail call fastcc void @nsp_pio_write(ptr noundef nonnull %28)
  br label %cleanup

sw.bb184:                                         ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %phase90 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 5, ptr %phase90, align 4
  %have_data_in188 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22, i32 7
  %91 = ptrtoint ptr %have_data_in188 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 1, ptr %have_data_in188, align 4
  tail call fastcc void @nsp_pio_read(ptr noundef nonnull %28)
  br label %cleanup

sw.bb189:                                         ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nsp_dataphase_bypass(ptr noundef nonnull %28)
  %92 = ptrtoint ptr %phase90 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 6, ptr %phase90, align 4
  %call193 = tail call fastcc zeroext i8 @nsp_index_read(i32 noundef %3, i32 noundef 35)
  %conv194 = zext i8 %call193 to i32
  %Status196 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22, i32 5
  %93 = ptrtoint ptr %Status196 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 %conv194, ptr %Status196, align 4
  br label %cleanup

sw.bb197:                                         ; preds = %if.end163
  %and199 = and i32 %conv155, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %cmp200 = icmp eq i32 %and199, 0
  br i1 %cmp200, label %sw.bb197.timer_out_crit_edge, label %if.end203

sw.bb197.timer_out_crit_edge:                     ; preds = %sw.bb197
  call void @__sanitizer_cov_trace_pc() #14
  br label %timer_out

if.end203:                                        ; preds = %sw.bb197
  %94 = ptrtoint ptr %phase90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 8, ptr %phase90, align 4
  %MsgLen = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %95 = ptrtoint ptr %MsgLen to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %MsgLen, align 4
  %and207 = and i8 %conv67, 7
  %or208 = or i8 %and207, -64
  %MsgBuffer = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4
  %96 = ptrtoint ptr %MsgBuffer to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %or208, ptr %MsgBuffer, align 1
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp212 = icmp eq i32 %98, 0
  br i1 %cmp212, label %if.then214, label %if.end203.if.end236_crit_edge

if.end203.if.end236_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236

if.then214:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  %SyncPeriod = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %idxprom, i32 1
  %99 = ptrtoint ptr %SyncPeriod to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %SyncPeriod, align 4
  %SyncOffset = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %idxprom, i32 2
  %100 = ptrtoint ptr %SyncOffset to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %SyncOffset, align 4
  %arrayidx222 = getelementptr [20 x i8], ptr %MsgBuffer, i32 0, i32 1
  %101 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %arrayidx222, align 1
  %arrayidx225 = getelementptr [20 x i8], ptr %MsgBuffer, i32 0, i32 2
  %102 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 3, ptr %arrayidx225, align 1
  %arrayidx228 = getelementptr [20 x i8], ptr %MsgBuffer, i32 0, i32 3
  %103 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %arrayidx228, align 1
  %arrayidx231 = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %104 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 12, ptr %arrayidx231, align 1
  %arrayidx234 = getelementptr [20 x i8], ptr %MsgBuffer, i32 0, i32 5
  %105 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 15, ptr %arrayidx234, align 1
  br label %if.end236

if.end236:                                        ; preds = %if.then214, %if.end203.if.end236_crit_edge
  %i.1 = phi i32 [ 6, %if.then214 ], [ 1, %if.end203.if.end236_crit_edge ]
  %106 = ptrtoint ptr %MsgLen to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %i.1, ptr %MsgLen, align 4
  tail call fastcc void @nsp_analyze_sdtr(ptr noundef nonnull %28)
  tail call fastcc void @nsp_message_out(ptr noundef nonnull %28)
  br label %cleanup

sw.bb239:                                         ; preds = %if.end163
  tail call fastcc void @nsp_dataphase_bypass(ptr noundef nonnull %28)
  %and242 = and i32 %conv155, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %cmp243 = icmp eq i32 %and242, 0
  br i1 %cmp243, label %sw.bb239.timer_out_crit_edge, label %if.end246

sw.bb239.timer_out_crit_edge:                     ; preds = %sw.bb239
  call void @__sanitizer_cov_trace_pc() #14
  br label %timer_out

if.end246:                                        ; preds = %sw.bb239
  %107 = ptrtoint ptr %phase90 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile i32 7, ptr %phase90, align 4
  tail call fastcc void @nsp_message_in(ptr noundef nonnull %28)
  %108 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp249 = icmp eq i32 %109, 0
  br i1 %cmp249, label %if.then251, label %if.end246.if.end299_crit_edge

if.end246.if.end299_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end299

if.then251:                                       ; preds = %if.end246
  %MsgLen252 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %110 = ptrtoint ptr %MsgLen252 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %MsgLen252, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %111)
  %cmp253 = icmp sgt i32 %111, 4
  br i1 %cmp253, label %land.lhs.true255, label %if.then251.if.else288_crit_edge

if.then251.if.else288_crit_edge:                  ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else288

land.lhs.true255:                                 ; preds = %if.then251
  %MsgBuffer256 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4
  %112 = ptrtoint ptr %MsgBuffer256 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %MsgBuffer256, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %113)
  %cmp259 = icmp eq i8 %113, 1
  br i1 %cmp259, label %land.lhs.true261, label %land.lhs.true255.if.else288_crit_edge

land.lhs.true255.if.else288_crit_edge:            ; preds = %land.lhs.true255
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else288

land.lhs.true261:                                 ; preds = %land.lhs.true255
  %arrayidx263 = getelementptr [20 x i8], ptr %MsgBuffer256, i32 0, i32 1
  %114 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx263, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %115)
  %cmp265 = icmp eq i8 %115, 3
  br i1 %cmp265, label %land.lhs.true267, label %land.lhs.true261.if.else288_crit_edge

land.lhs.true261.if.else288_crit_edge:            ; preds = %land.lhs.true261
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else288

land.lhs.true267:                                 ; preds = %land.lhs.true261
  %arrayidx269 = getelementptr [20 x i8], ptr %MsgBuffer256, i32 0, i32 2
  %116 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx269, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %117)
  %cmp271 = icmp eq i8 %117, 1
  br i1 %cmp271, label %if.then273, label %land.lhs.true267.if.else288_crit_edge

land.lhs.true267.if.else288_crit_edge:            ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else288

if.then273:                                       ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx275 = getelementptr [20 x i8], ptr %MsgBuffer256, i32 0, i32 3
  %118 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx275, align 1
  %conv276 = zext i8 %119 to i32
  %SyncPeriod280 = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %idxprom, i32 1
  %120 = ptrtoint ptr %SyncPeriod280 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %conv276, ptr %SyncPeriod280, align 4
  %arrayidx282 = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %121 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx282, align 4
  %conv283 = zext i8 %122 to i32
  br label %if.end297

if.else288:                                       ; preds = %land.lhs.true267.if.else288_crit_edge, %land.lhs.true261.if.else288_crit_edge, %land.lhs.true255.if.else288_crit_edge, %if.then251.if.else288_crit_edge
  %SyncPeriod292 = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %idxprom, i32 1
  %123 = ptrtoint ptr %SyncPeriod292 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %SyncPeriod292, align 4
  br label %if.end297

if.end297:                                        ; preds = %if.else288, %if.then273
  %.sink = phi i32 [ 0, %if.else288 ], [ %conv283, %if.then273 ]
  %storemerge = phi i32 [ 2, %if.else288 ], [ 1, %if.then273 ]
  %SyncOffset296 = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %idxprom, i32 2
  %124 = ptrtoint ptr %SyncOffset296 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %.sink, ptr %SyncOffset296, align 4
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %storemerge, ptr %arrayidx, align 4
  tail call fastcc void @nsp_analyze_sdtr(ptr noundef nonnull %28)
  br label %if.end299

if.end299:                                        ; preds = %if.end297, %if.end246.if.end299_crit_edge
  %MsgLen301 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %126 = ptrtoint ptr %MsgLen301 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %MsgLen301, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp302533 = icmp sgt i32 %127, 0
  br i1 %cmp302533, label %for.body304.lr.ph, label %if.end299.for.end323_crit_edge

if.end299.for.end323_crit_edge:                   ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end323

for.body304.lr.ph:                                ; preds = %if.end299
  %MsgBuffer305 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4
  br label %for.body304

for.body304:                                      ; preds = %for.inc321.for.body304_crit_edge, %for.body304.lr.ph
  %i.2534 = phi i32 [ 0, %for.body304.lr.ph ], [ %inc322, %for.inc321.for.body304_crit_edge ]
  %arrayidx306 = getelementptr [20 x i8], ptr %MsgBuffer305, i32 0, i32 %i.2534
  %128 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx306, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %129)
  %cmp311 = icmp eq i8 %129, 1
  br i1 %cmp311, label %if.then313, label %for.body304.for.inc321_crit_edge

for.body304.for.inc321_crit_edge:                 ; preds = %for.body304
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc321

if.then313:                                       ; preds = %for.body304
  call void @__sanitizer_cov_trace_pc() #14
  %add315 = add nsw i32 %i.2534, 1
  %arrayidx316 = getelementptr [20 x i8], ptr %MsgBuffer305, i32 0, i32 %add315
  %130 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx316, align 1
  %conv317 = zext i8 %131 to i32
  %add319 = add i32 %add315, %conv317
  br label %for.inc321

for.inc321:                                       ; preds = %if.then313, %for.body304.for.inc321_crit_edge
  %i.3 = phi i32 [ %add319, %if.then313 ], [ %i.2534, %for.body304.for.inc321_crit_edge ]
  %inc322 = add i32 %i.3, 1
  %cmp302 = icmp slt i32 %inc322, %127
  br i1 %cmp302, label %for.inc321.for.body304_crit_edge, label %for.cond300.for.end323_crit_edge

for.inc321.for.body304_crit_edge:                 ; preds = %for.inc321
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body304

for.cond300.for.end323_crit_edge:                 ; preds = %for.inc321
  call void @__sanitizer_cov_trace_pc() #14
  %conv307.le = zext i8 %129 to i32
  br label %for.end323

for.end323:                                       ; preds = %for.cond300.for.end323_crit_edge, %if.end299.for.end323_crit_edge
  %tmp.0.lcssa = phi i32 [ %conv307.le, %for.cond300.for.end323_crit_edge ], [ -1, %if.end299.for.end323_crit_edge ]
  %Message325 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 22, i32 6
  %132 = ptrtoint ptr %Message325 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile i32 %tmp.0.lcssa, ptr %Message325, align 4
  br label %cleanup

timer_out:                                        ; preds = %sw.bb239.timer_out_crit_edge, %sw.bb197.timer_out_crit_edge
  tail call fastcc void @nsp_start_timer(ptr noundef nonnull %28, i32 noundef 9)
  br label %cleanup

cleanup:                                          ; preds = %timer_out, %for.end323, %if.end236, %sw.bb189, %sw.bb184, %sw.bb180, %for.end, %sw.bb166.cleanup_crit_edge, %if.end163.cleanup_crit_edge, %if.then158, %if.then141, %if.then136.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.then113, %if.end104, %if.end102, %if.then99, %if.end81.cleanup_crit_edge, %if.then75, %if.then56, %if.then44, %if.then39.cleanup_crit_edge, %if.then31, %if.then8, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 1, %if.then31 ], [ 1, %if.then56 ], [ 1, %if.then75 ], [ 1, %if.then141 ], [ 1, %if.then158 ], [ 1, %timer_out ], [ 1, %if.then113 ], [ 1, %if.then99 ], [ 1, %if.end102 ], [ 1, %if.end104 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then44 ], [ 1, %if.then39.cleanup_crit_edge ], [ 1, %if.end81.cleanup_crit_edge ], [ 1, %sw.default.cleanup_crit_edge ], [ 1, %if.then136.cleanup_crit_edge ], [ 1, %sw.bb166.cleanup_crit_edge ], [ 1, %if.end163.cleanup_crit_edge ], [ 1, %for.end323 ], [ 1, %if.end236 ], [ 1, %sw.bb189 ], [ 1, %sw.bb184 ], [ 1, %sw.bb180 ], [ 1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsphw_init(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %ScsiClockDiv = getelementptr inbounds %struct._nsp_hw_data, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %ScsiClockDiv to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 6, ptr %ScsiClockDiv, align 4
  %CurrentSC = getelementptr inbounds %struct._nsp_hw_data, ptr %data, i32 0, i32 9
  %3 = ptrtoint ptr %CurrentSC to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %CurrentSC, align 4
  %FifoCount = getelementptr inbounds %struct._nsp_hw_data, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %FifoCount to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %FifoCount, align 4
  %TransferMode = getelementptr inbounds %struct._nsp_hw_data, ptr %data, i32 0, i32 6
  %5 = ptrtoint ptr %TransferMode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %TransferMode, align 1
  %arrayidx.i = getelementptr %struct._nsp_hw_data, ptr %data, i32 0, i32 13, i32 0
  %6 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 128)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @arm_heavy_mb() #12
  %and.i = and i32 %1, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -1) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @arm_heavy_mb() #12
  %add.i = add i32 %1, 1
  %and.i1 = and i32 %add.i, 1048575
  %add1.i2 = or i32 %and.i1, -18874368
  %8 = inttoptr i32 %add1.i2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 1) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  %add.i3 = add i32 %1, 2
  %and.i4 = and i32 %add.i3, 1048575
  %add1.i5 = or i32 %and.i4, -18874368
  %9 = inttoptr i32 %add1.i5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 21) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  %add4.i = add i32 %1, 3
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %10 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 32) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 16) #12, !srcloc !156
  %11 = ptrtoint ptr %ScsiClockDiv to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ScsiClockDiv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 17) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %12) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 27) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 30) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 15) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 4) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 19) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 38) #12, !srcloc !156
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp = icmp eq i8 %14, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 19) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 1) #12, !srcloc !156
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 23) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 23) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 33) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 39) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 21) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 81) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 15) #12, !srcloc !156
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 4
  %17 = ptrtoint ptr %TransferMode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %TransferMode, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  %add.i.i = add i32 %16, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %19 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 32) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  %add4.i.i = add i32 %16, 3
  %and5.i.i = and i32 %add4.i.i, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %20 = inttoptr i32 %add6.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %18) #12, !srcloc !156
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp_cs_release(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %host = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  br label %if.then4

if.end:                                           ; preds = %entry
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.57)
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load ptr, ptr %host, align 4
  %cmp3.not = icmp eq ptr %.pr, null
  br i1 %cmp3.not, label %if.end.if.end6_crit_edge, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %if.end.thread
  %data.029 = phi ptr [ %hostdata, %if.end.thread ], [ null, %if.end.if.then4_crit_edge ]
  %5 = phi ptr [ %3, %if.end.thread ], [ %.pr, %if.end.if.then4_crit_edge ]
  tail call void @scsi_remove_host(ptr noundef nonnull %5) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %data.030 = phi ptr [ %data.029, %if.then4 ], [ null, %if.end.if.end6_crit_edge ]
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %sub.i = add i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %tobool.not = icmp eq i32 %sub.i, %11
  %cmp8.not = icmp eq ptr %data.030, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp8.not
  br i1 %or.cond, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %MmioAddress = getelementptr inbounds %struct._nsp_hw_data, ptr %data.030, i32 0, i32 3
  %12 = ptrtoint ptr %MmioAddress to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %MmioAddress, align 4
  %14 = inttoptr i32 %13 to ptr
  tail call void @iounmap(ptr noundef %14) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #12
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  %cmp13.not = icmp eq ptr %16, null
  br i1 %cmp13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_host_put(ptr noundef nonnull %16) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_window(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_map_mem_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @nsp_index_read(i32 noundef %BaseAddr, i32 noundef %Register) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  %conv = trunc i32 %Register to i8
  %add = add i32 %BaseAddr, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv) #12, !srcloc !156
  %add2 = add i32 %BaseAddr, 3
  %and3 = and i32 %add2, 1048575
  %add4 = or i32 %and3, -18874368
  %1 = inttoptr i32 %add4 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  ret i8 %2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp_index_write(i32 noundef %BaseAddr, i32 noundef %Register, i8 noundef zeroext %Value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  %conv = trunc i32 %Register to i8
  %add = add i32 %BaseAddr, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  %add4 = add i32 %BaseAddr, 3
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %1 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %Value) #12, !srcloc !156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsp_cs_message(ptr nocapture readnone %func, i32 %line, ptr noundef %type, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #2 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %buf = alloca [150 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %buf) #12
  %1 = call ptr @memset(ptr %buf, i32 255, i32 150)
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef nonnull %buf, i32 noundef 150, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %type, ptr noundef nonnull %buf) #16
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp_bus_reset(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @arm_heavy_mb() #12
  %and.i = and i32 %1, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -1) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  %add.i = add i32 %1, 2
  %and.i1 = and i32 %add.i, 1048575
  %add1.i2 = or i32 %and.i1, -18874368
  %3 = inttoptr i32 %add1.i2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 24) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  %add4.i = add i32 %1, 3
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %4 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 2) #12, !srcloc !156
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.015 = phi i32 [ 100, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.015, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #12
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 24) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 0) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 22) #12, !srcloc !156
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 22) #12, !srcloc !156
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 22) #12, !srcloc !156
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 22) #12, !srcloc !156
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 22) #12, !srcloc !156
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %arrayidx.i = getelementptr %struct._nsp_hw_data, ptr %data, i32 0, i32 13, i32 0
  %11 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 128)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 15) #12, !srcloc !156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp_reselected(ptr nocapture noundef readonly %SCpnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %this_id, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  %add.i = add i32 %5, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 28) #12, !srcloc !156
  %add2.i = add i32 %5, 3
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %9 = inttoptr i32 %add4.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %shl = shl nuw i32 1, %7
  %11 = trunc i32 %shl to i8
  %12 = xor i8 %11, -1
  %conv3 = and i8 %10, %12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3)
  %cmp.not17 = icmp ne i8 %conv3, 0
  %13 = and i8 %conv3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not18 = icmp eq i8 %13, 0
  %or.cond19 = and i1 %cmp.not17, %tobool.not18
  br i1 %or.cond19, label %entry.if.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %target.021 = phi i32 [ %inc, %if.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %tmp.020 = phi i8 [ %14, %if.end.if.end_crit_edge ], [ %conv3, %entry.if.end_crit_edge ]
  %14 = lshr i8 %tmp.020, 1
  %inc = add nuw nsw i32 %target.021, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %tmp.020)
  %cmp.not = icmp ugt i8 %tmp.020, 1
  %15 = and i8 %tmp.020, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end.if.end_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %target.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %if.end.while.end_crit_edge ]
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %target.0.lcssa)
  %cmp12.not = icmp eq i32 %19, %target.0.lcssa
  br i1 %cmp12.not, label %while.end.if.end15_crit_edge, label %if.then14

while.end.if.end15_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.23, i32 noundef %target.0.lcssa)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.end.if.end15_crit_edge
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_port.i, align 8
  %add.i.i = add i32 %25, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %26 = inttoptr i32 %add1.i.i to ptr
  %add2.i.i = add i32 %25, 3
  %and3.i.i = and i32 %add2.i.i, 1048575
  %add4.i.i = or i32 %and3.i.i, -18874368
  %27 = inttoptr i32 %add4.i.i to ptr
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.end15
  %time_out.0.i = phi i32 [ 100, %if.end15 ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 25) #12, !srcloc !156
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp.i = icmp eq i8 %28, -1
  br i1 %cmp.i, label %do.body.i.nsp_negate_signal.exit_crit_edge, label %do.cond.i

do.body.i.nsp_negate_signal.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsp_negate_signal.exit

do.cond.i:                                        ; preds = %do.body.i
  %dec.i = add nsw i32 %time_out.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp2.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp2.not.i, label %if.then10.critedge.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.cond.i
  %and1.i = and i8 %28, 64
  %cmp6.not.i = icmp eq i8 %and1.i, 0
  br i1 %cmp6.not.i, label %land.rhs.i.nsp_negate_signal.exit_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

land.rhs.i.nsp_negate_signal.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsp_negate_signal.exit

if.then10.critedge.i:                             ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24) #12
  br label %nsp_negate_signal.exit

nsp_negate_signal.exit:                           ; preds = %if.then10.critedge.i, %land.rhs.i.nsp_negate_signal.exit_crit_edge, %do.body.i.nsp_negate_signal.exit_crit_edge
  tail call fastcc void @nsp_nexus(ptr noundef %SCpnt)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 24) #12, !srcloc !156
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %30 = and i8 %29, -41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 24) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %30) #12, !srcloc !156
  %31 = or i8 %30, -64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 24) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %31) #12, !srcloc !156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp_start_timer(ptr nocapture noundef readonly %SCpnt, i32 noundef %time) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  %TimerCount = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3
  %6 = ptrtoint ptr %TimerCount to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %time, ptr %TimerCount, align 4
  %conv = trunc i32 %time to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  %add.i = add i32 %5, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 23) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  %add4.i = add i32 %5, 3
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %8 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #12, !srcloc !156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp_nexus(ptr nocapture noundef readonly %SCpnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 8
  %Sync = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %idxprom = and i32 %7, 255
  %SyncRegister = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %idxprom, i32 3
  %8 = ptrtoint ptr %SyncRegister to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %SyncRegister, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  %add.i = add i32 %5, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 33) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  %add4.i = add i32 %5, 3
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %11 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %9) #12, !srcloc !156
  %AckWidth = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %idxprom, i32 4
  %12 = ptrtoint ptr %AckWidth to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %AckWidth, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 39) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %13) #12, !srcloc !156
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %SCpnt, i32 0, i32 5
  %14 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resid_len.i, align 4
  %rem = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %15)
  %cmp7 = icmp ult i32 %15, 4097
  %or.cond = or i1 %cmp7, %cmp.not
  br i1 %or.cond, label %entry.if.end21_crit_edge, label %if.else

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %16 = load i32, ptr @nsp_burst_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %switch.selectcmp = icmp eq i32 %16, 1
  %switch.select = select i1 %switch.selectcmp, i8 32, i8 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch.selectcmp14 = icmp eq i32 %16, 2
  %switch.select15 = select i1 %switch.selectcmp14, i8 2, i8 %switch.select
  br label %if.end21

if.end21:                                         ; preds = %if.else, %entry.if.end21_crit_edge
  %.sink = phi i8 [ 16, %entry.if.end21_crit_edge ], [ %switch.select15, %if.else ]
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %TransferMode12 = getelementptr inbounds %struct._nsp_hw_data, ptr %hostdata, i32 0, i32 6
  %17 = ptrtoint ptr %TransferMode12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %TransferMode12, align 1
  %18 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hostdata, align 4
  %or.i = or i8 %.sink, -64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  %add.i.i = add i32 %19, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %20 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 32) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  %add4.i.i = add i32 %19, 3
  %and5.i.i = and i32 %add4.i.i, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %21 = inttoptr i32 %add6.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %or.i) #12, !srcloc !156
  %FifoCount = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %FifoCount to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %FifoCount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 30) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 15) #12, !srcloc !156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp_pio_write(ptr nocapture noundef %SCpnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  %base3 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 43
  %6 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base3, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %FifoCount = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %FifoCount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %FifoCount, align 4
  %this_residual = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 1
  %buffers_residual = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 3
  %add.i = add i32 %5, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  %add2.i = add i32 %5, 3
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %11 = inttoptr i32 %add4.i to ptr
  %SCp.le = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22
  %TransferMode = getelementptr inbounds %struct._nsp_hw_data, ptr %hostdata, i32 0, i32 6
  %add.i.i136 = add i32 %7, 4
  %12 = inttoptr i32 %add.i.i136 to ptr
  %add.i.i133 = add i32 %5, 4
  %and.i.i134 = and i32 %add.i.i133, 1048575
  %add1.i.i135 = or i32 %and.i.i134, -18874368
  %13 = inttoptr i32 %add1.i.i135 to ptr
  %resid_len.i.i137 = getelementptr inbounds %struct.scsi_request, ptr %SCpnt, i32 0, i32 5
  %buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 2
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %entry
  %time_out.0.ph = phi i32 [ 1000, %entry ], [ %time_out.0.ph.be, %while.cond.outer.backedge ]
  %ocount.0.ph = phi i32 [ %9, %entry ], [ %add47, %while.cond.outer.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %while.cond.outer
  %time_out.0 = phi i32 [ %dec, %if.end.while.cond_crit_edge ], [ %time_out.0.ph, %while.cond.outer ]
  %dec = add i32 %time_out.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time_out.0)
  %cmp.not = icmp eq i32 %time_out.0, 0
  br i1 %cmp.not, label %while.end.thread, label %land.rhs

while.end.thread:                                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %FifoCount to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %ocount.0.ph, ptr %FifoCount, align 4
  br label %if.then77

land.rhs:                                         ; preds = %while.cond
  %15 = ptrtoint ptr %this_residual to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %this_residual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6 = icmp sgt i32 %16, 0
  br i1 %cmp6, label %land.rhs.while.body_crit_edge, label %lor.rhs

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

lor.rhs:                                          ; preds = %land.rhs
  %17 = ptrtoint ptr %buffers_residual to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffers_residual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp8 = icmp sgt i32 %18, 0
  br i1 %cmp8, label %lor.rhs.while.body_crit_edge, label %lor.rhs.while.end_crit_edge

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %land.rhs.while.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 25) #12, !srcloc !156
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %20 = and i8 %19, 71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp11.not = icmp eq i8 %20, 0
  %call18 = tail call fastcc i32 @nsp_fifo_count(ptr noundef %SCpnt)
  %sub19 = sub i32 %ocount.0.ph, %call18
  br i1 %cmp11.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %resid_len.i.i137 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resid_len.i.i137, align 4
  %add.i132 = add i32 %22, %sub19
  store i32 %add.i132, ptr %resid_len.i.i137, align 4
  %23 = ptrtoint ptr %SCp.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %SCp.le, align 4
  %idx.neg = sub i32 0, %sub19
  %add.ptr = getelementptr i8, ptr %24, i32 %idx.neg
  store ptr %add.ptr, ptr %SCp.le, align 4
  %25 = ptrtoint ptr %this_residual to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %this_residual, align 4
  %add = add i32 %26, %sub19
  store i32 %add, ptr %this_residual, align 4
  br label %while.end

if.end:                                           ; preds = %while.body
  %cmp20 = icmp sgt i32 %sub19, 0
  br i1 %cmp20, label %if.end.while.cond_crit_edge, label %if.end23

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.end23:                                         ; preds = %if.end
  %27 = ptrtoint ptr %this_residual to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %this_residual, align 4
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 64)
  %30 = ptrtoint ptr %TransferMode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %TransferMode, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %31, label %if.end23.sw.epilog_crit_edge [
    i8 32, label %sw.bb
    i8 16, label %sw.bb32
    i8 2, label %sw.bb35
  ]

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %and29 = and i32 %29, -4
  %33 = ptrtoint ptr %SCp.le to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %SCp.le, align 4
  %shr = ashr i32 %29, 2
  tail call void @__raw_writesl(ptr noundef nonnull %13, ptr noundef %34, i32 noundef %shr) #12
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %SCp.le to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %SCp.le, align 4
  tail call void @__raw_writesb(ptr noundef nonnull %13, ptr noundef %36, i32 noundef %29) #12
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end23
  %and36 = and i32 %29, -4
  %shr39 = ashr i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp1.not.i.i = icmp ult i32 %29, 4
  br i1 %cmp1.not.i.i, label %sw.bb35.sw.epilog_crit_edge, label %do.body.i.i.preheader

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body.i.i.preheader:                            ; preds = %sw.bb35
  %37 = ptrtoint ptr %SCp.le to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %SCp.le, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i.i.preheader
  %i.03.i.i = phi i32 [ %inc.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 0, %do.body.i.i.preheader ]
  %tmp.02.i.i = phi ptr [ %incdec.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %38, %do.body.i.i.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !164
  tail call void @arm_heavy_mb() #12
  %39 = ptrtoint ptr %tmp.02.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tmp.02.i.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %41) #12, !srcloc !165
  %incdec.ptr.i.i = getelementptr i32, ptr %tmp.02.i.i, i32 1
  %inc.i.i = add nuw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %shr39
  br i1 %exitcond.not.i.i, label %do.body.i.i.sw.epilog_crit_edge, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.body.i.i.sw.epilog_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body.i.i.sw.epilog_crit_edge, %sw.bb35.sw.epilog_crit_edge, %sw.bb32, %sw.bb, %if.end23.sw.epilog_crit_edge
  %res.0 = phi i32 [ %29, %if.end23.sw.epilog_crit_edge ], [ %29, %sw.bb32 ], [ %and29, %sw.bb ], [ %and36, %sw.bb35.sw.epilog_crit_edge ], [ %and36, %do.body.i.i.sw.epilog_crit_edge ]
  %42 = ptrtoint ptr %resid_len.i.i137 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %resid_len.i.i137, align 4
  %add.i138 = sub i32 %43, %res.0
  store i32 %add.i138, ptr %resid_len.i.i137, align 4
  %44 = ptrtoint ptr %SCp.le to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %SCp.le, align 4
  %add.ptr43 = getelementptr i8, ptr %45, i32 %res.0
  store ptr %add.ptr43, ptr %SCp.le, align 4
  %46 = ptrtoint ptr %this_residual to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %this_residual, align 4
  %sub46 = sub i32 %47, %res.0
  store i32 %sub46, ptr %this_residual, align 4
  %add47 = add i32 %res.0, %ocount.0.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %res.0)
  %cmp50 = icmp eq i32 %47, %res.0
  br i1 %cmp50, label %land.lhs.true, label %sw.epilog.while.cond.outer.backedge_crit_edge

sw.epilog.while.cond.outer.backedge_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.backedge

land.lhs.true:                                    ; preds = %sw.epilog
  %48 = ptrtoint ptr %buffers_residual to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buffers_residual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp54.not = icmp eq i32 %49, 0
  br i1 %cmp54.not, label %land.lhs.true.while.cond.outer.backedge_crit_edge, label %if.then56

land.lhs.true.while.cond.outer.backedge_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.backedge

if.then56:                                        ; preds = %land.lhs.true
  %dec59 = add i32 %49, -1
  %50 = ptrtoint ptr %buffers_residual to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %dec59, ptr %buffers_residual, align 4
  %51 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer, align 4
  %call61 = tail call ptr @sg_next(ptr noundef %52) #12
  %53 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call61, ptr %buffer, align 4
  %54 = ptrtoint ptr %call61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call61, align 4
  %and.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !166

do.body2.i.i:                                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !167
  unreachable

sg_virt.exit:                                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i139 = and i32 %55, -4
  %56 = inttoptr i32 %and.i.i139 to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %56) #12
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %call61, i32 0, i32 1
  %57 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %58
  %59 = ptrtoint ptr %SCp.le to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr.i, ptr %SCp.le, align 4
  %60 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buffer, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %length, align 4
  %64 = ptrtoint ptr %this_residual to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %this_residual, align 4
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %sg_virt.exit, %land.lhs.true.while.cond.outer.backedge_crit_edge, %sw.epilog.while.cond.outer.backedge_crit_edge
  %time_out.0.ph.be = phi i32 [ 1000, %sg_virt.exit ], [ %dec, %land.lhs.true.while.cond.outer.backedge_crit_edge ], [ %dec, %sw.epilog.while.cond.outer.backedge_crit_edge ]
  br label %while.cond.outer

while.end:                                        ; preds = %if.then, %lor.rhs.while.end_crit_edge
  %ocount.1 = phi i32 [ %call18, %if.then ], [ %ocount.0.ph, %lor.rhs.while.end_crit_edge ]
  %65 = ptrtoint ptr %FifoCount to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %ocount.1, ptr %FifoCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp75 = icmp slt i32 %dec, 0
  br i1 %cmp75, label %while.end.if.then77_crit_edge, label %while.end.if.end79_crit_edge

while.end.if.end79_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

while.end.if.then77_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then77

if.then77:                                        ; preds = %while.end.if.then77_crit_edge, %while.end.thread
  %66 = ptrtoint ptr %resid_len.i.i137 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %resid_len.i.i137, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.26, i32 noundef %67)
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %while.end.if.end79_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp_pio_read(ptr nocapture noundef %SCpnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  %base3 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 43
  %6 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base3, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %FifoCount = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %FifoCount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %FifoCount, align 4
  %this_residual = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 1
  %buffers_residual = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 3
  %add.i = add i32 %5, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  %add2.i = add i32 %5, 3
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %11 = inttoptr i32 %add4.i to ptr
  %add.i139 = add i32 %5, 1
  %and.i140 = and i32 %add.i139, 1048575
  %add1.i141 = or i32 %and.i140, -18874368
  %12 = inttoptr i32 %add1.i141 to ptr
  %SCp.le = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22
  %TransferMode = getelementptr inbounds %struct._nsp_hw_data, ptr %hostdata, i32 0, i32 6
  %add.i.i145 = add i32 %7, 4
  %13 = inttoptr i32 %add.i.i145 to ptr
  %add.i.i142 = add i32 %5, 4
  %and.i.i143 = and i32 %add.i.i142, 1048575
  %add1.i.i144 = or i32 %and.i.i143, -18874368
  %14 = inttoptr i32 %add1.i.i144 to ptr
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %SCpnt, i32 0, i32 5
  %buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 2
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end74.land.rhs.lr.ph_crit_edge, %entry
  %dec157162 = phi i32 [ 999, %entry ], [ %dec157, %if.end74.land.rhs.lr.ph_crit_edge ]
  %ocount.0.ph161 = phi i32 [ %9, %entry ], [ %add, %if.end74.land.rhs.lr.ph_crit_edge ]
  br label %land.rhs

while.end.thread:                                 ; preds = %if.end74.while.end.thread_crit_edge, %while.cond.backedge.while.end.thread_crit_edge
  %ocount.0.ph.lcssa156 = phi i32 [ %ocount.0.ph161, %while.cond.backedge.while.end.thread_crit_edge ], [ %add, %if.end74.while.end.thread_crit_edge ]
  %15 = ptrtoint ptr %FifoCount to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ocount.0.ph.lcssa156, ptr %FifoCount, align 4
  br label %if.then78

land.rhs:                                         ; preds = %while.cond.backedge.land.rhs_crit_edge, %land.rhs.lr.ph
  %dec159 = phi i32 [ %dec157162, %land.rhs.lr.ph ], [ %dec, %while.cond.backedge.land.rhs_crit_edge ]
  %16 = ptrtoint ptr %this_residual to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %this_residual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6 = icmp sgt i32 %17, 0
  br i1 %cmp6, label %land.rhs.while.body_crit_edge, label %lor.rhs

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

lor.rhs:                                          ; preds = %land.rhs
  %18 = ptrtoint ptr %buffers_residual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffers_residual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp8 = icmp sgt i32 %19, 0
  br i1 %cmp8, label %lor.rhs.while.body_crit_edge, label %lor.rhs.while.end_crit_edge

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %land.rhs.while.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 25) #12, !srcloc !156
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %21 = and i8 %20, 71
  %call10 = tail call fastcc i32 @nsp_fifo_count(ptr noundef %SCpnt)
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %ocount.0.ph161)
  %cmp11 = icmp eq i32 %call10, %ocount.0.ph161
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp14 = icmp eq i8 %21, 2
  br i1 %cmp14, label %if.then.while.cond.backedge_crit_edge, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then.while.cond.backedge_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.while.cond.backedge_crit_edge, %if.then.while.cond.backedge_crit_edge
  %dec = add i32 %dec159, -1
  %cmp.not = icmp eq i32 %dec159, 0
  br i1 %cmp.not, label %while.cond.backedge.while.end.thread_crit_edge, label %while.cond.backedge.land.rhs_crit_edge

while.cond.backedge.land.rhs_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.cond.backedge.while.end.thread_crit_edge:   ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.thread

if.end:                                           ; preds = %while.body
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp20 = icmp sgt i8 %22, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp23 = icmp eq i8 %21, 2
  %or.cond = select i1 %cmp20, i1 %cmp23, i1 false
  br i1 %or.cond, label %if.end.while.cond.backedge_crit_edge, label %if.end26

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end26:                                         ; preds = %if.end
  %sub.le = sub i32 %call10, %ocount.0.ph161
  %23 = ptrtoint ptr %this_residual to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %this_residual, align 4
  %25 = tail call i32 @llvm.smin.i32(i32 %sub.le, i32 %24)
  %26 = ptrtoint ptr %TransferMode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %TransferMode, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %27, label %if.end26.cleanup_crit_edge [
    i8 32, label %sw.bb
    i8 16, label %sw.bb34
    i8 2, label %sw.bb37
  ]

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %and32 = and i32 %25, -4
  %29 = ptrtoint ptr %SCp.le to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %SCp.le, align 4
  %shr = ashr i32 %25, 2
  tail call void @__raw_readsl(ptr noundef nonnull %14, ptr noundef %30, i32 noundef %shr) #12
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %SCp.le to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %SCp.le, align 4
  tail call void @__raw_readsb(ptr noundef nonnull %14, ptr noundef %32, i32 noundef %25) #12
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end26
  %and38 = and i32 %25, -4
  %shr41 = ashr i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp1.not.i.i = icmp ult i32 %25, 4
  br i1 %cmp1.not.i.i, label %sw.bb37.sw.epilog_crit_edge, label %for.body.i.i.preheader

sw.bb37.sw.epilog_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i.i.preheader:                           ; preds = %sw.bb37
  %33 = ptrtoint ptr %SCp.le to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %SCp.le, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %tmp.03.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %34, %for.body.i.i.preheader ]
  %i.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #12, !srcloc !168
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !169
  %37 = ptrtoint ptr %tmp.03.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tmp.03.i.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %tmp.03.i.i, i32 1
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %shr41
  br i1 %exitcond.not.i.i, label %for.body.i.i.sw.epilog_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.sw.epilog_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.i.i.sw.epilog_crit_edge, %sw.bb37.sw.epilog_crit_edge, %sw.bb34, %sw.bb
  %res.0 = phi i32 [ %25, %sw.bb34 ], [ %and32, %sw.bb ], [ %and38, %sw.bb37.sw.epilog_crit_edge ], [ %and38, %for.body.i.i.sw.epilog_crit_edge ]
  %38 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %resid_len.i.i, align 4
  %add.i146 = sub i32 %39, %res.0
  store i32 %add.i146, ptr %resid_len.i.i, align 4
  %40 = ptrtoint ptr %SCp.le to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %SCp.le, align 4
  %add.ptr = getelementptr i8, ptr %41, i32 %res.0
  store ptr %add.ptr, ptr %SCp.le, align 4
  %42 = ptrtoint ptr %this_residual to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %this_residual, align 4
  %sub47 = sub i32 %43, %res.0
  store i32 %sub47, ptr %this_residual, align 4
  %add = add i32 %res.0, %ocount.0.ph161
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %res.0)
  %cmp50 = icmp eq i32 %43, %res.0
  br i1 %cmp50, label %land.lhs.true52, label %sw.epilog.if.end74_crit_edge

sw.epilog.if.end74_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

land.lhs.true52:                                  ; preds = %sw.epilog
  %44 = ptrtoint ptr %buffers_residual to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buffers_residual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp55.not = icmp eq i32 %45, 0
  br i1 %cmp55.not, label %land.lhs.true52.if.end74_crit_edge, label %if.then57

land.lhs.true52.if.end74_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then57:                                        ; preds = %land.lhs.true52
  %dec60 = add i32 %45, -1
  %46 = ptrtoint ptr %buffers_residual to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %dec60, ptr %buffers_residual, align 4
  %47 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buffer, align 4
  %call62 = tail call ptr @sg_next(ptr noundef %48) #12
  %49 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call62, ptr %buffer, align 4
  %50 = ptrtoint ptr %call62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call62, align 4
  %and.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !166

do.body2.i.i:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !167
  unreachable

sg_virt.exit:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i147 = and i32 %51, -4
  %52 = inttoptr i32 %and.i.i147 to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %52) #12
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %call62, i32 0, i32 1
  %53 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %54
  %55 = ptrtoint ptr %SCp.le to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.i, ptr %SCp.le, align 4
  %56 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length, align 4
  %60 = ptrtoint ptr %this_residual to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %this_residual, align 4
  br label %if.end74

if.end74:                                         ; preds = %sg_virt.exit, %land.lhs.true52.if.end74_crit_edge, %sw.epilog.if.end74_crit_edge
  %time_out.1 = phi i32 [ 1000, %sg_virt.exit ], [ %dec159, %land.lhs.true52.if.end74_crit_edge ], [ %dec159, %sw.epilog.if.end74_crit_edge ]
  %dec157 = add i32 %time_out.1, -1
  %cmp.not158 = icmp eq i32 %time_out.1, 0
  br i1 %cmp.not158, label %if.end74.while.end.thread_crit_edge, label %if.end74.land.rhs.lr.ph_crit_edge

if.end74.land.rhs.lr.ph_crit_edge:                ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.lr.ph

if.end74.while.end.thread_crit_edge:              ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.thread

while.end:                                        ; preds = %if.then.while.end_crit_edge, %lor.rhs.while.end_crit_edge
  %61 = ptrtoint ptr %FifoCount to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %ocount.0.ph161, ptr %FifoCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec159)
  %cmp76 = icmp slt i32 %dec159, 0
  br i1 %cmp76, label %while.end.if.then78_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.end.if.then78_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.then78:                                        ; preds = %while.end.if.then78_crit_edge, %while.end.thread
  %62 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %resid_len.i.i, align 4
  %64 = ptrtoint ptr %this_residual to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %this_residual, align 4
  %66 = ptrtoint ptr %buffers_residual to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %buffers_residual, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.27, i32 noundef %63, i32 noundef %65, i32 noundef %67)
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %while.end.cleanup_crit_edge, %if.end26.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp_dataphase_bypass(ptr noundef %SCpnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %have_data_in = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 7
  %4 = ptrtoint ptr %have_data_in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %have_data_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @nsp_fifo_count(ptr noundef %SCpnt)
  %FifoCount = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %FifoCount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %FifoCount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call)
  %cmp1 = icmp eq i32 %7, %call
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 9
  %8 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 5, ptr %phase, align 4
  tail call fastcc void @nsp_pio_read(ptr noundef %SCpnt)
  %9 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hostdata, align 4
  %TransferMode.i = getelementptr inbounds %struct._nsp_hw_data, ptr %hostdata, i32 0, i32 6
  %11 = ptrtoint ptr %TransferMode.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %TransferMode.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  %add.i.i = add i32 %10, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %13 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 32) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  %add4.i.i = add i32 %10, 3
  %and5.i.i = and i32 %add4.i.i, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %14 = inttoptr i32 %add6.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %12) #12, !srcloc !156
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp_analyze_sdtr(ptr nocapture noundef readonly %SCpnt) unnamed_addr #6 align 64 {
for.body.preheader:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %Sync = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %idxprom = and i32 %3, 255
  %SyncPeriod = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %idxprom, i32 1
  %6 = ptrtoint ptr %SyncPeriod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %SyncPeriod, align 4
  %SyncOffset = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %idxprom, i32 2
  %8 = ptrtoint ptr %SyncOffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %SyncOffset, align 4
  %ScsiClockDiv = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 2, i32 1
  %10 = ptrtoint ptr %ScsiClockDiv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ScsiClockDiv, align 4
  %12 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp = icmp eq i8 %12, 1
  %13 = select i1 %cmp, i32 25, i32 12
  %nsp_sync_table_20M.nsp_sync_table_40M = select i1 %cmp, ptr @nsp_sync_table_20M, ptr @nsp_sync_table_40M
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %14 = phi i32 [ %18, %for.inc.for.body_crit_edge ], [ %13, %for.body.preheader ]
  %sync_table.16 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %nsp_sync_table_20M.nsp_sync_table_40M, %for.body.preheader ]
  %15 = ptrtoint ptr %sync_table.16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sync_table.16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %16)
  %cmp6.not = icmp ult i32 %7, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %14)
  %cmp9.not = icmp ugt i32 %7, %14
  %or.cond = select i1 %cmp6.not, i1 true, i1 %cmp9.not
  br i1 %or.cond, label %for.inc, label %for.body.if.end22_crit_edge

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.nsp_sync_table, ptr %sync_table.16, i32 1
  %max_period = getelementptr %struct.nsp_sync_table, ptr %sync_table.16, i32 1, i32 1
  %17 = ptrtoint ptr %max_period to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_period, align 4
  %cmp4.not = icmp eq i32 %18, 0
  br i1 %cmp4.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not = icmp eq i32 %7, 0
  br i1 %cmp13.not, label %for.end.if.end22_crit_edge, label %if.then19

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = call ptr @memset(ptr %SyncPeriod, i32 0, i32 10)
  br label %cleanup

if.end22:                                         ; preds = %for.end.if.end22_crit_edge, %for.body.if.end22_crit_edge
  %sync_table.13 = phi ptr [ %incdec.ptr, %for.end.if.end22_crit_edge ], [ %sync_table.16, %for.body.if.end22_crit_edge ]
  %chip_period = getelementptr inbounds %struct.nsp_sync_table, ptr %sync_table.13, i32 0, i32 2
  %20 = ptrtoint ptr %chip_period to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chip_period, align 4
  %shl = shl i32 %21, 4
  %and23 = and i32 %9, 15
  %or = or i32 %shl, %and23
  %conv24 = trunc i32 %or to i8
  %SyncRegister25 = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %idxprom, i32 3
  %22 = ptrtoint ptr %SyncRegister25 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv24, ptr %SyncRegister25, align 4
  %ack_width = getelementptr inbounds %struct.nsp_sync_table, ptr %sync_table.13, i32 0, i32 3
  %23 = ptrtoint ptr %ack_width to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ack_width, align 4
  %conv26 = trunc i32 %24 to i8
  %AckWidth27 = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %idxprom, i32 4
  %25 = ptrtoint ptr %AckWidth27 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv26, ptr %AckWidth27, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp_message_out(ptr noundef %SCpnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %MsgLen = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %MsgLen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %MsgLen, align 4
  %phase9.i = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 9
  br label %do.body

do.body:                                          ; preds = %nsp_expect_signal.exit.do.body_crit_edge, %entry
  %len.0 = phi i32 [ %5, %entry ], [ %dec, %nsp_expect_signal.exit.do.body_crit_edge ]
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %MsgBuffer.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 1, i32 3, i32 0, i32 0, i32 4
  %MsgLen.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %MsgLen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %MsgLen.i, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp424.i = icmp sgt i32 %11, 0
  br i1 %cmp424.i, label %for.body.lr.ph.i, label %do.body.nsp_xfer.exit_crit_edge

do.body.nsp_xfer.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsp_xfer.exit

for.body.lr.ph.i:                                 ; preds = %do.body
  %io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 44
  %13 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_port.i, align 8
  %add.i.i = add i32 %14, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %15 = inttoptr i32 %add1.i.i to ptr
  %add4.i.i = add i32 %14, 3
  %and5.i.i = and i32 %add4.i.i, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %16 = inttoptr i32 %add6.i.i to ptr
  %17 = add i32 %12, -1
  %smin.i = tail call i32 @llvm.smin.i32(i32 %17, i32 0) #12
  br label %for.body.i

for.body.i:                                       ; preds = %nsp_negate_signal.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ptr.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %nsp_negate_signal.exit.i.for.body.i_crit_edge ]
  %len.025.i = phi i32 [ %12, %for.body.lr.ph.i ], [ %dec.i, %nsp_negate_signal.exit.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %io_port.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_port.i.i, align 8
  %and.i1.i.i = and i32 %23, 1048575
  %add1.i2.i.i = or i32 %and.i1.i.i, -18874368
  %24 = inttoptr i32 %add1.i2.i.i to ptr
  %add.i.i.i = add i32 %23, 2
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %25 = inttoptr i32 %add1.i.i.i to ptr
  %add2.i.i.i = add i32 %23, 3
  %and3.i.i.i = and i32 %add2.i.i.i, 1048575
  %add4.i.i.i = or i32 %and3.i.i.i, -18874368
  %26 = inttoptr i32 %add4.i.i.i to ptr
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %for.body.i
  %time_out.0.i.i = phi i32 [ 100, %for.body.i ], [ %dec.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 25) #12, !srcloc !156
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp.i.i = icmp eq i8 %27, -1
  br i1 %cmp.i.i, label %do.body.i.i.if.end_crit_edge, label %if.end.i.i

do.body.i.i.if.end_crit_edge:                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i.i:                                       ; preds = %do.body.i.i
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end5.i.i:                                      ; preds = %if.end.i.i
  %30 = and i8 %27, 103
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %30)
  %31 = icmp eq i8 %30, 37
  br i1 %31, label %if.end.i, label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.end5.i.i
  %dec.i.i = add nsw i32 %time_out.0.i.i, -1
  %cmp18.not.i.i = icmp eq i32 %time_out.0.i.i, 0
  br i1 %cmp18.not.i.i, label %do.cond.i.i.if.end_crit_edge, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.cond.i.i.if.end_crit_edge:                     ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.025.i)
  %cmp7.i = icmp eq i32 %len.025.i, 1
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %32 = ptrtoint ptr %phase9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %phase9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %33)
  %cmp10.i = icmp eq i32 %33, 8
  br i1 %cmp10.i, label %if.then12.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 24) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -64) #12, !srcloc !156
  br label %if.else.i

if.else.i:                                        ; preds = %if.then12.i, %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %arrayidx16.i = getelementptr i8, ptr %MsgBuffer.i, i32 %ptr.026.i
  %34 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx16.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 35) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %35) #12, !srcloc !156
  %36 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %io_port.i8.i = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %io_port.i8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_port.i8.i, align 8
  %add.i.i9.i = add i32 %41, 2
  %and.i.i10.i = and i32 %add.i.i9.i, 1048575
  %add1.i.i11.i = or i32 %and.i.i10.i, -18874368
  %42 = inttoptr i32 %add1.i.i11.i to ptr
  %add2.i.i12.i = add i32 %41, 3
  %and3.i.i13.i = and i32 %add2.i.i12.i, 1048575
  %add4.i.i14.i = or i32 %and3.i.i13.i, -18874368
  %43 = inttoptr i32 %add4.i.i14.i to ptr
  br label %do.body.i17.i

do.body.i17.i:                                    ; preds = %land.rhs.i.i.do.body.i17.i_crit_edge, %if.else.i
  %time_out.0.i15.i = phi i32 [ 100, %if.else.i ], [ %dec.i18.i, %land.rhs.i.i.do.body.i17.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 25) #12, !srcloc !156
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %cmp.i16.i = icmp eq i8 %44, -1
  br i1 %cmp.i16.i, label %do.body.i17.i.nsp_negate_signal.exit.i_crit_edge, label %do.cond.i19.i

do.body.i17.i.nsp_negate_signal.exit.i_crit_edge: ; preds = %do.body.i17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsp_negate_signal.exit.i

do.cond.i19.i:                                    ; preds = %do.body.i17.i
  %dec.i18.i = add nsw i32 %time_out.0.i15.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i18.i)
  %cmp2.not.i.i = icmp eq i32 %dec.i18.i, 0
  br i1 %cmp2.not.i.i, label %if.then10.critedge.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %do.cond.i19.i
  %and1.i.i = and i8 %44, 16
  %cmp6.not.i.i = icmp eq i8 %and1.i.i, 0
  br i1 %cmp6.not.i.i, label %land.rhs.i.i.nsp_negate_signal.exit.i_crit_edge, label %land.rhs.i.i.do.body.i17.i_crit_edge

land.rhs.i.i.do.body.i17.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i17.i

land.rhs.i.i.nsp_negate_signal.exit.i_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsp_negate_signal.exit.i

if.then10.critedge.i.i:                           ; preds = %do.cond.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.29) #12
  br label %nsp_negate_signal.exit.i

nsp_negate_signal.exit.i:                         ; preds = %if.then10.critedge.i.i, %land.rhs.i.i.nsp_negate_signal.exit.i_crit_edge, %do.body.i17.i.nsp_negate_signal.exit.i_crit_edge
  %dec.i = add i32 %len.025.i, -1
  %inc.i = add nuw i32 %ptr.026.i, 1
  %cmp4.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp4.i, label %nsp_negate_signal.exit.i.for.body.i_crit_edge, label %nsp_negate_signal.exit.i.nsp_xfer.exit_crit_edge

nsp_negate_signal.exit.i.nsp_xfer.exit_crit_edge: ; preds = %nsp_negate_signal.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsp_xfer.exit

nsp_negate_signal.exit.i.for.body.i_crit_edge:    ; preds = %nsp_negate_signal.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

nsp_xfer.exit:                                    ; preds = %nsp_negate_signal.exit.i.nsp_xfer.exit_crit_edge, %do.body.nsp_xfer.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %do.body.nsp_xfer.exit_crit_edge ], [ %smin.i, %nsp_negate_signal.exit.i.nsp_xfer.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %nsp_xfer.exit.if.end_crit_edge, label %if.then

nsp_xfer.exit.if.end_crit_edge:                   ; preds = %nsp_xfer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %nsp_xfer.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.28)
  br label %if.end

if.end:                                           ; preds = %if.then, %nsp_xfer.exit.if.end_crit_edge, %do.cond.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %do.body.i.i.if.end_crit_edge
  %45 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %io_port.i6 = getelementptr inbounds %struct.Scsi_Host, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %io_port.i6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_port.i6, align 8
  %and.i1.i = and i32 %50, 1048575
  %add1.i2.i = or i32 %and.i1.i, -18874368
  %51 = inttoptr i32 %add1.i2.i to ptr
  %add.i.i7 = add i32 %50, 2
  %and.i.i8 = and i32 %add.i.i7, 1048575
  %add1.i.i9 = or i32 %and.i.i8, -18874368
  %52 = inttoptr i32 %add1.i.i9 to ptr
  %add2.i.i = add i32 %50, 3
  %and3.i.i = and i32 %add2.i.i, 1048575
  %add4.i.i10 = or i32 %and3.i.i, -18874368
  %53 = inttoptr i32 %add4.i.i10 to ptr
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end
  %time_out.0.i = phi i32 [ 100, %if.end ], [ %dec.i12, %do.cond.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 25) #12, !srcloc !156
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %54)
  %cmp.i = icmp eq i8 %54, -1
  br i1 %cmp.i, label %do.body.i.do.end_crit_edge, label %if.end.i11

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.i11:                                       ; preds = %do.body.i
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  %56 = and i8 %55, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i11.do.end_crit_edge

if.end.i11.do.end_crit_edge:                      ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end5.i:                                        ; preds = %if.end.i11
  %57 = and i8 %54, 103
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %57)
  %58 = icmp eq i8 %57, 37
  br i1 %58, label %nsp_expect_signal.exit, label %do.cond.i

do.cond.i:                                        ; preds = %if.end5.i
  %dec.i12 = add nsw i32 %time_out.0.i, -1
  %cmp18.not.i = icmp eq i32 %time_out.0.i, 0
  br i1 %cmp18.not.i, label %do.cond.i.do.end_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.cond.i.do.end_crit_edge:                       ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

nsp_expect_signal.exit:                           ; preds = %if.end5.i
  %dec = add i32 %len.0, -1
  %cmp2 = icmp sgt i32 %len.0, 0
  br i1 %cmp2, label %nsp_expect_signal.exit.do.body_crit_edge, label %nsp_expect_signal.exit.do.end_crit_edge

nsp_expect_signal.exit.do.end_crit_edge:          ; preds = %nsp_expect_signal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

nsp_expect_signal.exit.do.body_crit_edge:         ; preds = %nsp_expect_signal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %nsp_expect_signal.exit.do.end_crit_edge, %do.cond.i.do.end_crit_edge, %if.end.i11.do.end_crit_edge, %do.body.i.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp_message_in(ptr nocapture noundef readonly %SCpnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  %add.i = add i32 %5, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %add2.i = add i32 %5, 3
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %7 = inttoptr i32 %add4.i to ptr
  %MsgBuffer = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %nsp_expect_signal.exit.do.body_crit_edge, %entry
  %len.0 = phi i32 [ 0, %entry ], [ %inc, %nsp_expect_signal.exit.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 34) #12, !srcloc !156
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 24) #12, !srcloc !156
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %10 = or i8 %9, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 24) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %10) #12, !srcloc !156
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_port.i, align 8
  %add.i.i = add i32 %16, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %17 = inttoptr i32 %add1.i.i to ptr
  %add2.i.i = add i32 %16, 3
  %and3.i.i = and i32 %add2.i.i, 1048575
  %add4.i.i = or i32 %and3.i.i, -18874368
  %18 = inttoptr i32 %add4.i.i to ptr
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %do.body
  %time_out.0.i = phi i32 [ 100, %do.body ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 25) #12, !srcloc !156
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp.i = icmp eq i8 %19, -1
  br i1 %cmp.i, label %do.body.i.nsp_negate_signal.exit_crit_edge, label %do.cond.i

do.body.i.nsp_negate_signal.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsp_negate_signal.exit

do.cond.i:                                        ; preds = %do.body.i
  %dec.i = add nsw i32 %time_out.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp2.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp2.not.i, label %if.then10.critedge.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.cond.i
  %and1.i = and i8 %19, 32
  %cmp6.not.i = icmp eq i8 %and1.i, 0
  br i1 %cmp6.not.i, label %land.rhs.i.nsp_negate_signal.exit_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

land.rhs.i.nsp_negate_signal.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsp_negate_signal.exit

if.then10.critedge.i:                             ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30) #12
  br label %nsp_negate_signal.exit

nsp_negate_signal.exit:                           ; preds = %if.then10.critedge.i, %land.rhs.i.nsp_negate_signal.exit_crit_edge, %do.body.i.nsp_negate_signal.exit_crit_edge
  %arrayidx = getelementptr [20 x i8], ptr %MsgBuffer, i32 0, i32 %len.0
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %8, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %len.0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 24) #12, !srcloc !156
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %22 = and i8 %21, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 24) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %22) #12, !srcloc !156
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %io_port.i50 = getelementptr inbounds %struct.Scsi_Host, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %io_port.i50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %io_port.i50, align 8
  %and.i1.i = and i32 %28, 1048575
  %add1.i2.i = or i32 %and.i1.i, -18874368
  %29 = inttoptr i32 %add1.i2.i to ptr
  %add.i.i51 = add i32 %28, 2
  %and.i.i52 = and i32 %add.i.i51, 1048575
  %add1.i.i53 = or i32 %and.i.i52, -18874368
  %30 = inttoptr i32 %add1.i.i53 to ptr
  %add2.i.i54 = add i32 %28, 3
  %and3.i.i55 = and i32 %add2.i.i54, 1048575
  %add4.i.i56 = or i32 %and3.i.i55, -18874368
  %31 = inttoptr i32 %add4.i.i56 to ptr
  br label %do.body.i59

do.body.i59:                                      ; preds = %do.cond.i61.do.body.i59_crit_edge, %nsp_negate_signal.exit
  %time_out.0.i57 = phi i32 [ 100, %nsp_negate_signal.exit ], [ %dec.i60, %do.cond.i61.do.body.i59_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 25) #12, !srcloc !156
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp.i58 = icmp eq i8 %32, -1
  br i1 %cmp.i58, label %do.body.i59.do.end_crit_edge, label %if.end.i

do.body.i59.do.end_crit_edge:                     ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.i:                                         ; preds = %do.body.i59
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end5.i:                                        ; preds = %if.end.i
  %35 = and i8 %32, 103
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %35)
  %36 = icmp eq i8 %35, 39
  br i1 %36, label %nsp_expect_signal.exit, label %do.cond.i61

do.cond.i61:                                      ; preds = %if.end5.i
  %dec.i60 = add nsw i32 %time_out.0.i57, -1
  %cmp18.not.i = icmp eq i32 %time_out.0.i57, 0
  br i1 %cmp18.not.i, label %do.cond.i61.do.end_crit_edge, label %do.cond.i61.do.body.i59_crit_edge

do.cond.i61.do.body.i59_crit_edge:                ; preds = %do.cond.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i59

do.cond.i61.do.end_crit_edge:                     ; preds = %do.cond.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

nsp_expect_signal.exit:                           ; preds = %if.end5.i
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %nsp_expect_signal.exit.do.end_crit_edge, label %nsp_expect_signal.exit.do.body_crit_edge

nsp_expect_signal.exit.do.body_crit_edge:         ; preds = %nsp_expect_signal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

nsp_expect_signal.exit.do.end_crit_edge:          ; preds = %nsp_expect_signal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %nsp_expect_signal.exit.do.end_crit_edge, %do.cond.i61.do.end_crit_edge, %if.end.i.do.end_crit_edge, %do.body.i59.do.end_crit_edge
  %inc71 = phi i32 [ %inc, %do.body.i59.do.end_crit_edge ], [ %inc, %if.end.i.do.end_crit_edge ], [ %inc, %do.cond.i61.do.end_crit_edge ], [ 20, %nsp_expect_signal.exit.do.end_crit_edge ]
  %MsgLen = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %37 = ptrtoint ptr %MsgLen to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %inc71, ptr %MsgLen, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nsp_fifo_count(ptr nocapture noundef readonly %SCpnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  %add.i = add i32 %5, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 30) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  %add4.i = add i32 %5, 3
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %7 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 1) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 30) #12, !srcloc !156
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %conv = zext i8 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 30) #12, !srcloc !156
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %conv2 = zext i8 %9 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 30) #12, !srcloc !156
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %conv4 = zext i8 %10 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 30) #12, !srcloc !156
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %shl = shl nuw nsw i32 %conv4, 16
  %shl6 = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %shl6
  %or8 = or i32 %or, %conv
  ret i32 %or8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %CurrentSC.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %CurrentSC.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %CurrentSC.i, align 4
  %cmp.not.i = icmp eq ptr %7, null
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ptr, ...) @nsp_cs_message(ptr undef, i32 undef, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.36) #12
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %8 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 262144, ptr %result.i, align 4
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %CurrentSC.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 1, i32 3, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %CurrentSC.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %CurrentSC.i.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %nsp_queuecommand_lck.exit

if.end.i:                                         ; preds = %entry
  %14 = ptrtoint ptr %CurrentSC.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmd, ptr %CurrentSC.i, align 4
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22
  %Status.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 5
  %15 = ptrtoint ptr %Status.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 2, ptr %Status.i, align 4
  %Message.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 6
  %16 = ptrtoint ptr %Message.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %Message.i, align 4
  %have_data_in.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 7
  %17 = ptrtoint ptr %have_data_in.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %have_data_in.i, align 4
  %sent_command.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 8
  %18 = ptrtoint ptr %sent_command.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %sent_command.i, align 4
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 9
  %19 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %phase.i, align 4
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i.i, align 4
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %cmd, i32 0, i32 5
  %22 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %resid_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %23 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdb.i.i, align 4
  %buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 2
  %25 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %buffer.i, align 4
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %24, align 4
  %and.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !166

do.body2.i.i.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !167
  unreachable

sg_virt.exit.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i.i = and i32 %27, -4
  %28 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %28) #12
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %30
  %31 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i.i, ptr %SCp.i, align 4
  %32 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i, align 4
  %this_residual.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 1
  %36 = ptrtoint ptr %this_residual.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %this_residual.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %37 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nents.i.i, align 4
  %sub.i = add i32 %38, -1
  %buffers_residual.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 3
  %39 = ptrtoint ptr %buffers_residual.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.i, ptr %buffers_residual.i, align 4
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = call ptr @memset(ptr %SCp.i, i32 0, i32 16)
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %sg_virt.exit.i
  %41 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %this_id.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 0, i32 25
  %45 = ptrtoint ptr %this_id.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %this_id.i.i, align 8
  %io_port.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 0, i32 44
  %47 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %io_port.i.i, align 8
  %id.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %42, i32 0, i32 16
  %49 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  %add.i.i.i = add i32 %48, 2
  %and.i.i3.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i3.i, -18874368
  %51 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 25) #12, !srcloc !156
  %add2.i.i.i = add i32 %48, 3
  %and3.i.i.i = and i32 %add2.i.i.i, 1048575
  %add4.i.i.i = or i32 %and3.i.i.i, -18874368
  %52 = inttoptr i32 %add4.i.i.i to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp.not.i.i = icmp eq i8 %53, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end27.i.if.then30.i_crit_edge

if.end27.i.if.then30.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30.i

if.end.i.i:                                       ; preds = %if.end27.i
  %54 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 1, ptr %phase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 26) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 1) #12, !srcloc !156
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %time_out.0.i.i = phi i32 [ 1000, %if.end.i.i ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 26) #12, !srcloc !156
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #12, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #12
  %conv11.i.i = zext i8 %55 to i32
  %and.i.i = and i32 %conv11.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp12.i.i = icmp ne i32 %and.i.i, 0
  %dec.i.i = add nsw i32 %time_out.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time_out.0.i.i)
  %cmp14.not.i.i = icmp eq i32 %time_out.0.i.i, 0
  %or.cond.i.i = select i1 %cmp12.i.i, i1 true, i1 %cmp14.not.i.i
  br i1 %or.cond.i.i, label %do.end.i.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %and17.i.i = and i32 %conv11.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool.not.i.i, label %if.then18.i.i, label %nsphw_start_selection.exit.i

if.then18.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 26) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 2) #12, !srcloc !156
  br label %if.then30.i

nsphw_start_selection.exit.i:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 2, ptr %phase.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 644244) #12
  %shl.i.i = shl nuw i32 1, %46
  %conv22.i.i = and i32 %50, 255
  %shl23.i.i = shl nuw i32 1, %conv22.i.i
  %or.i.i = or i32 %shl23.i.i, %shl.i.i
  %conv24.i.i = trunc i32 %or.i.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 34) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %conv24.i.i) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 24) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 41) #12, !srcloc !156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 429496) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 24) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 45) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 26) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 2) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 24) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 13) #12, !srcloc !156
  %60 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %io_port.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %63, i32 0, i32 44
  %64 = ptrtoint ptr %io_port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %io_port.i.i.i, align 8
  %TimerCount.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %63, i32 1, i32 3
  %66 = ptrtoint ptr %TimerCount.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 19, ptr %TimerCount.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @arm_heavy_mb() #12
  %add.i.i.i.i = add i32 %65, 2
  %and.i.i.i4.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i4.i, -18874368
  %67 = inttoptr i32 %add1.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 23) #12, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  %add4.i.i.i.i = add i32 %65, 3
  %and5.i.i.i.i = and i32 %add4.i.i.i.i, 1048575
  %add6.i.i.i.i = or i32 %and5.i.i.i.i, -18874368
  %68 = inttoptr i32 %add6.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 19) #12, !srcloc !156
  %SelectionTimeOut.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 1, i32 3, i32 0, i32 0, i32 1
  %69 = ptrtoint ptr %SelectionTimeOut.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %SelectionTimeOut.i.i, align 4
  br label %nsp_queuecommand_lck.exit

if.then30.i:                                      ; preds = %if.then18.i.i, %if.end27.i.if.then30.i_crit_edge
  %result31.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %70 = ptrtoint ptr %result31.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 131072, ptr %result31.i, align 4
  %71 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %CurrentSC.i6.i = getelementptr inbounds %struct.Scsi_Host, ptr %74, i32 1, i32 3, i32 0, i32 0, i32 2
  %75 = ptrtoint ptr %CurrentSC.i6.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %CurrentSC.i6.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %nsp_queuecommand_lck.exit

nsp_queuecommand_lck.exit:                        ; preds = %if.then30.i, %nsphw_start_selection.exit.i, %if.then.i
  %76 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %77, i32 noundef %call2) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nsp_info(ptr noundef readnone %shpnt) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nspinfo = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 10, i32 0, i32 0, i32 0, i32 1
  ret ptr %nspinfo
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_eh_bus_reset(ptr nocapture noundef readonly %SCpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  tail call fastcc void @nsp_bus_reset(ptr noundef %hostdata)
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_eh_host_reset(ptr nocapture noundef readonly %SCpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  tail call fastcc void @nsphw_init(ptr noundef %hostdata)
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_show_info(ptr noundef %m, ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 17
  %0 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host_no, align 4
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.37) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %1) #12
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 47
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %3) #12
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 45
  %6 = ptrtoint ptr %n_io_port to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %n_io_port, align 4
  %conv = zext i8 %7 to i32
  %add = add i32 %5, -1
  %sub = add i32 %add, %conv
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %5, i32 noundef %sub) #12
  %base = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 43
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  %MmioLength = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 2
  %10 = ptrtoint ptr %MmioLength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %MmioLength, align 4
  %add3 = add i32 %9, -1
  %sub4 = add i32 %add3, %11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, i32 noundef %9, i32 noundef %sub4) #12
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 28
  %12 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sg_tablesize, align 2
  %conv5 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %conv5) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.43) #12
  %14 = load i32, ptr @nsp_burst_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.nsp_show_info, i32 0, i32 %14
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.str.47.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.47, %entry.sw.epilog_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.47.sink) #12
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #12
  %Lock = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 13, i32 6
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %Lock) #12
  %CurrentSC = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 3, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %CurrentSC to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %CurrentSC, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, ptr noundef %18) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %Lock, i32 noundef %call10) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.49) #12
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 25
  %Sync = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog
  %id.080 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %id.080) #12
  %19 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %this_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %id.080, i32 %20)
  %cmp16 = icmp eq i32 %id.080, %20
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.51) #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %id.080
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %23 = icmp ult i32 %22, 3
  br i1 %23, label %switch.lookup83, label %if.end.sw.epilog22_crit_edge

if.end.sw.epilog22_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog22

switch.lookup83:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep84 = getelementptr inbounds [3 x ptr], ptr @switch.table.nsp_show_info.60, i32 0, i32 %22
  %24 = ptrtoint ptr %switch.gep84 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load85 = load ptr, ptr %switch.gep84, align 4
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %switch.lookup83, %if.end.sw.epilog22_crit_edge
  %.str.55.sink = phi ptr [ %switch.load85, %switch.lookup83 ], [ @.str.55, %if.end.sw.epilog22_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.55.sink) #12
  %SyncPeriod = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %id.080, i32 1
  %25 = ptrtoint ptr %SyncPeriod to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %SyncPeriod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp25.not = icmp eq i32 %26, 0
  br i1 %cmp25.not, label %sw.epilog22.if.end34_crit_edge, label %if.then27

sw.epilog22.if.end34_crit_edge:                   ; preds = %sw.epilog22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then27:                                        ; preds = %sw.epilog22
  call void @__sanitizer_cov_trace_pc() #14
  %mul = shl i32 %26, 2
  %div = udiv i32 1000000, %mul
  %div.frozen = freeze i32 %div
  %div31 = udiv i32 %div.frozen, 1000
  %27 = mul i32 %div31, 1000
  %rem.decomposed = sub i32 %div.frozen, %27
  %SyncOffset = getelementptr [8 x %struct._sync_data], ptr %Sync, i32 0, i32 %id.080, i32 2
  %28 = ptrtoint ptr %SyncOffset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %SyncOffset, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, i32 noundef %div31, i32 noundef %rem.decomposed, i32 noundef %29) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %sw.epilog22.if.end34_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %if.then
  %inc = add nuw nsw i32 %id.080, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !17, !19, !20, !22, !24, !25, !26, !28, !29, !31, !33, !35, !37, !38, !39, !41, !42, !44, !46, !48, !50, !52, !53, !54, !56, !58, !59, !61, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @__UNIQUE_ID_author287, !1, !"__UNIQUE_ID_author287", i1 false, i1 false}
!1 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_description288, !3, !"__UNIQUE_ID_description288", i1 false, i1 false}
!3 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 57, i32 1}
!4 = !{ptr @__UNIQUE_ID_license289, !5, !"__UNIQUE_ID_license289", i1 false, i1 false}
!5 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 58, i32 1}
!6 = !{ptr @__param_nsp_burst_mode, !7, !"__param_nsp_burst_mode", i1 false, i1 false}
!7 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 66, i32 1}
!8 = !{ptr @__UNIQUE_ID_nsp_burst_modetype290, !7, !"__UNIQUE_ID_nsp_burst_modetype290", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_nsp_burst_mode291, !10, !"__UNIQUE_ID_nsp_burst_mode291", i1 false, i1 false}
!10 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 67, i32 1}
!11 = !{ptr @__param_free_ports, !12, !"__param_free_ports", i1 false, i1 false}
!12 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 71, i32 1}
!13 = !{ptr @__UNIQUE_ID_free_portstype292, !12, !"__UNIQUE_ID_free_portstype292", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_free_ports293, !15, !"__UNIQUE_ID_free_ports293", i1 false, i1 false}
!15 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 72, i32 1}
!16 = !{ptr @___asan_gen_.64, !7, !"__param_str_nsp_burst_mode", i1 false, i1 false}
!17 = !{ptr @nsp_burst_mode, !18, !"nsp_burst_mode", i1 false, i1 false}
!18 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 65, i32 18}
!19 = !{ptr @___asan_gen_.67, !12, !"__param_str_free_ports", i1 false, i1 false}
!20 = !{ptr @free_ports, !21, !"free_ports", i1 false, i1 false}
!21 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 70, i32 19}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1722, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1723, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1724, i32 2}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1725, i32 2}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1726, i32 2}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1727, i32 2}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1728, i32 2}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nsp_cs_ids, !43, !"nsp_cs_ids", i1 false, i1 false}
!43 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1721, i32 38}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1735, i32 11}
!46 = !{ptr @nsp_driver, !47, !"nsp_driver", i1 false, i1 false}
!47 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1733, i32 29}
!48 = !{ptr @nsp_data_base, !49, !"nsp_data_base", i1 false, i1 false}
!49 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 89, i32 20}
!50 = distinct !{null, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1026, i32 3}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1042, i32 3}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1147, i32 3}
!58 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 147, i32 2}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @nsp_cs_message._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @nsp_cs_message._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 669, i32 3}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 672, i32 39}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 530, i32 3}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 895, i32 3}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 799, i32 3}
!75 = !{ptr @nsp_sync_table_20M, !76, !"nsp_sync_table_20M", i1 false, i1 false}
!76 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 430, i32 30}
!77 = !{ptr @nsp_sync_table_40M, !78, !"nsp_sync_table_40M", i1 false, i1 false}
!78 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 422, i32 30}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/pcmcia/nsp_message.c", i32 69, i32 4}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 605, i32 40}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/pcmcia/nsp_message.c", i32 36, i32 40}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 335, i32 3}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @nsp_detect.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1334, i32 2}
!90 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1338, i32 4}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 77, i32 13}
!95 = !{ptr @nsp_driver_template, !96, !"nsp_driver_template", i1 false, i1 false}
!96 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 74, i32 34}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 200, i32 3}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1371, i32 14}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1373, i32 16}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1374, i32 16}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1375, i32 16}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1376, i32 16}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1377, i32 16}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1379, i32 14}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1382, i32 15}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1385, i32 15}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1388, i32 15}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1391, i32 15}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1398, i32 16}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1401, i32 14}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1404, i32 17}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1407, i32 16}
!129 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1413, i32 16}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1416, i32 16}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1419, i32 16}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1422, i32 16}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1429, i32 18}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1653, i32 3}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1685, i32 3}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/pcmcia/nsp_cs.c", i32 1707, i32 3}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{i8 0, i8 2}
!155 = !{i64 2155109721}
!156 = !{i64 5091424}
!157 = !{i64 5091819}
!158 = !{i64 2155110298}
!159 = !{i64 2155110693}
!160 = !{i64 2155111113}
!161 = !{i64 2155111508}
!162 = !{i64 2155111855}
!163 = !{!"auto-init"}
!164 = !{i64 2155118415}
!165 = !{i64 5091621}
!166 = !{!"branch_weights", i32 2000, i32 1}
!167 = !{i64 2154481235, i64 2154481727, i64 2154481272, i64 2154481328, i64 2154481362, i64 2154481386, i64 2154481427, i64 2154481448, i64 2154481476, i64 2154481510}
!168 = !{i64 5092039}
!169 = !{i64 2155117871}
