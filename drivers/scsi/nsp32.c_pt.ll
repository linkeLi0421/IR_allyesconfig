; ModuleID = '/llk/IR_all_yes/drivers/scsi/nsp32.c_pt.bc'
source_filename = "../drivers/scsi/nsp32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._nsp32_hw_data = type { i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, %struct.spinlock, [100 x i8], ptr, i32, ptr, i32, i32, ptr, [8 x [8 x %struct._nsp32_lunt]], ptr, [8 x %struct._nsp32_target], i32, i32, i32, i32, i32, ptr, i32, [20 x i8], i8, [20 x i8], i8 }
%struct._nsp32_lunt = type { ptr, i32, i32, i32, i32, ptr, i32 }
%struct._nsp32_target = type { i8, i8, i8, i8, i32, i32, i8 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct._nsp32_sync_table = type { i8, i8, i8, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.__va_list = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct._nsp32_sglun = type { [129 x %struct._nsp32_sgtable] }
%struct._nsp32_sgtable = type { i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct._nsp32_autoparam = type { [64 x i8], i32, i8, i8, i8, i8, i16, i16, i32, [2 x i32] }

@__param_str_trans_mode = internal constant [17 x i8] c"nsp32.trans_mode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@trans_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_trans_mode = internal constant %struct.kernel_param { ptr @__param_str_trans_mode, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @trans_mode } }, section "__param", align 4
@__UNIQUE_ID_trans_modetype287 = internal constant [30 x i8] c"nsp32.parmtype=trans_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_trans_mode288 = internal constant [75 x i8] c"nsp32.parm=trans_mode:transfer mode (0: BIOS(default) 1: Async 2: Ultra20M\00", section ".modinfo", align 1
@__param_str_auto_param = internal constant [17 x i8] c"nsp32.auto_param\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@auto_param = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_auto_param = internal constant %struct.kernel_param { ptr @__param_str_auto_param, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @auto_param } }, section "__param", align 4
@__UNIQUE_ID_auto_paramtype289 = internal constant [31 x i8] c"nsp32.parmtype=auto_param:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_auto_param290 = internal constant [65 x i8] c"nsp32.parm=auto_param:AutoParameter mode (0: ON(default) 1: OFF)\00", section ".modinfo", align 1
@__param_str_disc_priv = internal constant [16 x i8] c"nsp32.disc_priv\00", align 1
@disc_priv = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_disc_priv = internal constant %struct.kernel_param { ptr @__param_str_disc_priv, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @disc_priv } }, section "__param", align 4
@__UNIQUE_ID_disc_privtype291 = internal constant [30 x i8] c"nsp32.parmtype=disc_priv:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disc_priv292 = internal constant [74 x i8] c"nsp32.parm=disc_priv:disconnection privilege mode (0: ON 1: OFF(default))\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [97 x i8] c"nsp32.author=YOKOTA Hiroshi <yokota@netlab.is.tsukuba.ac.jp>, GOTO Masanori <gotom@debian.or.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [86 x i8] c"nsp32.description=Workbit NinjaSCSI-32Bi/UDE CardBus/PCI SCSI host bus adapter module\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [30 x i8] c"nsp32.file=drivers/scsi/nsp32\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [18 x i8] c"nsp32.license=GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unloading...\00", [19 x i8] zeroinitializer }, align 32
@nsp32_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.6, ptr @nsp32_pci_table, ptr @nsp32_probe, ptr @nsp32_remove, ptr @nsp32_suspend, ptr @nsp32_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_nsp32__297_3407_init_nsp326 = internal global ptr @init_nsp32, section ".initcall6.init", align 4
@__exitcall_exit_nsp32 = internal global ptr @exit_nsp32, section ".exitcall.exit", align 4
@nsp32_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%snsp32: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nsp32_message\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/scsi/nsp32.c\00", [43 x i8] zeroinitializer }, align 32
@nsp32_message._entry_ptr = internal global ptr @nsp32_message._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nsp32\00", [26 x i8] zeroinitializer }, align 32
@nsp32_pci_table = internal global { [9 x %struct.pci_device_id], [64 x i8] } { [9 x %struct.pci_device_id] [%struct.pci_device_id { i32 4348, i32 5, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4421, i32 61447, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4421, i32 32775, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4421, i32 61456, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4421, i32 61458, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4421, i32 61459, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4421, i32 61461, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4421, i32 32777, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@nsp32_data_base = internal global { %struct._nsp32_hw_data, [552 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable pci device\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"irq: %i mmio: %p+0x%lx slot: %s model: %s\00", [54 x i8] zeroinitializer }, align 32
@nsp32_model = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87], [36 x i8] zeroinitializer }, align 32
@nsp32_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @nsp32_queuecommand, ptr null, ptr null, ptr @.str.20, ptr @nsp32_info, ptr null, ptr null, ptr null, ptr @nsp32_eh_abort, ptr null, ptr null, ptr null, ptr @nsp32_eh_host_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsp32_show_info, ptr null, ptr null, ptr null, ptr null, ptr @.str.6, ptr null, i32 1, i32 7, i16 128, i16 0, i32 128, i32 0, i32 4095, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to scsi register\00", [40 x i8] zeroinitializer }, align 32
@nsp32_detect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&(data->Lock)\00", [18 x i8] zeroinitializer }, align 32
@nsp32_sync_table_40M = internal global { [9 x %struct._nsp32_sync_table], [51 x i8] } { [9 x %struct._nsp32_sync_table] [%struct._nsp32_sync_table { i8 1, i8 0, i8 12, i8 12, i8 0 }, %struct._nsp32_sync_table { i8 2, i8 0, i8 13, i8 24, i8 0 }, %struct._nsp32_sync_table { i8 3, i8 1, i8 25, i8 25, i8 0 }, %struct._nsp32_sync_table { i8 4, i8 1, i8 26, i8 31, i8 1 }, %struct._nsp32_sync_table { i8 5, i8 2, i8 32, i8 37, i8 1 }, %struct._nsp32_sync_table { i8 6, i8 2, i8 38, i8 49, i8 1 }, %struct._nsp32_sync_table { i8 7, i8 3, i8 50, i8 50, i8 1 }, %struct._nsp32_sync_table { i8 8, i8 3, i8 51, i8 56, i8 2 }, %struct._nsp32_sync_table { i8 9, i8 3, i8 57, i8 62, i8 2 }], [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set PCI DMA mask\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to allocate DMA memory\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NinjaSCSI-32Bi/UDE: irq %d, io 0x%lx+0x%x\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Unable to allocate IRQ for NinjaSCSI32 SCSI PCI controller. Interrupt: %d\00", [54 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"I/O region 0x%x+0x%x is already used\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to add scsi host\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Workbit NinjaSCSI-32Bi/UDE\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Currentsc != NULL. Cancel this command request\00", [49 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SGT fail\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"can't transfer over 64KB at a time, size=0x%x\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus busy\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SCSI MsgOut without any message!\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown trans_method\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"abort\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Host Reset\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NinjaSCSI-32 status\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Driver version:        %s, $Revision: 1.33 $\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SCSI host No.:         %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IRQ:                   %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"IO:                    0x%lx-0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MMIO(virtual address): 0x%lx-0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sg_tablesize:          %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Chip revision:         0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Power Management:      %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"OEM:                   %ld, %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CurrentSC:             0x%p\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SDTR status\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"id %d: \00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"----- NinjaSCSI-32 host adapter\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" sync\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" none\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" transfer %d.%dMB/s, offset %d\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.2\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No EEPROM detected: 0x%x\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid number: 0x%x\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Unknown EEPROM\00", [17 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"limit_entry exceeds syncnum!\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Unsupported Auto Sync mode. Fall back to manual mode.\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"term power on\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"card disconnect\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clean up current SCSI command\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"detected someone do bus reset\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SCpnt==NULL this can't be happened\00", [61 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"irq_stat=0x%x trans_stat=0x%x\00", [34 x i8] zeroinitializer }, align 32
@do_nsp32_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.5, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"auto+fifo\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_nsp32_isr\00", [19 x i8] zeroinitializer }, align 32
@do_nsp32_isr._entry_ptr = internal global ptr @do_nsp32_isr._entry, section ".printk_index", align 4
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AUTO SCSI ILLEGAL PHASE OCCUR!!!!\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"phase chg/other phase?\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"irq_stat=0x%x trans_stat=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Received unexpected BMCNTERR IRQ! \00", [61 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unexpected message of AutoSCSI MsgIn: 0x%x\00", [53 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unexpected message of AutoSCSI MsgIn: SAVE_POINTERS\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported message: 0x%x\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"invalid or unsupported MessageIn, rejected. current msg: 0x%x (len: 0x%x), processing msg: 0x%x\00", [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown id/lun\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no SCSI command is processing\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"resid underflow\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Target or Lun is invalid\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wait SACK timeout, ack_bit: 0x%x\00", [63 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unexpected bus free occurred\00", [35 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wait REQ timeout, req_bit: 0x%x\00", [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"I-O DATA CBSC-II CardBus card\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"KME SCSI CardBus card\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Workbit duo SCSI CardBus card\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Logitec CardBus card with external ROM\00", [57 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Workbit / I-O DATA PCI card\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Logitec PCI card with external ROM\00", [61 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Melco CardBus/PCI card with external ROM\00", [55 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"pci-suspend: pdev=0x%p, state.event=%x, slot=%s, host=0x%p\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pci-resume: pdev=0x%p, slot=%s, host=0x%p\00", [54 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"io=0x%x reg=0x%x\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"missing device. abort resume.\00", [34 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"resume success\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"loading...\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.95 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7, i64 10, i64 11, i64 32, i64 35]
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"trans_mode\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 45, i32 18 }
@___asan_gen_.99 = private unnamed_addr constant [11 x i8] c"auto_param\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 51, i32 18 }
@___asan_gen_.102 = private unnamed_addr constant [10 x i8] c"disc_priv\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 55, i32 18 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 3403, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"nsp32_driver\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 3383, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 328, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 3384, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"nsp32_pci_table\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 69, i32 29 }
@___asan_gen_.132 = private unnamed_addr constant [16 x i8] c"nsp32_data_base\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 130, i32 22 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 3343, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 3359, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"nsp32_model\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 41, i32 15 }
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"nsp32_template\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 262, i32 34 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2566, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2584, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [21 x i8] c"nsp32_sync_table_40M\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 138, i32 25 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2621, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2637, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2648, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2704, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2729, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2739, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2747, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 264, i32 13 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 923, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 970, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 887, i32 5 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 467, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 480, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 548, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2820, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2891, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1461, i32 14 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1462, i32 16 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1464, i32 16 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1465, i32 16 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1466, i32 16 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1468, i32 16 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1470, i32 16 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1472, i32 16 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1479, i32 16 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1480, i32 26 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1480, i32 34 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1482, i32 16 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1486, i32 16 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1490, i32 14 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1493, i32 17 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1496, i32 16 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1503, i32 17 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1505, i32 17 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1508, i32 16 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1515, i32 18 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 63, i32 44 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2925, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2930, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2947, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2366, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 3025, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1124, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1194, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1196, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1212, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1222, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1223, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1272, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1331, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1403, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1404, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1420, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2000, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2040, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2065, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2216, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 835, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 838, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1782, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1875, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2511, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1707, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2482, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 42, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 43, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 44, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 45, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 46, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 47, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [24 x i8] c"../drivers/scsi/nsp32.h\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 48, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 3288, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 3305, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 3314, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 3317, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 3324, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.397 = private constant [24 x i8] c"../drivers/scsi/nsp32.c\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 3398, i32 2 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_auto_param290, ptr @__UNIQUE_ID_auto_paramtype289, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_disc_priv292, ptr @__UNIQUE_ID_disc_privtype291, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__UNIQUE_ID_trans_mode288, ptr @__UNIQUE_ID_trans_modetype287, ptr @__exitcall_exit_nsp32, ptr @__initcall__kmod_nsp32__297_3407_init_nsp326, ptr @__param_auto_param, ptr @__param_disc_priv, ptr @__param_trans_mode, ptr @do_nsp32_isr._entry, ptr @do_nsp32_isr._entry_ptr, ptr @exit_nsp32, ptr @nsp32_message._entry, ptr @nsp32_message._entry_ptr, ptr @trans_mode, ptr @auto_param, ptr @disc_priv, ptr @.str.1, ptr @.str.2, ptr @nsp32_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nsp32_pci_table, ptr @nsp32_data_base, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @nsp32_model, ptr @nsp32_template, ptr @.str.10, ptr @nsp32_detect.__key, ptr @.str.11, ptr @nsp32_sync_table_40M, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_param to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disc_priv to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp32_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp32_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp32_pci_table to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp32_data_base to i32), i32 2200, i32 2752, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp32_model to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp32_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp32_detect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp32_sync_table_40M to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_nsp32_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_nsp32() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  tail call void @pci_unregister_driver(ptr noundef nonnull @nsp32_driver) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsp32_message(ptr nocapture readnone %func, i32 %line, ptr noundef %type, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #1 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %buf = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #9
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !248
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #9
  %1 = call ptr @memset(ptr %buf, i32 255, i32 100)
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef nonnull %buf, i32 noundef 100, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %type, ptr noundef nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_nsp32() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.93)
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @nsp32_driver, ptr noundef null, ptr noundef nonnull @.str.6) #9
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp32_probe(ptr noundef %pdev, ptr noundef %id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr %pdev, ptr getelementptr inbounds (%struct._nsp32_hw_data, ptr @nsp32_data_base, i32 0, i32 6), align 4
  store ptr %id, ptr getelementptr inbounds (%struct._nsp32_hw_data, ptr @nsp32_data_base, i32 0, i32 7), align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  store i32 %1, ptr @nsp32_data_base, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  store i32 %3, ptr getelementptr inbounds (%struct._nsp32_hw_data, ptr @nsp32_data_base, i32 0, i32 1), align 4
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %sub = sub i32 1, %3
  %add = add i32 %sub, %5
  %cond = select i1 %cmp, i32 0, i32 %add
  store i32 %cond, ptr getelementptr inbounds (%struct._nsp32_hw_data, ptr @nsp32_data_base, i32 0, i32 2), align 4
  %call9 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 1) #9
  store ptr %call9, ptr getelementptr inbounds (%struct._nsp32_hw_data, ptr @nsp32_data_base, i32 0, i32 3), align 4
  %end12 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %6 = ptrtoint ptr %end12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13 = icmp eq i32 %7, 0
  br i1 %cmp13, label %if.end.cond.end24_crit_edge, label %cond.false15

if.end.cond.end24_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end24

cond.false15:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx11 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx11, align 8
  %sub22 = add i32 %7, 1
  %add23 = sub i32 %sub22, %9
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false15, %if.end.cond.end24_crit_edge
  %cond25 = phi i32 [ %add23, %cond.false15 ], [ 0, %if.end.cond.end24_crit_edge ]
  store i32 %cond25, ptr getelementptr inbounds (%struct._nsp32_hw_data, ptr @nsp32_data_base, i32 0, i32 4), align 4
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %call.i = tail call ptr @scsi_host_alloc(ptr noundef nonnull @nsp32_template, i32 noundef 2200) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10) #9
  br label %nsp32_detect.exit

if.end.i:                                         ; preds = %cond.end24
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 53
  %10 = call ptr @memcpy(ptr %hostdata.i, ptr @nsp32_data_base, i32 2200)
  %11 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hostdata.i, align 4
  %irq.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 47
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %irq.i, align 8
  %BaseAddress.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %BaseAddress.i, align 4
  %io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 44
  %16 = ptrtoint ptr %io_port.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %io_port.i, align 8
  %unique_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 23
  %17 = ptrtoint ptr %unique_id.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %unique_id.i, align 8
  %NumAddress.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 1
  %18 = ptrtoint ptr %NumAddress.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %NumAddress.i, align 4
  %conv.i = trunc i32 %19 to i8
  %n_io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 45
  %20 = ptrtoint ptr %n_io_port.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %n_io_port.i, align 4
  %MmioAddress.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 1, i32 1
  %21 = ptrtoint ptr %MmioAddress.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %MmioAddress.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %base.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 43
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %base.i, align 4
  %Host.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 3, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %Host.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %Host.i, align 4
  %Lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 3, i32 0, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %Lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @nsp32_detect.__key, i16 noundef signext 3) #9
  %cur_lunt.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %26 = ptrtoint ptr %cur_lunt.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %cur_lunt.i, align 4
  %cur_target.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %cur_target.i, align 4
  %trans_method.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %trans_method.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %trans_method.i, align 4
  %clock.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %clock.i, align 4
  %synct.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %30 = ptrtoint ptr %synct.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @nsp32_sync_table_40M, ptr %synct.i, align 4
  %syncnum.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %syncnum.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 9, ptr %syncnum.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call13.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.not.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.not.i, label %if.end17.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14) #9
  br label %scsi_unregister.i

if.end17.i:                                       ; preds = %if.end.i
  %auto_paddr.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 10, i32 0, i32 0, i32 0, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 88, ptr noundef %auto_paddr.i, i32 noundef 3264, i32 noundef 0) #9
  %autoparam.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 10
  %32 = ptrtoint ptr %autoparam.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i, ptr %autoparam.i, align 4
  %cmp21.i = icmp eq ptr %call.i.i, null
  br i1 %cmp21.i, label %if.then23.i, label %if.end24.i

if.then23.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15) #9
  br label %scsi_unregister.i

if.end24.i:                                       ; preds = %if.end17.i
  %sg_paddr.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 9
  %call.i191.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 65536, ptr noundef %sg_paddr.i, i32 noundef 3264, i32 noundef 0) #9
  %sg_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 8
  %33 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i191.i, ptr %sg_list.i, align 4
  %cmp28.i = icmp eq ptr %call.i191.i, null
  br i1 %cmp28.i, label %if.then30.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end24.i
  %lunt.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4
  br label %for.cond34.preheader.i

if.then30.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15) #9
  br label %free_autoparam.i

for.cond34.preheader.i:                           ; preds = %for.cond34.preheader.i.for.cond34.preheader.i_crit_edge, %for.cond.preheader.i
  %i.0199.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc45.i, %for.cond34.preheader.i.for.cond34.preheader.i_crit_edge ]
  %mul.i = shl i32 %i.0199.i, 3
  %34 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sg_list.i, align 4
  %arrayidx.i = getelementptr %struct._nsp32_sglun, ptr %35, i32 %mul.i
  %36 = ptrtoint ptr %sg_paddr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sg_paddr.i, align 4
  %mul40.i = mul nuw nsw i32 %i.0199.i, 8256
  %add41.i = add i32 %37, %mul40.i
  %arrayidx43.i = getelementptr [8 x [8 x %struct._nsp32_lunt]], ptr %lunt.i, i32 0, i32 %i.0199.i, i32 0
  %tmp.sroa.13.0.arrayidx43.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx43.i, i32 20
  %38 = call ptr @memset(ptr %arrayidx43.i, i32 0, i32 20)
  %39 = ptrtoint ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx.i, ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.i, align 4
  %tmp.sroa.15.0.arrayidx43.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx43.i, i32 24
  %40 = ptrtoint ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add41.i, ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.i, align 4
  %add.1.i = or i32 %mul.i, 1
  %41 = load ptr, ptr %sg_list.i, align 4
  %arrayidx.1.i = getelementptr %struct._nsp32_sglun, ptr %41, i32 %add.1.i
  %42 = load i32, ptr %sg_paddr.i, align 4
  %mul40.1.i = mul nuw nsw i32 %add.1.i, 1032
  %add41.1.i = add i32 %42, %mul40.1.i
  %arrayidx43.1.i = getelementptr [8 x [8 x %struct._nsp32_lunt]], ptr %lunt.i, i32 0, i32 %i.0199.i, i32 1
  %tmp.sroa.13.0.arrayidx43.sroa_idx.1.i = getelementptr inbounds i8, ptr %arrayidx43.1.i, i32 20
  %43 = call ptr @memset(ptr %arrayidx43.1.i, i32 0, i32 20)
  %44 = ptrtoint ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx.1.i, ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.1.i, align 4
  %tmp.sroa.15.0.arrayidx43.sroa_idx.1.i = getelementptr inbounds i8, ptr %arrayidx43.1.i, i32 24
  %45 = ptrtoint ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add41.1.i, ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.1.i, align 4
  %add.2.i = or i32 %mul.i, 2
  %46 = load ptr, ptr %sg_list.i, align 4
  %arrayidx.2.i = getelementptr %struct._nsp32_sglun, ptr %46, i32 %add.2.i
  %47 = load i32, ptr %sg_paddr.i, align 4
  %mul40.2.i = mul nuw nsw i32 %add.2.i, 1032
  %add41.2.i = add i32 %47, %mul40.2.i
  %arrayidx43.2.i = getelementptr [8 x [8 x %struct._nsp32_lunt]], ptr %lunt.i, i32 0, i32 %i.0199.i, i32 2
  %tmp.sroa.13.0.arrayidx43.sroa_idx.2.i = getelementptr inbounds i8, ptr %arrayidx43.2.i, i32 20
  %48 = call ptr @memset(ptr %arrayidx43.2.i, i32 0, i32 20)
  %49 = ptrtoint ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %arrayidx.2.i, ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.2.i, align 4
  %tmp.sroa.15.0.arrayidx43.sroa_idx.2.i = getelementptr inbounds i8, ptr %arrayidx43.2.i, i32 24
  %50 = ptrtoint ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add41.2.i, ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.2.i, align 4
  %add.3.i = or i32 %mul.i, 3
  %51 = load ptr, ptr %sg_list.i, align 4
  %arrayidx.3.i = getelementptr %struct._nsp32_sglun, ptr %51, i32 %add.3.i
  %52 = load i32, ptr %sg_paddr.i, align 4
  %mul40.3.i = mul nuw nsw i32 %add.3.i, 1032
  %add41.3.i = add i32 %52, %mul40.3.i
  %arrayidx43.3.i = getelementptr [8 x [8 x %struct._nsp32_lunt]], ptr %lunt.i, i32 0, i32 %i.0199.i, i32 3
  %tmp.sroa.13.0.arrayidx43.sroa_idx.3.i = getelementptr inbounds i8, ptr %arrayidx43.3.i, i32 20
  %53 = call ptr @memset(ptr %arrayidx43.3.i, i32 0, i32 20)
  %54 = ptrtoint ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx.3.i, ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.3.i, align 4
  %tmp.sroa.15.0.arrayidx43.sroa_idx.3.i = getelementptr inbounds i8, ptr %arrayidx43.3.i, i32 24
  %55 = ptrtoint ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add41.3.i, ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.3.i, align 4
  %add.4.i = or i32 %mul.i, 4
  %56 = load ptr, ptr %sg_list.i, align 4
  %arrayidx.4.i = getelementptr %struct._nsp32_sglun, ptr %56, i32 %add.4.i
  %57 = load i32, ptr %sg_paddr.i, align 4
  %mul40.4.i = mul nuw nsw i32 %add.4.i, 1032
  %add41.4.i = add i32 %57, %mul40.4.i
  %arrayidx43.4.i = getelementptr [8 x [8 x %struct._nsp32_lunt]], ptr %lunt.i, i32 0, i32 %i.0199.i, i32 4
  %tmp.sroa.13.0.arrayidx43.sroa_idx.4.i = getelementptr inbounds i8, ptr %arrayidx43.4.i, i32 20
  %58 = call ptr @memset(ptr %arrayidx43.4.i, i32 0, i32 20)
  %59 = ptrtoint ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx.4.i, ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.4.i, align 4
  %tmp.sroa.15.0.arrayidx43.sroa_idx.4.i = getelementptr inbounds i8, ptr %arrayidx43.4.i, i32 24
  %60 = ptrtoint ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.4.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add41.4.i, ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.4.i, align 4
  %add.5.i = or i32 %mul.i, 5
  %61 = load ptr, ptr %sg_list.i, align 4
  %arrayidx.5.i = getelementptr %struct._nsp32_sglun, ptr %61, i32 %add.5.i
  %mul40.5.i = mul nuw nsw i32 %add.5.i, 1032
  %add41.5.i = add i32 %57, %mul40.5.i
  %arrayidx43.5.i = getelementptr [8 x [8 x %struct._nsp32_lunt]], ptr %lunt.i, i32 0, i32 %i.0199.i, i32 5
  %tmp.sroa.13.0.arrayidx43.sroa_idx.5.i = getelementptr inbounds i8, ptr %arrayidx43.5.i, i32 20
  %62 = call ptr @memset(ptr %arrayidx43.5.i, i32 0, i32 20)
  %63 = ptrtoint ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.5.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx.5.i, ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.5.i, align 4
  %tmp.sroa.15.0.arrayidx43.sroa_idx.5.i = getelementptr inbounds i8, ptr %arrayidx43.5.i, i32 24
  %64 = ptrtoint ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.5.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add41.5.i, ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.5.i, align 4
  %add.6.i = or i32 %mul.i, 6
  %arrayidx.6.i = getelementptr %struct._nsp32_sglun, ptr %61, i32 %add.6.i
  %65 = load i32, ptr %sg_paddr.i, align 4
  %mul40.6.i = mul nuw nsw i32 %add.6.i, 1032
  %add41.6.i = add i32 %65, %mul40.6.i
  %arrayidx43.6.i = getelementptr [8 x [8 x %struct._nsp32_lunt]], ptr %lunt.i, i32 0, i32 %i.0199.i, i32 6
  %tmp.sroa.13.0.arrayidx43.sroa_idx.6.i = getelementptr inbounds i8, ptr %arrayidx43.6.i, i32 20
  %66 = call ptr @memset(ptr %arrayidx43.6.i, i32 0, i32 20)
  %67 = ptrtoint ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.6.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx.6.i, ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.6.i, align 4
  %tmp.sroa.15.0.arrayidx43.sroa_idx.6.i = getelementptr inbounds i8, ptr %arrayidx43.6.i, i32 24
  %68 = ptrtoint ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.6.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add41.6.i, ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.6.i, align 4
  %add.7.i = or i32 %mul.i, 7
  %69 = load ptr, ptr %sg_list.i, align 4
  %arrayidx.7.i = getelementptr %struct._nsp32_sglun, ptr %69, i32 %add.7.i
  %70 = load i32, ptr %sg_paddr.i, align 4
  %mul40.7.i = mul nuw nsw i32 %add.7.i, 1032
  %add41.7.i = add i32 %70, %mul40.7.i
  %arrayidx43.7.i = getelementptr [8 x [8 x %struct._nsp32_lunt]], ptr %lunt.i, i32 0, i32 %i.0199.i, i32 7
  %tmp.sroa.13.0.arrayidx43.sroa_idx.7.i = getelementptr inbounds i8, ptr %arrayidx43.7.i, i32 20
  %71 = call ptr @memset(ptr %arrayidx43.7.i, i32 0, i32 20)
  %72 = ptrtoint ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.7.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %arrayidx.7.i, ptr %tmp.sroa.13.0.arrayidx43.sroa_idx.7.i, align 4
  %tmp.sroa.15.0.arrayidx43.sroa_idx.7.i = getelementptr inbounds i8, ptr %arrayidx43.7.i, i32 24
  %73 = ptrtoint ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.7.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add41.7.i, ptr %tmp.sroa.15.0.arrayidx43.sroa_idx.7.i, align 4
  %inc45.i = add nuw nsw i32 %i.0199.i, 1
  %exitcond.not.i = icmp eq i32 %inc45.i, 8
  br i1 %exitcond.not.i, label %for.cond47.preheader.i, label %for.cond34.preheader.i.for.cond34.preheader.i_crit_edge

for.cond34.preheader.i.for.cond34.preheader.i_crit_edge: ; preds = %for.cond34.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond34.preheader.i

for.cond47.preheader.i:                           ; preds = %for.cond34.preheader.i
  %target51.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 6
  %limit_entry.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 5, i32 1, i32 1
  %74 = ptrtoint ptr %limit_entry.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %limit_entry.i, align 4
  %sync_flag.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 7
  %75 = ptrtoint ptr %sync_flag.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %sync_flag.i, align 4
  %76 = ptrtoint ptr %synct.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %synct.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 1
  %offset.i.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 0, i32 3
  %80 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %offset.i.i, align 1
  %period1.i.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 0, i32 2
  %81 = ptrtoint ptr %period1.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %period1.i.i, align 2
  %82 = shl i8 %79, 4
  %83 = ptrtoint ptr %target51.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %target51.i, align 4
  %ackwidth.i.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 0, i32 1
  %84 = ptrtoint ptr %ackwidth.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %ackwidth.i.i, align 1
  %sample_reg.i.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 5, i32 1, i32 1, i32 1
  %85 = ptrtoint ptr %sample_reg.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %sample_reg.i.i, align 4
  %arrayidx52.1.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 6
  %limit_entry.1.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 8
  %86 = ptrtoint ptr %limit_entry.1.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %limit_entry.1.i, align 4
  %sync_flag.1.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 7
  %87 = ptrtoint ptr %sync_flag.1.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %sync_flag.1.i, align 4
  %88 = load i8, ptr %77, align 1
  %offset.i.1.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 1, i32 3
  %89 = ptrtoint ptr %offset.i.1.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %offset.i.1.i, align 1
  %period1.i.1.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 1, i32 2
  %90 = ptrtoint ptr %period1.i.1.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %period1.i.1.i, align 2
  %91 = shl i8 %88, 4
  %92 = ptrtoint ptr %arrayidx52.1.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx52.1.i, align 4
  %ackwidth.i.1.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %ackwidth.i.1.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %ackwidth.i.1.i, align 1
  %sample_reg.i.1.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 8, i32 0, i32 0, i32 1
  %94 = ptrtoint ptr %sample_reg.i.1.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %sample_reg.i.1.i, align 4
  %arrayidx52.2.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 8, i32 0, i32 0, i32 2
  %limit_entry.2.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 8, i32 0, i32 1
  %95 = ptrtoint ptr %limit_entry.2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %limit_entry.2.i, align 4
  %sync_flag.2.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 2, i32 4
  %96 = ptrtoint ptr %sync_flag.2.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %sync_flag.2.i, align 4
  %97 = load i8, ptr %77, align 1
  %offset.i.2.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 2, i32 3
  %98 = ptrtoint ptr %offset.i.2.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %offset.i.2.i, align 1
  %period1.i.2.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 2, i32 2
  %99 = ptrtoint ptr %period1.i.2.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %period1.i.2.i, align 2
  %100 = shl i8 %97, 4
  %101 = ptrtoint ptr %arrayidx52.2.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %arrayidx52.2.i, align 4
  %ackwidth.i.2.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 2, i32 1
  %102 = ptrtoint ptr %ackwidth.i.2.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %ackwidth.i.2.i, align 1
  %sample_reg.i.2.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 2, i32 6
  %103 = ptrtoint ptr %sample_reg.i.2.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %sample_reg.i.2.i, align 4
  %arrayidx52.3.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 8, i32 1
  %limit_entry.3.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 8, i32 2
  %104 = ptrtoint ptr %limit_entry.3.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %limit_entry.3.i, align 4
  %sync_flag.3.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 3, i32 4
  %105 = ptrtoint ptr %sync_flag.3.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %sync_flag.3.i, align 4
  %106 = load i8, ptr %77, align 1
  %offset.i.3.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 3, i32 3
  %107 = ptrtoint ptr %offset.i.3.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %offset.i.3.i, align 1
  %period1.i.3.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 3, i32 2
  %108 = ptrtoint ptr %period1.i.3.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %period1.i.3.i, align 2
  %109 = shl i8 %106, 4
  %110 = ptrtoint ptr %arrayidx52.3.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx52.3.i, align 4
  %ackwidth.i.3.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 3, i32 1
  %111 = ptrtoint ptr %ackwidth.i.3.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %ackwidth.i.3.i, align 1
  %sample_reg.i.3.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 8, i32 3
  %112 = ptrtoint ptr %sample_reg.i.3.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %sample_reg.i.3.i, align 4
  %arrayidx52.4.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 8, i32 4
  %limit_entry.4.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 9
  %113 = ptrtoint ptr %limit_entry.4.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %limit_entry.4.i, align 4
  %sync_flag.4.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 4, i32 4
  %114 = ptrtoint ptr %sync_flag.4.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %sync_flag.4.i, align 4
  %115 = load i8, ptr %77, align 1
  %offset.i.4.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 8, i32 7
  %116 = ptrtoint ptr %offset.i.4.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %offset.i.4.i, align 1
  %period1.i.4.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 8, i32 6
  %117 = ptrtoint ptr %period1.i.4.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %period1.i.4.i, align 2
  %118 = shl i8 %115, 4
  %119 = ptrtoint ptr %arrayidx52.4.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx52.4.i, align 4
  %ackwidth.i.4.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 8, i32 5
  %120 = ptrtoint ptr %ackwidth.i.4.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %ackwidth.i.4.i, align 1
  %sample_reg.i.4.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 4, i32 6
  %121 = ptrtoint ptr %sample_reg.i.4.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %sample_reg.i.4.i, align 4
  %arrayidx52.5.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 10
  %limit_entry.5.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 10, i32 1, i32 1
  %122 = ptrtoint ptr %limit_entry.5.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %limit_entry.5.i, align 4
  %sync_flag.5.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 10, i32 1
  %123 = ptrtoint ptr %sync_flag.5.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %sync_flag.5.i, align 4
  %124 = load i8, ptr %77, align 1
  %offset.i.5.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 5, i32 3
  %125 = ptrtoint ptr %offset.i.5.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %offset.i.5.i, align 1
  %period1.i.5.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 5, i32 2
  %126 = ptrtoint ptr %period1.i.5.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %period1.i.5.i, align 2
  %127 = shl i8 %124, 4
  %128 = ptrtoint ptr %arrayidx52.5.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %arrayidx52.5.i, align 4
  %ackwidth.i.5.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 5, i32 1
  %129 = ptrtoint ptr %ackwidth.i.5.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %ackwidth.i.5.i, align 1
  %sample_reg.i.5.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 10, i32 2
  %130 = ptrtoint ptr %sample_reg.i.5.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %sample_reg.i.5.i, align 4
  %arrayidx52.6.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 10, i32 3
  %limit_entry.6.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 10, i32 3, i32 1, i32 1
  %131 = ptrtoint ptr %limit_entry.6.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %limit_entry.6.i, align 4
  %sync_flag.6.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 10, i32 3, i32 1
  %132 = ptrtoint ptr %sync_flag.6.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %sync_flag.6.i, align 4
  %133 = load i8, ptr %77, align 1
  %offset.i.6.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 6, i32 3
  %134 = ptrtoint ptr %offset.i.6.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %offset.i.6.i, align 1
  %period1.i.6.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 6, i32 2
  %135 = ptrtoint ptr %period1.i.6.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %period1.i.6.i, align 2
  %136 = shl i8 %133, 4
  %137 = ptrtoint ptr %arrayidx52.6.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx52.6.i, align 4
  %ackwidth.i.6.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 6, i32 1
  %138 = ptrtoint ptr %ackwidth.i.6.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %ackwidth.i.6.i, align 1
  %sample_reg.i.6.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 10, i32 3, i32 2
  %139 = ptrtoint ptr %sample_reg.i.6.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %sample_reg.i.6.i, align 4
  %arrayidx52.7.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 10, i32 3, i32 3
  %limit_entry.7.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 10, i32 3, i32 7
  %140 = ptrtoint ptr %limit_entry.7.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %limit_entry.7.i, align 4
  %sync_flag.7.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 10, i32 3, i32 6
  %141 = ptrtoint ptr %sync_flag.7.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %sync_flag.7.i, align 4
  %142 = load i8, ptr %77, align 1
  %offset.i.7.i = getelementptr [8 x %struct._nsp32_target], ptr %target51.i, i32 0, i32 7, i32 3
  %143 = ptrtoint ptr %offset.i.7.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %offset.i.7.i, align 1
  %period1.i.7.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 10, i32 3, i32 5
  %144 = ptrtoint ptr %period1.i.7.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %period1.i.7.i, align 2
  %145 = shl i8 %142, 4
  %146 = ptrtoint ptr %arrayidx52.7.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %arrayidx52.7.i, align 4
  %ackwidth.i.7.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 10, i32 3, i32 4
  %147 = ptrtoint ptr %ackwidth.i.7.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %ackwidth.i.7.i, align 1
  %sample_reg.i.7.i = getelementptr %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 11
  %148 = ptrtoint ptr %sample_reg.i.7.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %sample_reg.i.7.i, align 4
  %pci_devid.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 3, i32 0, i32 0, i32 1
  %149 = ptrtoint ptr %pci_devid.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pci_devid.i.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %150, align 4
  %device3.i.i = getelementptr inbounds %struct.pci_device_id, ptr %150, i32 0, i32 1
  %153 = ptrtoint ptr %device3.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %device3.i.i, align 4
  %call.i192.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 126) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %call.i192.i)
  %cmp.not.i.i = icmp eq i32 %call.i192.i, 85
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.cond47.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.50, i32 noundef %call.i192.i) #9
  br label %if.then59.i

if.end.i.i:                                       ; preds = %for.cond47.preheader.i
  %call4.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 127) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %call4.i.i)
  %cmp5.not.i.i = icmp eq i32 %call4.i.i, 170
  br i1 %cmp5.not.i.i, label %if.end7.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.51, i32 noundef %call4.i.i) #9
  br label %if.then59.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4421, i32 %152)
  %cmp8.i.i = icmp eq i32 %152, 4421
  call void @__sanitizer_cov_trace_const_cmp4(i32 61456, i32 %154)
  %cmp9.i.i = icmp eq i32 %154, 61456
  %or.cond.i.i = select i1 %cmp8.i.i, i1 %cmp9.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then10.i.i, label %if.else.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  %call.i.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 17) #9
  %resettime.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  %155 = ptrtoint ptr %resettime.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %call.i.i.i, ptr %resettime.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.then10.i.i
  %i.07.i.i.i = phi i32 [ 0, %if.then10.i.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %call3.i.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef %i.07.i.i.i) #9
  %switch.tableidx = add i32 %call3.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %156 = icmp ult i32 %switch.tableidx, 3
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 12825, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %val.0.i.i.i = select i1 %156, i8 %switch.masked, i8 12
  %limit_entry.i.i.i.i = getelementptr %struct._nsp32_hw_data, ptr %hostdata.i, i32 0, i32 19, i32 %i.07.i.i.i, i32 5
  %157 = ptrtoint ptr %limit_entry.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %limit_entry.i.i.i.i, align 4
  %159 = ptrtoint ptr %syncnum.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %syncnum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %160)
  %cmp.not.i.i.i.i = icmp slt i32 %158, %160
  br i1 %cmp.not.i.i.i.i, label %for.body.i.i.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.i.if.end.i.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.54) #9
  %161 = ptrtoint ptr %limit_entry.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %limit_entry.i.i.i.i, align 4
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %for.body.i.i.i.if.end.i.i.i.i_crit_edge
  %162 = ptrtoint ptr %limit_entry.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %limit_entry.i.i.i.i, align 4
  %164 = ptrtoint ptr %syncnum.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %syncnum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %165)
  %cmp433.i.i.i.i = icmp slt i32 %163, %165
  br i1 %cmp433.i.i.i.i, label %for.body.lr.ph.i.i.i.i, label %if.end.i.i.i.i.nsp32_search_period_entry.exit.i.i.i_crit_edge

if.end.i.i.i.i.nsp32_search_period_entry.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_search_period_entry.exit.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.end.i.i.i.i
  %166 = ptrtoint ptr %synct.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %synct.i, align 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.034.i.i.i.i = phi i32 [ %163, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %start_period.i.i.i.i = getelementptr %struct._nsp32_sync_table, ptr %167, i32 %i.034.i.i.i.i, i32 2
  %168 = ptrtoint ptr %start_period.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %start_period.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %169, i8 %val.0.i.i.i)
  %cmp6.not.i.i.i.i = icmp ugt i8 %169, %val.0.i.i.i
  br i1 %cmp6.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %end_period.i.i.i.i = getelementptr %struct._nsp32_sync_table, ptr %167, i32 %i.034.i.i.i.i, i32 3
  %170 = ptrtoint ptr %end_period.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %end_period.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %171, i8 %val.0.i.i.i)
  %cmp12.not.i.i.i.i = icmp ult i8 %171, %val.0.i.i.i
  br i1 %cmp12.not.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.nsp32_search_period_entry.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.nsp32_search_period_entry.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_search_period_entry.exit.i.i.i

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %inc.i.i.i.i = add i32 %i.034.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %165
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.if.then.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.if.then.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

nsp32_search_period_entry.exit.i.i.i:             ; preds = %land.lhs.true.i.i.i.i.nsp32_search_period_entry.exit.i.i.i_crit_edge, %if.end.i.i.i.i.nsp32_search_period_entry.exit.i.i.i_crit_edge
  %i.0.lcssa.i.i.i.i = phi i32 [ %163, %if.end.i.i.i.i.nsp32_search_period_entry.exit.i.i.i_crit_edge ], [ %i.034.i.i.i.i, %land.lhs.true.i.i.i.i.nsp32_search_period_entry.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i.i.i, i32 %165)
  %cmp17.i.i.i.i = icmp eq i32 %i.0.lcssa.i.i.i.i, %165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i.i.i.i)
  %cmp85.i.i.i = icmp slt i32 %i.0.lcssa.i.i.i.i, 0
  %cmp8.i.i.i = or i1 %cmp17.i.i.i.i, %cmp85.i.i.i
  br i1 %cmp8.i.i.i, label %nsp32_search_period_entry.exit.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

nsp32_search_period_entry.exit.i.i.i.if.then.i.i.i_crit_edge: ; preds = %nsp32_search_period_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %nsp32_search_period_entry.exit.i.i.i
  %172 = load i32, ptr @trans_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %172)
  %cmp10.i.i.i = icmp eq i32 %172, 2
  br i1 %cmp10.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %nsp32_search_period_entry.exit.i.i.i.if.then.i.i.i_crit_edge, %for.inc.i.i.i.i.if.then.i.i.i_crit_edge
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge
  %entry1.0.i.i.i = phi i32 [ 0, %if.then.i.i.i ], [ %i.0.lcssa.i.i.i.i, %lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge ]
  %173 = ptrtoint ptr %limit_entry.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %entry1.0.i.i.i, ptr %limit_entry.i.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.07.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 7
  br i1 %exitcond.not.i.i.i, label %if.end.i.i.i.nsp32_getprom_param.exit.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

if.end.i.i.i.nsp32_getprom_param.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_getprom_param.exit.i

if.else.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61459, i32 %154)
  %cmp14.i.i = icmp eq i32 %154, 61459
  %or.cond50.i.i = select i1 %cmp8.i.i, i1 %cmp14.i.i, i1 false
  br i1 %or.cond50.i.i, label %if.then15.i.i, label %if.else17.i.i

if.then15.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nsp32_getprom_at24(ptr noundef %hostdata.i) #9
  br label %nsp32_getprom_param.exit.i

if.else17.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61461, i32 %154)
  %cmp20.i.i = icmp eq i32 %154, 61461
  %or.cond51.i.i = select i1 %cmp8.i.i, i1 %cmp20.i.i, i1 false
  br i1 %or.cond51.i.i, label %if.then21.i.i, label %if.else23.i.i

if.then21.i.i:                                    ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nsp32_getprom_at24(ptr noundef %hostdata.i) #9
  br label %nsp32_getprom_param.exit.i

if.else23.i.i:                                    ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.52) #9
  br label %nsp32_getprom_param.exit.i

nsp32_getprom_param.exit.i:                       ; preds = %if.else23.i.i, %if.then21.i.i, %if.then15.i.i, %if.end.i.i.i.nsp32_getprom_param.exit.i_crit_edge
  %cmp57.i = phi i1 [ false, %if.then15.i.i ], [ false, %if.then21.i.i ], [ true, %if.else23.i.i ], [ false, %if.end.i.i.i.nsp32_getprom_param.exit.i_crit_edge ]
  %call28.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 0) #9
  %call28.1.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 1) #9
  %call28.2.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 2) #9
  %call28.3.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 3) #9
  %call28.4.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 4) #9
  %call28.5.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 5) #9
  %call28.6.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 6) #9
  %call28.7.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 7) #9
  %call28.8.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 8) #9
  %call28.9.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 9) #9
  %call28.10.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 10) #9
  %call28.11.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 11) #9
  %call28.12.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 12) #9
  %call28.13.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 13) #9
  %call28.14.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 14) #9
  %call28.15.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 15) #9
  %call28.16.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 16) #9
  %call28.17.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 17) #9
  %call28.18.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 18) #9
  %call28.19.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 19) #9
  %call28.20.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 20) #9
  %call28.21.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 21) #9
  %call28.22.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 22) #9
  %call28.23.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 23) #9
  %call28.24.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 24) #9
  %call28.25.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 25) #9
  %call28.26.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 26) #9
  %call28.27.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 27) #9
  %call28.28.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 28) #9
  %call28.29.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 29) #9
  %call28.30.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 30) #9
  %call28.31.i.i = tail call fastcc i32 @nsp32_prom_read(ptr noundef %hostdata.i, i32 noundef 31) #9
  br i1 %cmp57.i, label %nsp32_getprom_param.exit.i.if.then59.i_crit_edge, label %nsp32_getprom_param.exit.i.if.end60.i_crit_edge

nsp32_getprom_param.exit.i.if.end60.i_crit_edge:  ; preds = %nsp32_getprom_param.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i

nsp32_getprom_param.exit.i.if.then59.i_crit_edge: ; preds = %nsp32_getprom_param.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59.i

if.then59.i:                                      ; preds = %nsp32_getprom_param.exit.i.if.then59.i_crit_edge, %if.then6.i.i, %if.then.i.i
  %resettime.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  %174 = ptrtoint ptr %resettime.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 3, ptr %resettime.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then59.i, %nsp32_getprom_param.exit.i.if.end60.i_crit_edge
  tail call fastcc void @nsp32hw_init(ptr noundef %hostdata.i) #9
  %info_str.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 5, i32 1, i32 1
  %175 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %irq.i, align 8
  %177 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %io_port.i, align 8
  %179 = ptrtoint ptr %n_io_port.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %n_io_port.i, align 4
  %conv66.i = zext i8 %180 to i32
  %call67.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %info_str.i, i32 noundef 100, ptr noundef nonnull @.str.16, i32 noundef %176, i32 noundef %178, i32 noundef %conv66.i) #9
  tail call fastcc void @nsp32_do_bus_reset(ptr noundef %hostdata.i) #9
  %181 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %irq.i, align 8
  %call.i193.i = tail call i32 @request_threaded_irq(i32 noundef %182, ptr noundef nonnull @do_nsp32_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.6, ptr noundef %hostdata.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.i)
  %cmp70.i = icmp slt i32 %call.i193.i, 0
  br i1 %cmp70.i, label %if.then72.i, label %if.end74.i

if.then72.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  %183 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %irq.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17, i32 noundef %184) #9
  br label %free_sg_list.i

if.end74.i:                                       ; preds = %if.end60.i
  %185 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %io_port.i, align 8
  %187 = ptrtoint ptr %n_io_port.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %n_io_port.i, align 4
  %conv77.i = zext i8 %188 to i32
  %call78.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %186, i32 noundef %conv77.i, ptr noundef nonnull @.str.6, i32 noundef 0) #9
  %cmp79.i = icmp eq ptr %call78.i, null
  br i1 %cmp79.i, label %if.then81.i, label %if.end84.i

if.then81.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  %189 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %BaseAddress.i, align 4
  %191 = ptrtoint ptr %NumAddress.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %NumAddress.i, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.18, i32 noundef %190, i32 noundef %192) #9
  br label %free_irq.i

if.end84.i:                                       ; preds = %if.end74.i
  %call.i194.i = tail call i32 @scsi_add_host_with_dma(ptr noundef %call.i, ptr noundef %dev.i, ptr noundef %dev.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194.i)
  %tobool.not.i = icmp eq i32 %call.i194.i, 0
  br i1 %tobool.not.i, label %if.end88.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.19) #9
  %193 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %io_port.i, align 8
  %195 = ptrtoint ptr %n_io_port.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %n_io_port.i, align 4
  %conv91.i = zext i8 %196 to i32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %194, i32 noundef %conv91.i) #9
  br label %free_irq.i

if.end88.i:                                       ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @scsi_scan_host(ptr noundef %call.i) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %197 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  br label %nsp32_detect.exit

free_irq.i:                                       ; preds = %if.then87.i, %if.then81.i
  %198 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %irq.i, align 8
  %call93.i = tail call ptr @free_irq(i32 noundef %199, ptr noundef %hostdata.i) #9
  br label %free_sg_list.i

free_sg_list.i:                                   ; preds = %free_irq.i, %if.then72.i
  %200 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %sg_list.i, align 4
  %202 = ptrtoint ptr %sg_paddr.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %sg_paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 65536, ptr noundef %201, i32 noundef %203, i32 noundef 0) #9
  br label %free_autoparam.i

free_autoparam.i:                                 ; preds = %free_sg_list.i, %if.then30.i
  %204 = ptrtoint ptr %autoparam.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %autoparam.i, align 4
  %206 = ptrtoint ptr %auto_paddr.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %auto_paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 88, ptr noundef %205, i32 noundef %207, i32 noundef 0) #9
  br label %scsi_unregister.i

scsi_unregister.i:                                ; preds = %free_autoparam.i, %if.then23.i, %if.then16.i
  tail call void @scsi_host_put(ptr noundef %call.i) #9
  br label %nsp32_detect.exit

nsp32_detect.exit:                                ; preds = %scsi_unregister.i, %if.end88.i, %if.then.i
  %retval.0.i = phi i32 [ 0, %if.end88.i ], [ 1, %scsi_unregister.i ], [ 1, %if.then.i ]
  %208 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %irq, align 4
  %210 = load ptr, ptr getelementptr inbounds (%struct._nsp32_hw_data, ptr @nsp32_data_base, i32 0, i32 3), align 4
  %211 = load i32, ptr getelementptr inbounds (%struct._nsp32_hw_data, ptr @nsp32_data_base, i32 0, i32 4), align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %212 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %213, null
  br i1 %tobool.not.i.i, label %if.end.i.i60, label %nsp32_detect.exit.pci_name.exit_crit_edge

nsp32_detect.exit.pci_name.exit_crit_edge:        ; preds = %nsp32_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i60:                                     ; preds = %nsp32_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i59 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %214 = ptrtoint ptr %dev.i59 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev.i59, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i60, %nsp32_detect.exit.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %215, %if.end.i.i60 ], [ %213, %nsp32_detect.exit.pci_name.exit_crit_edge ]
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %216 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %driver_data, align 4
  %arrayidx31 = getelementptr [7 x ptr], ptr @nsp32_model, i32 0, i32 %217
  %218 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx31, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef %209, ptr noundef %210, i32 noundef %211, ptr noundef %retval.0.i.i, ptr noundef %219)
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %retval.0.i, %pci_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsp32_remove(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @scsi_remove_host(ptr noundef %1) #9
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %autoparam.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 10
  %2 = ptrtoint ptr %autoparam.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %autoparam.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %Pci.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3
  %4 = ptrtoint ptr %Pci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %Pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %auto_paddr.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 10, i32 0, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %auto_paddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %auto_paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 88, ptr noundef nonnull %3, i32 noundef %7, i32 noundef 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %sg_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 8
  %8 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg_list.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %Pci4.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3
  %10 = ptrtoint ptr %Pci4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %Pci4.i, align 4
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %sg_paddr.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 9
  %12 = ptrtoint ptr %sg_paddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5.i, i32 noundef 65536, ptr noundef nonnull %9, i32 noundef %13, i32 noundef 0) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %if.end.i.if.end7.i_crit_edge
  %irq.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 47
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not.i = icmp eq i32 %15, 0
  br i1 %tobool8.not.i, label %if.end7.i.if.end11.i_crit_edge, label %if.then9.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @free_irq(i32 noundef %15, ptr noundef %hostdata.i) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end11.i_crit_edge
  %io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 44
  %16 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_port.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.not.i = icmp eq i32 %17, 0
  br i1 %tobool12.not.i, label %if.end11.i.if.end18.i_crit_edge, label %land.lhs.true.i

if.end11.i.if.end18.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %n_io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 45
  %18 = ptrtoint ptr %n_io_port.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %n_io_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not.i = icmp eq i8 %19, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end18.i_crit_edge, label %if.then14.i

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %19 to i32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %17, i32 noundef %conv.i) #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then14.i, %land.lhs.true.i.if.end18.i_crit_edge, %if.end11.i.if.end18.i_crit_edge
  %MmioAddress.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1, i32 1
  %20 = ptrtoint ptr %MmioAddress.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %MmioAddress.i, align 4
  %tobool19.not.i = icmp eq ptr %21, null
  br i1 %tobool19.not.i, label %if.end18.i.nsp32_release.exit_crit_edge, label %if.then20.i

if.end18.i.nsp32_release.exit_crit_edge:          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_release.exit

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %21) #9
  br label %nsp32_release.exit

nsp32_release.exit:                               ; preds = %if.then20.i, %if.end18.i.nsp32_release.exit_crit_edge
  tail call void @scsi_host_put(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp32_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %state.coerce.fca.0.extract = extractvalue [1 x i32] %state.coerce, 0
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.88, ptr noundef %pdev, i32 noundef %state.coerce.fca.0.extract, ptr noundef %retval.0.i.i, ptr noundef %1)
  %call2 = tail call i32 @pci_save_state(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  %call4 = tail call i32 @pci_choose_state(ptr noundef %pdev, [1 x i32] %state.coerce) #9
  %call5 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef %call4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp32_resume(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.89, ptr noundef %pdev, ptr noundef %retval.0.i.i, ptr noundef %1)
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 0) #9
  %call3 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef 0, i1 noundef zeroext false) #9
  tail call void @pci_restore_state(ptr noundef %pdev) #9
  %BaseAddress = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %BaseAddress to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %BaseAddress, align 4
  %add.i = add i32 %7, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #9, !srcloc !249
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %11 = ptrtoint ptr %BaseAddress to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %BaseAddress, align 4
  %conv = zext i16 %10 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.90, i32 noundef %12, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp = icmp eq i16 %9, -1
  br i1 %cmp, label %pci_name.exit.cleanup_crit_edge, label %if.end

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  tail call fastcc void @nsp32hw_init(ptr noundef %hostdata)
  tail call fastcc void @nsp32_do_bus_reset(ptr noundef %hostdata)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pci_name.exit.cleanup_crit_edge
  %.str.92.sink = phi ptr [ @.str.92, %if.end ], [ @.str.91, %pci_name.exit.cleanup_crit_edge ]
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.92.sink)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp32hw_init(ptr nocapture noundef readonly %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %BaseAddress = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %BaseAddress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %BaseAddress, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !251
  tail call void @arm_heavy_mb() #9
  %add.i = add i32 %1, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 17) #9, !srcloc !252
  %add2.i = add i32 %1, 8
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %3 = inttoptr i32 %add4.i to ptr
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %3) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  %add9.i = add i32 %1, 10
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %5 = inttoptr i32 %add11.i to ptr
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %7 = call i16 @llvm.bswap.i16(i16 %4)
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %7)
  %cmp = icmp ult i16 %7, 256
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = or i16 %7, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 17) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void @arm_heavy_mb() #9
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 %8) #9, !srcloc !257
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %and.i5 = and i32 %1, 1048575
  %add1.i6 = or i32 %and.i5, -18874368
  %9 = inttoptr i32 %add1.i6 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 240) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i7 = add i32 %1, 2
  %and.i8 = and i32 %add.i7, 1048575
  %add1.i9 = or i32 %and.i8, -18874368
  %10 = inttoptr i32 %add1.i9 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 0) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i10 = add i32 %1, 56
  %and.i11 = and i32 %add.i10, 1048575
  %add1.i12 = or i32 %and.i11, -18874368
  %11 = inttoptr i32 %add1.i12 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 0) #9, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i13 = add i32 %1, 64
  %and.i14 = and i32 %add.i13, 1048575
  %add1.i15 = or i32 %and.i14, -18874368
  %12 = inttoptr i32 %add1.i15 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 0) #9, !srcloc !257
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %14 = and i16 %13, -4081
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  %trans_method = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 22
  %15 = ptrtoint ptr %trans_method to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %trans_method, align 4
  %17 = and i32 %16, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.else, label %if.then10

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 6) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 64) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 7) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 64) #9, !srcloc !252
  br label %if.end17

if.else:                                          ; preds = %do.end
  %and12 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else.if.end17_crit_edge, label %if.then14

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 6) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 16) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 7) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 96) #9, !srcloc !252
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else.if.end17_crit_edge, %if.then10
  %clock = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 24
  %19 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clock, align 4
  %conv18 = trunc i32 %20 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %conv18) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 13) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 -64) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %add.i54 = add i32 %1, 22
  %and.i55 = and i32 %add.i54, 1048575
  %add1.i56 = or i32 %and.i55, -18874368
  %21 = inttoptr i32 %add1.i56 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 12) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 30977) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 0) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #9, !srcloc !252
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool22.not = icmp eq i8 %23, 0
  br i1 %tobool22.not, label %if.then23, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 1) #9, !srcloc !252
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end17.if.end24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i81 = add i32 %1, 6
  %and.i82 = and i32 %add.i81, 1048575
  %add1.i83 = or i32 %and.i82, -18874368
  %24 = inttoptr i32 %add1.i83 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 1) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 1) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %add.i87 = add i32 %1, 28
  %and.i88 = and i32 %add.i87, 1048575
  %add1.i89 = or i32 %and.i88, -18874368
  %25 = inttoptr i32 %add1.i89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 0) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %add.i90 = add i32 %1, 29
  %and.i91 = and i32 %add.i90, 1048575
  %add1.i92 = or i32 %and.i91, -18874368
  %26 = inttoptr i32 %add1.i92 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 0) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i93 = add i32 %1, 72
  %and.i94 = and i32 %add.i93, 1048575
  %add1.i95 = or i32 %and.i94, -18874368
  %27 = inttoptr i32 %add1.i95 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 4135) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 32516) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 0) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 2) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 1) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 3) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 1) #9, !srcloc !252
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp32_do_bus_reset(ptr nocapture noundef %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %BaseAddress = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %BaseAddress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %BaseAddress, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i = add i32 %1, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 0) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i21 = add i32 %1, 56
  %and.i22 = and i32 %add.i21, 1048575
  %add1.i23 = or i32 %and.i22, -18874368
  %3 = inttoptr i32 %add1.i23 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 0) #9, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i24 = add i32 %1, 18
  %and.i25 = and i32 %add.i24, 1048575
  %add1.i26 = or i32 %and.i25, -18874368
  %4 = inttoptr i32 %add1.i26 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 1056964608) #9, !srcloc !260
  %synct.i = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 25
  %arrayidx = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 0
  %sync_flag = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 0, i32 4
  %5 = ptrtoint ptr %sync_flag to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sync_flag, align 4
  %6 = ptrtoint ptr %synct.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %synct.i, align 4
  %limit_entry.i = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 0, i32 5
  %8 = ptrtoint ptr %limit_entry.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %limit_entry.i, align 4
  %arrayidx.i = getelementptr %struct._nsp32_sync_table, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %offset.i = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 0, i32 3
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %offset.i, align 1
  %period1.i = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 0, i32 2
  %13 = ptrtoint ptr %period1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %period1.i, align 2
  %14 = shl i8 %11, 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx, align 4
  %ackwidth.i = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 0, i32 1
  %16 = ptrtoint ptr %ackwidth.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ackwidth.i, align 1
  %sample_reg.i = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 0, i32 6
  %17 = ptrtoint ptr %sample_reg.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %sample_reg.i, align 4
  %arrayidx.1 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 1
  %sync_flag.1 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 1, i32 4
  %18 = ptrtoint ptr %sync_flag.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %sync_flag.1, align 4
  %limit_entry.i.1 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 1, i32 5
  %19 = ptrtoint ptr %limit_entry.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %limit_entry.i.1, align 4
  %arrayidx.i.1 = getelementptr %struct._nsp32_sync_table, ptr %7, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.1, align 1
  %offset.i.1 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 1, i32 3
  %23 = ptrtoint ptr %offset.i.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %offset.i.1, align 1
  %period1.i.1 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 1, i32 2
  %24 = ptrtoint ptr %period1.i.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %period1.i.1, align 2
  %25 = shl i8 %22, 4
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx.1, align 4
  %ackwidth.i.1 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 1, i32 1
  %27 = ptrtoint ptr %ackwidth.i.1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %ackwidth.i.1, align 1
  %sample_reg.i.1 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 1, i32 6
  %28 = ptrtoint ptr %sample_reg.i.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %sample_reg.i.1, align 4
  %arrayidx.2 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 2
  %sync_flag.2 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 2, i32 4
  %29 = ptrtoint ptr %sync_flag.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %sync_flag.2, align 4
  %limit_entry.i.2 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 2, i32 5
  %30 = ptrtoint ptr %limit_entry.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %limit_entry.i.2, align 4
  %arrayidx.i.2 = getelementptr %struct._nsp32_sync_table, ptr %7, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.2, align 1
  %offset.i.2 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 2, i32 3
  %34 = ptrtoint ptr %offset.i.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %offset.i.2, align 1
  %period1.i.2 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 2, i32 2
  %35 = ptrtoint ptr %period1.i.2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %period1.i.2, align 2
  %36 = shl i8 %33, 4
  %37 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx.2, align 4
  %ackwidth.i.2 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 2, i32 1
  %38 = ptrtoint ptr %ackwidth.i.2 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %ackwidth.i.2, align 1
  %sample_reg.i.2 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 2, i32 6
  %39 = ptrtoint ptr %sample_reg.i.2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %sample_reg.i.2, align 4
  %arrayidx.3 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 3
  %sync_flag.3 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 3, i32 4
  %40 = ptrtoint ptr %sync_flag.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %sync_flag.3, align 4
  %limit_entry.i.3 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 3, i32 5
  %41 = ptrtoint ptr %limit_entry.i.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %limit_entry.i.3, align 4
  %arrayidx.i.3 = getelementptr %struct._nsp32_sync_table, ptr %7, i32 %42
  %43 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i.3, align 1
  %offset.i.3 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 3, i32 3
  %45 = ptrtoint ptr %offset.i.3 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %offset.i.3, align 1
  %period1.i.3 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 3, i32 2
  %46 = ptrtoint ptr %period1.i.3 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %period1.i.3, align 2
  %47 = shl i8 %44, 4
  %48 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx.3, align 4
  %ackwidth.i.3 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 3, i32 1
  %49 = ptrtoint ptr %ackwidth.i.3 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %ackwidth.i.3, align 1
  %sample_reg.i.3 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 3, i32 6
  %50 = ptrtoint ptr %sample_reg.i.3 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %sample_reg.i.3, align 4
  %arrayidx.4 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 4
  %sync_flag.4 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 4, i32 4
  %51 = ptrtoint ptr %sync_flag.4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %sync_flag.4, align 4
  %limit_entry.i.4 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 4, i32 5
  %52 = ptrtoint ptr %limit_entry.i.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %limit_entry.i.4, align 4
  %arrayidx.i.4 = getelementptr %struct._nsp32_sync_table, ptr %7, i32 %53
  %54 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.4, align 1
  %offset.i.4 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 4, i32 3
  %56 = ptrtoint ptr %offset.i.4 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %offset.i.4, align 1
  %period1.i.4 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 4, i32 2
  %57 = ptrtoint ptr %period1.i.4 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %period1.i.4, align 2
  %58 = shl i8 %55, 4
  %59 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx.4, align 4
  %ackwidth.i.4 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 4, i32 1
  %60 = ptrtoint ptr %ackwidth.i.4 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %ackwidth.i.4, align 1
  %sample_reg.i.4 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 4, i32 6
  %61 = ptrtoint ptr %sample_reg.i.4 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %sample_reg.i.4, align 4
  %arrayidx.5 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 5
  %sync_flag.5 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 5, i32 4
  %62 = ptrtoint ptr %sync_flag.5 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %sync_flag.5, align 4
  %limit_entry.i.5 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 5, i32 5
  %63 = ptrtoint ptr %limit_entry.i.5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %limit_entry.i.5, align 4
  %arrayidx.i.5 = getelementptr %struct._nsp32_sync_table, ptr %7, i32 %64
  %65 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.5, align 1
  %offset.i.5 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 5, i32 3
  %67 = ptrtoint ptr %offset.i.5 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %offset.i.5, align 1
  %period1.i.5 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 5, i32 2
  %68 = ptrtoint ptr %period1.i.5 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %period1.i.5, align 2
  %69 = shl i8 %66, 4
  %70 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx.5, align 4
  %ackwidth.i.5 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 5, i32 1
  %71 = ptrtoint ptr %ackwidth.i.5 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %ackwidth.i.5, align 1
  %sample_reg.i.5 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 5, i32 6
  %72 = ptrtoint ptr %sample_reg.i.5 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %sample_reg.i.5, align 4
  %arrayidx.6 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 6
  %sync_flag.6 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 6, i32 4
  %73 = ptrtoint ptr %sync_flag.6 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %sync_flag.6, align 4
  %74 = load ptr, ptr %synct.i, align 4
  %limit_entry.i.6 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 6, i32 5
  %75 = ptrtoint ptr %limit_entry.i.6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %limit_entry.i.6, align 4
  %arrayidx.i.6 = getelementptr %struct._nsp32_sync_table, ptr %74, i32 %76
  %77 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.6, align 1
  %offset.i.6 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 6, i32 3
  %79 = ptrtoint ptr %offset.i.6 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %offset.i.6, align 1
  %period1.i.6 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 6, i32 2
  %80 = ptrtoint ptr %period1.i.6 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %period1.i.6, align 2
  %81 = shl i8 %78, 4
  %82 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx.6, align 4
  %ackwidth.i.6 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 6, i32 1
  %83 = ptrtoint ptr %ackwidth.i.6 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %ackwidth.i.6, align 1
  %sample_reg.i.6 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 6, i32 6
  %84 = ptrtoint ptr %sample_reg.i.6 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %sample_reg.i.6, align 4
  %arrayidx.7 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 7
  %sync_flag.7 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 7, i32 4
  %85 = ptrtoint ptr %sync_flag.7 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %sync_flag.7, align 4
  %limit_entry.i.7 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 7, i32 5
  %86 = ptrtoint ptr %limit_entry.i.7 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %limit_entry.i.7, align 4
  %arrayidx.i.7 = getelementptr %struct._nsp32_sync_table, ptr %74, i32 %87
  %88 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i.7, align 1
  %offset.i.7 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 7, i32 3
  %90 = ptrtoint ptr %offset.i.7 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %offset.i.7, align 1
  %period1.i.7 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 7, i32 2
  %91 = ptrtoint ptr %period1.i.7 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %period1.i.7, align 2
  %92 = shl i8 %89, 4
  %93 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx.7, align 4
  %ackwidth.i.7 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 7, i32 1
  %94 = ptrtoint ptr %ackwidth.i.7 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %ackwidth.i.7, align 1
  %sample_reg.i.7 = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 7, i32 6
  %95 = ptrtoint ptr %sample_reg.i.7 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %sample_reg.i.7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %add.i27 = add i32 %1, 16
  %and.i28 = and i32 %add.i27, 1048575
  %add1.i29 = or i32 %and.i28, -18874368
  %96 = inttoptr i32 %add1.i29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 2) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748000) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 0) #9, !srcloc !252
  %and.i33 = and i32 %1, 1048575
  %add1.i34 = or i32 %and.i33, -18874368
  %107 = inttoptr i32 %add1.i34 to ptr
  %108 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %107) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %109 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %107) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %110 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %107) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %111 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %107) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %112 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %107) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %CurrentSC = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 5
  %113 = ptrtoint ptr %CurrentSC to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %CurrentSC, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_nsp32_isr(i32 noundef %irq, ptr nocapture noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %BaseAddress = getelementptr inbounds %struct._nsp32_hw_data, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %BaseAddress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %BaseAddress, align 4
  %CurrentSC = getelementptr inbounds %struct._nsp32_hw_data, ptr %dev_id, i32 0, i32 5
  %2 = ptrtoint ptr %CurrentSC to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %CurrentSC, align 4
  %Host = getelementptr inbounds %struct._nsp32_hw_data, ptr %dev_id, i32 0, i32 8
  %4 = ptrtoint ptr %Host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %Host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %and.i = and i32 %1, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #9, !srcloc !249
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %conv6 = zext i16 %10 to i32
  %and = and i32 %conv6, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %entry.out2_crit_edge, label %if.end

entry.out2_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 240) #9, !srcloc !257
  %add.i = add i32 %1, 18
  %and.i245 = and i32 %add.i, 1048575
  %add1.i246 = or i32 %and.i245, -18874368
  %11 = inttoptr i32 %add1.i246 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %13 = and i8 %12, 71
  %add.i247 = add i32 %1, 2
  %and.i248 = and i32 %add.i247, 1048575
  %add1.i249 = or i32 %and.i248, -18874368
  %14 = inttoptr i32 %add1.i249 to ptr
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #9, !srcloc !249
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp15 = icmp eq i16 %9, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp18 = icmp eq i16 %15, -1
  %or.cond = select i1 %cmp15, i1 %cmp18, i1 false
  br i1 %or.cond, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.end
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57)
  %17 = ptrtoint ptr %CurrentSC to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %CurrentSC, align 4
  %cmp22.not = icmp eq ptr %18, null
  br i1 %cmp22.not, label %if.then20.out_crit_edge, label %if.then24

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.58)
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 24
  %19 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 262144, ptr %result, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_port.i, align 8
  tail call void @scsi_dma_unmap(ptr noundef %3) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i.i = add i32 %25, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %26 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 0) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i12.i = add i32 %25, 56
  %and.i13.i = and i32 %add.i12.i, 1048575
  %add1.i14.i = or i32 %and.i13.i, -18874368
  %27 = inttoptr i32 %add1.i14.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 0) #9, !srcloc !260
  tail call void @scsi_done(ptr noundef %3) #9
  %cur_lunt.i = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %cur_lunt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur_lunt.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %29, align 4
  store ptr null, ptr %cur_lunt.i, align 4
  %cur_target.i = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %31 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cur_target.i, align 4
  %CurrentSC.i = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 1, i32 2, i32 1
  %32 = ptrtoint ptr %CurrentSC.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %CurrentSC.i, align 4
  br label %out

if.end26:                                         ; preds = %if.end
  %and28 = and i32 %conv6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool.not = icmp eq i32 %and28, 0
  br i1 %tobool.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i250 = add i32 %1, 6
  %and.i251 = and i32 %add.i250, 1048575
  %add1.i252 = or i32 %and.i251, -18874368
  %33 = inttoptr i32 %add1.i252 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 1) #9, !srcloc !257
  br label %out

if.end30:                                         ; preds = %if.end26
  %and32 = and i32 %conv6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end40, label %if.then34

if.then34:                                        ; preds = %if.end30
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.59)
  tail call fastcc void @nsp32_do_bus_reset(ptr noundef %dev_id)
  %cmp35.not = icmp eq ptr %3, null
  br i1 %cmp35.not, label %if.then34.out_crit_edge, label %if.then37

if.then34.out_crit_edge:                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %result38 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 24
  %34 = ptrtoint ptr %result38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 524288, ptr %result38, align 4
  %device.i253 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %device.i253 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device.i253, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %io_port.i254 = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %io_port.i254 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %io_port.i254, align 8
  tail call void @scsi_dma_unmap(ptr noundef nonnull %3) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i.i255 = add i32 %40, 2
  %and.i.i256 = and i32 %add.i.i255, 1048575
  %add1.i.i257 = or i32 %and.i.i256, -18874368
  %41 = inttoptr i32 %add1.i.i257 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %41, i16 0) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i12.i258 = add i32 %40, 56
  %and.i13.i259 = and i32 %add.i12.i258, 1048575
  %add1.i14.i260 = or i32 %and.i13.i259, -18874368
  %42 = inttoptr i32 %add1.i14.i260 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %42, i32 0) #9, !srcloc !260
  tail call void @scsi_done(ptr noundef nonnull %3) #9
  %cur_lunt.i261 = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %43 = ptrtoint ptr %cur_lunt.i261 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur_lunt.i261, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %44, align 4
  store ptr null, ptr %cur_lunt.i261, align 4
  %cur_target.i262 = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %cur_target.i262 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %cur_target.i262, align 4
  %CurrentSC.i263 = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 1, i32 2, i32 1
  %47 = ptrtoint ptr %CurrentSC.i263 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %CurrentSC.i263, align 4
  br label %out

if.end40:                                         ; preds = %if.end30
  %cmp41 = icmp eq ptr %3, null
  br i1 %cmp41, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.60)
  %conv45 = zext i16 %16 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.61, i32 noundef %conv6, i32 noundef %conv45)
  br label %out

if.end46:                                         ; preds = %if.end40
  %and48 = and i32 %conv6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.if.end142_crit_edge, label %if.then50

if.end46.if.end142_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then50:                                        ; preds = %if.end46
  %add.i264 = add i32 %1, 64
  %and.i265 = and i32 %add.i264, 1048575
  %add1.i266 = or i32 %and.i265, -18874368
  %48 = inttoptr i32 %add1.i266 to ptr
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %48) #9, !srcloc !249
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %48, i16 0) #9, !srcloc !257
  %conv52 = zext i16 %50 to i32
  %and53 = and i32 %conv52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end57, label %if.then55

if.then55:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %result56 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 24
  %51 = ptrtoint ptr %result56 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 196608, ptr %result56, align 4
  tail call fastcc void @nsp32_scsi_done(ptr noundef nonnull %3)
  br label %out

if.end57:                                         ; preds = %if.then50
  %and63 = and i32 %conv52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %52 = and i32 %conv52, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %52)
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %land.lhs.true65, label %if.end57.if.end72_crit_edge

if.end57.if.end72_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

land.lhs.true65:                                  ; preds = %if.end57
  %msgout_len = getelementptr inbounds %struct._nsp32_hw_data, ptr %dev_id, i32 0, i32 28
  %54 = ptrtoint ptr %msgout_len to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %msgout_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %55)
  %cmp67 = icmp ult i8 %55, 4
  br i1 %cmp67, label %if.then69, label %land.lhs.true65.if.end72_crit_edge

land.lhs.true65.if.end72_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then69:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %msgout_len to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %msgout_len, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %land.lhs.true65.if.end72_crit_edge, %if.end57.if.end72_crit_edge
  %and74 = and i32 %conv52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end72.if.end92_crit_edge, label %land.lhs.true76

if.end72.if.end92_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

land.lhs.true76:                                  ; preds = %if.end72
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %3, i32 0, i32 5
  %57 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %resid_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp78.not = icmp eq i32 %58, 0
  br i1 %cmp78.not, label %land.lhs.true76.if.end92_crit_edge, label %land.lhs.true80

land.lhs.true76.if.end92_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

land.lhs.true80:                                  ; preds = %land.lhs.true76
  %add.i270 = add i32 %1, 12
  %and.i271 = and i32 %add.i270, 1048575
  %add1.i272 = or i32 %and.i271, -18874368
  %59 = inttoptr i32 %add1.i272 to ptr
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %59) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %61 = and i16 %60, -255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp84.not = icmp eq i16 %61, 0
  br i1 %cmp84.not, label %land.lhs.true80.if.end92_crit_edge, label %do.end89

land.lhs.true80.if.end92_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

do.end89:                                         ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #11
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  br label %if.end92

if.end92:                                         ; preds = %do.end89, %land.lhs.true80.if.end92_crit_edge, %land.lhs.true76.if.end92_crit_edge, %if.end72.if.end92_crit_edge
  %and94 = and i32 %conv52, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end92.if.end97_crit_edge, label %if.then96

if.end92.if.end97_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %resid_len.i273 = getelementptr inbounds %struct.scsi_request, ptr %3, i32 0, i32 5
  %62 = ptrtoint ptr %resid_len.i273 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %resid_len.i273, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end92.if.end97_crit_edge
  br i1 %tobool64.not, label %if.end97.if.end103_crit_edge, label %if.then101

if.end97.if.end103_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nsp32_msgin_occur(ptr noundef nonnull %3, i32 noundef %conv6, i16 noundef zeroext %50)
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end97.if.end103_crit_edge
  %and105 = and i32 %conv52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end103.if.end108_crit_edge, label %if.then107

if.end103.if.end108_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nsp32_msgout_occur(ptr noundef nonnull %3)
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end103.if.end108_crit_edge
  %and110 = and i32 %conv52, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end118, label %if.then112

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nsp32_busfree_occur(ptr noundef nonnull %3, i16 noundef zeroext %50)
  br label %out

if.end118:                                        ; preds = %if.end108
  %and120 = and i32 %conv52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end118.if.end126_crit_edge, label %if.then122

if.end118.if.end126_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %add.i274 = add i32 %1, 66
  %and.i275 = and i32 %add.i274, 1048575
  %add1.i276 = or i32 %and.i275, -18874368
  %63 = inttoptr i32 %add1.i276 to ptr
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %63) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %conv124 = zext i8 %64 to i32
  %result125 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 24
  %65 = ptrtoint ptr %result125 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv124, ptr %result125, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then122, %if.end118.if.end126_crit_edge
  %and128 = and i32 %conv52, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end126.if.end142_crit_edge, label %if.then130

if.end126.if.end142_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then130:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.64)
  tail call fastcc void @nsp32_sack_assert(ptr noundef %dev_id)
  tail call fastcc void @nsp32_wait_req(ptr noundef %dev_id, i32 noundef 0)
  tail call fastcc void @nsp32_sack_negate(ptr noundef %dev_id)
  br label %if.end142

if.end142:                                        ; preds = %if.then130, %if.end126.if.end142_crit_edge, %if.end46.if.end142_crit_edge
  %and144 = and i32 %conv6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end152, label %if.then146

if.then146:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %13)
  %cond178 = icmp eq i8 %13, 6
  br i1 %cond178, label %sw.bb149, label %if.then146.out_crit_edge

if.then146.out_crit_edge:                         ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb149:                                         ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  %add.i277 = add i32 %1, 66
  %and.i278 = and i32 %add.i277, 1048575
  %add1.i279 = or i32 %and.i278, -18874368
  %66 = inttoptr i32 %add1.i279 to ptr
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %66) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %conv151 = zext i8 %67 to i32
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 5
  %68 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 %conv151, ptr %Status, align 4
  br label %out

if.end152:                                        ; preds = %if.end142
  %and154 = and i32 %conv6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end164, label %if.then156

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %13)
  %cond177 = icmp eq i8 %13, 7
  br i1 %cond177, label %sw.bb158, label %sw.default160

sw.bb158:                                         ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nsp32_msgin_occur(ptr noundef nonnull %3, i32 noundef %conv6, i16 noundef zeroext 0)
  br label %out

sw.default160:                                    ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.65)
  %conv162 = zext i16 %16 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.66, i32 noundef %conv6, i32 noundef %conv162)
  br label %out

if.end164:                                        ; preds = %if.end152
  %and171 = and i32 %conv6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end164.out_crit_edge, label %if.then173

if.end164.out_crit_edge:                          ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then173:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.67)
  br label %out

out:                                              ; preds = %if.then173, %if.end164.out_crit_edge, %sw.default160, %sw.bb158, %sw.bb149, %if.then146.out_crit_edge, %if.then112, %if.then55, %if.then43, %if.then37, %if.then34.out_crit_edge, %if.then29, %if.then24, %if.then20.out_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 0) #9, !srcloc !257
  br label %out2

out2:                                             ; preds = %out, %entry.out2_crit_edge
  %69 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %70, i32 noundef %call2) #9
  %not.cmp7 = xor i1 %cmp7, true
  %cond = zext i1 %not.cmp7 to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp32_queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %CurrentSC.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 2, i32 1
  %6 = ptrtoint ptr %CurrentSC.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %CurrentSC.i, align 4
  %cmp.not.i = icmp eq ptr %7, null
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.21) #9
  %8 = ptrtoint ptr %CurrentSC.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %CurrentSC.i, align 4
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %9 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65536, ptr %result.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #9
  br label %nsp32_queuecommand_lck.exit

if.end.i:                                         ; preds = %entry
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i.i, align 8
  %this_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 25
  %12 = ptrtoint ptr %this_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %this_id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp5.i = icmp eq i32 %11, %13
  br i1 %cmp5.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %result7.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %14 = ptrtoint ptr %result7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 262144, ptr %result7.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #9
  br label %nsp32_queuecommand_lck.exit

if.end8.i:                                        ; preds = %if.end.i
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 18
  %15 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %lun.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %16)
  %cmp10.i = icmp ugt i64 %16, 7
  br i1 %cmp10.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %result12.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %17 = ptrtoint ptr %result12.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 262144, ptr %result12.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #9
  br label %nsp32_queuecommand_lck.exit

if.end13.i:                                       ; preds = %if.end8.i
  %18 = ptrtoint ptr %CurrentSC.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cmd, ptr %CurrentSC.i, align 4
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22
  %Status.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 5
  %19 = ptrtoint ptr %Status.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 2, ptr %Status.i, align 4
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i.i, align 4
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %cmd, i32 0, i32 5
  %22 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %resid_len.i.i, align 4
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %23 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdb.i.i, align 4
  %25 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %SCp.i, align 4
  %this_residual.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 1
  %26 = ptrtoint ptr %this_residual.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %this_residual.i, align 4
  %buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 2
  %27 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %buffer.i, align 4
  %buffers_residual.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 3
  %28 = ptrtoint ptr %buffers_residual.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %buffers_residual.i, align 4
  %msgout_len.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 12
  %29 = ptrtoint ptr %msgout_len.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %msgout_len.i, align 4
  %msgin_len.i = getelementptr inbounds %struct._nsp32_hw_data, ptr %hostdata.i, i32 0, i32 30
  %30 = ptrtoint ptr %msgin_len.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %msgin_len.i, align 1
  %lunt.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4
  %31 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id.i, align 8
  %lun24.i = getelementptr inbounds %struct.scsi_device, ptr %32, i32 0, i32 18
  %35 = ptrtoint ptr %lun24.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %lun24.i, align 8
  %idxprom.i = trunc i64 %36 to i32
  %arrayidx25.i = getelementptr [8 x [8 x %struct._nsp32_lunt]], ptr %lunt.i, i32 0, i32 %34, i32 %idxprom.i
  %37 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %cmd, ptr %arrayidx25.i, align 4
  %save_datp.i = getelementptr [8 x [8 x %struct._nsp32_lunt]], ptr %lunt.i, i32 0, i32 %34, i32 %idxprom.i, i32 1
  %38 = ptrtoint ptr %save_datp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %save_datp.i, align 4
  %msgin03.i = getelementptr [8 x [8 x %struct._nsp32_lunt]], ptr %lunt.i, i32 0, i32 %34, i32 %idxprom.i, i32 2
  %39 = ptrtoint ptr %msgin03.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %msgin03.i, align 4
  %cur_lunt27.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %40 = ptrtoint ptr %cur_lunt27.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx25.i, ptr %cur_lunt27.i, align 4
  %41 = load ptr, ptr %device.i, align 4
  %id29.i = getelementptr inbounds %struct.scsi_device, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %id29.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id29.i, align 8
  %cur_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %cur_id.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %cur_id.i, align 4
  %45 = load ptr, ptr %device.i, align 4
  %lun31.i = getelementptr inbounds %struct.scsi_device, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %lun31.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %lun31.i, align 8
  %conv.i = trunc i64 %47 to i32
  %cur_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %48 = ptrtoint ptr %cur_lun.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv.i, ptr %cur_lun.i, align 4
  %49 = load ptr, ptr %device.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %cur_lunt.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %51, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %52 = ptrtoint ptr %cur_lunt.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur_lunt.i.i, align 4
  %sglun.i.i = getelementptr inbounds %struct._nsp32_lunt, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %sglun.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sglun.i.i, align 4
  %cmp.i.i = icmp eq ptr %55, null
  br i1 %cmp.i.i, label %if.end13.i.if.then35.i_crit_edge, label %if.end.i.i

if.end13.i.if.then35.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.i

if.end.i.i:                                       ; preds = %if.end13.i
  %call.i.i = tail call i32 @scsi_dma_map(ptr noundef %cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end37.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end37.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i.i, label %if.else.i.i.if.then35.i_crit_edge, label %for.body.preheader.i.i

if.else.i.i.if.then35.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.i

for.body.preheader.i.i:                           ; preds = %if.else.i.i
  %56 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sdb.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.052.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %sg.051.i.i = phi ptr [ %call17.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %57, %for.body.preheader.i.i ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.051.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_address.i.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #9
  %arrayidx.i.i = getelementptr %struct._nsp32_sgtable, ptr %55, i32 %i.052.i.i
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %arrayidx.i.i, align 1
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.051.i.i, i32 0, i32 4
  %62 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_length.i.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  %len.i.i = getelementptr %struct._nsp32_sgtable, ptr %55, i32 %i.052.i.i, i32 1
  %65 = ptrtoint ptr %len.i.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %63)
  %cmp12.i.i = icmp ugt i32 %63, 65536
  br i1 %cmp12.i.i, label %if.then13.i.i, label %for.inc.i.i

if.then13.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23, i32 noundef %63) #9
  br label %if.then35.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.052.i.i, 1
  %call17.i.i = tail call ptr @sg_next(ptr noundef %sg.051.i.i) #9
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add nsw i32 %call.i.i, -1
  %len19.i.i = getelementptr %struct._nsp32_sgtable, ptr %55, i32 %sub.i.i, i32 1
  %66 = ptrtoint ptr %len19.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %len19.i.i, align 1
  %68 = or i32 %67, 128
  store i32 %68, ptr %len19.i.i, align 1
  br label %if.end37.i

if.then35.i:                                      ; preds = %if.then13.i.i, %if.else.i.i.if.then35.i_crit_edge, %if.end13.i.if.then35.i_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.22) #9
  %result36.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %69 = ptrtoint ptr %result36.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 458752, ptr %result36.i, align 4
  %70 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %io_port.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %73, i32 0, i32 44
  %74 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %io_port.i.i, align 8
  tail call void @scsi_dma_unmap(ptr noundef %cmd) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i.i.i = add i32 %75, 2
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %76 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %76, i16 0) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i12.i.i = add i32 %75, 56
  %and.i13.i.i = and i32 %add.i12.i.i, 1048575
  %add1.i14.i.i = or i32 %and.i13.i.i, -18874368
  %77 = inttoptr i32 %add1.i14.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %77, i32 0) #9, !srcloc !260
  tail call void @scsi_done(ptr noundef %cmd) #9
  %cur_lunt.i3.i = getelementptr inbounds %struct.Scsi_Host, ptr %73, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %78 = ptrtoint ptr %cur_lunt.i3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cur_lunt.i3.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %79, align 4
  store ptr null, ptr %cur_lunt.i3.i, align 4
  %cur_target.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %73, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %81 = ptrtoint ptr %cur_target.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %cur_target.i.i, align 4
  %CurrentSC.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %73, i32 1, i32 2, i32 1
  %82 = ptrtoint ptr %CurrentSC.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %CurrentSC.i.i, align 4
  br label %nsp32_queuecommand_lck.exit

if.end37.i:                                       ; preds = %for.end.i.i, %if.end.i.i.if.end37.i_crit_edge
  %83 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  %msgout_len.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %86, i32 1, i32 50, i32 12, i32 12
  %87 = ptrtoint ptr %msgout_len.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %msgout_len.i.i, align 4
  %conv.i.i = zext i8 %88 to i32
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %84, i32 0, i32 18
  %89 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %lun.i.i, align 8
  %91 = trunc i64 %90 to i8
  %92 = and i8 %91, 7
  %conv7.i.i = or i8 %92, -128
  %msgoutbuf.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %86, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %arrayidx.i5.i = getelementptr [20 x i8], ptr %msgoutbuf.i.i, i32 0, i32 %conv.i.i
  %93 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv7.i.i, ptr %arrayidx.i5.i, align 1
  %inc.i6.i = add i8 %88, 1
  store i8 %inc.i6.i, ptr %msgout_len.i.i, align 4
  %target38.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 6
  %94 = load ptr, ptr %device.i, align 4
  %id.i7.i = getelementptr inbounds %struct.scsi_device, ptr %94, i32 0, i32 16
  %95 = ptrtoint ptr %id.i7.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %id.i7.i, align 8
  %arrayidx41.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96
  %cur_target.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %97 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %arrayidx41.i, ptr %cur_target.i, align 4
  %sync_flag.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 4
  %98 = ptrtoint ptr %sync_flag.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sync_flag.i, align 4
  %and.i = and i32 %99, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then42.i, label %if.else50.i

if.then42.i:                                      ; preds = %if.end37.i
  %100 = load i32, ptr @trans_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp43.not.i = icmp eq i32 %100, 1
  %synct.i15.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %101 = ptrtoint ptr %synct.i15.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %synct.i15.i, align 4
  %limit_entry.i16.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 5
  %103 = ptrtoint ptr %limit_entry.i16.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %limit_entry.i16.i, align 4
  %arrayidx.i17.i = getelementptr %struct._nsp32_sync_table, ptr %102, i32 %104
  %105 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i17.i, align 1
  br i1 %cmp43.not.i, label %if.else.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  %start_period.i.i = getelementptr %struct._nsp32_sync_table, ptr %102, i32 %104, i32 2
  %107 = ptrtoint ptr %start_period.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %start_period.i.i, align 1
  %ackwidth8.i.i = getelementptr %struct._nsp32_sync_table, ptr %102, i32 %104, i32 1
  %109 = ptrtoint ptr %ackwidth8.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %ackwidth8.i.i, align 1
  %111 = shl i8 %106, 4
  %112 = or i8 %111, 15
  %113 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %arrayidx41.i, align 4
  %ackwidth12.i.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 1
  %114 = ptrtoint ptr %ackwidth12.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %110, ptr %ackwidth12.i.i, align 1
  %offset13.i.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 3
  %115 = ptrtoint ptr %offset13.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 15, ptr %offset13.i.i, align 1
  %sample_reg.i.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 6
  %116 = ptrtoint ptr %sample_reg.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %sample_reg.i.i, align 4
  %117 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %device.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 8
  %msgout_len.i10.i = getelementptr inbounds %struct.Scsi_Host, ptr %120, i32 1, i32 50, i32 12, i32 12
  %121 = ptrtoint ptr %msgout_len.i10.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %msgout_len.i10.i, align 4
  %conv.i11.i = zext i8 %122 to i32
  %msgoutbuf.i12.i = getelementptr inbounds %struct.Scsi_Host, ptr %120, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %arrayidx.i13.i = getelementptr [20 x i8], ptr %msgoutbuf.i12.i, i32 0, i32 %conv.i11.i
  %123 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %arrayidx.i13.i, align 1
  %inc.i14.i = add nuw nsw i32 %conv.i11.i, 1
  %arrayidx2.i.i = getelementptr [20 x i8], ptr %msgoutbuf.i12.i, i32 0, i32 %inc.i14.i
  %124 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 3, ptr %arrayidx2.i.i, align 1
  %inc3.i.i = add nuw nsw i32 %conv.i11.i, 2
  %arrayidx5.i.i = getelementptr [20 x i8], ptr %msgoutbuf.i12.i, i32 0, i32 %inc3.i.i
  %125 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %arrayidx5.i.i, align 1
  %inc6.i.i = add nuw nsw i32 %conv.i11.i, 3
  %arrayidx8.i.i = getelementptr [20 x i8], ptr %msgoutbuf.i12.i, i32 0, i32 %inc6.i.i
  %126 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %108, ptr %arrayidx8.i.i, align 1
  %inc9.i.i = add nuw nsw i32 %conv.i11.i, 4
  %arrayidx11.i.i = getelementptr [20 x i8], ptr %msgoutbuf.i12.i, i32 0, i32 %inc9.i.i
  %127 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 15, ptr %arrayidx11.i.i, align 1
  %inc12.i.i = add i8 %122, 5
  store i8 %inc12.i.i, ptr %msgout_len.i10.i, align 4
  %128 = ptrtoint ptr %sync_flag.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %sync_flag.i, align 4
  %or.i = or i32 %129, 1
  br label %if.end70.sink.split.i

if.else.i:                                        ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  %offset.i.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 3
  %130 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %offset.i.i, align 1
  %period1.i.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 2
  %131 = ptrtoint ptr %period1.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %period1.i.i, align 2
  %132 = shl i8 %106, 4
  %133 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %arrayidx41.i, align 4
  %ackwidth.i.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 1
  %134 = ptrtoint ptr %ackwidth.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %ackwidth.i.i, align 1
  %sample_reg.i18.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 6
  %135 = ptrtoint ptr %sample_reg.i18.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %sample_reg.i18.i, align 4
  %or48.i = or i32 %99, 4
  br label %if.end70.sink.split.i

if.else50.i:                                      ; preds = %if.end37.i
  %and52.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.else59.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #11
  %synct.i19.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %136 = ptrtoint ptr %synct.i19.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %synct.i19.i, align 4
  %limit_entry.i20.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 5
  %138 = ptrtoint ptr %limit_entry.i20.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %limit_entry.i20.i, align 4
  %arrayidx.i21.i = getelementptr %struct._nsp32_sync_table, ptr %137, i32 %139
  %140 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.i21.i, align 1
  %offset.i22.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 3
  %142 = ptrtoint ptr %offset.i22.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %offset.i22.i, align 1
  %period1.i23.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 2
  %143 = ptrtoint ptr %period1.i23.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %period1.i23.i, align 2
  %144 = shl i8 %141, 4
  %145 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %arrayidx41.i, align 4
  %ackwidth.i24.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 1
  %146 = ptrtoint ptr %ackwidth.i24.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %ackwidth.i24.i, align 1
  %sample_reg.i25.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 6
  %147 = ptrtoint ptr %sample_reg.i25.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %sample_reg.i25.i, align 4
  %and56.i = and i32 %99, -6
  %or58.i = or i32 %and56.i, 4
  br label %if.end70.sink.split.i

if.else59.i:                                      ; preds = %if.else50.i
  %and61.i = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.else59.i.if.end70.i_crit_edge, label %if.then63.i

if.else59.i.if.end70.i_crit_edge:                 ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i

if.then63.i:                                      ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #11
  %synct.i26.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %148 = ptrtoint ptr %synct.i26.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %synct.i26.i, align 4
  %limit_entry.i27.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 5
  %150 = ptrtoint ptr %limit_entry.i27.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %limit_entry.i27.i, align 4
  %arrayidx.i28.i = getelementptr %struct._nsp32_sync_table, ptr %149, i32 %151
  %152 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx.i28.i, align 1
  %offset.i29.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 3
  %154 = ptrtoint ptr %offset.i29.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %offset.i29.i, align 1
  %period1.i30.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 2
  %155 = ptrtoint ptr %period1.i30.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %period1.i30.i, align 2
  %156 = shl i8 %153, 4
  %157 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %arrayidx41.i, align 4
  %ackwidth.i31.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 1
  %158 = ptrtoint ptr %ackwidth.i31.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %ackwidth.i31.i, align 1
  %sample_reg.i32.i = getelementptr [8 x %struct._nsp32_target], ptr %target38.i, i32 0, i32 %96, i32 6
  %159 = ptrtoint ptr %sample_reg.i32.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %sample_reg.i32.i, align 4
  %and65.i = and i32 %99, -7
  %or67.i = or i32 %and65.i, 4
  br label %if.end70.sink.split.i

if.end70.sink.split.i:                            ; preds = %if.then63.i, %if.then54.i, %if.else.i, %if.then45.i
  %or58.sink.i = phi i32 [ %or58.i, %if.then54.i ], [ %or67.i, %if.then63.i ], [ %or48.i, %if.else.i ], [ %or.i, %if.then45.i ]
  %160 = ptrtoint ptr %sync_flag.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %or58.sink.i, ptr %sync_flag.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end70.sink.split.i, %if.else59.i.if.end70.i_crit_edge
  %161 = load i8, ptr @auto_param, align 1, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %cmp73.i = icmp eq i8 %161, 0
  %162 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %device.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 8
  %io_port.i34.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 0, i32 44
  %166 = ptrtoint ptr %io_port.i34.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %io_port.i34.i, align 8
  %this_id.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 0, i32 25
  %168 = ptrtoint ptr %this_id.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %this_id.i.i, align 8
  %id.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %163, i32 0, i32 16
  %170 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %id.i.i.i, align 8
  br i1 %cmp73.i, label %if.then75.i, label %if.else77.i

if.then75.i:                                      ; preds = %if.end70.i
  %autoparam.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 1, i32 10
  %172 = ptrtoint ptr %autoparam.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %autoparam.i.i, align 4
  %add.i.i35.i = add i32 %167, 18
  %and.i.i36.i = and i32 %add.i.i35.i, 1048575
  %add1.i.i37.i = or i32 %and.i.i36.i, -18874368
  %174 = inttoptr i32 %add1.i.i37.i to ptr
  %175 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %174) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %cmp.not.i.i = icmp eq i8 %175, 0
  br i1 %cmp.not.i.i, label %if.end.i39.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.24) #9
  br label %if.then82.sink.split.i

if.end.i39.i:                                     ; preds = %if.then75.i
  %msgout_len.i38.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 1, i32 50, i32 12, i32 12
  %176 = ptrtoint ptr %msgout_len.i38.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %msgout_len.i38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %cmp10.i.i = icmp eq i8 %177, 0
  br i1 %cmp10.i.i, label %if.then12.i.i, label %land.lhs.true.i.i

if.then12.i.i:                                    ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.25) #9
  br label %if.then82.sink.split.i

land.lhs.true.i.i:                                ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %177)
  %cmp20.i.i = icmp ult i8 %177, 4
  br i1 %cmp20.i.i, label %for.body.i44.i, label %land.lhs.true.i.i.if.end34.i.i_crit_edge

land.lhs.true.i.i.if.end34.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

for.body.i44.i:                                   ; preds = %land.lhs.true.i.i
  %msgoutbuf.i40.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %178 = ptrtoint ptr %msgoutbuf.i40.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %msgoutbuf.i40.i, align 1
  %conv27.i.i = zext i8 %179 to i32
  %or.i.i = shl nuw i32 %conv27.i.i, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %177)
  %exitcond.not.i43.i = icmp eq i8 %177, 1
  br i1 %exitcond.not.i43.i, label %for.body.i44.i.for.end.i45.i_crit_edge, label %for.body.i44.i.1

for.body.i44.i.for.end.i45.i_crit_edge:           ; preds = %for.body.i44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i45.i

for.body.i44.i.1:                                 ; preds = %for.body.i44.i
  %arrayidx.i41.i.1 = getelementptr %struct.Scsi_Host, ptr %165, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 4
  %180 = ptrtoint ptr %arrayidx.i41.i.1 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx.i41.i.1, align 1
  %conv27.i.i.1 = zext i8 %181 to i32
  %or.i.i.1 = tail call i32 @llvm.fshl.i32(i32 %conv27.i.i.1, i32 %or.i.i, i32 24) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %177)
  %exitcond.not.i43.i.1 = icmp eq i8 %177, 2
  br i1 %exitcond.not.i43.i.1, label %for.body.i44.i.1.for.end.i45.i_crit_edge, label %for.body.i44.i.2

for.body.i44.i.1.for.end.i45.i_crit_edge:         ; preds = %for.body.i44.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i45.i

for.body.i44.i.2:                                 ; preds = %for.body.i44.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i41.i.2 = getelementptr %struct.Scsi_Host, ptr %165, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 5
  %182 = ptrtoint ptr %arrayidx.i41.i.2 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx.i41.i.2, align 1
  %conv27.i.i.2 = zext i8 %183 to i32
  %or.i.i.2 = tail call i32 @llvm.fshl.i32(i32 %conv27.i.i.2, i32 %or.i.i.1, i32 24) #9
  br label %for.end.i45.i

for.end.i45.i:                                    ; preds = %for.body.i44.i.2, %for.body.i44.i.1.for.end.i45.i_crit_edge, %for.body.i44.i.for.end.i45.i_crit_edge
  %or.i.i.lcssa = phi i32 [ %or.i.i, %for.body.i44.i.for.end.i45.i_crit_edge ], [ %or.i.i.1, %for.body.i44.i.1.for.end.i45.i_crit_edge ], [ %or.i.i.2, %for.body.i44.i.2 ]
  %184 = or i8 %177, -128
  %or28.i.i = zext i8 %184 to i32
  %or31.i.i = or i32 %or.i.i.lcssa, %or28.i.i
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %for.end.i45.i, %land.lhs.true.i.i.if.end34.i.i_crit_edge
  %msgout.1.i.i = phi i32 [ %or31.i.i, %for.end.i45.i ], [ 0, %land.lhs.true.i.i.if.end34.i.i_crit_edge ]
  %185 = call ptr @memset(ptr %173, i32 0, i32 88)
  %cmd_len.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %186 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %cmd_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %187)
  %cmp37135.not.i.i = icmp eq i16 %187, 0
  br i1 %cmp37135.not.i.i, label %if.end34.i.i.for.end44.i.i_crit_edge, label %for.body39.lr.ph.i.i

if.end34.i.i.for.end44.i.i_crit_edge:             ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end44.i.i

for.body39.lr.ph.i.i:                             ; preds = %if.end34.i.i
  %cmnd.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  br label %for.body39.i.i

for.body39.i.i:                                   ; preds = %for.body39.i.i.for.body39.i.i_crit_edge, %for.body39.lr.ph.i.i
  %i.1136.i.i = phi i32 [ 0, %for.body39.lr.ph.i.i ], [ %inc43.i.i, %for.body39.i.i.for.body39.i.i_crit_edge ]
  %188 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx40.i.i = getelementptr i8, ptr %189, i32 %i.1136.i.i
  %190 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx40.i.i, align 1
  %mul.i.i = shl i32 %i.1136.i.i, 2
  %arrayidx41.i.i = getelementptr [64 x i8], ptr %173, i32 0, i32 %mul.i.i
  %192 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %arrayidx41.i.i, align 1
  %inc43.i.i = add nuw nsw i32 %i.1136.i.i, 1
  %193 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %cmd_len.i.i, align 4
  %conv36.i.i = zext i16 %194 to i32
  %cmp37.i.i = icmp ult i32 %inc43.i.i, %conv36.i.i
  br i1 %cmp37.i.i, label %for.body39.i.i.for.body39.i.i_crit_edge, label %for.body39.i.i.for.end44.i.i_crit_edge

for.body39.i.i.for.end44.i.i_crit_edge:           ; preds = %for.body39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end44.i.i

for.body39.i.i.for.body39.i.i_crit_edge:          ; preds = %for.body39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body39.i.i

for.end44.i.i:                                    ; preds = %for.body39.i.i.for.end44.i.i_crit_edge, %if.end34.i.i.for.end44.i.i_crit_edge
  %195 = tail call i32 @llvm.bswap.i32(i32 %msgout.1.i.i) #9
  %msgout45.i.i = getelementptr inbounds %struct._nsp32_autoparam, ptr %173, i32 0, i32 1
  %196 = ptrtoint ptr %msgout45.i.i to i32
  call void @__asan_storeN_noabort(i32 %196, i32 4)
  store i32 %195, ptr %msgout45.i.i, align 1
  %cur_target.i46.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %197 = ptrtoint ptr %cur_target.i46.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %cur_target.i46.i, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %198, align 4
  %syncreg46.i.i = getelementptr inbounds %struct._nsp32_autoparam, ptr %173, i32 0, i32 2
  %201 = ptrtoint ptr %syncreg46.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %syncreg46.i.i, align 1
  %202 = load ptr, ptr %cur_target.i46.i, align 4
  %ackwidth.i47.i = getelementptr inbounds %struct._nsp32_target, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %ackwidth.i47.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %ackwidth.i47.i, align 1
  %ackwidth48.i.i = getelementptr inbounds %struct._nsp32_autoparam, ptr %173, i32 0, i32 3
  %205 = ptrtoint ptr %ackwidth48.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %ackwidth48.i.i, align 1
  %shl49.i.i = shl nuw i32 1, %169
  %conv50.i.i = and i32 %171, 255
  %shl51.i.i = shl nuw i32 1, %conv50.i.i
  %or52.i.i = or i32 %shl51.i.i, %shl49.i.i
  %conv53.i.i = trunc i32 %or52.i.i to i8
  %target_id.i.i = getelementptr inbounds %struct._nsp32_autoparam, ptr %173, i32 0, i32 4
  %206 = ptrtoint ptr %target_id.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv53.i.i, ptr %target_id.i.i, align 1
  %207 = load ptr, ptr %cur_target.i46.i, align 4
  %sample_reg.i48.i = getelementptr inbounds %struct._nsp32_target, ptr %207, i32 0, i32 6
  %208 = ptrtoint ptr %sample_reg.i48.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %sample_reg.i48.i, align 4
  %sample_reg55.i.i = getelementptr inbounds %struct._nsp32_autoparam, ptr %173, i32 0, i32 5
  %210 = ptrtoint ptr %sample_reg55.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %sample_reg55.i.i, align 1
  %command_control.i.i = getelementptr inbounds %struct._nsp32_autoparam, ptr %173, i32 0, i32 6
  %211 = ptrtoint ptr %command_control.i.i to i32
  call void @__asan_storeN_noabort(i32 %211, i32 2)
  store i16 -6912, ptr %command_control.i.i, align 1
  %trans_method.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %212 = ptrtoint ptr %trans_method.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %trans_method.i.i, align 4
  %214 = zext i32 %213 to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values)
  switch i32 %213, label %sw.default.i.i [
    i32 1, label %for.end44.i.i.sw.epilog.i.i_crit_edge
    i32 2, label %sw.bb59.i.i
    i32 4, label %sw.bb63.i.i
  ]

for.end44.i.i.sw.epilog.i.i_crit_edge:            ; preds = %for.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb59.i.i:                                      ; preds = %for.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb63.i.i:                                      ; preds = %for.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %for.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.26) #9
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb63.i.i, %sw.bb59.i.i, %for.end44.i.i.sw.epilog.i.i_crit_edge
  %s.0.i.i = phi i16 [ 16512, %sw.default.i.i ], [ 16514, %sw.bb63.i.i ], [ 16513, %sw.bb59.i.i ], [ 17024, %for.end44.i.i.sw.epilog.i.i_crit_edge ]
  %215 = tail call i16 @llvm.bswap.i16(i16 %s.0.i.i) #9
  %transfer_control.i.i = getelementptr inbounds %struct._nsp32_autoparam, ptr %173, i32 0, i32 7
  %216 = ptrtoint ptr %transfer_control.i.i to i32
  call void @__asan_storeN_noabort(i32 %216, i32 2)
  store i16 %215, ptr %transfer_control.i.i, align 1
  %cur_lunt.i49.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %217 = ptrtoint ptr %cur_lunt.i49.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %cur_lunt.i49.i, align 4
  %sglun_paddr.i.i = getelementptr inbounds %struct._nsp32_lunt, ptr %218, i32 0, i32 6
  %219 = ptrtoint ptr %sglun_paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %sglun_paddr.i.i, align 4
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #9
  %sgt_pointer.i.i = getelementptr inbounds %struct._nsp32_autoparam, ptr %173, i32 0, i32 8
  %222 = ptrtoint ptr %sgt_pointer.i.i to i32
  call void @__asan_storeN_noabort(i32 %222, i32 4)
  store i32 %221, ptr %sgt_pointer.i.i, align 1
  %auto_paddr.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 1, i32 10, i32 0, i32 0, i32 0, i32 1
  %223 = ptrtoint ptr %auto_paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %auto_paddr.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #9
  %add.i126.i.i = add i32 %167, 60
  %and.i127.i.i = and i32 %add.i126.i.i, 1048575
  %add1.i128.i.i = or i32 %and.i127.i.i, -18874368
  %226 = inttoptr i32 %add1.i128.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %226, i32 %225) #9, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i129.i.i = add i32 %167, 24
  %and.i130.i.i = and i32 %add.i129.i.i, 1048575
  %add1.i131.i.i = or i32 %and.i130.i.i, -18874368
  %227 = inttoptr i32 %add1.i131.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %227, i16 4352) #9, !srcloc !257
  %call70.i.i = tail call fastcc i32 @nsp32_arbitration(ptr noundef %cmd, i32 noundef %167) #9
  br label %if.end79.i

if.else77.i:                                      ; preds = %if.end70.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %and.i.i55.i = and i32 %167, 1048575
  %add1.i.i56.i = or i32 %and.i.i55.i, -18874368
  %228 = inttoptr i32 %add1.i.i56.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %228, i16 240) #9, !srcloc !257
  %add.i.i57.i = add i32 %167, 18
  %and.i141.i.i = and i32 %add.i.i57.i, 1048575
  %add1.i142.i.i = or i32 %and.i141.i.i, -18874368
  %229 = inttoptr i32 %add1.i142.i.i to ptr
  %230 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %229) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %231 = and i8 %230, 72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %if.end.i61.i, label %if.then.i59.i

if.then.i59.i:                                    ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.24) #9
  %result.i58.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %233 = ptrtoint ptr %result.i58.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 131072, ptr %result.i58.i, align 4
  br label %nsp32_selection_autoscsi.exit.i

if.end.i61.i:                                     ; preds = %if.else77.i
  %add.i143.i.i = add i32 %167, 64
  %and.i144.i.i = and i32 %add.i143.i.i, 1048575
  %add1.i145.i.i = or i32 %and.i144.i.i, -18874368
  %234 = inttoptr i32 %add1.i145.i.i to ptr
  %235 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %234) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i146.i.i = add i32 %167, 24
  %and.i147.i.i = and i32 %add.i146.i.i, 1048575
  %add1.i148.i.i = or i32 %and.i147.i.i, -18874368
  %236 = inttoptr i32 %add1.i148.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %236, i16 256) #9, !srcloc !257
  %cmd_len.i60.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %237 = ptrtoint ptr %cmd_len.i60.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %cmd_len.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %cmp188.not.i.i = icmp eq i16 %238, 0
  br i1 %cmp188.not.i.i, label %if.end.i61.i.for.end.i69.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i61.i.for.end.i69.i_crit_edge:             ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i69.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i61.i
  %cmnd.i62.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %add.i149.i.i = add i32 %167, 20
  %and.i150.i.i = and i32 %add.i149.i.i, 1048575
  %add1.i151.i.i = or i32 %and.i150.i.i, -18874368
  %239 = inttoptr i32 %add1.i151.i.i to ptr
  br label %for.body.i66.i

for.body.i66.i:                                   ; preds = %for.body.i66.i.for.body.i66.i_crit_edge, %for.body.lr.ph.i.i
  %i.0189.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i64.i, %for.body.i66.i.for.body.i66.i_crit_edge ]
  %240 = ptrtoint ptr %cmnd.i62.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cmnd.i62.i, align 4
  %arrayidx.i63.i = getelementptr i8, ptr %241, i32 %i.0189.i.i
  %242 = ptrtoint ptr %arrayidx.i63.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx.i63.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %239, i8 %243) #9, !srcloc !252
  %inc.i64.i = add nuw nsw i32 %i.0189.i.i, 1
  %244 = ptrtoint ptr %cmd_len.i60.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %cmd_len.i60.i, align 4
  %conv12.i.i = zext i16 %245 to i32
  %cmp.i65.i = icmp ult i32 %inc.i64.i, %conv12.i.i
  br i1 %cmp.i65.i, label %for.body.i66.i.for.body.i66.i_crit_edge, label %for.body.i66.i.for.end.i69.i_crit_edge

for.body.i66.i.for.end.i69.i_crit_edge:           ; preds = %for.body.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i69.i

for.body.i66.i.for.body.i66.i_crit_edge:          ; preds = %for.body.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i66.i

for.end.i69.i:                                    ; preds = %for.body.i66.i.for.end.i69.i_crit_edge, %if.end.i61.i.for.end.i69.i_crit_edge
  %shl.i.i = shl nuw i32 1, %169
  %conv14.i.i = and i32 %171, 255
  %shl15.i.i = shl nuw i32 1, %conv14.i.i
  %or.i67.i = or i32 %shl15.i.i, %shl.i.i
  %conv16.i.i = trunc i32 %or.i67.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %add.i152.i.i = add i32 %167, 34
  %and.i153.i.i = and i32 %add.i152.i.i, 1048575
  %add1.i154.i.i = or i32 %and.i153.i.i, -18874368
  %246 = inttoptr i32 %add1.i154.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %246, i8 %conv16.i.i) #9, !srcloc !252
  %msgout_len.i68.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 1, i32 50, i32 12, i32 12
  %247 = ptrtoint ptr %msgout_len.i68.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %msgout_len.i68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %cmp18.i.i = icmp eq i8 %248, 0
  br i1 %cmp18.i.i, label %if.then20.i.i, label %land.lhs.true.i70.i

if.then20.i.i:                                    ; preds = %for.end.i69.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.25) #9
  %result21.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %249 = ptrtoint ptr %result21.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 458752, ptr %result21.i.i, align 4
  br label %nsp32_selection_autoscsi.exit.i

land.lhs.true.i70.i:                              ; preds = %for.end.i69.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %248)
  %cmp28.i.i = icmp ult i8 %248, 4
  br i1 %cmp28.i.i, label %for.body36.i.i, label %if.else48.i.i

for.body36.i.i:                                   ; preds = %land.lhs.true.i70.i
  %msgoutbuf.i71.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %250 = ptrtoint ptr %msgoutbuf.i71.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %msgoutbuf.i71.i, align 1
  %conv38.i.i = zext i8 %251 to i32
  %or40.i.i = shl nuw i32 %conv38.i.i, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %248)
  %exitcond.not.i72.i = icmp eq i8 %248, 1
  br i1 %exitcond.not.i72.i, label %for.body36.i.i.for.end43.i.i_crit_edge, label %for.body36.i.i.1

for.body36.i.i.for.end43.i.i_crit_edge:           ; preds = %for.body36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end43.i.i

for.body36.i.i.1:                                 ; preds = %for.body36.i.i
  %arrayidx37.i.i.1 = getelementptr %struct.Scsi_Host, ptr %165, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 4
  %252 = ptrtoint ptr %arrayidx37.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx37.i.i.1, align 1
  %conv38.i.i.1 = zext i8 %253 to i32
  %or40.i.i.1 = tail call i32 @llvm.fshl.i32(i32 %conv38.i.i.1, i32 %or40.i.i, i32 24) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %248)
  %exitcond.not.i72.i.1 = icmp eq i8 %248, 2
  br i1 %exitcond.not.i72.i.1, label %for.body36.i.i.1.for.end43.i.i_crit_edge, label %for.body36.i.i.2

for.body36.i.i.1.for.end43.i.i_crit_edge:         ; preds = %for.body36.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end43.i.i

for.body36.i.i.2:                                 ; preds = %for.body36.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx37.i.i.2 = getelementptr %struct.Scsi_Host, ptr %165, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 5
  %254 = ptrtoint ptr %arrayidx37.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx37.i.i.2, align 1
  %conv38.i.i.2 = zext i8 %255 to i32
  %or40.i.i.2 = tail call i32 @llvm.fshl.i32(i32 %conv38.i.i.2, i32 %or40.i.i.1, i32 24) #9
  br label %for.end43.i.i

for.end43.i.i:                                    ; preds = %for.body36.i.i.2, %for.body36.i.i.1.for.end43.i.i_crit_edge, %for.body36.i.i.for.end43.i.i_crit_edge
  %or40.i.i.lcssa = phi i32 [ %or40.i.i, %for.body36.i.i.for.end43.i.i_crit_edge ], [ %or40.i.i.1, %for.body36.i.i.1.for.end43.i.i_crit_edge ], [ %or40.i.i.2, %for.body36.i.i.2 ]
  %256 = or i8 %248, -128
  %or44.i.i = zext i8 %256 to i32
  %or47.i.i = or i32 %or40.i.i.lcssa, %or44.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %257 = tail call i32 @llvm.bswap.i32(i32 %or47.i.i) #9
  %add.i155.i.i = add i32 %167, 68
  %and.i156.i.i = and i32 %add.i155.i.i, 1048575
  %add1.i157.i.i = or i32 %and.i156.i.i, -18874368
  %258 = inttoptr i32 %add1.i157.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %258, i32 %257) #9, !srcloc !260
  br label %if.end50.i.i

if.else48.i.i:                                    ; preds = %land.lhs.true.i70.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i158.i.i = add i32 %167, 68
  %and.i159.i.i = and i32 %add.i158.i.i, 1048575
  %add1.i160.i.i = or i32 %and.i159.i.i, -18874368
  %259 = inttoptr i32 %add1.i160.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %259, i32 0) #9, !srcloc !260
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.else48.i.i, %for.end43.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i161.i.i = add i32 %167, 72
  %and.i162.i.i = and i32 %add.i161.i.i, 1048575
  %add1.i163.i.i = or i32 %and.i162.i.i, -18874368
  %260 = inttoptr i32 %add1.i163.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %260, i16 4135) #9, !srcloc !257
  %cur_target.i73.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %261 = ptrtoint ptr %cur_target.i73.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %cur_target.i73.i, align 4
  %sample_reg.i74.i = getelementptr inbounds %struct._nsp32_target, ptr %262, i32 0, i32 6
  %263 = ptrtoint ptr %sample_reg.i74.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %sample_reg.i74.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %add.i164.i.i = add i32 %167, 15
  %and.i165.i.i = and i32 %add.i164.i.i, 1048575
  %add1.i166.i.i = or i32 %and.i165.i.i, -18874368
  %265 = inttoptr i32 %add1.i166.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %265, i8 %264) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %add.i167.i.i = add i32 %167, 26
  %and.i168.i.i = and i32 %add.i167.i.i, 1048575
  %add1.i169.i.i = or i32 %and.i168.i.i, -18874368
  %266 = inttoptr i32 %add1.i169.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %266, i8 2) #9, !srcloc !252
  %267 = ptrtoint ptr %cur_target.i73.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %cur_target.i73.i, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %268, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %add.i170.i.i = add i32 %167, 28
  %and.i171.i.i = and i32 %add.i170.i.i, 1048575
  %add1.i172.i.i = or i32 %and.i171.i.i, -18874368
  %271 = inttoptr i32 %add1.i172.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %271, i8 %270) #9, !srcloc !252
  %272 = ptrtoint ptr %cur_target.i73.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %cur_target.i73.i, align 4
  %ackwidth.i75.i = getelementptr inbounds %struct._nsp32_target, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %ackwidth.i75.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %ackwidth.i75.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %add.i173.i.i = add i32 %167, 29
  %and.i174.i.i = and i32 %add.i173.i.i, 1048575
  %add1.i175.i.i = or i32 %and.i174.i.i, -18874368
  %276 = inttoptr i32 %add1.i175.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %276, i8 %275) #9, !srcloc !252
  %cur_lunt.i76.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %277 = ptrtoint ptr %cur_lunt.i76.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %cur_lunt.i76.i, align 4
  %sglun_paddr.i77.i = getelementptr inbounds %struct._nsp32_lunt, ptr %278, i32 0, i32 6
  %279 = ptrtoint ptr %sglun_paddr.i77.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %sglun_paddr.i77.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %281 = tail call i32 @llvm.bswap.i32(i32 %280) #9
  %add.i176.i.i = add i32 %167, 60
  %and.i177.i.i = and i32 %add.i176.i.i, 1048575
  %add1.i178.i.i = or i32 %and.i177.i.i, -18874368
  %282 = inttoptr i32 %add1.i178.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %282, i32 %281) #9, !srcloc !260
  %trans_method.i78.i = getelementptr inbounds %struct.Scsi_Host, ptr %165, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %283 = ptrtoint ptr %trans_method.i78.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %trans_method.i78.i, align 4
  %and56.i.i = and i32 %284, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i.i)
  %tobool57.not.i.i = icmp eq i32 %and56.i.i, 0
  br i1 %tobool57.not.i.i, label %if.else67.i.i, label %if.then58.i.i

if.then58.i.i:                                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %285 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %cmp60.not.i.i = icmp eq i32 %286, 0
  %spec.select.i.i = select i1 %cmp60.not.i.i, i16 16512, i16 17024
  br label %if.end85.i.i

if.else67.i.i:                                    ; preds = %if.end50.i.i
  %and69.i.i = and i32 %284, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i.i)
  %tobool70.not.i.i = icmp eq i32 %and69.i.i, 0
  br i1 %tobool70.not.i.i, label %if.else75.i.i, label %if.else67.i.i.if.end85.i.i_crit_edge

if.else67.i.i.if.end85.i.i_crit_edge:             ; preds = %if.else67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i.i

if.else75.i.i:                                    ; preds = %if.else67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and77.i.i = and i32 %284, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i.i)
  %tobool78.not.i.i = icmp eq i32 %and77.i.i, 0
  %spec.select140.i.i = select i1 %tobool78.not.i.i, i16 16512, i16 16514
  br label %if.end85.i.i

if.end85.i.i:                                     ; preds = %if.else75.i.i, %if.else67.i.i.if.end85.i.i_crit_edge, %if.then58.i.i
  %command.0.i.i = phi i16 [ %spec.select.i.i, %if.then58.i.i ], [ 16513, %if.else67.i.i.if.end85.i.i_crit_edge ], [ %spec.select140.i.i, %if.else75.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %287 = tail call i16 @llvm.bswap.i16(i16 %command.0.i.i) #9
  %add.i179.i.i = add i32 %167, 2
  %and.i180.i.i = and i32 %add.i179.i.i, 1048575
  %add1.i181.i.i = or i32 %and.i180.i.i, -18874368
  %288 = inttoptr i32 %add1.i181.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %288, i16 %287) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %236, i16 -6912) #9, !srcloc !257
  %call86.i.i = tail call fastcc i32 @nsp32_arbitration(ptr noundef %cmd, i32 noundef %167) #9
  br label %nsp32_selection_autoscsi.exit.i

nsp32_selection_autoscsi.exit.i:                  ; preds = %if.end85.i.i, %if.then20.i.i, %if.then.i59.i
  %status.0.i.i = phi i32 [ 1, %if.then.i59.i ], [ 1, %if.then20.i.i ], [ %call86.i.i, %if.end85.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %228, i16 0) #9, !srcloc !257
  br label %if.end79.i

if.end79.i:                                       ; preds = %nsp32_selection_autoscsi.exit.i, %sw.epilog.i.i
  %ret.0.i = phi i32 [ %status.0.i.i, %nsp32_selection_autoscsi.exit.i ], [ %call70.i.i, %sw.epilog.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i)
  %cmp80.not.i = icmp eq i32 %ret.0.i, 1
  br i1 %cmp80.not.i, label %if.end79.i.nsp32_queuecommand_lck.exit_crit_edge, label %if.end79.i.if.then82.i_crit_edge

if.end79.i.if.then82.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i

if.end79.i.nsp32_queuecommand_lck.exit_crit_edge: ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_queuecommand_lck.exit

if.then82.sink.split.i:                           ; preds = %if.then12.i.i, %if.then.i.i
  %.sink.i = phi i32 [ 458752, %if.then12.i.i ], [ 131072, %if.then.i.i ]
  %result13.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %289 = ptrtoint ptr %result13.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %.sink.i, ptr %result13.i.i, align 4
  br label %if.then82.i

if.then82.i:                                      ; preds = %if.then82.sink.split.i, %if.end79.i.if.then82.i_crit_edge
  %290 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %device.i, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %291, align 8
  %io_port.i80.i = getelementptr inbounds %struct.Scsi_Host, ptr %293, i32 0, i32 44
  %294 = ptrtoint ptr %io_port.i80.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %io_port.i80.i, align 8
  tail call void @scsi_dma_unmap(ptr noundef %cmd) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i.i81.i = add i32 %295, 2
  %and.i.i82.i = and i32 %add.i.i81.i, 1048575
  %add1.i.i83.i = or i32 %and.i.i82.i, -18874368
  %296 = inttoptr i32 %add1.i.i83.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %296, i16 0) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i12.i84.i = add i32 %295, 56
  %and.i13.i85.i = and i32 %add.i12.i84.i, 1048575
  %add1.i14.i86.i = or i32 %and.i13.i85.i, -18874368
  %297 = inttoptr i32 %add1.i14.i86.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %297, i32 0) #9, !srcloc !260
  tail call void @scsi_done(ptr noundef %cmd) #9
  %cur_lunt.i87.i = getelementptr inbounds %struct.Scsi_Host, ptr %293, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %298 = ptrtoint ptr %cur_lunt.i87.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %cur_lunt.i87.i, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr null, ptr %299, align 4
  store ptr null, ptr %cur_lunt.i87.i, align 4
  %cur_target.i88.i = getelementptr inbounds %struct.Scsi_Host, ptr %293, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %301 = ptrtoint ptr %cur_target.i88.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr null, ptr %cur_target.i88.i, align 4
  %CurrentSC.i89.i = getelementptr inbounds %struct.Scsi_Host, ptr %293, i32 1, i32 2, i32 1
  %302 = ptrtoint ptr %CurrentSC.i89.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr null, ptr %CurrentSC.i89.i, align 4
  br label %nsp32_queuecommand_lck.exit

nsp32_queuecommand_lck.exit:                      ; preds = %if.then82.i, %if.end79.i.nsp32_queuecommand_lck.exit_crit_edge, %if.then35.i, %if.then11.i, %if.then6.i, %if.then.i
  %303 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %304, i32 noundef %call2) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nsp32_info(ptr noundef readnone %shpnt) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %info_str = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 5, i32 1, i32 1
  ret ptr %info_str
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp32_eh_abort(ptr noundef %SCpnt) #1 align 64 {
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
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.27)
  %cur_lunt = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %cur_lunt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_lunt, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_target = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %cur_target to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_target, align 4
  %sync_flag = getelementptr inbounds %struct._nsp32_target, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %sync_flag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sync_flag, align 4
  %and = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %sync_flag to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sync_flag, align 4
  %15 = ptrtoint ptr %cur_target to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur_target, align 4
  %synct.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %17 = ptrtoint ptr %synct.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %synct.i, align 4
  %limit_entry.i = getelementptr inbounds %struct._nsp32_target, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %limit_entry.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %limit_entry.i, align 4
  %arrayidx.i = getelementptr %struct._nsp32_sync_table, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %offset.i = getelementptr inbounds %struct._nsp32_target, ptr %16, i32 0, i32 3
  %23 = ptrtoint ptr %offset.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %offset.i, align 1
  %period1.i = getelementptr inbounds %struct._nsp32_target, ptr %16, i32 0, i32 2
  %24 = ptrtoint ptr %period1.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %period1.i, align 2
  %25 = shl i8 %22, 4
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %16, align 4
  %ackwidth.i = getelementptr inbounds %struct._nsp32_target, ptr %16, i32 0, i32 1
  %27 = ptrtoint ptr %ackwidth.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %ackwidth.i, align 1
  %sample_reg.i = getelementptr inbounds %struct._nsp32_target, ptr %16, i32 0, i32 6
  %28 = ptrtoint ptr %sample_reg.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %sample_reg.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i = add i32 %5, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %29 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %29, i16 0) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i18 = add i32 %5, 56
  %and.i19 = and i32 %add.i18, 1048575
  %add1.i20 = or i32 %and.i19, -18874368
  %30 = inttoptr i32 %add1.i20 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %30, i16 0) #9, !srcloc !257
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 24
  %31 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 327680, ptr %result, align 4
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %io_port.i, align 8
  tail call void @scsi_dma_unmap(ptr noundef %SCpnt) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i.i = add i32 %37, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %38 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %38, i16 0) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i12.i = add i32 %37, 56
  %and.i13.i = and i32 %add.i12.i, 1048575
  %add1.i14.i = or i32 %and.i13.i, -18874368
  %39 = inttoptr i32 %add1.i14.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 0) #9, !srcloc !260
  tail call void @scsi_done(ptr noundef %SCpnt) #9
  %cur_lunt.i = getelementptr inbounds %struct.Scsi_Host, ptr %35, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %40 = ptrtoint ptr %cur_lunt.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur_lunt.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %41, align 4
  store ptr null, ptr %cur_lunt.i, align 4
  %cur_target.i = getelementptr inbounds %struct.Scsi_Host, ptr %35, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %43 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %cur_target.i, align 4
  %CurrentSC.i = getelementptr inbounds %struct.Scsi_Host, ptr %35, i32 1, i32 2, i32 1
  %44 = ptrtoint ptr %CurrentSC.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %CurrentSC.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8194, %if.end8 ], [ 8195, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp32_eh_host_reset(ptr nocapture noundef readonly %SCpnt) #1 align 64 {
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
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.28)
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #9
  tail call fastcc void @nsp32hw_init(ptr noundef %hostdata)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %5, 1048575
  %add1.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 240) #9, !srcloc !257
  tail call fastcc void @nsp32_do_bus_reset(ptr noundef %hostdata)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 0) #9, !srcloc !257
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %host_lock8 = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %host_lock8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host_lock8, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %18) #9
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp32_show_info(ptr noundef %m, ptr noundef %host) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 17
  %0 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host_no, align 4
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 44
  %2 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_port, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.29) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.49) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %1) #9
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 47
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %5) #9
  %6 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_port, align 8
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 45
  %8 = ptrtoint ptr %n_io_port to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %n_io_port, align 4
  %conv = zext i8 %9 to i32
  %add = add i32 %7, -1
  %sub = add i32 %add, %conv
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %7, i32 noundef %sub) #9
  %base3 = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 43
  %10 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base3, align 4
  %MmioLength = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 2
  %12 = ptrtoint ptr %MmioLength to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %MmioLength, align 4
  %add5 = add i32 %11, -1
  %sub6 = add i32 %add5, %13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef %11, i32 noundef %sub6) #9
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 28
  %14 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sg_tablesize, align 2
  %conv7 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef %conv7) #9
  %add.i = add i32 %3, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %16 = inttoptr i32 %add1.i to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #9, !srcloc !249
  %18 = and i16 %17, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %19 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 11) #9, !srcloc !252
  %add2.i = add i32 %3, 8
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %20 = inttoptr i32 %add4.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %pci_devid = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 3, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %pci_devid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_devid, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %driver_data, align 4
  %conv10 = zext i8 %21 to i32
  %and11 = and i32 %conv10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  %cond = select i1 %tobool.not, ptr @.str.39, ptr @.str.38
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond) #9
  %and13 = and i32 %conv10, 6
  %arrayidx = getelementptr [7 x ptr], ptr @nsp32_model, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %and13, ptr noundef %27) #9
  %Lock = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 3, i32 0, i32 0, i32 3
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %Lock) #9
  %CurrentSC = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 2, i32 1
  %28 = ptrtoint ptr %CurrentSC to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %CurrentSC, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, ptr noundef %29) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %Lock, i32 noundef %call17) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.42) #9
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 25
  %target = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %id.0113 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %id.0113) #9
  %30 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %this_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0113, i32 %31)
  %cmp23 = icmp eq i32 %id.0113, %31
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.44) #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %sync_flag = getelementptr [8 x %struct._nsp32_target], ptr %target, i32 0, i32 %id.0113, i32 4
  %32 = ptrtoint ptr %sync_flag to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sync_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp26 = icmp eq i32 %33, 4
  br i1 %cmp26, label %if.then28, label %if.end.if.end42_crit_edge

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then28:                                        ; preds = %if.end
  %period = getelementptr [8 x %struct._nsp32_target], ptr %target, i32 0, i32 %id.0113, i32 2
  %34 = ptrtoint ptr %period to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %period, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp32 = icmp eq i8 %35, 0
  br i1 %cmp32, label %land.lhs.true, label %if.then28.if.else_crit_edge

if.then28.if.else_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.then28
  %offset = getelementptr [8 x %struct._nsp32_target], ptr %target, i32 0, i32 %id.0113, i32 3
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %offset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp37 = icmp eq i8 %37, 0
  br i1 %cmp37, label %land.lhs.true.if.end42_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then28.if.else_crit_edge
  br label %if.end42

if.end42:                                         ; preds = %if.else, %land.lhs.true.if.end42_crit_edge, %if.end.if.end42_crit_edge
  %.str.45.sink = phi ptr [ @.str.46, %if.else ], [ @.str.45, %land.lhs.true.if.end42_crit_edge ], [ @.str.47, %if.end.if.end42_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.45.sink) #9
  %period45 = getelementptr [8 x %struct._nsp32_target], ptr %target, i32 0, i32 %id.0113, i32 2
  %38 = ptrtoint ptr %period45 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %period45, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp47.not = icmp eq i8 %39, 0
  br i1 %cmp47.not, label %if.end42.if.end59_crit_edge, label %if.then49

if.end42.if.end59_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %conv46 = zext i8 %39 to i32
  %mul = shl nuw nsw i32 %conv46, 2
  %div = udiv i32 1000000, %mul
  %div.frozen = freeze i32 %div
  %div54 = udiv i32 %div.frozen, 1000
  %40 = mul i32 %div54, 1000
  %rem.decomposed = sub i32 %div.frozen, %40
  %offset57 = getelementptr [8 x %struct._nsp32_target], ptr %target, i32 0, i32 %id.0113, i32 3
  %41 = ptrtoint ptr %offset57 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %offset57, align 1
  %conv58 = zext i8 %42 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, i32 noundef %div54, i32 noundef %rem.decomposed, i32 noundef %conv58) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then49, %if.end42.if.end59_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end59, %if.then
  %inc = add nuw nsw i32 %id.0113, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp32_scsi_done(ptr noundef %SCpnt) unnamed_addr #1 align 64 {
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
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  tail call void @scsi_dma_unmap(ptr noundef %SCpnt) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i = add i32 %5, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 0) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i12 = add i32 %5, 56
  %and.i13 = and i32 %add.i12, 1048575
  %add1.i14 = or i32 %and.i13, -18874368
  %7 = inttoptr i32 %add1.i14 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 0) #9, !srcloc !260
  tail call void @scsi_done(ptr noundef %SCpnt) #9
  %cur_lunt = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %cur_lunt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_lunt, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %9, align 4
  store ptr null, ptr %cur_lunt, align 4
  %cur_target = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %cur_target to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %cur_target, align 4
  %CurrentSC = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 2, i32 1
  %12 = ptrtoint ptr %CurrentSC to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %CurrentSC, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nsp32_arbitration(ptr nocapture noundef writeonly %SCpnt, i32 noundef %base) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %base, 26
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add1.i to ptr
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %time.0 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %inc = add nuw nsw i32 %time.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %time.0)
  %cmp2 = icmp ult i32 %time.0, 100
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  %and5 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 24
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %result, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  %add.i21 = add i32 %base, 4
  %and.i22 = and i32 %add.i21, 1048575
  %add1.i23 = or i32 %and.i22, -18874368
  %3 = inttoptr i32 %add1.i23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 3) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  %add4.i = add i32 %base, 8
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %4 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 0) #9, !srcloc !252
  br label %if.end13

if.else:                                          ; preds = %do.end
  %and7 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %result12 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 24
  br i1 %tobool8.not, label %if.else11, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %result12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 131072, ptr %result12, align 4
  br label %if.end13

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %result12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65536, ptr %result12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then9, %if.then
  %status.0 = phi i32 [ 1, %if.then ], [ 0, %if.then9 ], [ 0, %if.else11 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 2) #9, !srcloc !252
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nsp32_prom_read(ptr noundef readonly %data, i32 noundef %romaddr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nsp32_prom_start(ptr noundef %data)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 1)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 0)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 1)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 0)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 0)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 0)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 0)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 0)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 0)
  %shr37 = lshr i32 %romaddr, 7
  %and = and i32 %shr37, 1
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef %and)
  %shr37.1 = lshr i32 %romaddr, 6
  %and.1 = and i32 %shr37.1, 1
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef %and.1)
  %shr37.2 = lshr i32 %romaddr, 5
  %and.2 = and i32 %shr37.2, 1
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef %and.2)
  %shr37.3 = lshr i32 %romaddr, 4
  %and.3 = and i32 %shr37.3, 1
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef %and.3)
  %shr37.4 = lshr i32 %romaddr, 3
  %and.4 = and i32 %shr37.4, 1
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef %and.4)
  %shr37.5 = lshr i32 %romaddr, 2
  %and.5 = and i32 %shr37.5, 1
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef %and.5)
  %shr37.6 = lshr i32 %romaddr, 1
  %and.6 = and i32 %shr37.6, 1
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef %and.6)
  %and.7 = and i32 %romaddr, 1
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef %and.7)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 0)
  tail call fastcc void @nsp32_prom_start(ptr noundef %data)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 1)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 0)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 1)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 0)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 0)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 0)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 0)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 1)
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 0)
  %BaseAddress.i.i = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 1
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %entry
  %val.059 = phi i32 [ 0, %entry ], [ %add, %for.body3.for.body3_crit_edge ]
  %i.158 = phi i32 [ 7, %entry ], [ %dec5, %for.body3.for.body3_crit_edge ]
  %0 = ptrtoint ptr %BaseAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %BaseAddress.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i.i = add i32 %1, 4
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %2 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 21) #9, !srcloc !252
  %add2.i.i.i = add i32 %1, 8
  %and3.i.i.i = and i32 %add2.i.i.i, 1048575
  %add4.i.i.i = or i32 %and3.i.i.i, -18874368
  %3 = inttoptr i32 %add4.i.i.i to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %5 = and i8 %4, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %5) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #9
  %7 = ptrtoint ptr %BaseAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %BaseAddress.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i6.i = add i32 %8, 4
  %and.i.i7.i = and i32 %add.i.i6.i, 1048575
  %add1.i.i8.i = or i32 %and.i.i7.i, -18874368
  %9 = inttoptr i32 %add1.i.i8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 21) #9, !srcloc !252
  %add2.i.i9.i = add i32 %8, 8
  %and3.i.i10.i = and i32 %add2.i.i9.i, 1048575
  %add4.i.i11.i = or i32 %and3.i.i10.i, -18874368
  %10 = inttoptr i32 %add4.i.i11.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %12 = or i8 %11, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %12) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #9
  %14 = ptrtoint ptr %BaseAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %BaseAddress.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i17.i = add i32 %15, 4
  %and.i.i18.i = and i32 %add.i.i17.i, 1048575
  %add1.i.i19.i = or i32 %and.i.i18.i, -18874368
  %16 = inttoptr i32 %add1.i.i19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 21) #9, !srcloc !252
  %add2.i.i20.i = add i32 %15, 8
  %and3.i.i21.i = and i32 %add2.i.i20.i, 1048575
  %add4.i.i22.i = or i32 %and3.i.i21.i, -18874368
  %17 = inttoptr i32 %add4.i.i22.i to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %19 = lshr i8 %18, 2
  %.lobit.i.i = and i8 %19, 1
  %20 = zext i8 %.lobit.i.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #9
  %22 = ptrtoint ptr %BaseAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %BaseAddress.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i24.i = add i32 %23, 4
  %and.i.i25.i = and i32 %add.i.i24.i, 1048575
  %add1.i.i26.i = or i32 %and.i.i25.i, -18874368
  %24 = inttoptr i32 %add1.i.i26.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 21) #9, !srcloc !252
  %add2.i.i27.i = add i32 %23, 8
  %and3.i.i28.i = and i32 %add2.i.i27.i, 1048575
  %add4.i.i29.i = or i32 %and3.i.i28.i, -18874368
  %25 = inttoptr i32 %add4.i.i29.i to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %27 = and i8 %26, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %27) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #9
  %29 = ptrtoint ptr %BaseAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %BaseAddress.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i35.i = add i32 %30, 4
  %and.i.i36.i = and i32 %add.i.i35.i, 1048575
  %add1.i.i37.i = or i32 %and.i.i36.i, -18874368
  %31 = inttoptr i32 %add1.i.i37.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 21) #9, !srcloc !252
  %add2.i.i38.i = add i32 %30, 8
  %and3.i.i39.i = and i32 %add2.i.i38.i, 1048575
  %add4.i.i40.i = or i32 %and3.i.i39.i, -18874368
  %32 = inttoptr i32 %add4.i.i40.i to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %34 = or i8 %33, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %34) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #9
  %shl = shl nuw i32 %20, %i.158
  %add = add i32 %shl, %val.059
  %dec5 = add nsw i32 %i.158, -1
  %cmp2.not = icmp eq i32 %i.158, 0
  br i1 %cmp2.not, label %for.end6, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

for.end6:                                         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nsp32_prom_write_bit(ptr noundef %data, i32 noundef 1)
  %36 = ptrtoint ptr %BaseAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %BaseAddress.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i.i39 = add i32 %37, 4
  %and.i.i.i40 = and i32 %add.i.i.i39, 1048575
  %add1.i.i.i41 = or i32 %and.i.i.i40, -18874368
  %38 = inttoptr i32 %add1.i.i.i41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 21) #9, !srcloc !252
  %add2.i.i.i42 = add i32 %37, 8
  %and3.i.i.i43 = and i32 %add2.i.i.i42, 1048575
  %add4.i.i.i44 = or i32 %and3.i.i.i43, -18874368
  %39 = inttoptr i32 %add4.i.i.i44 to ptr
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %41 = or i8 %40, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %41) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 2147480) #9
  %43 = ptrtoint ptr %BaseAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %BaseAddress.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i6.i45 = add i32 %44, 4
  %and.i.i7.i46 = and i32 %add.i.i6.i45, 1048575
  %add1.i.i8.i47 = or i32 %and.i.i7.i46, -18874368
  %45 = inttoptr i32 %add1.i.i8.i47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 21) #9, !srcloc !252
  %add2.i.i9.i48 = add i32 %44, 8
  %and3.i.i10.i49 = and i32 %add2.i.i9.i48, 1048575
  %add4.i.i11.i50 = or i32 %and3.i.i10.i49, -18874368
  %46 = inttoptr i32 %add4.i.i11.i50 to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %48 = and i8 %47, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %48) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 2147480) #9
  %50 = ptrtoint ptr %BaseAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %BaseAddress.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i17.i51 = add i32 %51, 4
  %and.i.i18.i52 = and i32 %add.i.i17.i51, 1048575
  %add1.i.i19.i53 = or i32 %and.i.i18.i52, -18874368
  %52 = inttoptr i32 %add1.i.i19.i53 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 21) #9, !srcloc !252
  %add2.i.i20.i54 = add i32 %51, 8
  %and3.i.i21.i55 = and i32 %add2.i.i20.i54, 1048575
  %add4.i.i22.i56 = or i32 %and3.i.i21.i55, -18874368
  %53 = inttoptr i32 %add4.i.i22.i56 to ptr
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %55 = or i8 %54, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %55) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 2147480) #9
  %57 = ptrtoint ptr %BaseAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %BaseAddress.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i28.i = add i32 %58, 4
  %and.i.i29.i = and i32 %add.i.i28.i, 1048575
  %add1.i.i30.i = or i32 %and.i.i29.i, -18874368
  %59 = inttoptr i32 %add1.i.i30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 21) #9, !srcloc !252
  %add2.i.i31.i = add i32 %58, 8
  %and3.i.i32.i = and i32 %add2.i.i31.i, 1048575
  %add4.i.i33.i = or i32 %and3.i.i32.i, -18874368
  %60 = inttoptr i32 %add4.i.i33.i to ptr
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %62 = or i8 %61, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 %62) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 2147480) #9
  %64 = ptrtoint ptr %BaseAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %BaseAddress.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i39.i = add i32 %65, 4
  %and.i.i40.i = and i32 %add.i.i39.i, 1048575
  %add1.i.i41.i = or i32 %and.i.i40.i, -18874368
  %66 = inttoptr i32 %add1.i.i41.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 21) #9, !srcloc !252
  %add2.i.i42.i = add i32 %65, 8
  %and3.i.i43.i = and i32 %add2.i.i42.i, 1048575
  %add4.i.i44.i = or i32 %and3.i.i43.i, -18874368
  %67 = inttoptr i32 %add4.i.i44.i to ptr
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %69 = and i8 %68, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 %69) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 2147480) #9
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp32_getprom_at24(ptr noundef %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nsp32_prom_read(ptr noundef %data, i32 noundef 18)
  %resettime = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 23
  %0 = ptrtoint ptr %resettime to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %resettime, align 4
  %call2 = tail call fastcc i32 @nsp32_prom_read(ptr noundef %data, i32 noundef 7)
  %1 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %call2, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.55)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %entry.sw.epilog_crit_edge
  %cmp61 = phi i1 [ true, %entry.sw.epilog_crit_edge ], [ true, %sw.default ], [ false, %sw.bb3 ]
  %2 = load i32, ptr @trans_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  %cmp6 = or i1 %cmp61, %cmp
  %syncnum.i = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 26
  %synct.i = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog
  %i.02 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %limit_entry = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 %i.02, i32 5
  %3 = ptrtoint ptr %limit_entry to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %limit_entry, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call8 = tail call fastcc i32 @nsp32_prom_read(ptr noundef %data, i32 noundef %i.02)
  %conv = trunc i32 %call8 to i8
  %limit_entry.i = getelementptr %struct._nsp32_hw_data, ptr %data, i32 0, i32 19, i32 %i.02, i32 5
  %4 = ptrtoint ptr %limit_entry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %limit_entry.i, align 4
  %6 = ptrtoint ptr %syncnum.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %syncnum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i = icmp slt i32 %5, %7
  br i1 %cmp.not.i, label %if.else.if.end.i_crit_edge, label %if.then.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.54) #9
  %8 = ptrtoint ptr %limit_entry.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %limit_entry.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %9 = ptrtoint ptr %limit_entry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %limit_entry.i, align 4
  %11 = ptrtoint ptr %syncnum.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %syncnum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp433.i = icmp slt i32 %10, %12
  br i1 %cmp433.i, label %for.body.lr.ph.i, label %if.end.i.nsp32_search_period_entry.exit_crit_edge

if.end.i.nsp32_search_period_entry.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_search_period_entry.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %13 = ptrtoint ptr %synct.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %synct.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.034.i = phi i32 [ %10, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %start_period.i = getelementptr %struct._nsp32_sync_table, ptr %14, i32 %i.034.i, i32 2
  %15 = ptrtoint ptr %start_period.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %start_period.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %conv)
  %cmp6.not.i = icmp ugt i8 %16, %conv
  br i1 %cmp6.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %end_period.i = getelementptr %struct._nsp32_sync_table, ptr %14, i32 %i.034.i, i32 3
  %17 = ptrtoint ptr %end_period.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %end_period.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %conv)
  %cmp12.not.i = icmp ult i8 %18, %conv
  br i1 %cmp12.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.nsp32_search_period_entry.exit_crit_edge

land.lhs.true.i.nsp32_search_period_entry.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_search_period_entry.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.inc.i.nsp32_search_period_entry.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.nsp32_search_period_entry.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_search_period_entry.exit

nsp32_search_period_entry.exit:                   ; preds = %for.inc.i.nsp32_search_period_entry.exit_crit_edge, %land.lhs.true.i.nsp32_search_period_entry.exit_crit_edge, %if.end.i.nsp32_search_period_entry.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %10, %if.end.i.nsp32_search_period_entry.exit_crit_edge ], [ %12, %for.inc.i.nsp32_search_period_entry.exit_crit_edge ], [ %i.034.i, %land.lhs.true.i.nsp32_search_period_entry.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %12)
  %cmp17.i = icmp eq i32 %i.0.lcssa.i, %12
  %19 = tail call i32 @llvm.smax.i32(i32 %i.0.lcssa.i, i32 0)
  %20 = select i1 %cmp17.i, i32 0, i32 %19
  %21 = ptrtoint ptr %limit_entry.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %limit_entry.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %nsp32_search_period_entry.exit, %if.then7
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp32_prom_start(ptr nocapture noundef readonly %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %BaseAddress.i = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %BaseAddress.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i = add i32 %1, 4
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 21) #9, !srcloc !252
  %add2.i.i = add i32 %1, 8
  %and3.i.i = and i32 %add2.i.i, 1048575
  %add4.i.i = or i32 %and3.i.i, -18874368
  %3 = inttoptr i32 %add4.i.i to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %5 = or i8 %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %5) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #9
  %7 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %BaseAddress.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i6 = add i32 %8, 4
  %and.i.i7 = and i32 %add.i.i6, 1048575
  %add1.i.i8 = or i32 %and.i.i7, -18874368
  %9 = inttoptr i32 %add1.i.i8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 21) #9, !srcloc !252
  %add2.i.i9 = add i32 %8, 8
  %and3.i.i10 = and i32 %add2.i.i9, 1048575
  %add4.i.i11 = or i32 %and3.i.i10, -18874368
  %10 = inttoptr i32 %add4.i.i11 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %12 = or i8 %11, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %12) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #9
  %14 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %BaseAddress.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i17 = add i32 %15, 4
  %and.i.i18 = and i32 %add.i.i17, 1048575
  %add1.i.i19 = or i32 %and.i.i18, -18874368
  %16 = inttoptr i32 %add1.i.i19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 21) #9, !srcloc !252
  %add2.i.i20 = add i32 %15, 8
  %and3.i.i21 = and i32 %add2.i.i20, 1048575
  %add4.i.i22 = or i32 %and3.i.i21, -18874368
  %17 = inttoptr i32 %add4.i.i22 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %19 = or i8 %18, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %19) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #9
  %21 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %BaseAddress.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i28 = add i32 %22, 4
  %and.i.i29 = and i32 %add.i.i28, 1048575
  %add1.i.i30 = or i32 %and.i.i29, -18874368
  %23 = inttoptr i32 %add1.i.i30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 21) #9, !srcloc !252
  %add2.i.i31 = add i32 %22, 8
  %and3.i.i32 = and i32 %add2.i.i31, 1048575
  %add4.i.i33 = or i32 %and3.i.i32, -18874368
  %24 = inttoptr i32 %add4.i.i33 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %26 = and i8 %25, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %26) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #9
  %28 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %BaseAddress.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i39 = add i32 %29, 4
  %and.i.i40 = and i32 %add.i.i39, 1048575
  %add1.i.i41 = or i32 %and.i.i40, -18874368
  %30 = inttoptr i32 %add1.i.i41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 21) #9, !srcloc !252
  %add2.i.i42 = add i32 %29, 8
  %and3.i.i43 = and i32 %add2.i.i42, 1048575
  %add4.i.i44 = or i32 %and3.i.i43, -18874368
  %31 = inttoptr i32 %add4.i.i44 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %33 = and i8 %32, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %33) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp32_prom_write_bit(ptr nocapture noundef readonly %data, i32 noundef %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %BaseAddress.i = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %BaseAddress.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i = add i32 %1, 4
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 21) #9, !srcloc !252
  %add2.i.i = add i32 %1, 8
  %and3.i.i = and i32 %add2.i.i, 1048575
  %add4.i.i = or i32 %and3.i.i, -18874368
  %3 = inttoptr i32 %add4.i.i to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.i = icmp eq i32 %val, 0
  %and.i = and i8 %4, -5
  %masksel = select i1 %cmp.i, i8 0, i8 4
  %tmp.0.i = or i8 %and.i, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %tmp.0.i) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #9
  %6 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %BaseAddress.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i4 = add i32 %7, 4
  %and.i.i5 = and i32 %add.i.i4, 1048575
  %add1.i.i6 = or i32 %and.i.i5, -18874368
  %8 = inttoptr i32 %add1.i.i6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 21) #9, !srcloc !252
  %add2.i.i7 = add i32 %7, 8
  %and3.i.i8 = and i32 %add2.i.i7, 1048575
  %add4.i.i9 = or i32 %and3.i.i8, -18874368
  %9 = inttoptr i32 %add4.i.i9 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %11 = or i8 %10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %11) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #9
  %13 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %BaseAddress.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %add.i.i15 = add i32 %14, 4
  %and.i.i16 = and i32 %add.i.i15, 1048575
  %add1.i.i17 = or i32 %and.i.i16, -18874368
  %15 = inttoptr i32 %add1.i.i17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 21) #9, !srcloc !252
  %add2.i.i18 = add i32 %14, 8
  %and3.i.i19 = and i32 %add2.i.i18, 1048575
  %add4.i.i20 = or i32 %and3.i.i19, -18874368
  %16 = inttoptr i32 %add4.i.i20 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %18 = and i8 %17, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 21) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %18) #9, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp32_msgin_occur(ptr nocapture noundef %SCpnt, i32 noundef %irq_status, i16 noundef zeroext %execph) unnamed_addr #1 align 64 {
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
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  %add.i = add i32 %5, 34
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %msginbuf = getelementptr inbounds %struct._nsp32_hw_data, ptr %hostdata, i32 0, i32 29
  %msgin_len = getelementptr inbounds %struct._nsp32_hw_data, ptr %hostdata, i32 0, i32 30
  %8 = ptrtoint ptr %msgin_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %msgin_len, align 1
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr %struct._nsp32_hw_data, ptr %hostdata, i32 0, i32 29, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %7, ptr %arrayidx, align 1
  %11 = ptrtoint ptr %msginbuf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %msginbuf, align 1
  %BaseAddress.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %BaseAddress.i, align 4
  %add.i.i = add i32 %14, 16
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %15 = inttoptr i32 %add1.i.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %17 = or i8 %16, -48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %17) #9, !srcloc !252
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %and5 = and i32 %irq_status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.reject_crit_edge, label %if.end

if.then.reject_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject

if.end:                                           ; preds = %if.then
  %and9 = and i8 %12, 31
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %this_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 25
  %22 = ptrtoint ptr %this_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %this_id.i, align 8
  %io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 44
  %24 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_port.i, align 8
  %add.i.i183 = add i32 %25, 24
  %and.i.i184 = and i32 %add.i.i183, 1048575
  %add1.i.i185 = or i32 %and.i.i184, -18874368
  %26 = inttoptr i32 %add1.i.i185 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %shl.i = shl nuw i32 1, %23
  %28 = trunc i32 %shl.i to i8
  %29 = xor i8 %28, -1
  %conv5.i = and i8 %27, %29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv5.i)
  %tobool.not61.i = icmp ne i8 %conv5.i, 0
  %30 = and i8 %conv5.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool8.not62.i = icmp eq i8 %30, 0
  %or.cond63.i = and i1 %tobool.not61.i, %tobool8.not62.i
  br i1 %or.cond63.i, label %if.end.if.end.i_crit_edge, label %if.end.lor.lhs.false.i_crit_edge

if.end.lor.lhs.false.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %newid.065.i = phi i8 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 0, %if.end.if.end.i_crit_edge ]
  %tmpid.064.i = phi i8 [ %31, %if.end.i.if.end.i_crit_edge ], [ %conv5.i, %if.end.if.end.i_crit_edge ]
  %31 = lshr i8 %tmpid.064.i, 1
  %inc.i = add nuw nsw i8 %newid.065.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %tmpid.064.i)
  %tobool.not.i = icmp ugt i8 %tmpid.064.i, 1
  %32 = and i8 %tmpid.064.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool8.not.i = icmp eq i8 %32, 0
  %or.cond.i = and i1 %tobool.not.i, %tobool8.not.i
  br i1 %or.cond.i, label %if.end.i.if.end.i_crit_edge, label %while.end.i

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

while.end.i:                                      ; preds = %if.end.i
  %conv11.i = zext i8 %inc.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %newid.065.i)
  %cmp.i = icmp ugt i8 %newid.065.i, 6
  br i1 %cmp.i, label %while.end.i.reject.sink.split_crit_edge, label %while.end.i.lor.lhs.false.i_crit_edge

while.end.i.lor.lhs.false.i_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

while.end.i.reject.sink.split_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject.sink.split

lor.lhs.false.i:                                  ; preds = %while.end.i.lor.lhs.false.i_crit_edge, %if.end.lor.lhs.false.i_crit_edge
  %conv1169.i = phi i32 [ %conv11.i, %while.end.i.lor.lhs.false.i_crit_edge ], [ 0, %if.end.lor.lhs.false.i_crit_edge ]
  %conv13.i = zext i8 %and9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %and9)
  %cmp14.i = icmp ugt i8 %and9, 7
  br i1 %cmp14.i, label %lor.lhs.false.i.reject.sink.split_crit_edge, label %if.else.i

lor.lhs.false.i.reject.sink.split_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject.sink.split

if.else.i:                                        ; preds = %lor.lhs.false.i
  %lunt.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4
  %arrayidx18.i = getelementptr [8 x [8 x %struct._nsp32_lunt]], ptr %lunt.i, i32 0, i32 %conv1169.i, i32 %conv13.i
  %33 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx18.i, align 4
  %cmp20.i = icmp eq ptr %34, null
  br i1 %cmp20.i, label %if.else.i.reject.sink.split_crit_edge, label %nsp32_reselection.exit

if.else.i.reject.sink.split_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject.sink.split

nsp32_reselection.exit:                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %cur_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %cur_id.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv1169.i, ptr %cur_id.i, align 4
  %cur_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %cur_lun.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv13.i, ptr %cur_lun.i, align 4
  %target.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 6
  %arrayidx28.i = getelementptr [8 x %struct._nsp32_target], ptr %target.i, i32 0, i32 %conv1169.i
  %cur_target.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %37 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx28.i, ptr %cur_target.i, align 4
  %cur_lunt.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %38 = ptrtoint ptr %cur_lunt.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx18.i, ptr %cur_lunt.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i58.i = add i32 %25, 18
  %and.i59.i = and i32 %add.i58.i, 1048575
  %add1.i60.i = or i32 %and.i59.i, -18874368
  %39 = inttoptr i32 %add1.i60.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 1056964608) #9, !srcloc !260
  br label %if.then93

if.end14:                                         ; preds = %entry
  %40 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %12, label %if.end14.reject_crit_edge [
    i8 0, label %if.end14.sw.bb_crit_edge
    i8 4, label %if.end14.sw.bb_crit_edge228
    i8 3, label %sw.bb17
    i8 2, label %sw.bb37
    i8 7, label %sw.bb38
    i8 10, label %if.end14.sw.bb49_crit_edge
    i8 11, label %if.end14.sw.bb49_crit_edge229
    i8 1, label %sw.bb59
    i8 32, label %if.end14.sw.bb52_crit_edge
    i8 35, label %if.end14.sw.bb52_crit_edge230
  ]

if.end14.sw.bb52_crit_edge230:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb52

if.end14.sw.bb52_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb52

if.end14.sw.bb49_crit_edge229:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49

if.end14.sw.bb49_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49

if.end14.sw.bb_crit_edge228:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end14.sw.bb_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end14.reject_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject

sw.bb:                                            ; preds = %if.end14.sw.bb_crit_edge, %if.end14.sw.bb_crit_edge228
  %conv16 = zext i8 %7 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.68, i32 noundef %conv16)
  br label %if.then93

sw.bb17:                                          ; preds = %if.end14
  %conv18 = zext i16 %execph to i32
  %41 = and i32 %conv18, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %sw.bb17.if.end34_crit_edge, label %if.then24

sw.bb17.if.end34_crit_edge:                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then24:                                        ; preds = %sw.bb17
  %add.i186 = add i32 %5, 76
  %and.i187 = and i32 %add.i186, 1048575
  %add1.i188 = or i32 %and.i187, -18874368
  %43 = inttoptr i32 %add1.i188 to ptr
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %43) #9, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  %and27 = and i32 %conv18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp29.not = icmp eq i32 %44, 0
  %or.cond173 = select i1 %tobool28.not, i1 true, i1 %cmp29.not
  br i1 %or.cond173, label %if.then24.if.end34_crit_edge, label %if.then31

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  tail call fastcc void @nsp32_adjust_busfree(ptr noundef %SCpnt, i32 noundef %45)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then24.if.end34_crit_edge, %sw.bb17.if.end34_crit_edge
  %cur_lunt = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %46 = ptrtoint ptr %cur_lunt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur_lunt, align 4
  %msgin03 = getelementptr inbounds %struct._nsp32_lunt, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %msgin03 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %msgin03, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i189 = add i32 %5, 18
  %and.i190 = and i32 %add.i189, 1048575
  %add1.i191 = or i32 %and.i190, -18874368
  %49 = inttoptr i32 %add1.i191 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 1056964608) #9, !srcloc !260
  %50 = ptrtoint ptr %cur_lunt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cur_lunt, align 4
  %sglun_paddr = getelementptr inbounds %struct._nsp32_lunt, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %sglun_paddr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sglun_paddr, align 4
  %cur_entry = getelementptr inbounds %struct._nsp32_lunt, ptr %51, i32 0, i32 4
  %54 = ptrtoint ptr %cur_entry to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cur_entry, align 4
  %mul = shl i32 %55, 3
  %add = add i32 %mul, %53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %56 = tail call i32 @llvm.bswap.i32(i32 %add) #9
  %add.i192 = add i32 %5, 60
  %and.i193 = and i32 %add.i192, 1048575
  %add1.i194 = or i32 %and.i193, -18874368
  %57 = inttoptr i32 %add1.i194 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %57, i32 %56) #9, !srcloc !260
  br label %if.then93

sw.bb37:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.69)
  br label %if.then93

sw.bb38:                                          ; preds = %if.end14
  %cur_target = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %58 = ptrtoint ptr %cur_target to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cur_target, align 4
  %sync_flag = getelementptr inbounds %struct._nsp32_target, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %sync_flag to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sync_flag, align 4
  %and39 = and i32 %61, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %sw.bb38.if.then93_crit_edge, label %if.then41

sw.bb38.if.then93_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then93

if.then41:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  %synct.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %62 = ptrtoint ptr %synct.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %synct.i, align 4
  %limit_entry.i = getelementptr inbounds %struct._nsp32_target, ptr %59, i32 0, i32 5
  %64 = ptrtoint ptr %limit_entry.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %limit_entry.i, align 4
  %arrayidx.i = getelementptr %struct._nsp32_sync_table, ptr %63, i32 %65
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i, align 1
  %offset.i = getelementptr inbounds %struct._nsp32_target, ptr %59, i32 0, i32 3
  %68 = ptrtoint ptr %offset.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %offset.i, align 1
  %period1.i = getelementptr inbounds %struct._nsp32_target, ptr %59, i32 0, i32 2
  %69 = ptrtoint ptr %period1.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %period1.i, align 2
  %70 = shl i8 %67, 4
  %71 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %59, align 4
  %ackwidth.i = getelementptr inbounds %struct._nsp32_target, ptr %59, i32 0, i32 1
  %72 = ptrtoint ptr %ackwidth.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %ackwidth.i, align 1
  %sample_reg.i = getelementptr inbounds %struct._nsp32_target, ptr %59, i32 0, i32 6
  %73 = ptrtoint ptr %sample_reg.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %sample_reg.i, align 4
  %74 = ptrtoint ptr %cur_target to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur_target, align 4
  %sync_flag44 = getelementptr inbounds %struct._nsp32_target, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %sync_flag44 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sync_flag44, align 4
  %and45 = and i32 %77, -2
  store i32 %and45, ptr %sync_flag44, align 4
  %78 = load ptr, ptr %cur_target, align 4
  %sync_flag47 = getelementptr inbounds %struct._nsp32_target, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %sync_flag47 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sync_flag47, align 4
  %or = or i32 %80, 4
  store i32 %or, ptr %sync_flag47, align 4
  br label %if.then93

sw.bb49:                                          ; preds = %if.end14.sw.bb49_crit_edge, %if.end14.sw.bb49_crit_edge229
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.70, i32 noundef %conv)
  br label %if.then93

sw.bb52:                                          ; preds = %if.end14.sw.bb52_crit_edge, %if.end14.sw.bb52_crit_edge230
  %81 = ptrtoint ptr %msgin_len to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %msgin_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp55.not = icmp eq i8 %82, 0
  br i1 %cmp55.not, label %sw.bb52.if.else117_crit_edge, label %sw.bb52.reject_crit_edge

sw.bb52.reject_crit_edge:                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject

sw.bb52.if.else117_crit_edge:                     ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else117

sw.bb59:                                          ; preds = %if.end14
  %83 = ptrtoint ptr %msgin_len to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %msgin_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp62 = icmp eq i8 %84, 0
  br i1 %cmp62, label %sw.bb59.if.else117_crit_edge, label %if.end65

sw.bb59.if.else117_crit_edge:                     ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else117

if.end65:                                         ; preds = %sw.bb59
  %arrayidx67 = getelementptr %struct._nsp32_hw_data, ptr %hostdata, i32 0, i32 29, i32 1
  %85 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx67, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %84)
  %cmp72.not = icmp ult i8 %86, %84
  br i1 %cmp72.not, label %if.end75, label %if.end65.if.else117_crit_edge

if.end65.if.else117_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else117

if.end75:                                         ; preds = %if.end65
  %arrayidx77 = getelementptr %struct._nsp32_hw_data, ptr %hostdata, i32 0, i32 29, i32 2
  %87 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %88)
  %cond = icmp eq i8 %88, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %84)
  %cmp83.not = icmp eq i8 %84, 4
  %or.cond174 = select i1 %cond, i1 %cmp83.not, i1 false
  br i1 %or.cond174, label %if.end86, label %if.end75.reject_crit_edge

if.end75.reject_crit_edge:                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject

if.end86:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nsp32_analyze_sdtr(ptr noundef %SCpnt)
  br label %if.then93

if.then93:                                        ; preds = %reject, %if.end86, %sw.bb49, %if.then41, %sw.bb38.if.then93_crit_edge, %sw.bb37, %if.end34, %sw.bb, %nsp32_reselection.exit
  %89 = ptrtoint ptr %msgin_len to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %msgin_len, align 1
  %msgout_len = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 12
  %90 = ptrtoint ptr %msgout_len to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %msgout_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp96.not = icmp eq i8 %91, 0
  br i1 %cmp96.not, label %if.then93.if.end102_crit_edge, label %if.then98

if.then93.if.end102_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then98:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i195 = add i32 %5, 68
  %and.i196 = and i32 %add.i195, 1048575
  %add1.i197 = or i32 %and.i196, -18874368
  %92 = inttoptr i32 %add1.i197 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %92, i32 0) #9, !srcloc !260
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %if.then93.if.end102_crit_edge
  %command.0 = phi i16 [ 224, %if.then98 ], [ 192, %if.then93.if.end102_crit_edge ]
  %cur_lunt106 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %93 = ptrtoint ptr %cur_lunt106 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cur_lunt106, align 4
  %msgin03107 = getelementptr inbounds %struct._nsp32_lunt, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %msgin03107 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %msgin03107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %cmp108 = icmp eq i32 %96, 1
  %97 = or i16 %command.0, 256
  %spec.select = select i1 %cmp108, i16 %97, i16 %command.0
  %98 = ptrtoint ptr %msgin03107 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %msgin03107, align 4
  %phi.bo = or i16 %spec.select, 11
  br label %if.end119

if.else117:                                       ; preds = %if.end65.if.else117_crit_edge, %sw.bb59.if.else117_crit_edge, %sw.bb52.if.else117_crit_edge
  %99 = ptrtoint ptr %msgin_len to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %msgin_len, align 1
  %inc = add i8 %100, 1
  store i8 %inc, ptr %msgin_len, align 1
  br label %if.end119

if.end119:                                        ; preds = %if.else117, %if.end102
  %command.2 = phi i16 [ %phi.bo, %if.end102 ], [ 11, %if.else117 ]
  %101 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %device, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 8
  %BaseAddress.i199 = getelementptr inbounds %struct.Scsi_Host, ptr %104, i32 1, i32 0, i32 1
  %105 = ptrtoint ptr %BaseAddress.i199 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %BaseAddress.i199, align 4
  %cur_target.i200 = getelementptr inbounds %struct.Scsi_Host, ptr %104, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %107 = ptrtoint ptr %cur_target.i200 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cur_target.i200, align 4
  %cmp.i201 = icmp eq ptr %108, null
  br i1 %cmp.i201, label %if.end119.if.then.i_crit_edge, label %lor.lhs.false.i203

if.end119.if.then.i_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i203:                               ; preds = %if.end119
  %cur_lunt.i202 = getelementptr inbounds %struct.Scsi_Host, ptr %104, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %109 = ptrtoint ptr %cur_lunt.i202 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cur_lunt.i202, align 4
  %cmp1.i = icmp eq ptr %110, null
  br i1 %cmp1.i, label %lor.lhs.false.i203.if.then.i_crit_edge, label %lor.lhs.false.i203.if.end.i211_crit_edge

lor.lhs.false.i203.if.end.i211_crit_edge:         ; preds = %lor.lhs.false.i203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i211

lor.lhs.false.i203.if.then.i_crit_edge:           ; preds = %lor.lhs.false.i203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i203.if.then.i_crit_edge, %if.end119.if.then.i_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.75) #9
  br label %if.end.i211

if.end.i211:                                      ; preds = %if.then.i, %lor.lhs.false.i203.if.end.i211_crit_edge
  %111 = ptrtoint ptr %cur_target.i200 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cur_target.i200, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %112, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %add.i.i204 = add i32 %106, 28
  %and.i.i205 = and i32 %add.i.i204, 1048575
  %add1.i.i206 = or i32 %and.i.i205, -18874368
  %115 = inttoptr i32 %add1.i.i206 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 %114) #9, !srcloc !252
  %116 = ptrtoint ptr %cur_target.i200 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cur_target.i200, align 4
  %ackwidth.i207 = getelementptr inbounds %struct._nsp32_target, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %ackwidth.i207 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ackwidth.i207, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %add.i57.i = add i32 %106, 29
  %and.i58.i = and i32 %add.i57.i, 1048575
  %add1.i59.i = or i32 %and.i58.i, -18874368
  %120 = inttoptr i32 %add1.i59.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %120, i8 %119) #9, !srcloc !252
  %121 = ptrtoint ptr %cur_target.i200 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cur_target.i200, align 4
  %sample_reg.i208 = getelementptr inbounds %struct._nsp32_target, ptr %122, i32 0, i32 6
  %123 = ptrtoint ptr %sample_reg.i208 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %sample_reg.i208, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %add.i60.i = add i32 %106, 15
  %and.i61.i = and i32 %add.i60.i, 1048575
  %add1.i62.i = or i32 %and.i61.i, -18874368
  %125 = inttoptr i32 %add1.i62.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 %124) #9, !srcloc !252
  %cur_lunt5.i = getelementptr inbounds %struct.Scsi_Host, ptr %104, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %126 = ptrtoint ptr %cur_lunt5.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cur_lunt5.i, align 4
  %sglun_paddr.i = getelementptr inbounds %struct._nsp32_lunt, ptr %127, i32 0, i32 6
  %128 = ptrtoint ptr %sglun_paddr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %sglun_paddr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #9
  %add.i63.i = add i32 %106, 60
  %and.i64.i = and i32 %add.i63.i, 1048575
  %add1.i65.i = or i32 %and.i64.i, -18874368
  %131 = inttoptr i32 %add1.i65.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %131, i32 %130) #9, !srcloc !260
  %trans_method.i = getelementptr inbounds %struct.Scsi_Host, ptr %104, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %132 = ptrtoint ptr %trans_method.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %trans_method.i, align 4
  %and.i209 = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209)
  %tobool.not.i210 = icmp eq i32 %and.i209, 0
  br i1 %tobool.not.i210, label %if.else.i212, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #11
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 17, i32 1
  %134 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp8.not.i = icmp eq i32 %135, 0
  %spec.select.i = select i1 %cmp8.not.i, i16 16512, i16 17024
  br label %nsp32_restart_autoscsi.exit

if.else.i212:                                     ; preds = %if.end.i211
  %and16.i = and i32 %133, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else22.i, label %if.else.i212.nsp32_restart_autoscsi.exit_crit_edge

if.else.i212.nsp32_restart_autoscsi.exit_crit_edge: ; preds = %if.else.i212
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_restart_autoscsi.exit

if.else22.i:                                      ; preds = %if.else.i212
  call void @__sanitizer_cov_trace_pc() #11
  %and24.i = and i32 %133, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %spec.select56.i = select i1 %tobool25.not.i, i16 16512, i16 16514
  br label %nsp32_restart_autoscsi.exit

nsp32_restart_autoscsi.exit:                      ; preds = %if.else22.i, %if.else.i212.nsp32_restart_autoscsi.exit_crit_edge, %if.then7.i
  %transfer.0.i = phi i16 [ %spec.select.i, %if.then7.i ], [ 16513, %if.else.i212.nsp32_restart_autoscsi.exit_crit_edge ], [ %spec.select56.i, %if.else22.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %136 = tail call i16 @llvm.bswap.i16(i16 %transfer.0.i) #9
  %add.i66.i = add i32 %106, 2
  %and.i67.i = and i32 %add.i66.i, 1048575
  %add1.i68.i = or i32 %and.i67.i, -18874368
  %137 = inttoptr i32 %add1.i68.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %137, i16 %136) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %138 = tail call i16 @llvm.bswap.i16(i16 %command.2) #9
  %add.i69.i = add i32 %106, 24
  %and.i70.i = and i32 %add.i69.i, 1048575
  %add1.i71.i = or i32 %and.i70.i, -18874368
  %139 = inttoptr i32 %add1.i71.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %139, i16 %138) #9, !srcloc !257
  %140 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %BaseAddress.i, align 4
  %add.i.i214 = add i32 %141, 18
  %and.i.i215 = and i32 %add.i.i214, 1048575
  %add1.i.i216 = or i32 %and.i.i215, -18874368
  %142 = inttoptr i32 %add1.i.i216 to ptr
  br label %do.body.i

do.body.i:                                        ; preds = %if.end8.i.do.body.i_crit_edge, %nsp32_restart_autoscsi.exit
  %wait_time.0.i = phi i32 [ 0, %nsp32_restart_autoscsi.exit ], [ %inc.i218, %if.end8.i.do.body.i_crit_edge ]
  %143 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %142) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %144 = and i8 %143, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp5.i = icmp eq i8 %144, 0
  br i1 %cmp5.i, label %do.body.i.nsp32_wait_req.exit_crit_edge, label %if.end8.i

do.body.i.nsp32_wait_req.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_wait_req.exit

if.end8.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748) #9
  %inc.i218 = add nuw nsw i32 %wait_time.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i218, 10000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end8.i.do.body.i_crit_edge

if.end8.i.do.body.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.80, i32 noundef 0) #9
  br label %nsp32_wait_req.exit

nsp32_wait_req.exit:                              ; preds = %do.end.i, %do.body.i.nsp32_wait_req.exit_crit_edge
  %146 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %BaseAddress.i, align 4
  %add.i.i220 = add i32 %147, 16
  %and.i.i221 = and i32 %add.i.i220, 1048575
  %add1.i.i222 = or i32 %and.i.i221, -18874368
  %148 = inttoptr i32 %add1.i.i222 to ptr
  %149 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %148) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %150 = and i8 %149, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 %150) #9, !srcloc !252
  ret void

reject.sink.split:                                ; preds = %if.else.i.reject.sink.split_crit_edge, %lor.lhs.false.i.reject.sink.split_crit_edge, %while.end.i.reject.sink.split_crit_edge
  %.str.73.sink = phi ptr [ @.str.72, %lor.lhs.false.i.reject.sink.split_crit_edge ], [ @.str.72, %while.end.i.reject.sink.split_crit_edge ], [ @.str.73, %if.else.i.reject.sink.split_crit_edge ]
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull %.str.73.sink) #9
  br label %reject

reject:                                           ; preds = %reject.sink.split, %if.end75.reject_crit_edge, %sw.bb52.reject_crit_edge, %if.end14.reject_crit_edge, %if.then.reject_crit_edge
  %conv120 = zext i8 %7 to i32
  %151 = ptrtoint ptr %msgin_len to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %msgin_len, align 1
  %conv122 = zext i8 %152 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.71, i32 noundef %conv120, i32 noundef %conv122, i32 noundef %conv)
  %153 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %device, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 8
  %msgout_len.i = getelementptr inbounds %struct.Scsi_Host, ptr %156, i32 1, i32 50, i32 12, i32 12
  %157 = ptrtoint ptr %msgout_len.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %msgout_len.i, align 4
  %conv.i = zext i8 %158 to i32
  %msgoutbuf.i = getelementptr inbounds %struct.Scsi_Host, ptr %156, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %arrayidx.i224 = getelementptr [20 x i8], ptr %msgoutbuf.i, i32 0, i32 %conv.i
  %159 = ptrtoint ptr %arrayidx.i224 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 7, ptr %arrayidx.i224, align 1
  %inc.i225 = add i8 %158, 1
  store i8 %inc.i225, ptr %msgout_len.i, align 4
  br label %if.then93
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp32_msgout_occur(ptr nocapture noundef readonly %SCpnt) unnamed_addr #1 align 64 {
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
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  %msgout_len = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 12
  %6 = ptrtoint ptr %msgout_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msgout_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %nsp32_build_nop.exit, label %entry.for.body.lr.ph_crit_edge

entry.for.body.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

nsp32_build_nop.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %msgoutbuf.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %msgoutbuf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %msgoutbuf.i, align 1
  %9 = ptrtoint ptr %msgout_len to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %msgout_len, align 4
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %nsp32_build_nop.exit, %entry.for.body.lr.ph_crit_edge
  %BaseAddress.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 0, i32 1
  %add.i = add i32 %5, 24
  %and.i27 = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i27, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  %msgoutbuf = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %add.i28 = add i32 %5, 32
  %and.i29 = and i32 %add.i28, 1048575
  %add1.i30 = or i32 %and.i29, -18874368
  %11 = inttoptr i32 %add1.i30 to ptr
  br label %for.body

for.body:                                         ; preds = %nsp32_wait_sack.exit.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %nsp32_wait_sack.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %BaseAddress.i, align 4
  %add.i.i = add i32 %13, 18
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %14 = inttoptr i32 %add1.i.i to ptr
  br label %do.body.i

do.body.i:                                        ; preds = %if.end8.i.do.body.i_crit_edge, %for.body
  %wait_time.0.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end8.i.do.body.i_crit_edge ]
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp5.i.not = icmp eq i8 %16, 0
  br i1 %cmp5.i.not, label %if.end8.i, label %do.body.i.nsp32_wait_req.exit_crit_edge

do.body.i.nsp32_wait_req.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_wait_req.exit

if.end8.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %wait_time.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end8.i.do.body.i_crit_edge

if.end8.i.do.body.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.80, i32 noundef 32) #9
  br label %nsp32_wait_req.exit

nsp32_wait_req.exit:                              ; preds = %do.end.i, %do.body.i.nsp32_wait_req.exit_crit_edge
  %18 = ptrtoint ptr %msgout_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %msgout_len, align 4
  %conv9 = zext i8 %19 to i32
  %sub = add nsw i32 %conv9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.044, i32 %sub)
  %cmp10 = icmp eq i32 %i.044, %sub
  br i1 %cmp10, label %if.then12, label %nsp32_wait_req.exit.if.end13_crit_edge

nsp32_wait_req.exit.if.end13_crit_edge:           ; preds = %nsp32_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %nsp32_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 -13568) #9, !srcloc !257
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %nsp32_wait_req.exit.if.end13_crit_edge
  %arrayidx = getelementptr [20 x i8], ptr %msgoutbuf, i32 0, i32 %i.044
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %21) #9, !srcloc !252
  %22 = ptrtoint ptr %BaseAddress.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %BaseAddress.i, align 4
  %add.i.i32 = add i32 %23, 18
  %and.i.i33 = and i32 %add.i.i32, 1048575
  %add1.i.i34 = or i32 %and.i.i33, -18874368
  %24 = inttoptr i32 %add1.i.i34 to ptr
  br label %do.body.i37

do.body.i37:                                      ; preds = %if.end8.i40.do.body.i37_crit_edge, %if.end13
  %wait_time.0.i35 = phi i32 [ 0, %if.end13 ], [ %inc.i38, %if.end8.i40.do.body.i37_crit_edge ]
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %26 = and i8 %25, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp5.i36 = icmp eq i8 %26, 0
  br i1 %cmp5.i36, label %do.body.i37.nsp32_wait_sack.exit_crit_edge, label %if.end8.i40

do.body.i37.nsp32_wait_sack.exit_crit_edge:       ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_wait_sack.exit

if.end8.i40:                                      ; preds = %do.body.i37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #9
  %inc.i38 = add nuw nsw i32 %wait_time.0.i35, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, 10000
  br i1 %exitcond.not.i39, label %do.end.i41, label %if.end8.i40.do.body.i37_crit_edge

if.end8.i40.do.body.i37_crit_edge:                ; preds = %if.end8.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i37

do.end.i41:                                       ; preds = %if.end8.i40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.78, i32 noundef 0) #9
  br label %nsp32_wait_sack.exit

nsp32_wait_sack.exit:                             ; preds = %do.end.i41, %do.body.i37.nsp32_wait_sack.exit_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %28 = ptrtoint ptr %msgout_len to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %msgout_len, align 4
  %conv5 = zext i8 %29 to i32
  %cmp6 = icmp ult i32 %inc, %conv5
  br i1 %cmp6, label %nsp32_wait_sack.exit.for.body_crit_edge, label %for.end

nsp32_wait_sack.exit.for.body_crit_edge:          ; preds = %nsp32_wait_sack.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %nsp32_wait_sack.exit
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %msgout_len to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %msgout_len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp32_busfree_occur(ptr noundef %SCpnt, i16 noundef zeroext %execph) unnamed_addr #1 align 64 {
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
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i = add i32 %5, 56
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 0) #9, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i2 = add i32 %5, 2
  %and.i3 = and i32 %add.i2, 1048575
  %add1.i4 = or i32 %and.i3, -18874368
  %7 = inttoptr i32 %add1.i4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 0) #9, !srcloc !257
  %conv = zext i16 %execph to i32
  %and4 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %8 = and i32 %conv, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %8)
  %9 = icmp ne i32 %8, 2048
  %10 = and i32 %conv, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  %or.cond = or i1 %9, %11
  br i1 %or.cond, label %entry.if.end24_crit_edge, label %if.then12

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then12:                                        ; preds = %entry
  %add.i5 = add i32 %5, 40
  %and.i6 = and i32 %add.i5, 1048575
  %add1.i7 = or i32 %and.i6, -18874368
  %12 = inttoptr i32 %add1.i7 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #9, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  %add.i8 = add i32 %5, 76
  %and.i9 = and i32 %add.i8, 1048575
  %add1.i10 = or i32 %and.i9, -18874368
  %14 = inttoptr i32 %add1.i10 to ptr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %14) #9, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %if.then12.if.end24_crit_edge, label %if.then15

if.then12.if.end24_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp16.not = icmp eq i32 %13, %15
  %cur_lunt19 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %17 = ptrtoint ptr %cur_lunt19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur_lunt19, align 4
  %msgin0320 = getelementptr inbounds %struct._nsp32_lunt, ptr %18, i32 0, i32 2
  %. = zext i1 %cmp16.not to i32
  %19 = ptrtoint ptr %msgin0320 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %., ptr %msgin0320, align 4
  tail call fastcc void @nsp32_adjust_busfree(ptr noundef %SCpnt, i32 noundef %16)
  br label %if.end24

if.end24:                                         ; preds = %if.then15, %if.then12.if.end24_crit_edge, %entry.if.end24_crit_edge
  %cur_target = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %cur_target to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_target, align 4
  %sync_flag = getelementptr inbounds %struct._nsp32_target, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %sync_flag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sync_flag, align 4
  %and30 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else39, label %if.end24.if.end59.sink.split.sink.split_crit_edge

if.end24.if.end59.sink.split.sink.split_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.sink.split.sink.split

if.else39:                                        ; preds = %if.end24
  %and42 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else39.if.end59_crit_edge, label %if.then44

if.else39.if.end59_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then44:                                        ; preds = %if.else39
  %and46 = and i32 %conv, 9216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then44.if.end59.sink.split.sink.split_crit_edge, label %if.then44.if.end59.sink.split_crit_edge

if.then44.if.end59.sink.split_crit_edge:          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.sink.split

if.then44.if.end59.sink.split.sink.split_crit_edge: ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.sink.split.sink.split

if.end59.sink.split.sink.split:                   ; preds = %if.then44.if.end59.sink.split.sink.split_crit_edge, %if.end24.if.end59.sink.split.sink.split_crit_edge
  %.sink38.ph = phi i32 [ -2, %if.end24.if.end59.sink.split.sink.split_crit_edge ], [ -3, %if.then44.if.end59.sink.split.sink.split_crit_edge ]
  %synct.i11 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %24 = ptrtoint ptr %synct.i11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %synct.i11, align 4
  %limit_entry.i12 = getelementptr inbounds %struct._nsp32_target, ptr %21, i32 0, i32 5
  %26 = ptrtoint ptr %limit_entry.i12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %limit_entry.i12, align 4
  %arrayidx.i13 = getelementptr %struct._nsp32_sync_table, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i13, align 1
  %offset.i14 = getelementptr inbounds %struct._nsp32_target, ptr %21, i32 0, i32 3
  %30 = ptrtoint ptr %offset.i14 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %offset.i14, align 1
  %period1.i15 = getelementptr inbounds %struct._nsp32_target, ptr %21, i32 0, i32 2
  %31 = ptrtoint ptr %period1.i15 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %period1.i15, align 2
  %32 = shl i8 %29, 4
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %21, align 4
  %ackwidth.i16 = getelementptr inbounds %struct._nsp32_target, ptr %21, i32 0, i32 1
  %34 = ptrtoint ptr %ackwidth.i16 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %ackwidth.i16, align 1
  %sample_reg.i17 = getelementptr inbounds %struct._nsp32_target, ptr %21, i32 0, i32 6
  %35 = ptrtoint ptr %sample_reg.i17 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %sample_reg.i17, align 4
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.end59.sink.split.sink.split, %if.then44.if.end59.sink.split_crit_edge
  %.sink38 = phi i32 [ -3, %if.then44.if.end59.sink.split_crit_edge ], [ %.sink38.ph, %if.end59.sink.split.sink.split ]
  %36 = ptrtoint ptr %cur_target to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur_target, align 4
  %sync_flag35 = getelementptr inbounds %struct._nsp32_target, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %sync_flag35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sync_flag35, align 4
  %and36 = and i32 %39, %.sink38
  store i32 %and36, ptr %sync_flag35, align 4
  %40 = load ptr, ptr %cur_target, align 4
  %sync_flag38 = getelementptr inbounds %struct._nsp32_target, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %sync_flag38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sync_flag38, align 4
  %or57 = or i32 %42, 4
  store i32 %or57, ptr %sync_flag38, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %if.else39.if.end59_crit_edge
  br i1 %tobool5.not, label %if.else69, label %if.then63

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %add.i18 = add i32 %5, 66
  %and.i19 = and i32 %add.i18, 1048575
  %add1.i20 = or i32 %and.i19, -18874368
  %43 = inttoptr i32 %add1.i20 to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %conv65 = zext i8 %44 to i32
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 5
  %45 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %conv65, ptr %Status, align 4
  %46 = load volatile i32, ptr %Status, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 24
  %47 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %result, align 4
  %48 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %io_port.i, align 8
  tail call void @scsi_dma_unmap(ptr noundef %SCpnt) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i.i = add i32 %53, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %54 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %54, i16 0) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i12.i = add i32 %53, 56
  %and.i13.i = and i32 %add.i12.i, 1048575
  %add1.i14.i = or i32 %and.i13.i, -18874368
  %55 = inttoptr i32 %add1.i14.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %55, i32 0) #9, !srcloc !260
  tail call void @scsi_done(ptr noundef %SCpnt) #9
  %cur_lunt.i = getelementptr inbounds %struct.Scsi_Host, ptr %51, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %56 = ptrtoint ptr %cur_lunt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cur_lunt.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %57, align 4
  store ptr null, ptr %cur_lunt.i, align 4
  %cur_target.i = getelementptr inbounds %struct.Scsi_Host, ptr %51, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %59 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %cur_target.i, align 4
  %CurrentSC.i = getelementptr inbounds %struct.Scsi_Host, ptr %51, i32 1, i32 2, i32 1
  %60 = ptrtoint ptr %CurrentSC.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %CurrentSC.i, align 4
  br label %cleanup

if.else69:                                        ; preds = %if.end59
  %and71 = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.else78, label %if.then73

if.then73:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #11
  %add.i21 = add i32 %5, 66
  %and.i22 = and i32 %add.i21, 1048575
  %add1.i23 = or i32 %and.i22, -18874368
  %61 = inttoptr i32 %add1.i23 to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %conv75 = zext i8 %62 to i32
  %Status77 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 22, i32 5
  %63 = ptrtoint ptr %Status77 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 %conv75, ptr %Status77, align 4
  br label %cleanup

if.else78:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.79)
  %result79 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 24
  %64 = ptrtoint ptr %result79 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 458752, ptr %result79, align 4
  %65 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %io_port.i25 = getelementptr inbounds %struct.Scsi_Host, ptr %68, i32 0, i32 44
  %69 = ptrtoint ptr %io_port.i25 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %io_port.i25, align 8
  tail call void @scsi_dma_unmap(ptr noundef %SCpnt) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %add.i.i26 = add i32 %70, 2
  %and.i.i27 = and i32 %add.i.i26, 1048575
  %add1.i.i28 = or i32 %and.i.i27, -18874368
  %71 = inttoptr i32 %add1.i.i28 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %71, i16 0) #9, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add.i12.i29 = add i32 %70, 56
  %and.i13.i30 = and i32 %add.i12.i29, 1048575
  %add1.i14.i31 = or i32 %and.i13.i30, -18874368
  %72 = inttoptr i32 %add1.i14.i31 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %72, i32 0) #9, !srcloc !260
  tail call void @scsi_done(ptr noundef %SCpnt) #9
  %cur_lunt.i32 = getelementptr inbounds %struct.Scsi_Host, ptr %68, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %73 = ptrtoint ptr %cur_lunt.i32 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cur_lunt.i32, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %74, align 4
  store ptr null, ptr %cur_lunt.i32, align 4
  %cur_target.i33 = getelementptr inbounds %struct.Scsi_Host, ptr %68, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %76 = ptrtoint ptr %cur_target.i33 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %cur_target.i33, align 4
  %CurrentSC.i34 = getelementptr inbounds %struct.Scsi_Host, ptr %68, i32 1, i32 2, i32 1
  %77 = ptrtoint ptr %CurrentSC.i34 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %CurrentSC.i34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else78, %if.then73, %if.then63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp32_sack_assert(ptr nocapture noundef readonly %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %BaseAddress = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %BaseAddress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %BaseAddress, align 4
  %add.i = add i32 %1, 16
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %4 = or i8 %3, -48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %4) #9, !srcloc !252
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp32_wait_req(ptr nocapture noundef readonly %data, i32 noundef %state) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %BaseAddress = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %BaseAddress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %BaseAddress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  %spec.select = select i1 %cmp, i32 32, i32 0
  %add.i = add i32 %1, 18
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  br label %do.body

do.body:                                          ; preds = %if.end8.do.body_crit_edge, %entry
  %wait_time.0 = phi i32 [ 0, %entry ], [ %inc, %if.end8.do.body_crit_edge ]
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %4 = and i8 %3, 32
  %and = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %and)
  %cmp5 = icmp eq i32 %spec.select, %and
  br i1 %cmp5, label %do.body.cleanup_crit_edge, label %if.end8

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #9
  %inc = add nuw nsw i32 %wait_time.0, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %do.end, label %if.end8.do.body_crit_edge

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.80, i32 noundef %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp32_sack_negate(ptr nocapture noundef readonly %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %BaseAddress = getelementptr inbounds %struct._nsp32_hw_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %BaseAddress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %BaseAddress, align 4
  %add.i = add i32 %1, 16
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %4 = and i8 %3, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %4) #9, !srcloc !252
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp32_adjust_busfree(ptr nocapture noundef %SCpnt, i32 noundef %s_sacklen) unnamed_addr #1 align 64 {
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
  %cur_entry = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 10, i32 0, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %cur_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_entry, align 4
  %cur_lunt = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %cur_lunt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_lunt, align 4
  %sg_num1 = getelementptr inbounds %struct._nsp32_lunt, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %sg_num1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_num1, align 4
  %sglun = getelementptr inbounds %struct._nsp32_lunt, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %sglun to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sglun, align 4
  %arrayidx = getelementptr %struct._nsp32_sgtable, ptr %11, i32 %5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %arrayidx, align 1
  %14 = lshr i32 %13, 24
  %and = and i32 %14, 3
  %sub = sub i32 %s_sacklen, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp74 = icmp slt i32 %5, %9
  br i1 %cmp74, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %sentlen.076 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %new_entry.075 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %len7 = getelementptr %struct._nsp32_sgtable, ptr %11, i32 %new_entry.075, i32 1
  %15 = ptrtoint ptr %len7 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %len7, align 1
  %17 = and i32 %16, -129
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %add = add i32 %18, %sentlen.076
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp9 = icmp ugt i32 %add, %sub
  br i1 %cmp9, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i32 %new_entry.075, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.last_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.last_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %last

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %new_entry.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %new_entry.075, %for.body.for.end_crit_edge ]
  %sentlen.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %new_entry.0.lcssa, i32 %9)
  %cmp10 = icmp eq i32 %new_entry.0.lcssa, %9
  br i1 %cmp10, label %for.end.last_crit_edge, label %if.end12

for.end.last_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %last

if.end12:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub16 = sub i32 %sentlen.1, %sub
  %arrayidx17 = getelementptr %struct._nsp32_sgtable, ptr %11, i32 %new_entry.0.lcssa
  %len18 = getelementptr %struct._nsp32_sgtable, ptr %11, i32 %new_entry.0.lcssa, i32 1
  %19 = ptrtoint ptr %len18 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %len18, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %arrayidx17, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %sub21 = sub i32 %21, %sub16
  %add22 = add i32 %sub21, %24
  %25 = tail call i32 @llvm.bswap.i32(i32 %add22)
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %arrayidx17, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %sub16)
  %28 = ptrtoint ptr %len18 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %len18, align 1
  %29 = ptrtoint ptr %cur_entry to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %new_entry.0.lcssa, ptr %cur_entry, align 4
  br label %cleanup

last:                                             ; preds = %for.end.last_crit_edge, %for.inc.last_crit_edge
  %sentlen.183 = phi i32 [ %sentlen.1, %for.end.last_crit_edge ], [ %add, %for.inc.last_crit_edge ]
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %SCpnt, i32 0, i32 5
  %30 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %resid_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %sentlen.183)
  %cmp28 = icmp ult i32 %31, %sentlen.183
  br i1 %cmp28, label %if.then29, label %last.if.end30_crit_edge

last.if.end30_crit_edge:                          ; preds = %last
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then29:                                        ; preds = %last
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.74)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %last.if.end30_crit_edge
  %32 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %resid_len.i, align 4
  %sub32 = sub i32 %33, %sentlen.183
  store i32 %sub32, ptr %resid_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp32_analyze_sdtr(ptr nocapture noundef readonly %SCpnt) unnamed_addr #1 align 64 {
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
  %cur_target = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %cur_target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_target, align 4
  %arrayidx = getelementptr %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr %struct._nsp32_hw_data, ptr %hostdata, i32 0, i32 29, i32 4
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2, align 1
  %sync_flag = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %sync_flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sync_flag, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and5 = and i32 %11, -6
  %or = or i32 %and5, 4
  %12 = ptrtoint ptr %sync_flag to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %sync_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %9)
  %cmp = icmp ugt i8 %9, 15
  br i1 %cmp, label %if.then.reject_crit_edge, label %if.end

if.then.reject_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp10 = icmp eq i8 %9, 0
  br i1 %cmp10, label %if.end.async_crit_edge, label %if.end13

if.end.async_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %async

if.end13:                                         ; preds = %if.end
  %synct = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %13 = ptrtoint ptr %synct to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %synct, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %16)
  %cmp17 = icmp ult i8 %7, %16
  br i1 %cmp17, label %if.end13.reject_crit_edge, label %if.end20

if.end13.reject_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject

if.end20:                                         ; preds = %if.end13
  %limit_entry.i = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %limit_entry.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %limit_entry.i, align 4
  %syncnum.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %syncnum.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %syncnum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.not.i = icmp slt i32 %18, %20
  br i1 %cmp.not.i, label %if.end20.if.end.i_crit_edge, label %if.then.i

if.end20.if.end.i_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.54) #9
  %21 = ptrtoint ptr %limit_entry.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %limit_entry.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end20.if.end.i_crit_edge
  %22 = ptrtoint ptr %limit_entry.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %limit_entry.i, align 4
  %24 = ptrtoint ptr %syncnum.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %syncnum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp433.i = icmp slt i32 %23, %25
  br i1 %cmp433.i, label %for.body.lr.ph.i, label %if.end.i.nsp32_search_period_entry.exit_crit_edge

if.end.i.nsp32_search_period_entry.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_search_period_entry.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %26 = ptrtoint ptr %synct to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %synct, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.034.i = phi i32 [ %23, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %start_period.i = getelementptr %struct._nsp32_sync_table, ptr %27, i32 %i.034.i, i32 2
  %28 = ptrtoint ptr %start_period.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %start_period.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %7)
  %cmp6.not.i = icmp ugt i8 %29, %7
  br i1 %cmp6.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %end_period.i = getelementptr %struct._nsp32_sync_table, ptr %27, i32 %i.034.i, i32 3
  %30 = ptrtoint ptr %end_period.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %end_period.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %7)
  %cmp12.not.i = icmp ult i8 %31, %7
  br i1 %cmp12.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.nsp32_search_period_entry.exit_crit_edge

land.lhs.true.i.nsp32_search_period_entry.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_search_period_entry.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %25
  br i1 %exitcond.not.i, label %for.inc.i.reject_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.reject_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject

nsp32_search_period_entry.exit:                   ; preds = %land.lhs.true.i.nsp32_search_period_entry.exit_crit_edge, %if.end.i.nsp32_search_period_entry.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %23, %if.end.i.nsp32_search_period_entry.exit_crit_edge ], [ %i.034.i, %land.lhs.true.i.nsp32_search_period_entry.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %25)
  %cmp17.i = icmp eq i32 %i.0.lcssa.i, %25
  %spec.store.select.i = select i1 %cmp17.i, i32 -1, i32 %i.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp21 = icmp slt i32 %spec.store.select.i, 0
  br i1 %cmp21, label %nsp32_search_period_entry.exit.reject_crit_edge, label %if.end24

nsp32_search_period_entry.exit.reject_crit_edge:  ; preds = %nsp32_search_period_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject

if.end24:                                         ; preds = %nsp32_search_period_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %synct to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %synct, align 4
  %arrayidx.i = getelementptr %struct._nsp32_sync_table, ptr %33, i32 %spec.store.select.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %ackwidth4.i = getelementptr %struct._nsp32_sync_table, ptr %33, i32 %spec.store.select.i, i32 1
  %36 = ptrtoint ptr %ackwidth4.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ackwidth4.i, align 1
  %sample_rate7.i = getelementptr %struct._nsp32_sync_table, ptr %33, i32 %spec.store.select.i, i32 4
  %38 = ptrtoint ptr %sample_rate7.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sample_rate7.i, align 1
  %40 = shl i8 %35, 4
  %41 = and i8 %9, 15
  %or24.i = or i8 %40, %41
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %or24.i, ptr %5, align 4
  %ackwidth11.i = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 1
  %43 = ptrtoint ptr %ackwidth11.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %37, ptr %ackwidth11.i, align 1
  %offset12.i = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 3
  %44 = ptrtoint ptr %offset12.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %9, ptr %offset12.i, align 1
  %45 = or i8 %39, 4
  %sample_reg.i = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 6
  %46 = ptrtoint ptr %sample_reg.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %sample_reg.i, align 4
  br label %if.end53

if.else:                                          ; preds = %entry
  %or26 = or i32 %11, 1
  %47 = ptrtoint ptr %sync_flag to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or26, ptr %sync_flag, align 4
  %48 = tail call i8 @llvm.umin.i8(i8 %9, i8 15)
  %synct33 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %49 = ptrtoint ptr %synct33 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %synct33, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 1
  %53 = tail call i8 @llvm.umax.i8(i8 %7, i8 %52)
  %limit_entry.i99 = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 5
  %54 = ptrtoint ptr %limit_entry.i99 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %limit_entry.i99, align 4
  %syncnum.i100 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 2
  %56 = ptrtoint ptr %syncnum.i100 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %syncnum.i100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp.not.i101 = icmp slt i32 %55, %57
  br i1 %cmp.not.i101, label %if.else.if.end.i104_crit_edge, label %if.then.i102

if.else.if.end.i104_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i104

if.then.i102:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @nsp32_message(ptr undef, i32 undef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.54) #9
  %58 = ptrtoint ptr %limit_entry.i99 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %limit_entry.i99, align 4
  br label %if.end.i104

if.end.i104:                                      ; preds = %if.then.i102, %if.else.if.end.i104_crit_edge
  %59 = ptrtoint ptr %limit_entry.i99 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %limit_entry.i99, align 4
  %61 = ptrtoint ptr %syncnum.i100 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %syncnum.i100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp433.i103 = icmp slt i32 %60, %62
  br i1 %cmp433.i103, label %for.body.lr.ph.i106, label %if.end.i104.nsp32_search_period_entry.exit120_crit_edge

if.end.i104.nsp32_search_period_entry.exit120_crit_edge: ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_search_period_entry.exit120

for.body.lr.ph.i106:                              ; preds = %if.end.i104
  %63 = ptrtoint ptr %synct33 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %synct33, align 4
  br label %for.body.i110

for.body.i110:                                    ; preds = %for.inc.i116.for.body.i110_crit_edge, %for.body.lr.ph.i106
  %i.034.i107 = phi i32 [ %60, %for.body.lr.ph.i106 ], [ %inc.i114, %for.inc.i116.for.body.i110_crit_edge ]
  %start_period.i108 = getelementptr %struct._nsp32_sync_table, ptr %64, i32 %i.034.i107, i32 2
  %65 = ptrtoint ptr %start_period.i108 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %start_period.i108, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %66, i8 %53)
  %cmp6.not.i109 = icmp ugt i8 %66, %53
  br i1 %cmp6.not.i109, label %for.body.i110.for.inc.i116_crit_edge, label %land.lhs.true.i113

for.body.i110.for.inc.i116_crit_edge:             ; preds = %for.body.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i116

land.lhs.true.i113:                               ; preds = %for.body.i110
  %end_period.i111 = getelementptr %struct._nsp32_sync_table, ptr %64, i32 %i.034.i107, i32 3
  %67 = ptrtoint ptr %end_period.i111 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %end_period.i111, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %53)
  %cmp12.not.i112 = icmp ult i8 %68, %53
  br i1 %cmp12.not.i112, label %land.lhs.true.i113.for.inc.i116_crit_edge, label %land.lhs.true.i113.nsp32_search_period_entry.exit120_crit_edge

land.lhs.true.i113.nsp32_search_period_entry.exit120_crit_edge: ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %nsp32_search_period_entry.exit120

land.lhs.true.i113.for.inc.i116_crit_edge:        ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i116

for.inc.i116:                                     ; preds = %land.lhs.true.i113.for.inc.i116_crit_edge, %for.body.i110.for.inc.i116_crit_edge
  %inc.i114 = add i32 %i.034.i107, 1
  %exitcond.not.i115 = icmp eq i32 %inc.i114, %62
  br i1 %exitcond.not.i115, label %for.inc.i116.if.then50_crit_edge, label %for.inc.i116.for.body.i110_crit_edge

for.inc.i116.for.body.i110_crit_edge:             ; preds = %for.inc.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i110

for.inc.i116.if.then50_crit_edge:                 ; preds = %for.inc.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

nsp32_search_period_entry.exit120:                ; preds = %land.lhs.true.i113.nsp32_search_period_entry.exit120_crit_edge, %if.end.i104.nsp32_search_period_entry.exit120_crit_edge
  %i.0.lcssa.i117 = phi i32 [ %60, %if.end.i104.nsp32_search_period_entry.exit120_crit_edge ], [ %i.034.i107, %land.lhs.true.i113.nsp32_search_period_entry.exit120_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i117, i32 %62)
  %cmp17.i118 = icmp eq i32 %i.0.lcssa.i117, %62
  %spec.store.select.i119 = select i1 %cmp17.i118, i32 -1, i32 %i.0.lcssa.i117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp46 = icmp eq i8 %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i119)
  %cmp48 = icmp slt i32 %spec.store.select.i119, 0
  %or.cond = select i1 %cmp46, i1 true, i1 %cmp48
  br i1 %or.cond, label %nsp32_search_period_entry.exit120.if.then50_crit_edge, label %if.else51

nsp32_search_period_entry.exit120.if.then50_crit_edge: ; preds = %nsp32_search_period_entry.exit120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

if.then50:                                        ; preds = %nsp32_search_period_entry.exit120.if.then50_crit_edge, %for.inc.i116.if.then50_crit_edge
  %69 = ptrtoint ptr %synct33 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %synct33, align 4
  %arrayidx.i123 = getelementptr %struct._nsp32_sync_table, ptr %70, i32 %60
  %71 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i123, align 1
  %offset.i = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 3
  %73 = ptrtoint ptr %offset.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %offset.i, align 1
  %period1.i = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 2
  %74 = ptrtoint ptr %period1.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %period1.i, align 2
  %75 = shl i8 %72, 4
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %5, align 4
  %ackwidth.i = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 1
  %77 = ptrtoint ptr %ackwidth.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %ackwidth.i, align 1
  %sample_reg.i124 = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 6
  %78 = ptrtoint ptr %sample_reg.i124 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %sample_reg.i124, align 4
  %79 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 8
  %msgout_len.i = getelementptr inbounds %struct.Scsi_Host, ptr %82, i32 1, i32 50, i32 12, i32 12
  %83 = ptrtoint ptr %msgout_len.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %msgout_len.i, align 4
  %conv.i = zext i8 %84 to i32
  %msgoutbuf.i = getelementptr inbounds %struct.Scsi_Host, ptr %82, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %arrayidx.i125 = getelementptr [20 x i8], ptr %msgoutbuf.i, i32 0, i32 %conv.i
  %85 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %arrayidx.i125, align 1
  %inc.i126 = add nuw nsw i32 %conv.i, 1
  %arrayidx2.i = getelementptr [20 x i8], ptr %msgoutbuf.i, i32 0, i32 %inc.i126
  %86 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 3, ptr %arrayidx2.i, align 1
  %inc3.i = add nuw nsw i32 %conv.i, 2
  %arrayidx5.i = getelementptr [20 x i8], ptr %msgoutbuf.i, i32 0, i32 %inc3.i
  %87 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %arrayidx5.i, align 1
  %inc6.i = add nuw nsw i32 %conv.i, 3
  %arrayidx8.i = getelementptr [20 x i8], ptr %msgoutbuf.i, i32 0, i32 %inc6.i
  %88 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %arrayidx8.i, align 1
  %inc9.i = add nuw nsw i32 %conv.i, 4
  %arrayidx11.i = getelementptr [20 x i8], ptr %msgoutbuf.i, i32 0, i32 %inc9.i
  %89 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %arrayidx11.i, align 1
  %inc12.i = add i8 %84, 5
  store i8 %inc12.i, ptr %msgout_len.i, align 4
  br label %if.end53

if.else51:                                        ; preds = %nsp32_search_period_entry.exit120
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %synct33 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %synct33, align 4
  %arrayidx.i128 = getelementptr %struct._nsp32_sync_table, ptr %91, i32 %spec.store.select.i119
  %92 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i128, align 1
  %ackwidth4.i129 = getelementptr %struct._nsp32_sync_table, ptr %91, i32 %spec.store.select.i119, i32 1
  %94 = ptrtoint ptr %ackwidth4.i129 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ackwidth4.i129, align 1
  %sample_rate7.i130 = getelementptr %struct._nsp32_sync_table, ptr %91, i32 %spec.store.select.i119, i32 4
  %96 = ptrtoint ptr %sample_rate7.i130 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %sample_rate7.i130, align 1
  %98 = shl i8 %93, 4
  %or24.i131 = or i8 %98, %48
  %99 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %or24.i131, ptr %5, align 4
  %ackwidth11.i132 = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 1
  %100 = ptrtoint ptr %ackwidth11.i132 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %95, ptr %ackwidth11.i132, align 1
  %offset12.i133 = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 3
  %101 = ptrtoint ptr %offset12.i133 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %48, ptr %offset12.i133, align 1
  %102 = or i8 %97, 4
  %sample_reg.i134 = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 6
  %103 = ptrtoint ptr %sample_reg.i134 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %sample_reg.i134, align 4
  %104 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %device, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 8
  %msgout_len.i136 = getelementptr inbounds %struct.Scsi_Host, ptr %107, i32 1, i32 50, i32 12, i32 12
  %108 = ptrtoint ptr %msgout_len.i136 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %msgout_len.i136, align 4
  %conv.i137 = zext i8 %109 to i32
  %msgoutbuf.i138 = getelementptr inbounds %struct.Scsi_Host, ptr %107, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %arrayidx.i139 = getelementptr [20 x i8], ptr %msgoutbuf.i138, i32 0, i32 %conv.i137
  %110 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %arrayidx.i139, align 1
  %inc.i140 = add nuw nsw i32 %conv.i137, 1
  %arrayidx2.i141 = getelementptr [20 x i8], ptr %msgoutbuf.i138, i32 0, i32 %inc.i140
  %111 = ptrtoint ptr %arrayidx2.i141 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 3, ptr %arrayidx2.i141, align 1
  %inc3.i142 = add nuw nsw i32 %conv.i137, 2
  %arrayidx5.i143 = getelementptr [20 x i8], ptr %msgoutbuf.i138, i32 0, i32 %inc3.i142
  %112 = ptrtoint ptr %arrayidx5.i143 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %arrayidx5.i143, align 1
  %inc6.i144 = add nuw nsw i32 %conv.i137, 3
  %arrayidx8.i145 = getelementptr [20 x i8], ptr %msgoutbuf.i138, i32 0, i32 %inc6.i144
  %113 = ptrtoint ptr %arrayidx8.i145 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %53, ptr %arrayidx8.i145, align 1
  %inc9.i146 = add nuw nsw i32 %conv.i137, 4
  %arrayidx11.i147 = getelementptr [20 x i8], ptr %msgoutbuf.i138, i32 0, i32 %inc9.i146
  %114 = ptrtoint ptr %arrayidx11.i147 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %48, ptr %arrayidx11.i147, align 1
  %inc12.i148 = add i8 %109, 5
  store i8 %inc12.i148, ptr %msgout_len.i136, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.then50, %if.end24
  %get_period.1 = phi i8 [ %7, %if.end24 ], [ %53, %if.then50 ], [ %53, %if.else51 ]
  %period = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 2
  %115 = ptrtoint ptr %period to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %get_period.1, ptr %period, align 2
  br label %cleanup

reject:                                           ; preds = %nsp32_search_period_entry.exit.reject_crit_edge, %for.inc.i.reject_crit_edge, %if.end13.reject_crit_edge, %if.then.reject_crit_edge
  %116 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %device, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 8
  %msgout_len.i150 = getelementptr inbounds %struct.Scsi_Host, ptr %119, i32 1, i32 50, i32 12, i32 12
  %120 = ptrtoint ptr %msgout_len.i150 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %msgout_len.i150, align 4
  %conv.i151 = zext i8 %121 to i32
  %msgoutbuf.i152 = getelementptr inbounds %struct.Scsi_Host, ptr %119, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %arrayidx.i153 = getelementptr [20 x i8], ptr %msgoutbuf.i152, i32 0, i32 %conv.i151
  %122 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 7, ptr %arrayidx.i153, align 1
  %inc.i154 = add i8 %121, 1
  store i8 %inc.i154, ptr %msgout_len.i150, align 4
  br label %async

async:                                            ; preds = %reject, %if.end.async_crit_edge
  %synct.i155 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %123 = ptrtoint ptr %synct.i155 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %synct.i155, align 4
  %limit_entry.i156 = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 5
  %125 = ptrtoint ptr %limit_entry.i156 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %limit_entry.i156, align 4
  %arrayidx.i157 = getelementptr %struct._nsp32_sync_table, ptr %124, i32 %126
  %127 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx.i157, align 1
  %offset.i158 = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 3
  %129 = ptrtoint ptr %offset.i158 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %offset.i158, align 1
  %period1.i159 = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 2
  %130 = shl i8 %128, 4
  %131 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %5, align 4
  %ackwidth.i160 = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 1
  %132 = ptrtoint ptr %ackwidth.i160 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %ackwidth.i160, align 1
  %sample_reg.i161 = getelementptr inbounds %struct._nsp32_target, ptr %5, i32 0, i32 6
  %133 = ptrtoint ptr %sample_reg.i161 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %sample_reg.i161, align 4
  %134 = ptrtoint ptr %period1.i159 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %period1.i159, align 2
  br label %cleanup

cleanup:                                          ; preds = %async, %if.end53
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_choose_state(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !25, !26, !28, !30, !31, !33, !34, !36, !37, !39, !41, !42, !43, !44, !45, !47, !49, !51, !53, !54, !56, !58, !60, !62, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !175, !176, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237}
!llvm.module.flags = !{!239, !240, !241, !242, !243, !244, !245, !246}
!llvm.ident = !{!247}

!0 = !{ptr @__param_trans_mode, !1, !"__param_trans_mode", i1 false, i1 false}
!1 = !{!"../drivers/scsi/nsp32.c", i32 46, i32 1}
!2 = !{ptr @__UNIQUE_ID_trans_modetype287, !1, !"__UNIQUE_ID_trans_modetype287", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_trans_mode288, !4, !"__UNIQUE_ID_trans_mode288", i1 false, i1 false}
!4 = !{!"../drivers/scsi/nsp32.c", i32 47, i32 1}
!5 = !{ptr @__param_auto_param, !6, !"__param_auto_param", i1 false, i1 false}
!6 = !{!"../drivers/scsi/nsp32.c", i32 52, i32 1}
!7 = !{ptr @__UNIQUE_ID_auto_paramtype289, !6, !"__UNIQUE_ID_auto_paramtype289", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_auto_param290, !9, !"__UNIQUE_ID_auto_param290", i1 false, i1 false}
!9 = !{!"../drivers/scsi/nsp32.c", i32 53, i32 1}
!10 = !{ptr @__param_disc_priv, !11, !"__param_disc_priv", i1 false, i1 false}
!11 = !{!"../drivers/scsi/nsp32.c", i32 56, i32 1}
!12 = !{ptr @__UNIQUE_ID_disc_privtype291, !11, !"__UNIQUE_ID_disc_privtype291", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_disc_priv292, !14, !"__UNIQUE_ID_disc_priv292", i1 false, i1 false}
!14 = !{!"../drivers/scsi/nsp32.c", i32 57, i32 1}
!15 = !{ptr @__UNIQUE_ID_author293, !16, !"__UNIQUE_ID_author293", i1 false, i1 false}
!16 = !{!"../drivers/scsi/nsp32.c", i32 59, i32 1}
!17 = !{ptr @__UNIQUE_ID_description294, !18, !"__UNIQUE_ID_description294", i1 false, i1 false}
!18 = !{!"../drivers/scsi/nsp32.c", i32 60, i32 1}
!19 = !{ptr @__UNIQUE_ID_file295, !20, !"__UNIQUE_ID_file295", i1 false, i1 false}
!20 = !{!"../drivers/scsi/nsp32.c", i32 61, i32 1}
!21 = !{ptr @__UNIQUE_ID_license296, !20, !"__UNIQUE_ID_license296", i1 false, i1 false}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/nsp32.c", i32 3403, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__initcall__kmod_nsp32__297_3407_init_nsp326, !27, !"__initcall__kmod_nsp32__297_3407_init_nsp326", i1 false, i1 false}
!27 = !{!"../drivers/scsi/nsp32.c", i32 3407, i32 1}
!28 = !{ptr @__exitcall_exit_nsp32, !29, !"__exitcall_exit_nsp32", i1 false, i1 false}
!29 = !{!"../drivers/scsi/nsp32.c", i32 3408, i32 1}
!30 = !{ptr @__param_str_trans_mode, !1, !"__param_str_trans_mode", i1 false, i1 false}
!31 = !{ptr @trans_mode, !32, !"trans_mode", i1 false, i1 false}
!32 = !{!"../drivers/scsi/nsp32.c", i32 45, i32 18}
!33 = !{ptr @__param_str_auto_param, !6, !"__param_str_auto_param", i1 false, i1 false}
!34 = !{ptr @auto_param, !35, !"auto_param", i1 false, i1 false}
!35 = !{!"../drivers/scsi/nsp32.c", i32 51, i32 18}
!36 = !{ptr @__param_str_disc_priv, !11, !"__param_str_disc_priv", i1 false, i1 false}
!37 = !{ptr @disc_priv, !38, !"disc_priv", i1 false, i1 false}
!38 = !{!"../drivers/scsi/nsp32.c", i32 55, i32 18}
!39 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/nsp32.c", i32 328, i32 2}
!41 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nsp32_message._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @nsp32_message._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/nsp32.c", i32 3384, i32 11}
!47 = !{ptr @nsp32_driver, !48, !"nsp32_driver", i1 false, i1 false}
!48 = !{!"../drivers/scsi/nsp32.c", i32 3383, i32 26}
!49 = !{ptr @nsp32_pci_table, !50, !"nsp32_pci_table", i1 false, i1 false}
!50 = !{!"../drivers/scsi/nsp32.c", i32 69, i32 29}
!51 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/nsp32.c", i32 3343, i32 3}
!53 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/nsp32.c", i32 3359, i32 2}
!56 = !{ptr @nsp32_data_base, !57, !"nsp32_data_base", i1 false, i1 false}
!57 = !{!"../drivers/scsi/nsp32.c", i32 130, i32 22}
!58 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/nsp32.c", i32 2566, i32 3}
!60 = !{ptr @nsp32_detect.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/scsi/nsp32.c", i32 2584, i32 2}
!62 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/nsp32.c", i32 2621, i32 3}
!65 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/nsp32.c", i32 2637, i32 3}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/nsp32.c", i32 2648, i32 3}
!70 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/nsp32.c", i32 2704, i32 4}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/nsp32.c", i32 2729, i32 3}
!74 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/nsp32.c", i32 2739, i32 3}
!76 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/nsp32.c", i32 2747, i32 3}
!78 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/nsp32.c", i32 264, i32 13}
!80 = !{ptr @nsp32_template, !81, !"nsp32_template", i1 false, i1 false}
!81 = !{!"../drivers/scsi/nsp32.c", i32 262, i32 34}
!82 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/nsp32.c", i32 923, i32 3}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/nsp32.c", i32 970, i32 3}
!86 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/nsp32.c", i32 887, i32 5}
!88 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/nsp32.c", i32 467, i32 3}
!90 = !{ptr @.str.25, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/nsp32.c", i32 480, i32 3}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/nsp32.c", i32 548, i32 3}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/nsp32.c", i32 2820, i32 2}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/nsp32.c", i32 2891, i32 2}
!98 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/nsp32.c", i32 1461, i32 14}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/nsp32.c", i32 1462, i32 16}
!102 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/nsp32.c", i32 1464, i32 16}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/nsp32.c", i32 1465, i32 16}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/nsp32.c", i32 1466, i32 16}
!108 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/nsp32.c", i32 1468, i32 16}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/nsp32.c", i32 1470, i32 16}
!112 = !{ptr @.str.36, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/nsp32.c", i32 1472, i32 16}
!114 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/nsp32.c", i32 1479, i32 16}
!116 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/nsp32.c", i32 1480, i32 26}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/nsp32.c", i32 1480, i32 34}
!120 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/nsp32.c", i32 1482, i32 16}
!122 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/nsp32.c", i32 1486, i32 16}
!124 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/nsp32.c", i32 1490, i32 14}
!126 = !{ptr @.str.43, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/nsp32.c", i32 1493, i32 17}
!128 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/nsp32.c", i32 1496, i32 16}
!130 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/nsp32.c", i32 1503, i32 17}
!132 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/nsp32.c", i32 1505, i32 17}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/nsp32.c", i32 1508, i32 16}
!136 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/nsp32.c", i32 1515, i32 18}
!138 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/nsp32.c", i32 63, i32 44}
!140 = distinct !{null, !141, !"nsp32_release_version", i1 false, i1 false}
!141 = !{!"../drivers/scsi/nsp32.c", i32 63, i32 20}
!142 = !{ptr @nsp32_sync_table_40M, !143, !"nsp32_sync_table_40M", i1 false, i1 false}
!143 = !{!"../drivers/scsi/nsp32.c", i32 138, i32 25}
!144 = distinct !{null, !145, !"nsp32_sync_table_20M", i1 false, i1 false}
!145 = !{!"../drivers/scsi/nsp32.c", i32 151, i32 25}
!146 = distinct !{null, !147, !"nsp32_sync_table_pci", i1 false, i1 false}
!147 = !{!"../drivers/scsi/nsp32.c", i32 163, i32 25}
!148 = !{ptr @.str.50, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/nsp32.c", i32 2925, i32 3}
!150 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/nsp32.c", i32 2930, i32 3}
!152 = !{ptr @.str.52, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/nsp32.c", i32 2947, i32 3}
!154 = distinct !{null, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/nsp32.c", i32 3214, i32 3}
!156 = !{ptr @.str.54, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/nsp32.c", i32 2366, i32 3}
!158 = !{ptr @.str.55, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/nsp32.c", i32 3025, i32 3}
!160 = !{ptr @.str.56, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/nsp32.c", i32 1124, i32 3}
!162 = !{ptr @.str.57, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/nsp32.c", i32 1194, i32 3}
!164 = !{ptr @.str.58, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/nsp32.c", i32 1196, i32 4}
!166 = !{ptr @.str.59, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/nsp32.c", i32 1212, i32 3}
!168 = !{ptr @.str.60, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/nsp32.c", i32 1222, i32 3}
!170 = !{ptr @.str.61, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/nsp32.c", i32 1223, i32 3}
!172 = !{ptr @.str.62, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/nsp32.c", i32 1272, i32 4}
!174 = !{ptr @.str.63, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @do_nsp32_isr._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @do_nsp32_isr._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/nsp32.c", i32 1331, i32 4}
!179 = !{ptr @.str.65, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/nsp32.c", i32 1403, i32 4}
!181 = !{ptr @.str.66, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/nsp32.c", i32 1404, i32 4}
!183 = !{ptr @.str.67, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/nsp32.c", i32 1420, i32 3}
!185 = !{ptr @.str.68, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/nsp32.c", i32 2000, i32 3}
!187 = !{ptr @.str.69, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/nsp32.c", i32 2040, i32 3}
!189 = !{ptr @.str.70, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/nsp32.c", i32 2065, i32 3}
!191 = !{ptr @.str.71, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/nsp32.c", i32 2216, i32 2}
!193 = !{ptr @.str.72, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/nsp32.c", i32 835, i32 3}
!195 = !{ptr @.str.73, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/nsp32.c", i32 838, i32 3}
!197 = !{ptr @.str.74, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/nsp32.c", i32 1782, i32 3}
!199 = !{ptr @.str.75, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/nsp32.c", i32 1875, i32 3}
!201 = distinct !{null, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/nsp32.c", i32 405, i32 3}
!203 = distinct !{null, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/nsp32.c", i32 2495, i32 3}
!205 = !{ptr @.str.78, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/nsp32.c", i32 2511, i32 2}
!207 = !{ptr @.str.79, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/nsp32.c", i32 1707, i32 3}
!209 = !{ptr @.str.80, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/nsp32.c", i32 2482, i32 2}
!211 = !{ptr @.str.81, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/nsp32.h", i32 42, i32 2}
!213 = !{ptr @.str.82, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/nsp32.h", i32 43, i32 2}
!215 = !{ptr @.str.83, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/nsp32.h", i32 44, i32 2}
!217 = !{ptr @.str.84, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/nsp32.h", i32 45, i32 2}
!219 = !{ptr @.str.85, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/nsp32.h", i32 46, i32 2}
!221 = !{ptr @.str.86, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/nsp32.h", i32 47, i32 2}
!223 = !{ptr @.str.87, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/nsp32.h", i32 48, i32 2}
!225 = !{ptr @nsp32_model, !226, !"nsp32_model", i1 false, i1 false}
!226 = !{!"../drivers/scsi/nsp32.h", i32 41, i32 15}
!227 = !{ptr @.str.88, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/nsp32.c", i32 3288, i32 2}
!229 = !{ptr @.str.89, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/nsp32.c", i32 3305, i32 2}
!231 = !{ptr @.str.90, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/nsp32.c", i32 3314, i32 2}
!233 = !{ptr @.str.91, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/nsp32.c", i32 3317, i32 3}
!235 = !{ptr @.str.92, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/scsi/nsp32.c", i32 3324, i32 2}
!237 = !{ptr @.str.93, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/nsp32.c", i32 3398, i32 2}
!239 = !{i32 1, !"wchar_size", i32 2}
!240 = !{i32 1, !"min_enum_size", i32 4}
!241 = !{i32 8, !"branch-target-enforcement", i32 0}
!242 = !{i32 8, !"sign-return-address", i32 0}
!243 = !{i32 8, !"sign-return-address-all", i32 0}
!244 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!245 = !{i32 7, !"uwtable", i32 1}
!246 = !{i32 7, !"frame-pointer", i32 2}
!247 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!248 = !{!"auto-init"}
!249 = !{i64 6244595}
!250 = !{i64 2155136281}
!251 = !{i64 2155146833}
!252 = !{i64 6244818}
!253 = !{i64 2155147612}
!254 = !{i64 2155148271}
!255 = !{i64 2155145859}
!256 = !{i64 2155146232}
!257 = !{i64 6244395}
!258 = !{i64 2155135236}
!259 = !{i64 2155136701}
!260 = !{i64 6245015}
!261 = !{i64 2155143851}
!262 = !{i64 2155144188}
!263 = !{i64 2155134239}
!264 = !{i64 2155143057}
!265 = !{i64 6245213}
!266 = !{i64 2155143465}
!267 = !{i64 2155134816}
!268 = !{i8 0, i8 2}
!269 = !{i64 6245433}
!270 = !{i64 2155137746}
