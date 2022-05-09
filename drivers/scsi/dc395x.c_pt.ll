; ModuleID = '/llk/IR_all_yes/drivers/scsi/dc395x.c_pt.bc'
source_filename = "../drivers/scsi/dc395x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.ParameterData = type { i32, i32, i32, i32, i32 }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.AdapterCtlBlk = type { ptr, i32, i32, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i8, [16 x i8], [16 x [32 x ptr]], ptr, i8, [63 x %struct.ScsiReqBlk], %struct.ScsiReqBlk, %struct.NvRamType }
%struct.ScsiReqBlk = type { %struct.list_head, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i16, [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.NvRamType = type { [2 x i8], [2 x i8], i8, [2 x i8], [2 x i8], i8, [16 x %struct.NVRamTarget], i8, i8, i8, i8, i8, i8, i8, i8, [22 x i16], i16 }
%struct.NVRamTarget = type { i8, i8, i8, i8 }
%struct.SGentry = type { i32, i32 }
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
%struct.DeviceCtlBlk = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.ScsiInqData = type { i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [16 x i8], [4 x i8] }

@__param_str_safe = internal constant [12 x i8] c"dc395x.safe\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_safe_settings = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_safe = internal constant %struct.kernel_param { ptr @__param_str_safe, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @use_safe_settings } }, section "__param", align 4
@__UNIQUE_ID_safetype287 = internal constant [26 x i8] c"dc395x.parmtype=safe:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_safe288 = internal constant [65 x i8] c"dc395x.parm=safe:Use safe and slow settings only. Default: false\00", section ".modinfo", align 1
@__param_str_adapter_id = internal constant [18 x i8] c"dc395x.adapter_id\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cfg_data = internal global { [6 x %struct.ParameterData], [40 x i8] } { [6 x %struct.ParameterData] [%struct.ParameterData { i32 -1, i32 0, i32 15, i32 7, i32 7 }, %struct.ParameterData { i32 -1, i32 0, i32 7, i32 1, i32 4 }, %struct.ParameterData { i32 -1, i32 0, i32 63, i32 63, i32 9 }, %struct.ParameterData { i32 -1, i32 0, i32 47, i32 39, i32 15 }, %struct.ParameterData { i32 -1, i32 0, i32 5, i32 3, i32 2 }, %struct.ParameterData { i32 -1, i32 0, i32 180, i32 1, i32 10 }], [40 x i8] zeroinitializer }, align 32
@__param_adapter_id = internal constant %struct.kernel_param { ptr @__param_str_adapter_id, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @cfg_data } }, section "__param", align 4
@__UNIQUE_ID_adapter_idtype289 = internal constant [31 x i8] c"dc395x.parmtype=adapter_id:int\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_id290 = internal constant [57 x i8] c"dc395x.parm=adapter_id:Adapter SCSI ID. Default 7 (0-15)\00", section ".modinfo", align 1
@__param_str_max_speed = internal constant [17 x i8] c"dc395x.max_speed\00", align 1
@__param_max_speed = internal constant %struct.kernel_param { ptr @__param_str_max_speed, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @cfg_data, i64 20) } }, section "__param", align 4
@__UNIQUE_ID_max_speedtype291 = internal constant [30 x i8] c"dc395x.parmtype=max_speed:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_speed292 = internal constant [117 x i8] c"dc395x.parm=max_speed:Maximum bus speed. Default 1 (0-7) Speeds: 0=20, 1=13.3, 2=10, 3=8, 4=6.7, 5=5.8, 6=5, 7=4 Mhz\00", section ".modinfo", align 1
@__param_str_dev_mode = internal constant [16 x i8] c"dc395x.dev_mode\00", align 1
@__param_dev_mode = internal constant %struct.kernel_param { ptr @__param_str_dev_mode, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @cfg_data, i64 40) } }, section "__param", align 4
@__UNIQUE_ID_dev_modetype293 = internal constant [29 x i8] c"dc395x.parmtype=dev_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dev_mode294 = internal constant [34 x i8] c"dc395x.parm=dev_mode:Device mode.\00", section ".modinfo", align 1
@__param_str_adapter_mode = internal constant [20 x i8] c"dc395x.adapter_mode\00", align 1
@__param_adapter_mode = internal constant %struct.kernel_param { ptr @__param_str_adapter_mode, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @cfg_data, i64 60) } }, section "__param", align 4
@__UNIQUE_ID_adapter_modetype295 = internal constant [33 x i8] c"dc395x.parmtype=adapter_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_mode296 = internal constant [39 x i8] c"dc395x.parm=adapter_mode:Adapter mode.\00", section ".modinfo", align 1
@__param_str_tags = internal constant [12 x i8] c"dc395x.tags\00", align 1
@__param_tags = internal constant %struct.kernel_param { ptr @__param_str_tags, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @cfg_data, i64 80) } }, section "__param", align 4
@__UNIQUE_ID_tagstype297 = internal constant [25 x i8] c"dc395x.parmtype=tags:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tags298 = internal constant [56 x i8] c"dc395x.parm=tags:Number of tags (1<<x). Default 3 (0-5)\00", section ".modinfo", align 1
@__param_str_reset_delay = internal constant [19 x i8] c"dc395x.reset_delay\00", align 1
@__param_reset_delay = internal constant %struct.kernel_param { ptr @__param_str_reset_delay, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @cfg_data, i64 100) } }, section "__param", align 4
@__UNIQUE_ID_reset_delaytype299 = internal constant [32 x i8] c"dc395x.parmtype=reset_delay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_reset_delay300 = internal constant [66 x i8] c"dc395x.parm=reset_delay:Reset delay in seconds. Default 1 (0-180)\00", section ".modinfo", align 1
@__initcall__kmod_dc395x__302_4683_dc395x_driver_init6 = internal global ptr @dc395x_driver_init, section ".initcall6.init", align 4
@dc395x_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @dc395x_pci_table, ptr @dc395x_init_one, ptr @dc395x_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_dc395x_driver_exit = internal global ptr @dc395x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [53 x i8] c"dc395x.author=C.L. Huang / Erich Chen / Kurt Garloff\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [111 x i8] c"dc395x.description=SCSI host adapter driver for Tekram TRM-S1040 based adapters: Tekram DC395 and DC315 series\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [32 x i8] c"dc395x.file=drivers/scsi/dc395x\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [19 x i8] c"dc395x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dc395x\00", [25 x i8] zeroinitializer }, align 32
@dc395x_pci_table = internal global { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 7649, i32 913, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dc395x_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 4597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016dc395x: PCI Enable device failed.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dc395x_init_one\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/scsi/dc395x.c\00", [42 x i8] zeroinitializer }, align 32
@dc395x_init_one._entry_ptr = internal global ptr @dc395x_init_one._entry, section ".printk_index", align 4
@dc395x_driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @dc395x_queue_command, ptr null, ptr null, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr @dc395x_eh_abort, ptr null, ptr null, ptr @dc395x_eh_bus_reset, ptr null, ptr @dc395x_slave_alloc, ptr null, ptr @dc395x_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dc395x_show_info, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 63, i32 7, i16 64, i16 0, i32 0, i32 0, i32 4095, i32 0, i16 16, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dc395x_init_one._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 4609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016dc395x: scsi_host_alloc failed\0A\00", [62 x i8] zeroinitializer }, align 32
@dc395x_init_one._entry_ptr.6 = internal global ptr @dc395x_init_one._entry.4, section ".printk_index", align 4
@dc395x_init_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 4618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016dc395x: adapter init failed\0A\00", [33 x i8] zeroinitializer }, align 32
@dc395x_init_one._entry_ptr.9 = internal global ptr @dc395x_init_one._entry.7, section ".printk_index", align 4
@dc395x_init_one._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 4627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013dc395x: scsi_add_host failed\0A\00", [32 x i8] zeroinitializer }, align 32
@dc395x_init_one._entry_ptr.12 = internal global ptr @dc395x_init_one._entry.10, section ".printk_index", align 4
@banner_display.banner_done = internal global { i1, [31 x i8] } zeroinitializer, align 32
@banner_display._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 4565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016dc395x: %s %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"banner_display\00", [17 x i8] zeroinitializer }, align 32
@banner_display._entry_ptr = internal global ptr @banner_display._entry, section ".printk_index", align 4
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Tekram DC395(U/UW/F), DC315(U) - ASIC TRM-S1040\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"v2.05, 2004/03/08\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Tekram DC395(U/UW/F), DC315(U) - ASIC TRM-S1040 v2.05, 2004/03/08\00", [62 x i8] zeroinitializer }, align 32
@dc395x_queue_command_lck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016dc395x: queue_command: Ignore target <%02i-%i>\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dc395x_queue_command_lck\00", [39 x i8] zeroinitializer }, align 32
@dc395x_queue_command_lck._entry_ptr = internal global ptr @dc395x_queue_command_lck._entry, section ".printk_index", align 4
@dc395x_queue_command_lck._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013dc395x: queue_command: No such device <%02i-%i>\00", [46 x i8] zeroinitializer }, align 32
@dc395x_queue_command_lck._entry_ptr.22 = internal global ptr @dc395x_queue_command_lck._entry.20, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@start_scsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 1369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\017dc395x: start_scsi: (0x%p) Attempt to start acommand while another command (0x%p) is active.\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"start_scsi\00", [21 x i8] zeroinitializer }, align 32
@start_scsi._entry_ptr = internal global ptr @start_scsi._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@start_scsi._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 1448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014dc395x: start_scsi: (0x%p) Out of tags target=<%02i-%i>)\0A\00", [36 x i8] zeroinitializer }, align 32
@start_scsi._entry_ptr.29 = internal global ptr @start_scsi._entry.27, section ".printk_index", align 4
@build_wdtr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016dc395x: build_wdtr: msgout_buf BUSY (%i: %02x %02x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"build_wdtr\00", [21 x i8] zeroinitializer }, align 32
@build_wdtr._entry_ptr = internal global ptr @build_wdtr._entry, section ".printk_index", align 4
@build_sdtr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 1259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016dc395x: build_sdtr: msgout_buf BUSY (%i: %02x %02x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"build_sdtr\00", [21 x i8] zeroinitializer }, align 32
@build_sdtr._entry_ptr = internal global ptr @build_sdtr._entry, section ".printk_index", align 4
@dc395x_eh_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 1220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016dc395x: eh_abort: (0x%p) target=<%02i-%i> cmd=%p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dc395x_eh_abort\00", [16 x i8] zeroinitializer }, align 32
@dc395x_eh_abort._entry_ptr = internal global ptr @dc395x_eh_abort._entry, section ".printk_index", align 4
@dc395x_eh_abort._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017dc395x: eh_abort: No such device\0A\00", [60 x i8] zeroinitializer }, align 32
@dc395x_eh_abort._entry_ptr.38 = internal global ptr @dc395x_eh_abort._entry.36, section ".printk_index", align 4
@dc395x_eh_abort._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dc395x: eh_abort: Command was waiting\0A\00", [55 x i8] zeroinitializer }, align 32
@dc395x_eh_abort._entry_ptr.41 = internal global ptr @dc395x_eh_abort._entry.39, section ".printk_index", align 4
@dc395x_eh_abort._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.3, i32 1241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dc395x: eh_abort: Command in progress\0A\00", [55 x i8] zeroinitializer }, align 32
@dc395x_eh_abort._entry_ptr.44 = internal global ptr @dc395x_eh_abort._entry.42, section ".printk_index", align 4
@dc395x_eh_abort._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.3, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dc395x: eh_abort: Command not found\0A\00", [57 x i8] zeroinitializer }, align 32
@dc395x_eh_abort._entry_ptr.47 = internal global ptr @dc395x_eh_abort._entry.45, section ".printk_index", align 4
@__dc395x_eh_bus_reset._entry = internal constant %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 1153, ptr null, ptr null }, align 1
@.str.48 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016dc395x: eh_bus_reset: (0%p) target=<%02i-%i> cmd=%p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__dc395x_eh_bus_reset\00", [42 x i8] zeroinitializer }, align 32
@__dc395x_eh_bus_reset._entry_ptr = internal global ptr @__dc395x_eh_bus_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@clock_period = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0C\12\19\1F%+2>", [24 x i8] zeroinitializer }, align 32
@doing_srb_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 3347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016dc395x: doing_srb_done: pids \00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"doing_srb_done\00", [17 x i8] zeroinitializer }, align 32
@doing_srb_done._entry_ptr = internal global ptr @doing_srb_done._entry, section ".printk_index", align 4
@doing_srb_done._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 3357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"G:%p(%02i-%i) \00", [17 x i8] zeroinitializer }, align 32
@doing_srb_done._entry_ptr.55 = internal global ptr @doing_srb_done._entry.53, section ".printk_index", align 4
@doing_srb_done._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.3, i32 3374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017dc395x: How could the ML send cmnds to the Going queue? <%02i-%i>\0A\00", [59 x i8] zeroinitializer }, align 32
@doing_srb_done._entry_ptr.58 = internal global ptr @doing_srb_done._entry.56, section ".printk_index", align 4
@doing_srb_done._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.3, i32 3379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017dc395x: tag_mask for <%02i-%i> should be empty, is %08x!\0A\00", [36 x i8] zeroinitializer }, align 32
@doing_srb_done._entry_ptr.61 = internal global ptr @doing_srb_done._entry.59, section ".printk_index", align 4
@doing_srb_done._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.52, ptr @.str.3, i32 3386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"W:%p<%02i-%i>\00", [18 x i8] zeroinitializer }, align 32
@doing_srb_done._entry_ptr.64 = internal global ptr @doing_srb_done._entry.62, section ".printk_index", align 4
@doing_srb_done._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.52, ptr @.str.3, i32 3401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017dc395x: ML queued %i cmnds again to <%02i-%i>\0A\00", [47 x i8] zeroinitializer }, align 32
@doing_srb_done._entry_ptr.67 = internal global ptr @doing_srb_done._entry.65, section ".printk_index", align 4
@doing_srb_done._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.52, ptr @.str.3, i32 3404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@doing_srb_done._entry_ptr.70 = internal global ptr @doing_srb_done._entry.68, section ".printk_index", align 4
@current_sync_offset = internal global { i16, [30 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.71 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"Tekram DC395(U/UW/F), DC315(U) - ASIC TRM-S1040 PCI SCSI Host Adapter\0A Driver Version v2.05, 2004/03/08\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SCSI Host Nr %i, \00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC395U/UW/F DC315/U %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Wide\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"io_port_base 0x%04lx, \00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irq_level 0x%04x, \00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" SelTimeout %ims\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MaxID %i, MaxLUN %llu, \00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AdapterID %i\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tag_max_num %i\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c", FilterCfg 0x%02x\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c", DelayReset %is\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Nr of DCBs: %i\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Map of attached LUNs: %8ph\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"                      %8ph\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Un ID LUN Prty Sync Wide DsCn SndS TagQ nego_period SyncFreq SyncOffs MaxCmd\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%02i %02i  %02i \00", [47 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" Yes \00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" No  \00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"  %03i ns \00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (%03i ns)\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"   %2i.%1i M     %02i \00", [41 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"                 \00", [46 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"     %02i\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Waiting queue timer running\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DCB (%02i-%i): Waiting: %i:\00", [36 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %p\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0ADCB (%02i-%i): Going  : %i:\00", [35 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@adapter_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 4324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013dc395x: Failed to reserve IO region 0x%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adapter_init\00", [19 x i8] zeroinitializer }, align 32
@adapter_init._entry_ptr = internal global ptr @adapter_init._entry, section ".printk_index", align 4
@adapter_init._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.3, i32 4333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016dc395x: Failed to register IRQ\0A\00", [62 x i8] zeroinitializer }, align 32
@adapter_init._entry_ptr.104 = internal global ptr @adapter_init._entry.102, section ".printk_index", align 4
@adapter_init._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.3, i32 4350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017dc395x: Memory allocation for SG tables failed\0A\00", [46 x i8] zeroinitializer }, align 32
@adapter_init._entry_ptr.107 = internal global ptr @adapter_init._entry.105, section ".printk_index", align 4
@dc395x_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 1662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016dc395x: Interrupt from DMA engine: 0x%02x!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dc395x_interrupt\00", [47 x i8] zeroinitializer }, align 32
@dc395x_interrupt._entry_ptr = internal global ptr @dc395x_interrupt._entry, section ".printk_index", align 4
@dc395x_interrupt._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.3, i32 1672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016dc395x: Ignoring DMA error (probably a bad thing) ...\0A\00", [39 x i8] zeroinitializer }, align 32
@dc395x_interrupt._entry_ptr.112 = internal global ptr @dc395x_interrupt._entry.110, section ".printk_index", align 4
@dc395x_handle_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 1556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dc395x: COP after COP completed? %04x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dc395x_handle_interrupt\00", [40 x i8] zeroinitializer }, align 32
@dc395x_handle_interrupt._entry_ptr = internal global ptr @dc395x_handle_interrupt._entry, section ".printk_index", align 4
@dc395x_handle_interrupt._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.3, i32 1575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016dc395x: Host does not support target mode!\0A\00", [50 x i8] zeroinitializer }, align 32
@dc395x_handle_interrupt._entry_ptr.117 = internal global ptr @dc395x_handle_interrupt._entry.115, section ".printk_index", align 4
@dc395x_handle_interrupt._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.114, ptr @.str.3, i32 1587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017dc395x: Oops: BusService (%04x %02x) w/o ActiveDCB!\0A\00", [41 x i8] zeroinitializer }, align 32
@dc395x_handle_interrupt._entry_ptr.120 = internal global ptr @dc395x_handle_interrupt._entry.118, section ".printk_index", align 4
@dc395x_scsi_phase0 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @data_out_phase0, ptr @data_in_phase0, ptr @command_phase0, ptr @status_phase0, ptr @nop0, ptr @nop0, ptr @msgout_phase0, ptr @msgin_phase0], [32 x i8] zeroinitializer }, align 32
@dc395x_scsi_phase1 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @data_out_phase1, ptr @data_in_phase1, ptr @command_phase1, ptr @status_phase1, ptr @nop1, ptr @nop1, ptr @msgout_phase1, ptr @msgin_phase1], [32 x i8] zeroinitializer }, align 32
@disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 2872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013dc395x: disconnect: No such device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disconnect\00", [21 x i8] zeroinitializer }, align 32
@disconnect._entry_ptr = internal global ptr @disconnect._entry, section ".printk_index", align 4
@disconnect._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.122, ptr @.str.3, i32 2892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013dc395x: disconnect: Unexpected reselection <%02i-%i>\0A\00", [40 x i8] zeroinitializer }, align 32
@disconnect._entry_ptr.126 = internal global ptr @disconnect._entry.124, section ".printk_index", align 4
@disconnect._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.122, ptr @.str.3, i32 2898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013dc395x: disconnect: SRB_ABORT_SENT\0A\00", [58 x i8] zeroinitializer }, align 32
@disconnect._entry_ptr.129 = internal global ptr @disconnect._entry.127, section ".printk_index", align 4
@disconnect._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.122, ptr @.str.3, i32 2915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dc395x: disconnect: (0x%p) Unexpected\0A\00", [55 x i8] zeroinitializer }, align 32
@disconnect._entry_ptr.132 = internal global ptr @disconnect._entry.130, section ".printk_index", align 4
@srb_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.3, i32 3243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016dc395x: QUEUE_FULL for dev <%02i-%i> with %i cmnds\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"srb_done\00", [23 x i8] zeroinitializer }, align 32
@srb_done._entry_ptr = internal global ptr @srb_done._entry, section ".printk_index", align 4
@srb_done._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.3, i32 3334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013dc395x: srb_done: ERROR! Completed cmd with tmp_srb\0A\00", [41 x i8] zeroinitializer }, align 32
@srb_done._entry_ptr.137 = internal global ptr @srb_done._entry.135, section ".printk_index", align 4
@request_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.3, i32 3526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017dc395x: request_sense: (0x%p) failed <%02i-%i>\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"request_sense\00", [18 x i8] zeroinitializer }, align 32
@request_sense._entry_ptr = internal global ptr @request_sense._entry, section ".printk_index", align 4
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reselect\00", [23 x i8] zeroinitializer }, align 32
@reselect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.140, ptr @.str.3, i32 2978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017dc395x: reselect: Arb lost Resel won, but active_srb == NULL\0A\00", [32 x i8] zeroinitializer }, align 32
@reselect._entry_ptr = internal global ptr @reselect._entry, section ".printk_index", align 4
@reselect._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.140, ptr @.str.3, i32 3002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017dc395x: reselect: Expects identify msg. Got %i!\0A\00", [45 x i8] zeroinitializer }, align 32
@reselect._entry_ptr.144 = internal global ptr @reselect._entry.142, section ".printk_index", align 4
@reselect._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.140, ptr @.str.3, i32 3008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013dc395x: reselect: From non existent device <%02i-%i>\0A\00", [40 x i8] zeroinitializer }, align 32
@reselect._entry_ptr.147 = internal global ptr @reselect._entry.145, section ".printk_index", align 4
@reselect._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.140, ptr @.str.3, i32 3017, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017dc395x: reselect: in spite of forbidden disconnection? <%02i-%i>\0A\00", [60 x i8] zeroinitializer }, align 32
@reselect._entry_ptr.150 = internal global ptr @reselect._entry.148, section ".printk_index", align 4
@reselect._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.140, ptr @.str.3, i32 3031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017dc395x: reselect: w/o disconnected cmds <%02i-%i>\0A\00", [43 x i8] zeroinitializer }, align 32
@reselect._entry_ptr.153 = internal global ptr @reselect._entry.151, section ".printk_index", align 4
@scsi_reset_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.3, i32 3457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016dc395x: scsi_reset_detect: acb=%p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scsi_reset_detect\00", [46 x i8] zeroinitializer }, align 32
@scsi_reset_detect._entry_ptr = internal global ptr @scsi_reset_detect._entry, section ".printk_index", align 4
@data_out_phase0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.3, i32 1963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016dc395x: data_out_phase0: Discard 1 byte (0x%02x)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"data_out_phase0\00", [16 x i8] zeroinitializer }, align 32
@data_out_phase0._entry_ptr = internal global ptr @data_out_phase0._entry, section ".printk_index", align 4
@data_out_phase0._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.157, ptr @.str.3, i32 1995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016dc395x: data_out_phase0: Work around chip bug (%i)?\0A\00", [41 x i8] zeroinitializer }, align 32
@data_out_phase0._entry_ptr.160 = internal global ptr @data_out_phase0._entry.158, section ".printk_index", align 4
@data_in_phase0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.3, i32 2049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016dc395x: data_in_phase0: (0x%p) Parity Error\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"data_in_phase0\00", [17 x i8] zeroinitializer }, align 32
@data_in_phase0._entry_ptr = internal global ptr @data_in_phase0._entry, section ".printk_index", align 4
@msgin_qtag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.3, i32 2484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017dc395x: msgin_qtag: tag_mask=0x%08x does not reserve tag %i!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msgin_qtag\00", [21 x i8] zeroinitializer }, align 32
@msgin_qtag._entry_ptr = internal global ptr @msgin_qtag._entry, section ".printk_index", align 4
@msgin_qtag._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.166, ptr @.str.3, i32 2521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017dc395x: msgin_qtag: Unknown tag %i - abort\0A\00", [50 x i8] zeroinitializer }, align 32
@msgin_qtag._entry_ptr.169 = internal global ptr @msgin_qtag._entry.167, section ".printk_index", align 4
@msgin_set_async._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.3, i32 2541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017dc395x: msgin_set_async: No sync transfers <%02i-%i>\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msgin_set_async\00", [16 x i8] zeroinitializer }, align 32
@msgin_set_async._entry_ptr = internal global ptr @msgin_set_async._entry, section ".printk_index", align 4
@msgin_set_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.3, i32 2590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016dc395x: msgin_set_sync: Increase sync nego period to %ins\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msgin_set_sync\00", [17 x i8] zeroinitializer }, align 32
@msgin_set_sync._entry_ptr = internal global ptr @msgin_set_sync._entry, section ".printk_index", align 4
@msgin_set_sync._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.3, i32 2607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016dc395x: Target %02i: %s Sync: %ins Offset %i (%02i.%01i MB/s)\0A\00", [63 x i8] zeroinitializer }, align 32
@msgin_set_sync._entry_ptr.176 = internal global ptr @msgin_set_sync._entry.174, section ".printk_index", align 4
@.str.177 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Wide16\00", [25 x i8] zeroinitializer }, align 32
@msgin_set_sync._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.173, ptr @.str.3, i32 2612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017dc395x: msgin_set_sync: answer w/%ins %i\0A\00", [52 x i8] zeroinitializer }, align 32
@msgin_set_sync._entry_ptr.180 = internal global ptr @msgin_set_sync._entry.178, section ".printk_index", align 4
@msgin_set_wide._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.3, i32 2665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017dc395x: msgin_set_wide: Wide nego initiated <%02i>\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msgin_set_wide\00", [17 x i8] zeroinitializer }, align 32
@msgin_set_wide._entry_ptr = internal global ptr @msgin_set_wide._entry, section ".printk_index", align 4
@msgin_reject._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.3, i32 2469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016dc395x: msgin_reject: 0x%02x <%02i-%i>\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msgin_reject\00", [19 x i8] zeroinitializer }, align 32
@msgin_reject._entry_ptr = internal global ptr @msgin_reject._entry, section ".printk_index", align 4
@data_io_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.3, i32 2255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013dc395x: data_io_transfer: Using tmp_srb!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"data_io_transfer\00", [47 x i8] zeroinitializer }, align 32
@data_io_transfer._entry_ptr = internal global ptr @data_io_transfer._entry, section ".printk_index", align 4
@data_io_transfer._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.187, ptr @.str.3, i32 2269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017dc395x: data_io_transfer: Xfer pending! Expect trouble!\0A\00", [37 x i8] zeroinitializer }, align 32
@data_io_transfer._entry_ptr.190 = internal global ptr @data_io_transfer._entry.188, section ".printk_index", align 4
@dump_register_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.192, ptr @.str.3, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016dc395x: dump: srb=%p cmd=%p OOOPS!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dump_register_info\00", [45 x i8] zeroinitializer }, align 32
@dump_register_info._entry_ptr = internal global ptr @dump_register_info._entry, section ".printk_index", align 4
@dump_register_info._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.192, ptr @.str.3, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016dc395x: dump: srb=%p cmd=%p cmnd=0x%02x <%02i-%i>\0A\00", [43 x i8] zeroinitializer }, align 32
@dump_register_info._entry_ptr.195 = internal global ptr @dump_register_info._entry.193, section ".printk_index", align 4
@dump_register_info._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.192, ptr @.str.3, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"  sglist=%p cnt=%i idx=%i len=%zu\0A\00", [61 x i8] zeroinitializer }, align 32
@dump_register_info._entry_ptr.198 = internal global ptr @dump_register_info._entry.196, section ".printk_index", align 4
@dump_register_info._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.192, ptr @.str.3, i32 1064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"  state=0x%04x status=0x%02x phase=0x%02x (%sconn.)\0A\00", [43 x i8] zeroinitializer }, align 32
@dump_register_info._entry_ptr.201 = internal global ptr @dump_register_info._entry.199, section ".printk_index", align 4
@.str.202 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"not\00", [28 x i8] zeroinitializer }, align 32
@dump_register_info._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.192, ptr @.str.3, i32 1082, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [199 x i8], [57 x i8] } { [199 x i8] c"\016dc395x: dump: SCSI{status=0x%04x fifocnt=0x%02x signals=0x%02x irqstat=0x%02x sync=0x%02x target=0x%02x rselid=0x%02x ctr=0x%08x irqen=0x%02x config=0x%04x config2=0x%02x cmd=0x%02x selto=0x%02x}\0A\00", [57 x i8] zeroinitializer }, align 32
@dump_register_info._entry_ptr.205 = internal global ptr @dump_register_info._entry.203, section ".printk_index", align 4
@dump_register_info._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.192, ptr @.str.3, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [144 x i8], [48 x i8] } { [144 x i8] c"\016dc395x: dump: DMA{cmd=0x%04x fifocnt=0x%02x fstat=0x%02x irqstat=0x%02x irqen=0x%02x cfg=0x%04x tctr=0x%08x ctctr=0x%08x addr=0x%08x:0x%08x}\0A\00", [48 x i8] zeroinitializer }, align 32
@dump_register_info._entry_ptr.208 = internal global ptr @dump_register_info._entry.206, section ".printk_index", align 4
@dump_register_info._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.192, ptr @.str.3, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016dc395x: dump: gen{gctrl=0x%02x gstat=0x%02x gtmr=0x%02x} pci{status=0x%04x}\0A\00", [49 x i8] zeroinitializer }, align 32
@dump_register_info._entry_ptr.211 = internal global ptr @dump_register_info._entry.209, section ".printk_index", align 4
@.str.213 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msgout_phase1\00", [18 x i8] zeroinitializer }, align 32
@msgout_phase1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.213, ptr @.str.3, i32 1706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017dc395x: msgout_phase1: (0x%p) Phase unexpected\0A\00", [46 x i8] zeroinitializer }, align 32
@msgout_phase1._entry_ptr = internal global ptr @msgout_phase1._entry, section ".printk_index", align 4
@check_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.3, i32 4000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014dc395x: EEProm checksum error: using default values and options.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_eeprom\00", [19 x i8] zeroinitializer }, align 32
@check_eeprom._entry_ptr = internal global ptr @check_eeprom._entry, section ".printk_index", align 4
@set_safe_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.219, ptr @.str.3, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016dc395x: Using safe settings.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_safe_settings\00", [46 x i8] zeroinitializer }, align 32
@set_safe_settings._entry_ptr = internal global ptr @set_safe_settings._entry, section ".printk_index", align 4
@eeprom_index_to_delay_map = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\03\05\0A\10\1E<x", [24 x i8] zeroinitializer }, align 32
@print_eeprom_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.3, i32 4057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016dc395x: Used settings: AdapterID=%02i, Speed=%i(%02i.%01iMHz), dev_mode=0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"print_eeprom_settings\00", [42 x i8] zeroinitializer }, align 32
@print_eeprom_settings._entry_ptr = internal global ptr @print_eeprom_settings._entry, section ".printk_index", align 4
@clock_speed = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 200, i16 133, i16 100, i16 80, i16 67, i16 58, i16 50, i16 40], [16 x i8] zeroinitializer }, align 32
@print_eeprom_settings._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.221, ptr @.str.3, i32 4060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016dc395x:                AdaptMode=0x%02x, Tags=%i(%02i), DelayReset=%is\0A\00", [54 x i8] zeroinitializer }, align 32
@print_eeprom_settings._entry_ptr.224 = internal global ptr @print_eeprom_settings._entry.222, section ".printk_index", align 4
@adapter_init_params.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.225 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&acb->waiting_timer)\00", [42 x i8] zeroinitializer }, align 32
@adapter_init_params.__key.226 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.227 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&acb->selto_timer)\00", [44 x i8] zeroinitializer }, align 32
@adapter_print_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.229, ptr @.str.3, i32 4130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016dc395x: %sConnectors: \00", [39 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adapter_print_config\00", [43 x i8] zeroinitializer }, align 32
@adapter_print_config._entry_ptr = internal global ptr @adapter_print_config._entry, section ".printk_index", align 4
@.str.230 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(Wide) \00", [24 x i8] zeroinitializer }, align 32
@adapter_print_config._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.229, ptr @.str.3, i32 4132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ext%s \00", [25 x i8] zeroinitializer }, align 32
@adapter_print_config._entry_ptr.233 = internal global ptr @adapter_print_config._entry.231, section ".printk_index", align 4
@.str.234 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"68\00", [29 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"50\00", [29 x i8] zeroinitializer }, align 32
@adapter_print_config._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.229, ptr @.str.3, i32 4134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"int68%s \00", [23 x i8] zeroinitializer }, align 32
@adapter_print_config._entry_ptr.238 = internal global ptr @adapter_print_config._entry.236, section ".printk_index", align 4
@.str.239 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"(50)\00", [27 x i8] zeroinitializer }, align 32
@adapter_print_config._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.229, ptr @.str.3, i32 4136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"int50 \00", [25 x i8] zeroinitializer }, align 32
@adapter_print_config._entry_ptr.242 = internal global ptr @adapter_print_config._entry.240, section ".printk_index", align 4
@adapter_print_config._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.229, ptr @.str.3, i32 4139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" Oops! (All 3?) \00", [47 x i8] zeroinitializer }, align 32
@adapter_print_config._entry_ptr.245 = internal global ptr @adapter_print_config._entry.243, section ".printk_index", align 4
@adapter_print_config._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.229, ptr @.str.3, i32 4141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" Termination: \00", [17 x i8] zeroinitializer }, align 32
@adapter_print_config._entry_ptr.248 = internal global ptr @adapter_print_config._entry.246, section ".printk_index", align 4
@adapter_print_config._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.229, ptr @.str.3, i32 4143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Disabled\0A\00", [22 x i8] zeroinitializer }, align 32
@adapter_print_config._entry_ptr.251 = internal global ptr @adapter_print_config._entry.249, section ".printk_index", align 4
@adapter_print_config._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.229, ptr @.str.3, i32 4146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Auto \00", [26 x i8] zeroinitializer }, align 32
@adapter_print_config._entry_ptr.254 = internal global ptr @adapter_print_config._entry.252, section ".printk_index", align 4
@adapter_print_config._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.229, ptr @.str.3, i32 4148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Low \00", [27 x i8] zeroinitializer }, align 32
@adapter_print_config._entry_ptr.257 = internal global ptr @adapter_print_config._entry.255, section ".printk_index", align 4
@adapter_print_config._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.229, ptr @.str.3, i32 4150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"High \00", [26 x i8] zeroinitializer }, align 32
@adapter_print_config._entry_ptr.260 = internal global ptr @adapter_print_config._entry.258, section ".printk_index", align 4
@adapter_print_config._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.229, ptr @.str.3, i32 4151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@adapter_print_config._entry_ptr.262 = internal global ptr @adapter_print_config._entry.261, section ".printk_index", align 4
@adapter_sg_tables_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.264, ptr @.str.3, i32 4109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017dc395x: No space for tmsrb SG table reserved?!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adapter_sg_tables_alloc\00", [40 x i8] zeroinitializer }, align 32
@adapter_sg_tables_alloc._entry_ptr = internal global ptr @adapter_sg_tables_alloc._entry, section ".printk_index", align 4
@adapter_init_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.266, ptr @.str.3, i32 4290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016dc395x: Performing initial SCSI bus reset\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adapter_init_chip\00", [46 x i8] zeroinitializer }, align 32
@adapter_init_chip._entry_ptr = internal global ptr @adapter_init_chip._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 18]
@__sancov_gen_cov_switch_values.267 = internal global [4 x i64] [i64 2, i64 16, i64 4, i64 64]
@__sancov_gen_cov_switch_values.268 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 40, i64 255]
@__sancov_gen_cov_switch_values.269 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 12]
@__sancov_gen_cov_switch_values.270 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.271 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 2, i64 3, i64 4, i64 6, i64 7, i64 32, i64 33, i64 34, i64 35]
@__sancov_gen_cov_switch_values.272 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.273 = private unnamed_addr constant [18 x i8] c"use_safe_settings\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 533, i32 13 }
@___asan_gen_.276 = private unnamed_addr constant [9 x i8] c"cfg_data\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 478, i32 29 }
@___asan_gen_.279 = private unnamed_addr constant [14 x i8] c"dc395x_driver\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4677, i32 26 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4683, i32 1 }
@___asan_gen_.285 = private unnamed_addr constant [17 x i8] c"dc395x_pci_table\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4665, i32 29 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4597, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [23 x i8] c"dc395x_driver_template\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4538, i32 34 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4609, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4618, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4627, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant [27 x i8] c"banner_display.banner_done\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4565, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4542, i32 28 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 984, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 993, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 326, i32 6 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1365, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1445, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1282, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1256, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1219, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1224, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1235, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1241, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1244, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1151, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant [13 x i8] c"clock_period\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 434, i32 11 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3347, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3356, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3372, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3376, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3385, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3399, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3404, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant [20 x i8] c"current_sync_offset\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 388, i32 12 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4442, i32 14 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4447, i32 16 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4448, i32 16 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4449, i32 35 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4449, i32 44 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4450, i32 16 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4451, i32 16 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4452, i32 16 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4454, i32 16 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4455, i32 16 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4457, i32 16 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4459, i32 16 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4461, i32 16 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4464, i32 16 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4465, i32 16 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4466, i32 16 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4469, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4474, i32 17 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4476, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4484, i32 18 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4486, i32 18 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4492, i32 18 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4495, i32 16 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4498, i32 17 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4503, i32 15 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4510, i32 18 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4514, i32 18 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4516, i32 18 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4324, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4333, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4350, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1662, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1672, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1555, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1575, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1585, i32 4 }
@___asan_gen_.628 = private unnamed_addr constant [19 x i8] c"dc395x_scsi_phase0\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 390, i32 14 }
@___asan_gen_.631 = private unnamed_addr constant [19 x i8] c"dc395x_scsi_phase1\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 401, i32 14 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2872, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2890, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2898, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2913, i32 5 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3242, i32 4 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3334, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3524, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2970, i32 18 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2977, i32 4 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3001, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3007, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3015, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3029, i32 4 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3457, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1961, i32 4 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1994, i32 5 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2048, i32 4 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2482, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2521, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2540, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2588, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2601, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2611, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2663, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2467, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2255, i32 3 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 2268, i32 4 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1051, i32 4 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1054, i32 4 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1059, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1062, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1066, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1083, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1096, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1701, i32 18 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 1704, i32 3 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 3999, i32 3 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 567, i32 3 }
@___asan_gen_.907 = private unnamed_addr constant [26 x i8] c"eeprom_index_to_delay_map\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 607, i32 13 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4052, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant [12 x i8] c"clock_speed\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 435, i32 12 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4058, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4184, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4185, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4129, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4132, i32 3 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4134, i32 3 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4136, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4139, i32 3 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4141, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4143, i32 3 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4146, i32 4 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4148, i32 4 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4150, i32 4 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4151, i32 3 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4109, i32 3 }
@___asan_gen_.1027 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1033 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1034 = private constant [25 x i8] c"../drivers/scsi/dc395x.c\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1034, i32 4290, i32 3 }
@llvm.compiler.used = appending global [367 x ptr] [ptr @__UNIQUE_ID_adapter_id290, ptr @__UNIQUE_ID_adapter_idtype289, ptr @__UNIQUE_ID_adapter_mode296, ptr @__UNIQUE_ID_adapter_modetype295, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_dev_mode294, ptr @__UNIQUE_ID_dev_modetype293, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__UNIQUE_ID_max_speed292, ptr @__UNIQUE_ID_max_speedtype291, ptr @__UNIQUE_ID_reset_delay300, ptr @__UNIQUE_ID_reset_delaytype299, ptr @__UNIQUE_ID_safe288, ptr @__UNIQUE_ID_safetype287, ptr @__UNIQUE_ID_tags298, ptr @__UNIQUE_ID_tagstype297, ptr @__dc395x_eh_bus_reset._entry, ptr @__dc395x_eh_bus_reset._entry_ptr, ptr @__exitcall_dc395x_driver_exit, ptr @__initcall__kmod_dc395x__302_4683_dc395x_driver_init6, ptr @__param_adapter_id, ptr @__param_adapter_mode, ptr @__param_dev_mode, ptr @__param_max_speed, ptr @__param_reset_delay, ptr @__param_safe, ptr @__param_tags, ptr @adapter_init._entry, ptr @adapter_init._entry.102, ptr @adapter_init._entry.105, ptr @adapter_init._entry_ptr, ptr @adapter_init._entry_ptr.104, ptr @adapter_init._entry_ptr.107, ptr @adapter_init_chip._entry, ptr @adapter_init_chip._entry_ptr, ptr @adapter_print_config._entry, ptr @adapter_print_config._entry.231, ptr @adapter_print_config._entry.236, ptr @adapter_print_config._entry.240, ptr @adapter_print_config._entry.243, ptr @adapter_print_config._entry.246, ptr @adapter_print_config._entry.249, ptr @adapter_print_config._entry.252, ptr @adapter_print_config._entry.255, ptr @adapter_print_config._entry.258, ptr @adapter_print_config._entry.261, ptr @adapter_print_config._entry_ptr, ptr @adapter_print_config._entry_ptr.233, ptr @adapter_print_config._entry_ptr.238, ptr @adapter_print_config._entry_ptr.242, ptr @adapter_print_config._entry_ptr.245, ptr @adapter_print_config._entry_ptr.248, ptr @adapter_print_config._entry_ptr.251, ptr @adapter_print_config._entry_ptr.254, ptr @adapter_print_config._entry_ptr.257, ptr @adapter_print_config._entry_ptr.260, ptr @adapter_print_config._entry_ptr.262, ptr @adapter_sg_tables_alloc._entry, ptr @adapter_sg_tables_alloc._entry_ptr, ptr @banner_display._entry, ptr @banner_display._entry_ptr, ptr @build_sdtr._entry, ptr @build_sdtr._entry_ptr, ptr @build_wdtr._entry, ptr @build_wdtr._entry_ptr, ptr @check_eeprom._entry, ptr @check_eeprom._entry_ptr, ptr @data_in_phase0._entry, ptr @data_in_phase0._entry_ptr, ptr @data_io_transfer._entry, ptr @data_io_transfer._entry.188, ptr @data_io_transfer._entry_ptr, ptr @data_io_transfer._entry_ptr.190, ptr @data_out_phase0._entry, ptr @data_out_phase0._entry.158, ptr @data_out_phase0._entry_ptr, ptr @data_out_phase0._entry_ptr.160, ptr @dc395x_driver_exit, ptr @dc395x_eh_abort._entry, ptr @dc395x_eh_abort._entry.36, ptr @dc395x_eh_abort._entry.39, ptr @dc395x_eh_abort._entry.42, ptr @dc395x_eh_abort._entry.45, ptr @dc395x_eh_abort._entry_ptr, ptr @dc395x_eh_abort._entry_ptr.38, ptr @dc395x_eh_abort._entry_ptr.41, ptr @dc395x_eh_abort._entry_ptr.44, ptr @dc395x_eh_abort._entry_ptr.47, ptr @dc395x_handle_interrupt._entry, ptr @dc395x_handle_interrupt._entry.115, ptr @dc395x_handle_interrupt._entry.118, ptr @dc395x_handle_interrupt._entry_ptr, ptr @dc395x_handle_interrupt._entry_ptr.117, ptr @dc395x_handle_interrupt._entry_ptr.120, ptr @dc395x_init_one._entry, ptr @dc395x_init_one._entry.10, ptr @dc395x_init_one._entry.4, ptr @dc395x_init_one._entry.7, ptr @dc395x_init_one._entry_ptr, ptr @dc395x_init_one._entry_ptr.12, ptr @dc395x_init_one._entry_ptr.6, ptr @dc395x_init_one._entry_ptr.9, ptr @dc395x_interrupt._entry, ptr @dc395x_interrupt._entry.110, ptr @dc395x_interrupt._entry_ptr, ptr @dc395x_interrupt._entry_ptr.112, ptr @dc395x_queue_command_lck._entry, ptr @dc395x_queue_command_lck._entry.20, ptr @dc395x_queue_command_lck._entry_ptr, ptr @dc395x_queue_command_lck._entry_ptr.22, ptr @disconnect._entry, ptr @disconnect._entry.124, ptr @disconnect._entry.127, ptr @disconnect._entry.130, ptr @disconnect._entry_ptr, ptr @disconnect._entry_ptr.126, ptr @disconnect._entry_ptr.129, ptr @disconnect._entry_ptr.132, ptr @doing_srb_done._entry, ptr @doing_srb_done._entry.53, ptr @doing_srb_done._entry.56, ptr @doing_srb_done._entry.59, ptr @doing_srb_done._entry.62, ptr @doing_srb_done._entry.65, ptr @doing_srb_done._entry.68, ptr @doing_srb_done._entry_ptr, ptr @doing_srb_done._entry_ptr.55, ptr @doing_srb_done._entry_ptr.58, ptr @doing_srb_done._entry_ptr.61, ptr @doing_srb_done._entry_ptr.64, ptr @doing_srb_done._entry_ptr.67, ptr @doing_srb_done._entry_ptr.70, ptr @dump_register_info._entry, ptr @dump_register_info._entry.193, ptr @dump_register_info._entry.196, ptr @dump_register_info._entry.199, ptr @dump_register_info._entry.203, ptr @dump_register_info._entry.206, ptr @dump_register_info._entry.209, ptr @dump_register_info._entry_ptr, ptr @dump_register_info._entry_ptr.195, ptr @dump_register_info._entry_ptr.198, ptr @dump_register_info._entry_ptr.201, ptr @dump_register_info._entry_ptr.205, ptr @dump_register_info._entry_ptr.208, ptr @dump_register_info._entry_ptr.211, ptr @msgin_qtag._entry, ptr @msgin_qtag._entry.167, ptr @msgin_qtag._entry_ptr, ptr @msgin_qtag._entry_ptr.169, ptr @msgin_reject._entry, ptr @msgin_reject._entry_ptr, ptr @msgin_set_async._entry, ptr @msgin_set_async._entry_ptr, ptr @msgin_set_sync._entry, ptr @msgin_set_sync._entry.174, ptr @msgin_set_sync._entry.178, ptr @msgin_set_sync._entry_ptr, ptr @msgin_set_sync._entry_ptr.176, ptr @msgin_set_sync._entry_ptr.180, ptr @msgin_set_wide._entry, ptr @msgin_set_wide._entry_ptr, ptr @msgout_phase1._entry, ptr @msgout_phase1._entry_ptr, ptr @print_eeprom_settings._entry, ptr @print_eeprom_settings._entry.222, ptr @print_eeprom_settings._entry_ptr, ptr @print_eeprom_settings._entry_ptr.224, ptr @request_sense._entry, ptr @request_sense._entry_ptr, ptr @reselect._entry, ptr @reselect._entry.142, ptr @reselect._entry.145, ptr @reselect._entry.148, ptr @reselect._entry.151, ptr @reselect._entry_ptr, ptr @reselect._entry_ptr.144, ptr @reselect._entry_ptr.147, ptr @reselect._entry_ptr.150, ptr @reselect._entry_ptr.153, ptr @scsi_reset_detect._entry, ptr @scsi_reset_detect._entry_ptr, ptr @set_safe_settings._entry, ptr @set_safe_settings._entry_ptr, ptr @srb_done._entry, ptr @srb_done._entry.135, ptr @srb_done._entry_ptr, ptr @srb_done._entry_ptr.137, ptr @start_scsi._entry, ptr @start_scsi._entry.27, ptr @start_scsi._entry_ptr, ptr @start_scsi._entry_ptr.29, ptr @use_safe_settings, ptr @cfg_data, ptr @dc395x_driver, ptr @.str, ptr @dc395x_pci_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dc395x_driver_template, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @banner_display.banner_done, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @clock_period, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @current_sync_offset, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.119, ptr @dc395x_scsi_phase0, ptr @dc395x_scsi_phase1, ptr @.str.121, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.159, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.168, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.179, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @.str.191, ptr @.str.192, ptr @.str.194, ptr @.str.197, ptr @.str.200, ptr @.str.202, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.214, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @eeprom_index_to_delay_map, ptr @.str.220, ptr @.str.221, ptr @clock_speed, ptr @.str.223, ptr @adapter_init_params.__key, ptr @.str.225, ptr @adapter_init_params.__key.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.232, ptr @.str.234, ptr @.str.235, ptr @.str.237, ptr @.str.239, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.250, ptr @.str.253, ptr @.str.256, ptr @.str.259, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266], section "llvm.metadata"
@0 = internal global [255 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_safe_settings to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_data to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_init_one._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_init_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_init_one._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @banner_display.banner_done to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @banner_display._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_queue_command_lck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_queue_command_lck._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_scsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_scsi._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_wdtr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_sdtr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_eh_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_eh_abort._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_eh_abort._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_eh_abort._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_eh_abort._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_period to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doing_srb_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doing_srb_done._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doing_srb_done._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doing_srb_done._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doing_srb_done._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doing_srb_done._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doing_srb_done._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_sync_offset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_init._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_init._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_interrupt._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_handle_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_handle_interrupt._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_handle_interrupt._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_scsi_phase0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc395x_scsi_phase1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disconnect._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disconnect._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disconnect._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srb_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srb_done._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reselect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reselect._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reselect._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reselect._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reselect._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_reset_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_out_phase0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_out_phase0._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_in_phase0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgin_qtag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgin_qtag._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgin_set_async._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgin_set_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgin_set_sync._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgin_set_sync._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgin_set_wide._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgin_reject._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_io_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_io_transfer._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_register_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_register_info._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_register_info._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_register_info._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_register_info._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 199, i32 256, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_register_info._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_register_info._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msgout_phase1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_safe_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_index_to_delay_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_eeprom_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_speed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_eeprom_settings._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_init_params.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_init_params.__key.226 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_print_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_print_config._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_print_config._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_print_config._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_print_config._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_print_config._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_print_config._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_print_config._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_print_config._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_print_config._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_print_config._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_sg_tables_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_init_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dc395x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @dc395x_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dc395x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @dc395x_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc395x_init_one(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b.i = load i1, ptr @banner_display.banner_done, align 4
  br i1 %.b.i, label %entry.banner_display.exit_crit_edge, label %do.end.i

entry.banner_display.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %banner_display.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #12
  store i1 true, ptr @banner_display.banner_done, align 4
  br label %banner_display.exit

banner_display.exit:                              ; preds = %do.end.i, %entry.banner_display.exit_crit_edge
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end3

do.end3:                                          ; preds = %banner_display.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %banner_display.exit
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  %and = and i32 %1, -4
  %end = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %sub = sub i32 1, %1
  %add = add i32 %sub, %3
  %cond = select i1 %cmp, i32 0, i32 %add
  %irq13 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %4 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq13, align 4
  %call17 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @dc395x_driver_template, i32 noundef 6452) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end49.thread, label %if.end25

if.end49.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %if.end52

if.end25:                                         ; preds = %if.end
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 53
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %hostdata, align 4
  %dev27 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 23
  %7 = ptrtoint ptr %dev27 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev27, align 4
  %call.i78 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %and, i32 noundef %cond, ptr noundef nonnull @.str, i32 noundef 0) #9
  %tobool.not.i = icmp eq ptr %call.i78, null
  br i1 %tobool.not.i, label %do.end.i79, label %if.end.i

do.end.i79:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %and) #12
  br label %failed.i

if.end.i:                                         ; preds = %if.end25
  %io_port_base.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %io_port_base.i, align 4
  %io_port_len2.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 1
  %9 = ptrtoint ptr %io_port_len2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %io_port_len2.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @dc395x_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %hostdata) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %if.end10.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #12
  br label %failed.i

if.end10.i:                                       ; preds = %if.end.i
  %irq_level.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 5, i32 5, i32 1, i32 1
  %10 = ptrtoint ptr %irq_level.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %irq_level.i, align 4
  %eeprom.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 3, i32 49, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  %add.i.i.i = add i32 %and, 212
  %and.i.i.i = and i32 %add.i.i.i, 1048572
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %11 = inttoptr i32 %add1.i.i.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !546
  %13 = or i8 %12, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %13) #9, !srcloc !547
  %add.i.i.i.i = add i32 %and, 214
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048574
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %14 = inttoptr i32 %add1.i.i.i.i to ptr
  %add.i.i.i.i.i = add i32 %and, 219
  %and.i.i.i.i.i = and i32 %add.i.i.i.i.i, 1048575
  %add1.i.i.i.i.i = or i32 %and.i.i.i.i.i, -18874368
  %15 = inttoptr i32 %add1.i.i.i.i.i to ptr
  %add2.i.i.i.i.i = add i32 %and, 213
  %and3.i.i.i.i.i = and i32 %add2.i.i.i.i.i, 1048573
  %add4.i.i.i.i.i = or i32 %and3.i.i.i.i.i, -18874368
  %16 = inttoptr i32 %add4.i.i.i.i.i to ptr
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %trms1040_get_data.exit.i.i.i.for.body.i.i.i_crit_edge, %if.end10.i
  %b_eeprom.036.i.i.i = phi ptr [ %eeprom.i, %if.end10.i ], [ %incdec.ptr.i.i.i, %trms1040_get_data.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %addr.035.i.i.i = phi i8 [ 0, %if.end10.i ], [ %inc.i.i.i, %trms1040_get_data.exit.i.i.i.for.body.i.i.i_crit_edge ]
  tail call fastcc void @trms1040_write_cmd(i32 noundef %and, i8 noundef zeroext 6, i8 noundef zeroext %addr.035.i.i.i) #9
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %trms1040_wait_30us.exit43.i.i.i.i.do.body.i.i.i.i_crit_edge, %for.body.i.i.i
  %i.045.i.i.i.i = phi i32 [ 0, %for.body.i.i.i ], [ %inc.i.i.i.i, %trms1040_wait_30us.exit43.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %result.044.i.i.i.i = phi i8 [ 0, %for.body.i.i.i ], [ %22, %trms1040_wait_30us.exit43.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !548
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 3) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 5) #9, !srcloc !547
  br label %while.cond.i.i.i.i.i

while.cond.i.i.i.i.i:                             ; preds = %while.cond.i.i.i.i.i.while.cond.i.i.i.i.i_crit_edge, %do.body.i.i.i.i
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i.i.i.i.i = icmp sgt i8 %17, -1
  br i1 %tobool.not.i.i.i.i.i, label %while.cond.i.i.i.i.i.while.cond.i.i.i.i.i_crit_edge, label %trms1040_wait_30us.exit.i.i.i.i

while.cond.i.i.i.i.i.while.cond.i.i.i.i.i_crit_edge: ; preds = %while.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i.i.i

trms1040_wait_30us.exit.i.i.i.i:                  ; preds = %while.cond.i.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !551
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 1) #9, !srcloc !547
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 5) #9, !srcloc !547
  br label %while.cond.i42.i.i.i.i

while.cond.i42.i.i.i.i:                           ; preds = %while.cond.i42.i.i.i.i.while.cond.i42.i.i.i.i_crit_edge, %trms1040_wait_30us.exit.i.i.i.i
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i41.i.i.i.i = icmp sgt i8 %19, -1
  br i1 %tobool.not.i41.i.i.i.i, label %while.cond.i42.i.i.i.i.while.cond.i42.i.i.i.i_crit_edge, label %trms1040_wait_30us.exit43.i.i.i.i

while.cond.i42.i.i.i.i.while.cond.i42.i.i.i.i_crit_edge: ; preds = %while.cond.i42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i42.i.i.i.i

trms1040_wait_30us.exit43.i.i.i.i:                ; preds = %while.cond.i42.i.i.i.i
  %20 = lshr i8 %18, 2
  %21 = and i8 %20, 1
  %shl.i.i.i.i = shl i8 %result.044.i.i.i.i, 1
  %22 = or i8 %21, %shl.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.045.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 8
  br i1 %exitcond.not.i.i.i.i, label %trms1040_get_data.exit.i.i.i, label %trms1040_wait_30us.exit43.i.i.i.i.do.body.i.i.i.i_crit_edge

trms1040_wait_30us.exit43.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %trms1040_wait_30us.exit43.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

trms1040_get_data.exit.i.i.i:                     ; preds = %trms1040_wait_30us.exit43.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !553
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #9, !srcloc !547
  %23 = ptrtoint ptr %b_eeprom.036.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %b_eeprom.036.i.i.i, align 1
  %inc.i.i.i = add nuw i8 %addr.035.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %b_eeprom.036.i.i.i, i32 1
  %cmp.i.i.i = icmp sgt i8 %inc.i.i.i, -1
  br i1 %cmp.i.i.i, label %trms1040_get_data.exit.i.i.i.for.body.i.i.i_crit_edge, label %trms1040_read_all.exit.i.i

trms1040_get_data.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %trms1040_get_data.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

trms1040_read_all.exit.i.i:                       ; preds = %trms1040_get_data.exit.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !554
  tail call void @arm_heavy_mb() #9
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !555
  %25 = and i8 %24, -17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %25) #9, !srcloc !547
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %trms1040_read_all.exit.i.i
  %w_eeprom.0175.i.i = phi ptr [ %eeprom.i, %trms1040_read_all.exit.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %cksum.0174.i.i = phi i32 [ 0, %trms1040_read_all.exit.i.i ], [ %phi.cast.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %w_addr.0173.i.i = phi i16 [ 0, %trms1040_read_all.exit.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %w_eeprom.0175.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %w_eeprom.0175.i.i, align 2
  %conv2.i.i = zext i16 %27 to i32
  %add.i.i = add nuw nsw i32 %cksum.0174.i.i, %conv2.i.i
  %inc.i.i = add nuw nsw i16 %w_addr.0173.i.i, 1
  %incdec.ptr.i.i = getelementptr i16, ptr %w_eeprom.0175.i.i, i32 1
  %phi.cast.i.i = and i32 %add.i.i, 65535
  %cmp.i.i = icmp ult i16 %w_addr.0173.i.i, 63
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4660, i32 %phi.cast.i.i)
  %cmp6.not.i.i = icmp eq i32 %phi.cast.i.i, 4660
  br i1 %cmp6.not.i.i, label %if.else.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.end.i.i
  %call.i58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216) #12
  %28 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -31, ptr %eeprom.i, align 2
  %arrayidx9.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 29, ptr %arrayidx9.i.i, align 1
  %sub_sys_id.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 1
  %30 = ptrtoint ptr %sub_sys_id.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -111, ptr %sub_sys_id.i.i, align 2
  %arrayidx12.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %arrayidx12.i.i, align 1
  %sub_class.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 3, i32 49, i32 31
  %32 = ptrtoint ptr %sub_class.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %sub_class.i.i, align 2
  %vendor_id.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 3
  %33 = ptrtoint ptr %vendor_id.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -31, ptr %vendor_id.i.i, align 1
  %arrayidx15.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 3, i32 1
  %34 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 29, ptr %arrayidx15.i.i, align 1
  %device_id.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 4
  %35 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -111, ptr %device_id.i.i, align 1
  %arrayidx18.i.i = getelementptr %struct.Scsi_Host, ptr %call17, i32 3, i32 49, i32 31, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %arrayidx18.i.i, align 1
  %reserved.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 5
  %37 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %reserved.i.i, align 1
  %target.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6
  %38 = ptrtoint ptr %target.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 119, ptr %target.i.i, align 4
  %incdec.ptr25.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 1
  %39 = ptrtoint ptr %incdec.ptr25.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 119, ptr %incdec.ptr25.i.i, align 4
  %incdec.ptr25.1.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 2
  %40 = ptrtoint ptr %incdec.ptr25.1.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 119, ptr %incdec.ptr25.1.i.i, align 4
  %incdec.ptr25.2.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 3
  %41 = ptrtoint ptr %incdec.ptr25.2.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 119, ptr %incdec.ptr25.2.i.i, align 4
  %incdec.ptr25.3.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 4
  %42 = ptrtoint ptr %incdec.ptr25.3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 119, ptr %incdec.ptr25.3.i.i, align 4
  %incdec.ptr25.4.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 5
  %43 = ptrtoint ptr %incdec.ptr25.4.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 119, ptr %incdec.ptr25.4.i.i, align 4
  %incdec.ptr25.5.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 6
  %44 = ptrtoint ptr %incdec.ptr25.5.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 119, ptr %incdec.ptr25.5.i.i, align 4
  %incdec.ptr25.6.i.i = getelementptr %struct.Scsi_Host, ptr %call17, i32 3, i32 49, i32 31, i32 0, i32 0, i32 4, i32 5
  %45 = ptrtoint ptr %incdec.ptr25.6.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 119, ptr %incdec.ptr25.6.i.i, align 4
  %incdec.ptr25.7.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 8
  %46 = ptrtoint ptr %incdec.ptr25.7.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 119, ptr %incdec.ptr25.7.i.i, align 4
  %incdec.ptr25.8.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 9
  %47 = ptrtoint ptr %incdec.ptr25.8.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 119, ptr %incdec.ptr25.8.i.i, align 4
  %incdec.ptr25.9.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 10
  %48 = ptrtoint ptr %incdec.ptr25.9.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 119, ptr %incdec.ptr25.9.i.i, align 4
  %incdec.ptr25.10.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 11
  %49 = ptrtoint ptr %incdec.ptr25.10.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 119, ptr %incdec.ptr25.10.i.i, align 4
  %incdec.ptr25.11.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 12
  %50 = ptrtoint ptr %incdec.ptr25.11.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 119, ptr %incdec.ptr25.11.i.i, align 4
  %incdec.ptr25.12.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 13
  %51 = ptrtoint ptr %incdec.ptr25.12.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 119, ptr %incdec.ptr25.12.i.i, align 4
  %incdec.ptr25.13.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 14
  %52 = ptrtoint ptr %incdec.ptr25.13.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 119, ptr %incdec.ptr25.13.i.i, align 4
  %incdec.ptr25.14.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 15
  %53 = ptrtoint ptr %incdec.ptr25.14.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 119, ptr %incdec.ptr25.14.i.i, align 4
  %incdec.ptr25.15.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 7
  %incdec.ptr27.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 11
  %54 = ptrtoint ptr %incdec.ptr25.15.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 67112711, ptr %incdec.ptr25.15.i.i, align 4
  %incdec.ptr28.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 15
  %55 = ptrtoint ptr %incdec.ptr27.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 21, ptr %incdec.ptr27.i.i, align 4
  %56 = call ptr @memset(ptr %incdec.ptr28.i.i, i32 0, i32 48)
  %57 = load i8, ptr @use_safe_settings, align 1, !range !556
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.set_safe_settings.exit.i.i_crit_edge, label %if.then.i.i.i

do.end.i.i.set_safe_settings.exit.i.i_crit_edge:  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_safe_settings.exit.i.i

if.then.i.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218) #12
  %58 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 0, i32 4), align 4
  store i32 %58, ptr @cfg_data, align 4
  %59 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 1, i32 4), align 4
  store i32 %59, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 1), align 4
  %60 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 2, i32 4), align 4
  store i32 %60, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 2), align 4
  %61 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 3, i32 4), align 4
  store i32 %61, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 3), align 4
  %62 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 4, i32 4), align 4
  store i32 %62, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 4), align 4
  %63 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 5, i32 4), align 4
  store i32 %63, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 5), align 4
  br label %set_safe_settings.exit.i.i

set_safe_settings.exit.i.i:                       ; preds = %if.then.i.i.i, %do.end.i.i.set_safe_settings.exit.i.i_crit_edge
  %64 = load i32, ptr @cfg_data, align 4
  %65 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %65)
  %cmp2.i.i.i = icmp slt i32 %64, %65
  br i1 %cmp2.i.i.i, label %set_safe_settings.exit.i.i.if.then.i94.i.i_crit_edge, label %lor.lhs.false.i.i.i

set_safe_settings.exit.i.i.if.then.i94.i.i_crit_edge: ; preds = %set_safe_settings.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i94.i.i

lor.lhs.false.i.i.i:                              ; preds = %set_safe_settings.exit.i.i
  %66 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp6.i.i.i = icmp sgt i32 %64, %66
  br i1 %cmp6.i.i.i, label %lor.lhs.false.i.i.i.if.then.i94.i.i_crit_edge, label %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge

lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

lor.lhs.false.i.i.i.if.then.i94.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i94.i.i

if.then.i94.i.i:                                  ; preds = %lor.lhs.false.i.i.i.if.then.i94.i.i_crit_edge, %set_safe_settings.exit.i.i.if.then.i94.i.i_crit_edge
  %67 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 0, i32 3), align 4
  store i32 %67, ptr @cfg_data, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i94.i.i, %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge
  %68 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 1), align 4
  %69 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %69)
  %cmp2.1.i.i.i = icmp slt i32 %68, %69
  br i1 %cmp2.1.i.i.i, label %for.inc.i.i.i.if.then.1.i.i.i_crit_edge, label %lor.lhs.false.1.i.i.i

for.inc.i.i.i.if.then.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.1.i.i.i

lor.lhs.false.1.i.i.i:                            ; preds = %for.inc.i.i.i
  %70 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp6.1.i.i.i = icmp sgt i32 %68, %70
  br i1 %cmp6.1.i.i.i, label %lor.lhs.false.1.i.i.i.if.then.1.i.i.i_crit_edge, label %lor.lhs.false.1.i.i.i.for.inc.1.i.i.i_crit_edge

lor.lhs.false.1.i.i.i.for.inc.1.i.i.i_crit_edge:  ; preds = %lor.lhs.false.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i.i

lor.lhs.false.1.i.i.i.if.then.1.i.i.i_crit_edge:  ; preds = %lor.lhs.false.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.1.i.i.i

if.then.1.i.i.i:                                  ; preds = %lor.lhs.false.1.i.i.i.if.then.1.i.i.i_crit_edge, %for.inc.i.i.i.if.then.1.i.i.i_crit_edge
  %71 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 1, i32 3), align 4
  store i32 %71, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 1), align 4
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.then.1.i.i.i, %lor.lhs.false.1.i.i.i.for.inc.1.i.i.i_crit_edge
  %72 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 2), align 4
  %73 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %73)
  %cmp2.2.i.i.i = icmp slt i32 %72, %73
  br i1 %cmp2.2.i.i.i, label %for.inc.1.i.i.i.if.then.2.i.i.i_crit_edge, label %lor.lhs.false.2.i.i.i

for.inc.1.i.i.i.if.then.2.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.2.i.i.i

lor.lhs.false.2.i.i.i:                            ; preds = %for.inc.1.i.i.i
  %74 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp6.2.i.i.i = icmp sgt i32 %72, %74
  br i1 %cmp6.2.i.i.i, label %lor.lhs.false.2.i.i.i.if.then.2.i.i.i_crit_edge, label %lor.lhs.false.2.i.i.i.for.inc.2.i.i.i_crit_edge

lor.lhs.false.2.i.i.i.for.inc.2.i.i.i_crit_edge:  ; preds = %lor.lhs.false.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i.i

lor.lhs.false.2.i.i.i.if.then.2.i.i.i_crit_edge:  ; preds = %lor.lhs.false.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.2.i.i.i

if.then.2.i.i.i:                                  ; preds = %lor.lhs.false.2.i.i.i.if.then.2.i.i.i_crit_edge, %for.inc.1.i.i.i.if.then.2.i.i.i_crit_edge
  %75 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 2, i32 3), align 4
  store i32 %75, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 2), align 4
  br label %for.inc.2.i.i.i

for.inc.2.i.i.i:                                  ; preds = %if.then.2.i.i.i, %lor.lhs.false.2.i.i.i.for.inc.2.i.i.i_crit_edge
  %76 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 3), align 4
  %77 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %77)
  %cmp2.3.i.i.i = icmp slt i32 %76, %77
  br i1 %cmp2.3.i.i.i, label %for.inc.2.i.i.i.if.then.3.i.i.i_crit_edge, label %lor.lhs.false.3.i.i.i

for.inc.2.i.i.i.if.then.3.i.i.i_crit_edge:        ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.3.i.i.i

lor.lhs.false.3.i.i.i:                            ; preds = %for.inc.2.i.i.i
  %78 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp6.3.i.i.i = icmp sgt i32 %76, %78
  br i1 %cmp6.3.i.i.i, label %lor.lhs.false.3.i.i.i.if.then.3.i.i.i_crit_edge, label %lor.lhs.false.3.i.i.i.for.inc.3.i.i.i_crit_edge

lor.lhs.false.3.i.i.i.for.inc.3.i.i.i_crit_edge:  ; preds = %lor.lhs.false.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i.i.i

lor.lhs.false.3.i.i.i.if.then.3.i.i.i_crit_edge:  ; preds = %lor.lhs.false.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.3.i.i.i

if.then.3.i.i.i:                                  ; preds = %lor.lhs.false.3.i.i.i.if.then.3.i.i.i_crit_edge, %for.inc.2.i.i.i.if.then.3.i.i.i_crit_edge
  %79 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 3, i32 3), align 4
  store i32 %79, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 3), align 4
  br label %for.inc.3.i.i.i

for.inc.3.i.i.i:                                  ; preds = %if.then.3.i.i.i, %lor.lhs.false.3.i.i.i.for.inc.3.i.i.i_crit_edge
  %80 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 4), align 4
  %81 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %81)
  %cmp2.4.i.i.i = icmp slt i32 %80, %81
  br i1 %cmp2.4.i.i.i, label %for.inc.3.i.i.i.if.then.4.i.i.i_crit_edge, label %lor.lhs.false.4.i.i.i

for.inc.3.i.i.i.if.then.4.i.i.i_crit_edge:        ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.4.i.i.i

lor.lhs.false.4.i.i.i:                            ; preds = %for.inc.3.i.i.i
  %82 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp6.4.i.i.i = icmp sgt i32 %80, %82
  br i1 %cmp6.4.i.i.i, label %lor.lhs.false.4.i.i.i.if.then.4.i.i.i_crit_edge, label %lor.lhs.false.4.i.i.i.for.inc.4.i.i.i_crit_edge

lor.lhs.false.4.i.i.i.for.inc.4.i.i.i_crit_edge:  ; preds = %lor.lhs.false.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.i.i.i

lor.lhs.false.4.i.i.i.if.then.4.i.i.i_crit_edge:  ; preds = %lor.lhs.false.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.4.i.i.i

if.then.4.i.i.i:                                  ; preds = %lor.lhs.false.4.i.i.i.if.then.4.i.i.i_crit_edge, %for.inc.3.i.i.i.if.then.4.i.i.i_crit_edge
  %83 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 4, i32 3), align 4
  store i32 %83, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 4), align 4
  br label %for.inc.4.i.i.i

for.inc.4.i.i.i:                                  ; preds = %if.then.4.i.i.i, %lor.lhs.false.4.i.i.i.for.inc.4.i.i.i_crit_edge
  %84 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 5), align 4
  %85 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %85)
  %cmp2.5.i.i.i = icmp slt i32 %84, %85
  br i1 %cmp2.5.i.i.i, label %for.inc.4.i.i.i.if.then.5.i.i.i_crit_edge, label %lor.lhs.false.5.i.i.i

for.inc.4.i.i.i.if.then.5.i.i.i_crit_edge:        ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.5.i.i.i

lor.lhs.false.5.i.i.i:                            ; preds = %for.inc.4.i.i.i
  %86 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp6.5.i.i.i = icmp sgt i32 %84, %86
  br i1 %cmp6.5.i.i.i, label %lor.lhs.false.5.i.i.i.if.then.5.i.i.i_crit_edge, label %lor.lhs.false.5.i.i.i.fix_settings.exit.i.i_crit_edge

lor.lhs.false.5.i.i.i.fix_settings.exit.i.i_crit_edge: ; preds = %lor.lhs.false.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fix_settings.exit.i.i

lor.lhs.false.5.i.i.i.if.then.5.i.i.i_crit_edge:  ; preds = %lor.lhs.false.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.5.i.i.i

if.then.5.i.i.i:                                  ; preds = %lor.lhs.false.5.i.i.i.if.then.5.i.i.i_crit_edge, %for.inc.4.i.i.i.if.then.5.i.i.i_crit_edge
  %87 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 5, i32 3), align 4
  store i32 %87, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 5), align 4
  br label %fix_settings.exit.i.i

fix_settings.exit.i.i:                            ; preds = %if.then.5.i.i.i, %lor.lhs.false.5.i.i.i.fix_settings.exit.i.i_crit_edge
  %88 = load i32, ptr @cfg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %cmp.not.i.i.i = icmp eq i32 %88, -1
  br i1 %cmp.not.i.i.i, label %fix_settings.exit.i.i.if.end.i.i.i_crit_edge, label %if.then.i95.i.i

fix_settings.exit.i.i.if.end.i.i.i_crit_edge:     ; preds = %fix_settings.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i95.i.i:                                  ; preds = %fix_settings.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = trunc i32 %88 to i8
  %89 = ptrtoint ptr %incdec.ptr25.15.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv.i.i.i, ptr %incdec.ptr25.15.i.i, align 2
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i95.i.i, %fix_settings.exit.i.i.if.end.i.i.i_crit_edge
  %90 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp1.not.i.i.i = icmp eq i32 %90, -1
  br i1 %cmp1.not.i.i.i, label %if.end.i.i.i.if.end5.i.i.i_crit_edge, label %if.then3.i.i.i

if.end.i.i.i.if.end5.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i.i.i = trunc i32 %90 to i8
  %channel_cfg.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 8
  %91 = ptrtoint ptr %channel_cfg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv4.i.i.i, ptr %channel_cfg.i.i.i, align 1
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then3.i.i.i, %if.end.i.i.i.if.end5.i.i.i_crit_edge
  %92 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %cmp6.not.i.i.i = icmp eq i32 %92, -1
  br i1 %cmp6.not.i.i.i, label %if.end5.i.i.i.if.end10.i.i.i_crit_edge, label %if.then8.i.i.i

if.end5.i.i.i.if.end10.i.i.i_crit_edge:           ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp3.i.i.i.i = icmp sgt i32 %92, 1
  br i1 %cmp3.i.i.i.i, label %while.cond.i.i.i.i, label %if.then8.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge

if.then8.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge: ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delay_to_eeprom_index.exit.i.i.i

while.cond.i.i.i.i:                               ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %92)
  %cmp3.1.i.i.i.i = icmp ugt i32 %92, 3
  br i1 %cmp3.1.i.i.i.i, label %while.cond.1.i.i.i.i, label %while.cond.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge

while.cond.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge: ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delay_to_eeprom_index.exit.i.i.i

while.cond.1.i.i.i.i:                             ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %92)
  %cmp3.2.i.i.i.i = icmp ugt i32 %92, 5
  br i1 %cmp3.2.i.i.i.i, label %while.cond.2.i.i.i.i, label %while.cond.1.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge

while.cond.1.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge: ; preds = %while.cond.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delay_to_eeprom_index.exit.i.i.i

while.cond.2.i.i.i.i:                             ; preds = %while.cond.1.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %92)
  %cmp3.3.i.i.i.i = icmp ugt i32 %92, 10
  br i1 %cmp3.3.i.i.i.i, label %while.cond.3.i.i.i.i, label %while.cond.2.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge

while.cond.2.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge: ; preds = %while.cond.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delay_to_eeprom_index.exit.i.i.i

while.cond.3.i.i.i.i:                             ; preds = %while.cond.2.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %92)
  %cmp3.4.i.i.i.i = icmp ugt i32 %92, 16
  br i1 %cmp3.4.i.i.i.i, label %while.cond.4.i.i.i.i, label %while.cond.3.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge

while.cond.3.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge: ; preds = %while.cond.3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delay_to_eeprom_index.exit.i.i.i

while.cond.4.i.i.i.i:                             ; preds = %while.cond.3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %92)
  %cmp3.5.i.i.i.i = icmp ugt i32 %92, 30
  br i1 %cmp3.5.i.i.i.i, label %while.cond.5.i.i.i.i, label %while.cond.4.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge

while.cond.4.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge: ; preds = %while.cond.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delay_to_eeprom_index.exit.i.i.i

while.cond.5.i.i.i.i:                             ; preds = %while.cond.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %92)
  %cmp3.6.i.i.i.i = icmp ugt i32 %92, 60
  %phi.cast.i.i.i = select i1 %cmp3.6.i.i.i.i, i8 7, i8 6
  br label %delay_to_eeprom_index.exit.i.i.i

delay_to_eeprom_index.exit.i.i.i:                 ; preds = %while.cond.5.i.i.i.i, %while.cond.4.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge, %while.cond.3.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge, %while.cond.2.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge, %while.cond.1.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge, %while.cond.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge, %if.then8.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge
  %conv.lcssa.i.i.i.i = phi i8 [ 0, %if.then8.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge ], [ 1, %while.cond.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge ], [ 2, %while.cond.1.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge ], [ 3, %while.cond.2.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge ], [ 4, %while.cond.3.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge ], [ 5, %while.cond.4.i.i.i.i.delay_to_eeprom_index.exit.i.i.i_crit_edge ], [ %phi.cast.i.i.i, %while.cond.5.i.i.i.i ]
  %delay_time.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 3, i32 49, i32 38
  %93 = ptrtoint ptr %delay_time.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv.lcssa.i.i.i.i, ptr %delay_time.i.i.i, align 2
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %delay_to_eeprom_index.exit.i.i.i, %if.end5.i.i.i.if.end10.i.i.i_crit_edge
  %94 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %cmp11.not.i.i.i = icmp eq i32 %94, -1
  br i1 %cmp11.not.i.i.i, label %if.end10.i.i.i.for.body.i96.i.i.preheader_crit_edge, label %if.then13.i.i.i

if.end10.i.i.i.for.body.i96.i.i.preheader_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i96.i.i.preheader

if.then13.i.i.i:                                  ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv14.i.i.i = trunc i32 %94 to i8
  %max_tag.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 10
  %95 = ptrtoint ptr %max_tag.i.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv14.i.i.i, ptr %max_tag.i.i.i, align 1
  br label %for.body.i96.i.i.preheader

for.body.i96.i.i.preheader:                       ; preds = %if.then13.i.i.i, %if.end10.i.i.i.for.body.i96.i.i.preheader_crit_edge
  br label %for.body.i96.i.i

for.body.i96.i.i:                                 ; preds = %for.inc.i97.i.i.for.body.i96.i.i_crit_edge, %for.body.i96.i.i.preheader
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %for.inc.i97.i.i.for.body.i96.i.i_crit_edge ], [ 0, %for.body.i96.i.i.preheader ]
  %96 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %cmp19.not.i.i.i = icmp eq i32 %96, -1
  br i1 %cmp19.not.i.i.i, label %for.body.i96.i.i.if.end23.i.i.i_crit_edge, label %if.then21.i.i.i

for.body.i96.i.i.if.end23.i.i.i_crit_edge:        ; preds = %for.body.i96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i.i.i

if.then21.i.i.i:                                  ; preds = %for.body.i96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv22.i.i.i = trunc i32 %96 to i8
  %arrayidx.i.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 %indvars.iv.i.i.i
  %97 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv22.i.i.i, ptr %arrayidx.i.i.i, align 2
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.then21.i.i.i, %for.body.i96.i.i.if.end23.i.i.i_crit_edge
  %98 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %98)
  %cmp24.not.i.i.i = icmp eq i32 %98, -1
  br i1 %cmp24.not.i.i.i, label %if.end23.i.i.i.for.inc.i97.i.i_crit_edge, label %if.then26.i.i.i

if.end23.i.i.i.for.inc.i97.i.i_crit_edge:         ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i97.i.i

if.then26.i.i.i:                                  ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv27.i.i.i = trunc i32 %98 to i8
  %period.i.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 %indvars.iv.i.i.i, i32 1
  %99 = ptrtoint ptr %period.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv27.i.i.i, ptr %period.i.i.i, align 1
  br label %for.inc.i97.i.i

for.inc.i97.i.i:                                  ; preds = %if.then26.i.i.i, %if.end23.i.i.i.for.inc.i97.i.i_crit_edge
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %eeprom_override.exit.i.i, label %for.inc.i97.i.i.for.body.i96.i.i_crit_edge

for.inc.i97.i.i.for.body.i96.i.i_crit_edge:       ; preds = %for.inc.i97.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i96.i.i

eeprom_override.exit.i.i:                         ; preds = %for.inc.i97.i.i
  %cksum37.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 16
  %100 = ptrtoint ptr %cksum37.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %cksum37.i.i, align 2
  br label %for.body42.i.i

for.body42.i.i:                                   ; preds = %for.body42.i.i.for.body42.i.i_crit_edge, %eeprom_override.exit.i.i
  %w_eeprom.1182.i.i = phi ptr [ %eeprom.i, %eeprom_override.exit.i.i ], [ %incdec.ptr49.i.i, %for.body42.i.i.for.body42.i.i_crit_edge ]
  %cksum.1181.i.i = phi i32 [ 0, %eeprom_override.exit.i.i ], [ %phi.cast93.i.i, %for.body42.i.i.for.body42.i.i_crit_edge ]
  %w_addr.1180.i.i = phi i16 [ 0, %eeprom_override.exit.i.i ], [ %inc48.i.i, %for.body42.i.i.for.body42.i.i_crit_edge ]
  %101 = ptrtoint ptr %w_eeprom.1182.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %w_eeprom.1182.i.i, align 2
  %conv43.i.i = zext i16 %102 to i32
  %add45.i.i = add nuw nsw i32 %cksum.1181.i.i, %conv43.i.i
  %inc48.i.i = add nuw nsw i16 %w_addr.1180.i.i, 1
  %incdec.ptr49.i.i = getelementptr i16, ptr %w_eeprom.1182.i.i, i32 1
  %phi.cast93.i.i = and i32 %add45.i.i, 65535
  %cmp40.i.i = icmp ult i16 %w_addr.1180.i.i, 62
  br i1 %cmp40.i.i, label %for.body42.i.i.for.body42.i.i_crit_edge, label %for.end50.i.i

for.body42.i.i.for.body42.i.i_crit_edge:          ; preds = %for.body42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42.i.i

for.end50.i.i:                                    ; preds = %for.body42.i.i
  %103 = trunc i32 %add45.i.i to i16
  %conv52.i.i = sub i16 4660, %103
  %104 = ptrtoint ptr %cksum37.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv52.i.i, ptr %cksum37.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !557
  tail call void @arm_heavy_mb() #9
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !558
  %106 = or i8 %105, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %106) #9, !srcloc !547
  tail call fastcc void @trms1040_write_cmd(i32 noundef %and, i8 noundef zeroext 4, i8 noundef zeroext -1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !559
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 5) #9, !srcloc !547
  br label %while.cond.i.i104.i.i

while.cond.i.i104.i.i:                            ; preds = %while.cond.i.i104.i.i.while.cond.i.i104.i.i_crit_edge, %for.end50.i.i
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i.i.i.i = icmp sgt i8 %107, -1
  br i1 %tobool.not.i.i.i.i, label %while.cond.i.i104.i.i.while.cond.i.i104.i.i_crit_edge, label %while.cond.i.i104.i.i.for.body.i105.i.i_crit_edge

while.cond.i.i104.i.i.for.body.i105.i.i_crit_edge: ; preds = %while.cond.i.i104.i.i
  br label %for.body.i105.i.i

while.cond.i.i104.i.i.while.cond.i.i104.i.i_crit_edge: ; preds = %while.cond.i.i104.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i104.i.i

for.body.i105.i.i:                                ; preds = %trms1040_set_data.exit.i.i.i.for.body.i105.i.i_crit_edge, %while.cond.i.i104.i.i.for.body.i105.i.i_crit_edge
  %b_eeprom.069.i.i.i = phi ptr [ %incdec.ptr.i113.i.i, %trms1040_set_data.exit.i.i.i.for.body.i105.i.i_crit_edge ], [ %eeprom.i, %while.cond.i.i104.i.i.for.body.i105.i.i_crit_edge ]
  %addr.068.i.i.i = phi i8 [ %inc.i112.i.i, %trms1040_set_data.exit.i.i.i.for.body.i105.i.i_crit_edge ], [ 0, %while.cond.i.i104.i.i.for.body.i105.i.i_crit_edge ]
  %108 = ptrtoint ptr %b_eeprom.069.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %b_eeprom.069.i.i.i, align 1
  tail call fastcc void @trms1040_write_cmd(i32 noundef %and, i8 noundef zeroext 5, i8 noundef zeroext %addr.068.i.i.i) #9
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %trms1040_wait_30us.exit97.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i105.i.i
  %byte.addr.0144.i.i.i.i = phi i8 [ %109, %for.body.i105.i.i ], [ %shl.i.i110.i.i, %trms1040_wait_30us.exit97.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %i.0143.i.i.i.i = phi i32 [ 0, %for.body.i105.i.i ], [ %inc.i.i109.i.i, %trms1040_wait_30us.exit97.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %byte.addr.0144.i.i.i.i)
  %tobool.not.i57.i.i.i = icmp sgt i8 %byte.addr.0144.i.i.i.i, -1
  %spec.select.i.i.i.i = select i1 %tobool.not.i57.i.i.i, i8 1, i8 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !560
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %spec.select.i.i.i.i) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 5) #9, !srcloc !547
  br label %while.cond.i.i.i107.i.i

while.cond.i.i.i107.i.i:                          ; preds = %while.cond.i.i.i107.i.i.while.cond.i.i.i107.i.i_crit_edge, %for.body.i.i.i.i
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i.i.i106.i.i = icmp sgt i8 %110, -1
  br i1 %tobool.not.i.i.i106.i.i, label %while.cond.i.i.i107.i.i.while.cond.i.i.i107.i.i_crit_edge, label %trms1040_wait_30us.exit.i.i108.i.i

while.cond.i.i.i107.i.i.while.cond.i.i.i107.i.i_crit_edge: ; preds = %while.cond.i.i.i107.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i107.i.i

trms1040_wait_30us.exit.i.i108.i.i:               ; preds = %while.cond.i.i.i107.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !561
  tail call void @arm_heavy_mb() #9
  %111 = or i8 %spec.select.i.i.i.i, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %111) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 5) #9, !srcloc !547
  br label %while.cond.i96.i.i.i.i

while.cond.i96.i.i.i.i:                           ; preds = %while.cond.i96.i.i.i.i.while.cond.i96.i.i.i.i_crit_edge, %trms1040_wait_30us.exit.i.i108.i.i
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i95.i.i.i.i = icmp sgt i8 %112, -1
  br i1 %tobool.not.i95.i.i.i.i, label %while.cond.i96.i.i.i.i.while.cond.i96.i.i.i.i_crit_edge, label %trms1040_wait_30us.exit97.i.i.i.i

while.cond.i96.i.i.i.i.while.cond.i96.i.i.i.i_crit_edge: ; preds = %while.cond.i96.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i96.i.i.i.i

trms1040_wait_30us.exit97.i.i.i.i:                ; preds = %while.cond.i96.i.i.i.i
  %inc.i.i109.i.i = add nuw nsw i32 %i.0143.i.i.i.i, 1
  %shl.i.i110.i.i = shl i8 %byte.addr.0144.i.i.i.i, 1
  %exitcond.not.i.i111.i.i = icmp eq i32 %inc.i.i109.i.i, 8
  br i1 %exitcond.not.i.i111.i.i, label %do.body17.i.i.i.i, label %trms1040_wait_30us.exit97.i.i.i.i.for.body.i.i.i.i_crit_edge

trms1040_wait_30us.exit97.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %trms1040_wait_30us.exit97.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

do.body17.i.i.i.i:                                ; preds = %trms1040_wait_30us.exit97.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !562
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 1) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 5) #9, !srcloc !547
  br label %while.cond.i105.i.i.i.i

while.cond.i105.i.i.i.i:                          ; preds = %while.cond.i105.i.i.i.i.while.cond.i105.i.i.i.i_crit_edge, %do.body17.i.i.i.i
  %113 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i104.i.i.i.i = icmp sgt i8 %113, -1
  br i1 %tobool.not.i104.i.i.i.i, label %while.cond.i105.i.i.i.i.while.cond.i105.i.i.i.i_crit_edge, label %trms1040_wait_30us.exit106.i.i.i.i

while.cond.i105.i.i.i.i.while.cond.i105.i.i.i.i_crit_edge: ; preds = %while.cond.i105.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i105.i.i.i.i

trms1040_wait_30us.exit106.i.i.i.i:               ; preds = %while.cond.i105.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !563
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 5) #9, !srcloc !547
  br label %while.cond.i114.i.i.i.i

while.cond.i114.i.i.i.i:                          ; preds = %while.cond.i114.i.i.i.i.while.cond.i114.i.i.i.i_crit_edge, %trms1040_wait_30us.exit106.i.i.i.i
  %114 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i113.i.i.i.i = icmp sgt i8 %114, -1
  br i1 %tobool.not.i113.i.i.i.i, label %while.cond.i114.i.i.i.i.while.cond.i114.i.i.i.i_crit_edge, label %trms1040_wait_30us.exit115.i.i.i.i

while.cond.i114.i.i.i.i.while.cond.i114.i.i.i.i_crit_edge: ; preds = %while.cond.i114.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i114.i.i.i.i

trms1040_wait_30us.exit115.i.i.i.i:               ; preds = %while.cond.i114.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !564
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 1) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 5) #9, !srcloc !547
  br label %while.cond.i123.i.i.i.i

while.cond.i123.i.i.i.i:                          ; preds = %while.cond.i123.i.i.i.i.while.cond.i123.i.i.i.i_crit_edge, %trms1040_wait_30us.exit115.i.i.i.i
  %115 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i122.i.i.i.i = icmp sgt i8 %115, -1
  br i1 %tobool.not.i122.i.i.i.i, label %while.cond.i123.i.i.i.i.while.cond.i123.i.i.i.i_crit_edge, label %while.cond.i123.i.i.i.i.while.cond.i58.i.i.i_crit_edge

while.cond.i123.i.i.i.i.while.cond.i58.i.i.i_crit_edge: ; preds = %while.cond.i123.i.i.i.i
  br label %while.cond.i58.i.i.i

while.cond.i123.i.i.i.i.while.cond.i123.i.i.i.i_crit_edge: ; preds = %while.cond.i123.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i123.i.i.i.i

while.cond.i58.i.i.i:                             ; preds = %trms1040_wait_30us.exit142.i.i.i.i.while.cond.i58.i.i.i_crit_edge, %while.cond.i123.i.i.i.i.while.cond.i58.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !565
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 3) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 5) #9, !srcloc !547
  br label %while.cond.i132.i.i.i.i

while.cond.i132.i.i.i.i:                          ; preds = %while.cond.i132.i.i.i.i.while.cond.i132.i.i.i.i_crit_edge, %while.cond.i58.i.i.i
  %116 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i131.i.i.i.i = icmp sgt i8 %116, -1
  br i1 %tobool.not.i131.i.i.i.i, label %while.cond.i132.i.i.i.i.while.cond.i132.i.i.i.i_crit_edge, label %trms1040_wait_30us.exit133.i.i.i.i

while.cond.i132.i.i.i.i.while.cond.i132.i.i.i.i_crit_edge: ; preds = %while.cond.i132.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i132.i.i.i.i

trms1040_wait_30us.exit133.i.i.i.i:               ; preds = %while.cond.i132.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !566
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 1) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 5) #9, !srcloc !547
  br label %while.cond.i141.i.i.i.i

while.cond.i141.i.i.i.i:                          ; preds = %while.cond.i141.i.i.i.i.while.cond.i141.i.i.i.i_crit_edge, %trms1040_wait_30us.exit133.i.i.i.i
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i140.i.i.i.i = icmp sgt i8 %117, -1
  br i1 %tobool.not.i140.i.i.i.i, label %while.cond.i141.i.i.i.i.while.cond.i141.i.i.i.i_crit_edge, label %trms1040_wait_30us.exit142.i.i.i.i

while.cond.i141.i.i.i.i.while.cond.i141.i.i.i.i_crit_edge: ; preds = %while.cond.i141.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i141.i.i.i.i

trms1040_wait_30us.exit142.i.i.i.i:               ; preds = %while.cond.i141.i.i.i.i
  %118 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !567
  %119 = and i8 %118, 4
  %tobool59.not.i.i.i.i = icmp eq i8 %119, 0
  br i1 %tobool59.not.i.i.i.i, label %trms1040_wait_30us.exit142.i.i.i.i.while.cond.i58.i.i.i_crit_edge, label %trms1040_set_data.exit.i.i.i

trms1040_wait_30us.exit142.i.i.i.i.while.cond.i58.i.i.i_crit_edge: ; preds = %trms1040_wait_30us.exit142.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i58.i.i.i

trms1040_set_data.exit.i.i.i:                     ; preds = %trms1040_wait_30us.exit142.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !568
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #9, !srcloc !547
  %inc.i112.i.i = add nuw i8 %addr.068.i.i.i, 1
  %incdec.ptr.i113.i.i = getelementptr i8, ptr %b_eeprom.069.i.i.i, i32 1
  %cmp.i114.i.i = icmp sgt i8 %inc.i112.i.i, -1
  br i1 %cmp.i114.i.i, label %trms1040_set_data.exit.i.i.i.for.body.i105.i.i_crit_edge, label %for.end.i.i.i

trms1040_set_data.exit.i.i.i.for.body.i105.i.i_crit_edge: ; preds = %trms1040_set_data.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i105.i.i

for.end.i.i.i:                                    ; preds = %trms1040_set_data.exit.i.i.i
  tail call fastcc void @trms1040_write_cmd(i32 noundef %and, i8 noundef zeroext 4, i8 noundef zeroext 0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !569
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 5) #9, !srcloc !547
  br label %while.cond.i66.i.i.i

while.cond.i66.i.i.i:                             ; preds = %while.cond.i66.i.i.i.while.cond.i66.i.i.i_crit_edge, %for.end.i.i.i
  %120 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i65.i.i.i = icmp sgt i8 %120, -1
  br i1 %tobool.not.i65.i.i.i, label %while.cond.i66.i.i.i.while.cond.i66.i.i.i_crit_edge, label %trms1040_write_all.exit.i.i

while.cond.i66.i.i.i.while.cond.i66.i.i.i_crit_edge: ; preds = %while.cond.i66.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i66.i.i.i

trms1040_write_all.exit.i.i:                      ; preds = %while.cond.i66.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !570
  tail call void @arm_heavy_mb() #9
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !571
  %122 = and i8 %121, -17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %122) #9, !srcloc !547
  %123 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 5), align 4
  %conv53.i.i = trunc i32 %123 to i8
  %delay_time.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 3, i32 49, i32 38
  %124 = ptrtoint ptr %delay_time.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv53.i.i, ptr %delay_time.i.i, align 2
  br label %check_eeprom.exit.i

if.else.i.i:                                      ; preds = %for.end.i.i
  %125 = load i8, ptr @use_safe_settings, align 1, !range !556
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i115.i.i = icmp eq i8 %125, 0
  br i1 %tobool.not.i115.i.i, label %if.else.i.i.set_safe_settings.exit119.i.i_crit_edge, label %if.then.i117.i.i

if.else.i.i.set_safe_settings.exit119.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_safe_settings.exit119.i.i

if.then.i117.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i116.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218) #12
  %126 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 0, i32 4), align 4
  store i32 %126, ptr @cfg_data, align 4
  %127 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 1, i32 4), align 4
  store i32 %127, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 1), align 4
  %128 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 2, i32 4), align 4
  store i32 %128, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 2), align 4
  %129 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 3, i32 4), align 4
  store i32 %129, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 3), align 4
  %130 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 4, i32 4), align 4
  store i32 %130, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 4), align 4
  %131 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 5, i32 4), align 4
  store i32 %131, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 5), align 4
  br label %set_safe_settings.exit119.i.i

set_safe_settings.exit119.i.i:                    ; preds = %if.then.i117.i.i, %if.else.i.i.set_safe_settings.exit119.i.i_crit_edge
  %delay_time.i120.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 3, i32 49, i32 38
  %132 = ptrtoint ptr %delay_time.i120.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %delay_time.i120.i.i, align 2
  %idxprom.i.i.i = zext i8 %133 to i32
  %arrayidx.i121.i.i = getelementptr [8 x i8], ptr @eeprom_index_to_delay_map, i32 0, i32 %idxprom.i.i.i
  %134 = ptrtoint ptr %arrayidx.i121.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i121.i.i, align 1
  store i8 %135, ptr %delay_time.i120.i.i, align 2
  %136 = load i32, ptr @cfg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %136)
  %cmp.not.i122.i.i = icmp eq i32 %136, -1
  br i1 %cmp.not.i122.i.i, label %set_safe_settings.exit119.i.i.if.end.i127.i.i_crit_edge, label %if.then.i125.i.i

set_safe_settings.exit119.i.i.if.end.i127.i.i_crit_edge: ; preds = %set_safe_settings.exit119.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i127.i.i

if.then.i125.i.i:                                 ; preds = %set_safe_settings.exit119.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i123.i.i = trunc i32 %136 to i8
  %scsi_id.i124.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 7
  %137 = ptrtoint ptr %scsi_id.i124.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv.i123.i.i, ptr %scsi_id.i124.i.i, align 2
  br label %if.end.i127.i.i

if.end.i127.i.i:                                  ; preds = %if.then.i125.i.i, %set_safe_settings.exit119.i.i.if.end.i127.i.i_crit_edge
  %138 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %138)
  %cmp1.not.i126.i.i = icmp eq i32 %138, -1
  br i1 %cmp1.not.i126.i.i, label %if.end.i127.i.i.if.end5.i132.i.i_crit_edge, label %if.then3.i130.i.i

if.end.i127.i.i.if.end5.i132.i.i_crit_edge:       ; preds = %if.end.i127.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i132.i.i

if.then3.i130.i.i:                                ; preds = %if.end.i127.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i128.i.i = trunc i32 %138 to i8
  %channel_cfg.i129.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 8
  %139 = ptrtoint ptr %channel_cfg.i129.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv4.i128.i.i, ptr %channel_cfg.i129.i.i, align 1
  br label %if.end5.i132.i.i

if.end5.i132.i.i:                                 ; preds = %if.then3.i130.i.i, %if.end.i127.i.i.if.end5.i132.i.i_crit_edge
  %140 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %140)
  %cmp6.not.i131.i.i = icmp eq i32 %140, -1
  br i1 %cmp6.not.i131.i.i, label %if.end5.i132.i.i.if.end10.i152.i.i_crit_edge, label %if.then8.i134.i.i

if.end5.i132.i.i.if.end10.i152.i.i_crit_edge:     ; preds = %if.end5.i132.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i152.i.i

if.then8.i134.i.i:                                ; preds = %if.end5.i132.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %140)
  %cmp3.i.i133.i.i = icmp sgt i32 %140, 1
  br i1 %cmp3.i.i133.i.i, label %while.cond.i.i136.i.i, label %if.then8.i134.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge

if.then8.i134.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge: ; preds = %if.then8.i134.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delay_to_eeprom_index.exit.i150.i.i

while.cond.i.i136.i.i:                            ; preds = %if.then8.i134.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %140)
  %cmp3.1.i.i135.i.i = icmp ugt i32 %140, 3
  br i1 %cmp3.1.i.i135.i.i, label %while.cond.1.i.i138.i.i, label %while.cond.i.i136.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge

while.cond.i.i136.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge: ; preds = %while.cond.i.i136.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delay_to_eeprom_index.exit.i150.i.i

while.cond.1.i.i138.i.i:                          ; preds = %while.cond.i.i136.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %140)
  %cmp3.2.i.i137.i.i = icmp ugt i32 %140, 5
  br i1 %cmp3.2.i.i137.i.i, label %while.cond.2.i.i140.i.i, label %while.cond.1.i.i138.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge

while.cond.1.i.i138.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge: ; preds = %while.cond.1.i.i138.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delay_to_eeprom_index.exit.i150.i.i

while.cond.2.i.i140.i.i:                          ; preds = %while.cond.1.i.i138.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %140)
  %cmp3.3.i.i139.i.i = icmp ugt i32 %140, 10
  br i1 %cmp3.3.i.i139.i.i, label %while.cond.3.i.i142.i.i, label %while.cond.2.i.i140.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge

while.cond.2.i.i140.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge: ; preds = %while.cond.2.i.i140.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delay_to_eeprom_index.exit.i150.i.i

while.cond.3.i.i142.i.i:                          ; preds = %while.cond.2.i.i140.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %140)
  %cmp3.4.i.i141.i.i = icmp ugt i32 %140, 16
  br i1 %cmp3.4.i.i141.i.i, label %while.cond.4.i.i144.i.i, label %while.cond.3.i.i142.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge

while.cond.3.i.i142.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge: ; preds = %while.cond.3.i.i142.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delay_to_eeprom_index.exit.i150.i.i

while.cond.4.i.i144.i.i:                          ; preds = %while.cond.3.i.i142.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %140)
  %cmp3.5.i.i143.i.i = icmp ugt i32 %140, 30
  br i1 %cmp3.5.i.i143.i.i, label %while.cond.5.i.i147.i.i, label %while.cond.4.i.i144.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge

while.cond.4.i.i144.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge: ; preds = %while.cond.4.i.i144.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delay_to_eeprom_index.exit.i150.i.i

while.cond.5.i.i147.i.i:                          ; preds = %while.cond.4.i.i144.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %140)
  %cmp3.6.i.i145.i.i = icmp ugt i32 %140, 60
  %phi.cast.i146.i.i = select i1 %cmp3.6.i.i145.i.i, i8 7, i8 6
  br label %delay_to_eeprom_index.exit.i150.i.i

delay_to_eeprom_index.exit.i150.i.i:              ; preds = %while.cond.5.i.i147.i.i, %while.cond.4.i.i144.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge, %while.cond.3.i.i142.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge, %while.cond.2.i.i140.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge, %while.cond.1.i.i138.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge, %while.cond.i.i136.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge, %if.then8.i134.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge
  %conv.lcssa.i.i148.i.i = phi i8 [ 0, %if.then8.i134.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge ], [ 1, %while.cond.i.i136.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge ], [ 2, %while.cond.1.i.i138.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge ], [ 3, %while.cond.2.i.i140.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge ], [ 4, %while.cond.3.i.i142.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge ], [ 5, %while.cond.4.i.i144.i.i.delay_to_eeprom_index.exit.i150.i.i_crit_edge ], [ %phi.cast.i146.i.i, %while.cond.5.i.i147.i.i ]
  %141 = ptrtoint ptr %delay_time.i120.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv.lcssa.i.i148.i.i, ptr %delay_time.i120.i.i, align 2
  br label %if.end10.i152.i.i

if.end10.i152.i.i:                                ; preds = %delay_to_eeprom_index.exit.i150.i.i, %if.end5.i132.i.i.if.end10.i152.i.i_crit_edge
  %142 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %142)
  %cmp11.not.i151.i.i = icmp eq i32 %142, -1
  br i1 %cmp11.not.i151.i.i, label %if.end10.i152.i.i.for.body.i159.i.i.preheader_crit_edge, label %if.then13.i155.i.i

if.end10.i152.i.i.for.body.i159.i.i.preheader_crit_edge: ; preds = %if.end10.i152.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i159.i.i.preheader

if.then13.i155.i.i:                               ; preds = %if.end10.i152.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv14.i153.i.i = trunc i32 %142 to i8
  %max_tag.i154.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 10
  %143 = ptrtoint ptr %max_tag.i154.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv14.i153.i.i, ptr %max_tag.i154.i.i, align 1
  br label %for.body.i159.i.i.preheader

for.body.i159.i.i.preheader:                      ; preds = %if.then13.i155.i.i, %if.end10.i152.i.i.for.body.i159.i.i.preheader_crit_edge
  br label %for.body.i159.i.i

for.body.i159.i.i:                                ; preds = %for.inc.i170.i.i.for.body.i159.i.i_crit_edge, %for.body.i159.i.i.preheader
  %indvars.iv.i157.i.i = phi i32 [ %indvars.iv.next.i168.i.i, %for.inc.i170.i.i.for.body.i159.i.i_crit_edge ], [ 0, %for.body.i159.i.i.preheader ]
  %144 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %144)
  %cmp19.not.i158.i.i = icmp eq i32 %144, -1
  br i1 %cmp19.not.i158.i.i, label %for.body.i159.i.i.if.end23.i164.i.i_crit_edge, label %if.then21.i162.i.i

for.body.i159.i.i.if.end23.i164.i.i_crit_edge:    ; preds = %for.body.i159.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i164.i.i

if.then21.i162.i.i:                               ; preds = %for.body.i159.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv22.i160.i.i = trunc i32 %144 to i8
  %arrayidx.i161.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 %indvars.iv.i157.i.i
  %145 = ptrtoint ptr %arrayidx.i161.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv22.i160.i.i, ptr %arrayidx.i161.i.i, align 2
  br label %if.end23.i164.i.i

if.end23.i164.i.i:                                ; preds = %if.then21.i162.i.i, %for.body.i159.i.i.if.end23.i164.i.i_crit_edge
  %146 = load i32, ptr getelementptr inbounds ([6 x %struct.ParameterData], ptr @cfg_data, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %146)
  %cmp24.not.i163.i.i = icmp eq i32 %146, -1
  br i1 %cmp24.not.i163.i.i, label %if.end23.i164.i.i.for.inc.i170.i.i_crit_edge, label %if.then26.i167.i.i

if.end23.i164.i.i.for.inc.i170.i.i_crit_edge:     ; preds = %if.end23.i164.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i170.i.i

if.then26.i167.i.i:                               ; preds = %if.end23.i164.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv27.i165.i.i = trunc i32 %146 to i8
  %period.i166.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 %indvars.iv.i157.i.i, i32 1
  %147 = ptrtoint ptr %period.i166.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv27.i165.i.i, ptr %period.i166.i.i, align 1
  br label %for.inc.i170.i.i

for.inc.i170.i.i:                                 ; preds = %if.then26.i167.i.i, %if.end23.i164.i.i.for.inc.i170.i.i_crit_edge
  %indvars.iv.next.i168.i.i = add nuw nsw i32 %indvars.iv.i157.i.i, 1
  %exitcond.not.i169.i.i = icmp eq i32 %indvars.iv.next.i168.i.i, 16
  br i1 %exitcond.not.i169.i.i, label %for.inc.i170.i.i.check_eeprom.exit.i_crit_edge, label %for.inc.i170.i.i.for.body.i159.i.i_crit_edge

for.inc.i170.i.i.for.body.i159.i.i_crit_edge:     ; preds = %for.inc.i170.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i159.i.i

for.inc.i170.i.i.check_eeprom.exit.i_crit_edge:   ; preds = %for.inc.i170.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_eeprom.exit.i

check_eeprom.exit.i:                              ; preds = %for.inc.i170.i.i.check_eeprom.exit.i_crit_edge, %trms1040_write_all.exit.i.i
  %scsi_id.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 7
  %148 = ptrtoint ptr %scsi_id.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %scsi_id.i.i, align 2
  %conv.i.i = zext i8 %149 to i32
  %target.i59.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6
  %period.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 0, i32 1
  %150 = ptrtoint ptr %period.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %period.i.i, align 1
  %conv1.i.i = zext i8 %151 to i32
  %arrayidx5.i.i = getelementptr [8 x i16], ptr @clock_speed, i32 0, i32 %conv1.i.i
  %152 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx5.i.i, align 2
  %.frozen = freeze i16 %153
  %div33.i.i = udiv i16 %.frozen, 10
  %div.zext.i.i = zext i16 %div33.i.i to i32
  %154 = mul i16 %div33.i.i, 10
  %rem34.i.i.decomposed = sub i16 %.frozen, %154
  %rem.zext.i.i = zext i16 %rem34.i.i.decomposed to i32
  %155 = ptrtoint ptr %target.i59.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %target.i59.i, align 2
  %conv15.i.i = zext i8 %156 to i32
  %call.i60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, i32 noundef %conv.i.i, i32 noundef %conv1.i.i, i32 noundef %div.zext.i.i, i32 noundef %rem.zext.i.i, i32 noundef %conv15.i.i) #12
  %channel_cfg.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 8
  %157 = ptrtoint ptr %channel_cfg.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %channel_cfg.i.i, align 1
  %conv19.i.i = zext i8 %158 to i32
  %max_tag.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 10
  %159 = ptrtoint ptr %max_tag.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %max_tag.i.i, align 1
  %conv20.i.i = zext i8 %160 to i32
  %shl.i.i = shl nuw i32 1, %conv20.i.i
  %delay_time.i61.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 3, i32 49, i32 38
  %161 = ptrtoint ptr %delay_time.i61.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %delay_time.i61.i, align 2
  %conv23.i.i = zext i8 %162 to i32
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, i32 noundef %conv19.i.i, i32 noundef %conv20.i.i, i32 noundef %shl.i.i, i32 noundef %conv23.i.i) #12
  %dcb_list.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 1, i32 1
  %163 = ptrtoint ptr %dcb_list.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %dcb_list.i.i, ptr %dcb_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 2
  %164 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %dcb_list.i.i, ptr %prev.i.i.i, align 4
  %dcb_run_robin.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 2, i32 1
  %165 = ptrtoint ptr %dcb_run_robin.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %dcb_run_robin.i.i, align 4
  %active_dcb.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 3
  %166 = ptrtoint ptr %active_dcb.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %active_dcb.i.i, align 4
  %srb_free_list.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 3, i32 0, i32 0, i32 1
  %167 = ptrtoint ptr %srb_free_list.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %srb_free_list.i.i, ptr %srb_free_list.i.i, align 4
  %prev.i66.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 3, i32 0, i32 0, i32 2
  %168 = ptrtoint ptr %prev.i66.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %srb_free_list.i.i, ptr %prev.i66.i.i, align 4
  %srb.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 26
  %tmp_srb.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 3, i32 0, i32 0, i32 3
  %169 = ptrtoint ptr %tmp_srb.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %srb.i.i, ptr %tmp_srb.i.i, align 4
  %waiting_timer.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 3, i32 0, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %waiting_timer.i.i, ptr noundef nonnull @waiting_timeout, i32 noundef 0, ptr noundef nonnull @.str.225, ptr noundef nonnull @adapter_init_params.__key) #9
  %selto_timer.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 5, i32 1, i32 3
  tail call void @init_timer_key(ptr noundef %selto_timer.i.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.227, ptr noundef nonnull @adapter_init_params.__key.226) #9
  %srb_count.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 5, i32 5, i32 1
  %170 = ptrtoint ptr %srb_count.i.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 63, ptr %srb_count.i.i, align 4
  %sel_timeout.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 12
  %171 = ptrtoint ptr %sel_timeout.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 -103, ptr %sel_timeout.i.i, align 2
  %172 = ptrtoint ptr %max_tag.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %max_tag.i.i, align 1
  %conv.i63.i = zext i8 %173 to i32
  %shl.i64.i = shl nuw i32 1, %conv.i63.i
  %conv5.i.i = trunc i32 %shl.i64.i to i8
  %tag_max_num.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 5, i32 5, i32 2
  %conv7.i.i = and i32 %shl.i64.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %conv7.i.i)
  %cmp.i65.i = icmp ugt i32 %conv7.i.i, 30
  %spec.select.i.i = select i1 %cmp.i65.i, i8 30, i8 %conv5.i.i
  %174 = ptrtoint ptr %tag_max_num.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %spec.select.i.i, ptr %tag_max_num.i.i, align 4
  %acb_flag.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 15
  %175 = ptrtoint ptr %acb_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %acb_flag.i.i, align 1
  %176 = ptrtoint ptr %channel_cfg.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %channel_cfg.i.i, align 1
  %gmode2.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 16
  %178 = ptrtoint ptr %gmode2.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %gmode2.i.i, align 2
  %config.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 17
  %179 = ptrtoint ptr %config.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %config.i.i, align 1
  %180 = and i8 %177, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool.not.i.i = icmp eq i8 %180, 0
  br i1 %tobool.not.i.i, label %check_eeprom.exit.i.if.end13.i.i_crit_edge, label %if.then12.i.i

check_eeprom.exit.i.if.end13.i.i_crit_edge:       ; preds = %check_eeprom.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i

if.then12.i.i:                                    ; preds = %check_eeprom.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %lun_chk.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 5, i32 5, i32 3
  %181 = ptrtoint ptr %lun_chk.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 1, ptr %lun_chk.i.i, align 4
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then12.i.i, %check_eeprom.exit.i.if.end13.i.i_crit_edge
  %scan_devices.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 5, i32 5, i32 4
  %182 = ptrtoint ptr %scan_devices.i.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 1, ptr %scan_devices.i.i, align 1
  %183 = ptrtoint ptr %scsi_id.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %scsi_id.i.i, align 2
  %conv14.i.i = zext i8 %184 to i32
  %185 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hostdata, align 4
  %this_id.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %186, i32 0, i32 25
  %187 = ptrtoint ptr %this_id.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %conv14.i.i, ptr %this_id.i.i, align 8
  %188 = load ptr, ptr %hostdata, align 4
  %this_id16.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %188, i32 0, i32 25
  %189 = ptrtoint ptr %this_id16.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %this_id16.i.i, align 8
  %shl17.i.i = shl nuw i32 1, %190
  %conv18.i.i = trunc i32 %shl17.i.i to i8
  %hostid_bit.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 5, i32 5, i32 5
  %191 = ptrtoint ptr %hostid_bit.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %conv18.i.i, ptr %hostid_bit.i.i, align 2
  %uglygep.i.i = getelementptr i8, ptr %hostdata, i32 155
  %192 = call ptr @memset(ptr %uglygep.i.i, i32 0, i32 16)
  %msg_len.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 50, i32 12, i32 23
  %193 = ptrtoint ptr %msg_len.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %msg_len.i.i, align 4
  %194 = ptrtoint ptr %srb_count.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %srb_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %195)
  %cmp2471.i.i = icmp ugt i16 %195, 1
  br i1 %cmp2471.i.i, label %if.end13.i.i.for.body26.i.i_crit_edge, label %if.end13.i.i.adapter_init_params.exit.i_crit_edge

if.end13.i.i.adapter_init_params.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adapter_init_params.exit.i

if.end13.i.i.for.body26.i.i_crit_edge:            ; preds = %if.end13.i.i
  br label %for.body26.i.i

for.body26.i.i:                                   ; preds = %list_add_tail.exit.i.i.for.body26.i.i_crit_edge, %if.end13.i.i.for.body26.i.i_crit_edge
  %i.172.i.i = phi i32 [ %inc30.i.i, %list_add_tail.exit.i.i.for.body26.i.i_crit_edge ], [ 0, %if.end13.i.i.for.body26.i.i_crit_edge ]
  %arrayidx27.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 25, i32 %i.172.i.i
  %196 = ptrtoint ptr %prev.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %prev.i66.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx27.i.i, ptr noundef %197, ptr noundef %srb_free_list.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body26.i.i.list_add_tail.exit.i.i_crit_edge

for.body26.i.i.list_add_tail.exit.i.i_crit_edge:  ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %198 = ptrtoint ptr %prev.i66.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %arrayidx27.i.i, ptr %prev.i66.i.i, align 4
  %199 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %srb_free_list.i.i, ptr %arrayidx27.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx27.i.i, i32 0, i32 1
  %200 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %197, ptr %prev3.i.i.i.i, align 4
  %201 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile ptr %arrayidx27.i.i, ptr %197, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %for.body26.i.i.list_add_tail.exit.i.i_crit_edge
  %inc30.i.i = add nuw nsw i32 %i.172.i.i, 1
  %202 = ptrtoint ptr %srb_count.i.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %srb_count.i.i, align 4
  %conv23.i68.i = zext i16 %203 to i32
  %sub.i.i = add nsw i32 %conv23.i68.i, -1
  %cmp24.i.i = icmp slt i32 %inc30.i.i, %sub.i.i
  br i1 %cmp24.i.i, label %list_add_tail.exit.i.i.for.body26.i.i_crit_edge, label %list_add_tail.exit.i.i.adapter_init_params.exit.i_crit_edge

list_add_tail.exit.i.i.adapter_init_params.exit.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adapter_init_params.exit.i

list_add_tail.exit.i.i.for.body26.i.i_crit_edge:  ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26.i.i

adapter_init_params.exit.i:                       ; preds = %list_add_tail.exit.i.i.adapter_init_params.exit.i_crit_edge, %if.end13.i.i.adapter_init_params.exit.i_crit_edge
  %204 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %io_port_base.i, align 4
  %add.i69.i = add i32 %205, 213
  %and.i.i = and i32 %add.i69.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %206 = inttoptr i32 %add1.i.i to ptr
  %207 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %206) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !572
  %conv.i70.i = zext i8 %207 to i32
  %and4.i.i = and i32 %conv.i70.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool.not.i71.i = icmp eq i32 %and4.i.i, 0
  %cond.i.i = select i1 %tobool.not.i71.i, ptr @.str.75, ptr @.str.230
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, ptr noundef nonnull %cond.i.i) #12
  %and7.i.i = and i32 %conv.i70.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %do.end11.i.i, label %adapter_init_params.exit.i.if.end.i.i_crit_edge

adapter_init_params.exit.i.if.end.i.i_crit_edge:  ; preds = %adapter_init_params.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.end11.i.i:                                     ; preds = %adapter_init_params.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %and14.i.i = and i32 %conv.i70.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  %cond16.i.i = select i1 %tobool15.not.i.i, ptr @.str.234, ptr @.str.235
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, ptr noundef nonnull %cond16.i.i) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end11.i.i, %adapter_init_params.exit.i.if.end.i.i_crit_edge
  %and19.i.i = and i32 %conv.i70.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %do.end24.i.i, label %if.end.i.i.if.end32.i.i_crit_edge

if.end.i.i.if.end32.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i.i

do.end24.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and27.i.i = and i32 %conv.i70.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  %cond30.i.i = select i1 %tobool28.not.i.i, ptr @.str.75, ptr @.str.239
  %call31.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, ptr noundef nonnull %cond30.i.i) #12
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %do.end24.i.i, %if.end.i.i.if.end32.i.i_crit_edge
  %and34.i.i = and i32 %conv.i70.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %do.end39.i.i, label %if.end32.i.i.if.end42.i.i_crit_edge

if.end32.i.i.if.end42.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i.i

do.end39.i.i:                                     ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call41.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241) #12
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %do.end39.i.i, %if.end32.i.i.if.end42.i.i_crit_edge
  %and44.i.i = and i32 %conv.i70.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.i)
  %cmp.i72.i = icmp eq i32 %and44.i.i, 0
  br i1 %cmp.i72.i, label %do.end49.i.i, label %if.end42.i.i.if.end52.i.i_crit_edge

if.end42.i.i.if.end52.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i.i

do.end49.i.i:                                     ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call51.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244) #12
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %do.end49.i.i, %if.end42.i.i.if.end52.i.i_crit_edge
  %208 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %io_port_base.i, align 4
  %add55.i.i = add i32 %209, 212
  %and56.i.i = and i32 %add55.i.i, 1048575
  %add57.i.i = or i32 %and56.i.i, -18874368
  %210 = inttoptr i32 %add57.i.i to ptr
  %211 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %210) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !573
  %call65.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247) #12
  %conv66.i.i = zext i8 %211 to i32
  %and67.i.i = and i32 %conv66.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i.i)
  %tobool68.not.i.i = icmp eq i32 %and67.i.i, 0
  br i1 %tobool68.not.i.i, label %if.else.i73.i, label %if.end52.i.i.adapter_print_config.exit.i_crit_edge

if.end52.i.i.adapter_print_config.exit.i_crit_edge: ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adapter_print_config.exit.i

if.else.i73.i:                                    ; preds = %if.end52.i.i
  %and76.i.i = and i32 %conv66.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i.i)
  %tobool77.not.i.i = icmp eq i32 %and76.i.i, 0
  br i1 %tobool77.not.i.i, label %if.else.i73.i.if.end84.i.i_crit_edge, label %do.end81.i.i

if.else.i73.i.if.end84.i.i_crit_edge:             ; preds = %if.else.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i.i

do.end81.i.i:                                     ; preds = %if.else.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  %call83.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253) #12
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %do.end81.i.i, %if.else.i73.i.if.end84.i.i_crit_edge
  %and86.i.i = and i32 %conv66.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i.i)
  %tobool87.not.i.i = icmp eq i32 %and86.i.i, 0
  br i1 %tobool87.not.i.i, label %if.end84.i.i.if.end94.i.i_crit_edge, label %do.end91.i.i

if.end84.i.i.if.end94.i.i_crit_edge:              ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i.i

do.end91.i.i:                                     ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call93.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.256) #12
  br label %if.end94.i.i

if.end94.i.i:                                     ; preds = %do.end91.i.i, %if.end84.i.i.if.end94.i.i_crit_edge
  %and96.i.i = and i32 %conv66.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i.i)
  %tobool97.not.i.i = icmp eq i32 %and96.i.i, 0
  br i1 %tobool97.not.i.i, label %if.end94.i.i.adapter_print_config.exit.i_crit_edge, label %do.end101.i.i

if.end94.i.i.adapter_print_config.exit.i_crit_edge: ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adapter_print_config.exit.i

do.end101.i.i:                                    ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call103.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259) #12
  br label %adapter_print_config.exit.i

adapter_print_config.exit.i:                      ; preds = %do.end101.i.i, %if.end94.i.i.adapter_print_config.exit.i_crit_edge, %if.end52.i.i.adapter_print_config.exit.i_crit_edge
  %.str.69.sink.i.i = phi ptr [ @.str.250, %if.end52.i.i.adapter_print_config.exit.i_crit_edge ], [ @.str.69, %if.end94.i.i.adapter_print_config.exit.i_crit_edge ], [ @.str.69, %do.end101.i.i ]
  %call109.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.69.sink.i.i) #12
  br label %for.body.i75.i

for.body.i75.i:                                   ; preds = %for.body.i75.i.for.body.i75.i_crit_edge, %adapter_print_config.exit.i
  %i.044.i.i = phi i32 [ 0, %adapter_print_config.exit.i ], [ %inc.i74.i, %for.body.i75.i.for.body.i75.i_crit_edge ]
  %segment_x.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 25, i32 %i.044.i.i, i32 3
  %212 = ptrtoint ptr %segment_x.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr null, ptr %segment_x.i.i, align 4
  %inc.i74.i = add nuw nsw i32 %i.044.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i74.i, 63
  br i1 %exitcond.not.i.i, label %for.body.i75.i.while.body.outer.i.i_crit_edge, label %for.body.i75.i.for.body.i75.i_crit_edge

for.body.i75.i.for.body.i75.i_crit_edge:          ; preds = %for.body.i75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i75.i

for.body.i75.i.while.body.outer.i.i_crit_edge:    ; preds = %for.body.i75.i
  br label %while.body.outer.i.i

while.cond.loopexit.i.i:                          ; preds = %while.body8.i.i.7, %while.body8.i.i.6.while.cond.loopexit.i.i_crit_edge, %while.body8.i.i.5.while.cond.loopexit.i.i_crit_edge, %while.body8.i.i.4.while.cond.loopexit.i.i_crit_edge, %while.body8.i.i.3.while.cond.loopexit.i.i_crit_edge, %while.body8.i.i.2.while.cond.loopexit.i.i_crit_edge, %while.body8.i.i.1.while.cond.loopexit.i.i_crit_edge, %while.body8.preheader.i.i.while.cond.loopexit.i.i_crit_edge
  %inc11.i.i.lcssa = phi i32 [ %inc11.i.i, %while.body8.preheader.i.i.while.cond.loopexit.i.i_crit_edge ], [ %inc11.i.i.1, %while.body8.i.i.1.while.cond.loopexit.i.i_crit_edge ], [ %inc11.i.i.2, %while.body8.i.i.2.while.cond.loopexit.i.i_crit_edge ], [ %inc11.i.i.3, %while.body8.i.i.3.while.cond.loopexit.i.i_crit_edge ], [ %inc11.i.i.4, %while.body8.i.i.4.while.cond.loopexit.i.i_crit_edge ], [ %inc11.i.i.5, %while.body8.i.i.5.while.cond.loopexit.i.i_crit_edge ], [ %inc11.i.i.6, %while.body8.i.i.6.while.cond.loopexit.i.i_crit_edge ], [ %inc11.i.i.7, %while.body8.i.i.7 ]
  %dec.i.i = add nsw i32 %dec51.ph.i.i, -1
  %tobool.not.i76.i = icmp eq i32 %dec51.ph.i.i, 0
  br i1 %tobool.not.i76.i, label %while.end14.i.i, label %while.cond.loopexit.i.i.while.body.outer.i.i_crit_edge

while.cond.loopexit.i.i.while.body.outer.i.i_crit_edge: ; preds = %while.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.outer.i.i

while.body.outer.i.i:                             ; preds = %while.cond.loopexit.i.i.while.body.outer.i.i_crit_edge, %for.body.i75.i.while.body.outer.i.i_crit_edge
  %dec51.ph.i.i = phi i32 [ %dec.i.i, %while.cond.loopexit.i.i.while.body.outer.i.i_crit_edge ], [ 7, %for.body.i75.i.while.body.outer.i.i_crit_edge ]
  %srb_idx.050.ph.i.i = phi i32 [ %inc11.i.i.lcssa, %while.cond.loopexit.i.i.while.body.outer.i.i_crit_edge ], [ 0, %for.body.i75.i.while.body.outer.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %srb_idx.050.ph.i.i)
  %cmp745.i.i = icmp slt i32 %srb_idx.050.ph.i.i, 63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %213 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %213, i32 noundef 3264, i32 noundef 4096) #13
  %tobool1.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i.i, label %while.body.outer.i.i.do.end16.i_crit_edge, label %while.cond5.preheader.i.i

while.body.outer.i.i.do.end16.i_crit_edge:        ; preds = %while.body.outer.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

while.cond.loopexit.thread.i.i:                   ; preds = %while.cond5.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec51.ph.i.i)
  %tobool.not57.i.i = icmp eq i32 %dec51.ph.i.i, 0
  br i1 %tobool.not57.i.i, label %while.cond.loopexit.thread.i.i.if.then16.i.i_crit_edge, label %while.body.i.i.1

while.cond.loopexit.thread.i.i.if.then16.i.i_crit_edge: ; preds = %while.cond.loopexit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i.i

while.body.i.i.1:                                 ; preds = %while.cond.loopexit.thread.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %214 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %214, i32 noundef 3264, i32 noundef 4096) #13
  %tobool1.not.i.i.1 = icmp eq ptr %call7.i.i.i.1, null
  br i1 %tobool1.not.i.i.1, label %while.body.i.i.1.do.end16.i_crit_edge, label %while.cond.loopexit.thread.i.i.1.critedge

while.body.i.i.1.do.end16.i_crit_edge:            ; preds = %while.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

while.cond.loopexit.thread.i.i.1.critedge:        ; preds = %while.body.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec51.ph.i.i)
  %tobool.not57.i.i.1 = icmp eq i32 %dec51.ph.i.i, 1
  br i1 %tobool.not57.i.i.1, label %while.cond.loopexit.thread.i.i.1.critedge.if.then16.i.i_crit_edge, label %while.body.i.i.2

while.cond.loopexit.thread.i.i.1.critedge.if.then16.i.i_crit_edge: ; preds = %while.cond.loopexit.thread.i.i.1.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i.i

while.body.i.i.2:                                 ; preds = %while.cond.loopexit.thread.i.i.1.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %215 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %215, i32 noundef 3264, i32 noundef 4096) #13
  %tobool1.not.i.i.2 = icmp eq ptr %call7.i.i.i.2, null
  br i1 %tobool1.not.i.i.2, label %while.body.i.i.2.do.end16.i_crit_edge, label %while.cond.loopexit.thread.i.i.2.critedge

while.body.i.i.2.do.end16.i_crit_edge:            ; preds = %while.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

while.cond.loopexit.thread.i.i.2.critedge:        ; preds = %while.body.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec51.ph.i.i)
  %tobool.not57.i.i.2 = icmp eq i32 %dec51.ph.i.i, 2
  br i1 %tobool.not57.i.i.2, label %while.cond.loopexit.thread.i.i.2.critedge.if.then16.i.i_crit_edge, label %while.body.i.i.3

while.cond.loopexit.thread.i.i.2.critedge.if.then16.i.i_crit_edge: ; preds = %while.cond.loopexit.thread.i.i.2.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i.i

while.body.i.i.3:                                 ; preds = %while.cond.loopexit.thread.i.i.2.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %216 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %216, i32 noundef 3264, i32 noundef 4096) #13
  %tobool1.not.i.i.3 = icmp eq ptr %call7.i.i.i.3, null
  br i1 %tobool1.not.i.i.3, label %while.body.i.i.3.do.end16.i_crit_edge, label %while.cond.loopexit.thread.i.i.3.critedge

while.body.i.i.3.do.end16.i_crit_edge:            ; preds = %while.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

while.cond.loopexit.thread.i.i.3.critedge:        ; preds = %while.body.i.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dec51.ph.i.i)
  %tobool.not57.i.i.3 = icmp eq i32 %dec51.ph.i.i, 3
  br i1 %tobool.not57.i.i.3, label %while.cond.loopexit.thread.i.i.3.critedge.if.then16.i.i_crit_edge, label %while.body.i.i.4

while.cond.loopexit.thread.i.i.3.critedge.if.then16.i.i_crit_edge: ; preds = %while.cond.loopexit.thread.i.i.3.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i.i

while.body.i.i.4:                                 ; preds = %while.cond.loopexit.thread.i.i.3.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %217 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %217, i32 noundef 3264, i32 noundef 4096) #13
  %tobool1.not.i.i.4 = icmp eq ptr %call7.i.i.i.4, null
  br i1 %tobool1.not.i.i.4, label %while.body.i.i.4.do.end16.i_crit_edge, label %while.cond.loopexit.thread.i.i.4.critedge

while.body.i.i.4.do.end16.i_crit_edge:            ; preds = %while.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

while.cond.loopexit.thread.i.i.4.critedge:        ; preds = %while.body.i.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dec51.ph.i.i)
  %tobool.not57.i.i.4 = icmp eq i32 %dec51.ph.i.i, 4
  br i1 %tobool.not57.i.i.4, label %while.cond.loopexit.thread.i.i.4.critedge.if.then16.i.i_crit_edge, label %while.body.i.i.5

while.cond.loopexit.thread.i.i.4.critedge.if.then16.i.i_crit_edge: ; preds = %while.cond.loopexit.thread.i.i.4.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i.i

while.body.i.i.5:                                 ; preds = %while.cond.loopexit.thread.i.i.4.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %218 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %218, i32 noundef 3264, i32 noundef 4096) #13
  %tobool1.not.i.i.5 = icmp eq ptr %call7.i.i.i.5, null
  br i1 %tobool1.not.i.i.5, label %while.body.i.i.5.do.end16.i_crit_edge, label %while.cond5.preheader.i.i.5

while.body.i.i.5.do.end16.i_crit_edge:            ; preds = %while.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

while.cond5.preheader.i.i.5:                      ; preds = %while.body.i.i.5
  br i1 %cmp745.i.i, label %while.cond5.preheader.i.i.5.while.body8.preheader.i.i_crit_edge, label %while.cond.loopexit.thread.i.i.5

while.cond5.preheader.i.i.5.while.body8.preheader.i.i_crit_edge: ; preds = %while.cond5.preheader.i.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body8.preheader.i.i

while.cond.loopexit.thread.i.i.5:                 ; preds = %while.cond5.preheader.i.i.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %dec51.ph.i.i)
  %tobool.not57.i.i.5 = icmp eq i32 %dec51.ph.i.i, 5
  br i1 %tobool.not57.i.i.5, label %while.cond.loopexit.thread.i.i.5.if.then16.i.i_crit_edge, label %while.body.i.i.6

while.cond.loopexit.thread.i.i.5.if.then16.i.i_crit_edge: ; preds = %while.cond.loopexit.thread.i.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i.i

while.body.i.i.6:                                 ; preds = %while.cond.loopexit.thread.i.i.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %219 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %219, i32 noundef 3264, i32 noundef 4096) #13
  %tobool1.not.i.i.6 = icmp eq ptr %call7.i.i.i.6, null
  br i1 %tobool1.not.i.i.6, label %while.body.i.i.6.do.end16.i_crit_edge, label %while.cond.loopexit.thread.i.i.6.critedge

while.body.i.i.6.do.end16.i_crit_edge:            ; preds = %while.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

while.cond.loopexit.thread.i.i.6.critedge:        ; preds = %while.body.i.i.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %dec51.ph.i.i)
  %tobool.not57.i.i.6 = icmp eq i32 %dec51.ph.i.i, 6
  br i1 %tobool.not57.i.i.6, label %while.cond.loopexit.thread.i.i.6.critedge.if.then16.i.i_crit_edge, label %while.body.i.i.7

while.cond.loopexit.thread.i.i.6.critedge.if.then16.i.i_crit_edge: ; preds = %while.cond.loopexit.thread.i.i.6.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i.i

while.body.i.i.7:                                 ; preds = %while.cond.loopexit.thread.i.i.6.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %220 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %220, i32 noundef 3264, i32 noundef 4096) #13
  %tobool1.not.i.i.7 = icmp eq ptr %call7.i.i.i.7, null
  br i1 %tobool1.not.i.i.7, label %while.body.i.i.7.do.end16.i_crit_edge, label %while.body.i.i.7.if.then16.i.i_crit_edge

while.body.i.i.7.if.then16.i.i_crit_edge:         ; preds = %while.body.i.i.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i.i

while.body.i.i.7.do.end16.i_crit_edge:            ; preds = %while.body.i.i.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

while.cond5.preheader.i.i:                        ; preds = %while.body.outer.i.i
  br i1 %cmp745.i.i, label %while.cond5.preheader.i.i.while.body8.preheader.i.i_crit_edge, label %while.cond.loopexit.thread.i.i

while.cond5.preheader.i.i.while.body8.preheader.i.i_crit_edge: ; preds = %while.cond5.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body8.preheader.i.i

while.body8.preheader.i.i:                        ; preds = %while.cond5.preheader.i.i.while.body8.preheader.i.i_crit_edge, %while.cond5.preheader.i.i.5.while.body8.preheader.i.i_crit_edge
  %call7.i.i.i.lcssa101 = phi ptr [ %call7.i.i.i, %while.cond5.preheader.i.i.while.body8.preheader.i.i_crit_edge ], [ %call7.i.i.i.5, %while.cond5.preheader.i.i.5.while.body8.preheader.i.i_crit_edge ]
  %221 = sub i32 62, %srb_idx.050.ph.i.i
  %umin.i.i = tail call i32 @llvm.umin.i32(i32 %221, i32 7) #9
  %inc11.i.i = add nsw i32 %srb_idx.050.ph.i.i, 1
  %segment_x13.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 25, i32 %srb_idx.050.ph.i.i, i32 3
  %222 = ptrtoint ptr %segment_x13.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %call7.i.i.i.lcssa101, ptr %segment_x13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin.i.i)
  %exitcond53.not.i.i = icmp eq i32 %umin.i.i, 0
  br i1 %exitcond53.not.i.i, label %while.body8.preheader.i.i.while.cond.loopexit.i.i_crit_edge, label %while.body8.i.i.1

while.body8.preheader.i.i.while.cond.loopexit.i.i_crit_edge: ; preds = %while.body8.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i.i

while.body8.i.i.1:                                ; preds = %while.body8.preheader.i.i
  %add.ptr.i.i.1 = getelementptr %struct.SGentry, ptr %call7.i.i.i.lcssa101, i32 64
  %inc11.i.i.1 = add nsw i32 %srb_idx.050.ph.i.i, 2
  %segment_x13.i.i.1 = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 25, i32 %inc11.i.i, i32 3
  %223 = ptrtoint ptr %segment_x13.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %add.ptr.i.i.1, ptr %segment_x13.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin.i.i)
  %exitcond53.not.i.i.1 = icmp eq i32 %umin.i.i, 1
  br i1 %exitcond53.not.i.i.1, label %while.body8.i.i.1.while.cond.loopexit.i.i_crit_edge, label %while.body8.i.i.2

while.body8.i.i.1.while.cond.loopexit.i.i_crit_edge: ; preds = %while.body8.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i.i

while.body8.i.i.2:                                ; preds = %while.body8.i.i.1
  %add.ptr.i.i.2 = getelementptr %struct.SGentry, ptr %call7.i.i.i.lcssa101, i32 128
  %inc11.i.i.2 = add nsw i32 %srb_idx.050.ph.i.i, 3
  %segment_x13.i.i.2 = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 25, i32 %inc11.i.i.1, i32 3
  %224 = ptrtoint ptr %segment_x13.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %add.ptr.i.i.2, ptr %segment_x13.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin.i.i)
  %exitcond53.not.i.i.2 = icmp eq i32 %umin.i.i, 2
  br i1 %exitcond53.not.i.i.2, label %while.body8.i.i.2.while.cond.loopexit.i.i_crit_edge, label %while.body8.i.i.3

while.body8.i.i.2.while.cond.loopexit.i.i_crit_edge: ; preds = %while.body8.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i.i

while.body8.i.i.3:                                ; preds = %while.body8.i.i.2
  %add.ptr.i.i.3 = getelementptr %struct.SGentry, ptr %call7.i.i.i.lcssa101, i32 192
  %inc11.i.i.3 = add nsw i32 %srb_idx.050.ph.i.i, 4
  %segment_x13.i.i.3 = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 25, i32 %inc11.i.i.2, i32 3
  %225 = ptrtoint ptr %segment_x13.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %add.ptr.i.i.3, ptr %segment_x13.i.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umin.i.i)
  %exitcond53.not.i.i.3 = icmp eq i32 %umin.i.i, 3
  br i1 %exitcond53.not.i.i.3, label %while.body8.i.i.3.while.cond.loopexit.i.i_crit_edge, label %while.body8.i.i.4

while.body8.i.i.3.while.cond.loopexit.i.i_crit_edge: ; preds = %while.body8.i.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i.i

while.body8.i.i.4:                                ; preds = %while.body8.i.i.3
  %add.ptr.i.i.4 = getelementptr %struct.SGentry, ptr %call7.i.i.i.lcssa101, i32 256
  %inc11.i.i.4 = add nsw i32 %srb_idx.050.ph.i.i, 5
  %segment_x13.i.i.4 = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 25, i32 %inc11.i.i.3, i32 3
  %226 = ptrtoint ptr %segment_x13.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %add.ptr.i.i.4, ptr %segment_x13.i.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %umin.i.i)
  %exitcond53.not.i.i.4 = icmp eq i32 %umin.i.i, 4
  br i1 %exitcond53.not.i.i.4, label %while.body8.i.i.4.while.cond.loopexit.i.i_crit_edge, label %while.body8.i.i.5

while.body8.i.i.4.while.cond.loopexit.i.i_crit_edge: ; preds = %while.body8.i.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i.i

while.body8.i.i.5:                                ; preds = %while.body8.i.i.4
  %add.ptr.i.i.5 = getelementptr %struct.SGentry, ptr %call7.i.i.i.lcssa101, i32 320
  %inc11.i.i.5 = add nsw i32 %srb_idx.050.ph.i.i, 6
  %segment_x13.i.i.5 = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 25, i32 %inc11.i.i.4, i32 3
  %227 = ptrtoint ptr %segment_x13.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %add.ptr.i.i.5, ptr %segment_x13.i.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %umin.i.i)
  %exitcond53.not.i.i.5 = icmp eq i32 %umin.i.i, 5
  br i1 %exitcond53.not.i.i.5, label %while.body8.i.i.5.while.cond.loopexit.i.i_crit_edge, label %while.body8.i.i.6

while.body8.i.i.5.while.cond.loopexit.i.i_crit_edge: ; preds = %while.body8.i.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i.i

while.body8.i.i.6:                                ; preds = %while.body8.i.i.5
  %add.ptr.i.i.6 = getelementptr %struct.SGentry, ptr %call7.i.i.i.lcssa101, i32 384
  %inc11.i.i.6 = add nsw i32 %srb_idx.050.ph.i.i, 7
  %segment_x13.i.i.6 = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 25, i32 %inc11.i.i.5, i32 3
  %228 = ptrtoint ptr %segment_x13.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %add.ptr.i.i.6, ptr %segment_x13.i.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %umin.i.i)
  %exitcond53.not.i.i.6 = icmp eq i32 %umin.i.i, 6
  br i1 %exitcond53.not.i.i.6, label %while.body8.i.i.6.while.cond.loopexit.i.i_crit_edge, label %while.body8.i.i.7

while.body8.i.i.6.while.cond.loopexit.i.i_crit_edge: ; preds = %while.body8.i.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i.i

while.body8.i.i.7:                                ; preds = %while.body8.i.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.7 = getelementptr %struct.SGentry, ptr %call7.i.i.i.lcssa101, i32 448
  %inc11.i.i.7 = add nsw i32 %srb_idx.050.ph.i.i, 8
  %segment_x13.i.i.7 = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 25, i32 %inc11.i.i.6, i32 3
  %229 = ptrtoint ptr %segment_x13.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %add.ptr.i.i.7, ptr %segment_x13.i.i.7, align 4
  br label %while.cond.loopexit.i.i

while.end14.i.i:                                  ; preds = %while.cond.loopexit.i.i
  %230 = add nuw nsw i32 %umin.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %221)
  %cmp15.not.i.i = icmp ugt i32 %221, 6
  br i1 %cmp15.not.i.i, label %do.end22.i.i, label %while.end14.i.i.if.then16.i.i_crit_edge

while.end14.i.i.if.then16.i.i_crit_edge:          ; preds = %while.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i.i

if.then16.i.i:                                    ; preds = %while.end14.i.i.if.then16.i.i_crit_edge, %while.body.i.i.7.if.then16.i.i_crit_edge, %while.cond.loopexit.thread.i.i.6.critedge.if.then16.i.i_crit_edge, %while.cond.loopexit.thread.i.i.5.if.then16.i.i_crit_edge, %while.cond.loopexit.thread.i.i.4.critedge.if.then16.i.i_crit_edge, %while.cond.loopexit.thread.i.i.3.critedge.if.then16.i.i_crit_edge, %while.cond.loopexit.thread.i.i.2.critedge.if.then16.i.i_crit_edge, %while.cond.loopexit.thread.i.i.1.critedge.if.then16.i.i_crit_edge, %while.cond.loopexit.thread.i.i.if.then16.i.i_crit_edge
  %call7.i.i.i103 = phi ptr [ %call7.i.i.i.lcssa101, %while.end14.i.i.if.then16.i.i_crit_edge ], [ %call7.i.i.i.6, %while.cond.loopexit.thread.i.i.6.critedge.if.then16.i.i_crit_edge ], [ %call7.i.i.i.5, %while.cond.loopexit.thread.i.i.5.if.then16.i.i_crit_edge ], [ %call7.i.i.i.4, %while.cond.loopexit.thread.i.i.4.critedge.if.then16.i.i_crit_edge ], [ %call7.i.i.i.3, %while.cond.loopexit.thread.i.i.3.critedge.if.then16.i.i_crit_edge ], [ %call7.i.i.i.2, %while.cond.loopexit.thread.i.i.2.critedge.if.then16.i.i_crit_edge ], [ %call7.i.i.i.1, %while.cond.loopexit.thread.i.i.1.critedge.if.then16.i.i_crit_edge ], [ %call7.i.i.i, %while.cond.loopexit.thread.i.i.if.then16.i.i_crit_edge ], [ %call7.i.i.i.7, %while.body.i.i.7.if.then16.i.i_crit_edge ]
  %i.2.lcssa5861.i.i = phi i32 [ %230, %while.end14.i.i.if.then16.i.i_crit_edge ], [ 0, %while.cond.loopexit.thread.i.i.6.critedge.if.then16.i.i_crit_edge ], [ 0, %while.cond.loopexit.thread.i.i.5.if.then16.i.i_crit_edge ], [ 0, %while.cond.loopexit.thread.i.i.4.critedge.if.then16.i.i_crit_edge ], [ 0, %while.cond.loopexit.thread.i.i.3.critedge.if.then16.i.i_crit_edge ], [ 0, %while.cond.loopexit.thread.i.i.2.critedge.if.then16.i.i_crit_edge ], [ 0, %while.cond.loopexit.thread.i.i.1.critedge.if.then16.i.i_crit_edge ], [ 0, %while.cond.loopexit.thread.i.i.if.then16.i.i_crit_edge ], [ 0, %while.body.i.i.7.if.then16.i.i_crit_edge ]
  %mul17.i.i = shl nuw nsw i32 %i.2.lcssa5861.i.i, 6
  %add.ptr18.i.i = getelementptr %struct.SGentry, ptr %call7.i.i.i103, i32 %mul17.i.i
  %segment_x19.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 26, i32 3
  %231 = ptrtoint ptr %segment_x19.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %add.ptr18.i.i, ptr %segment_x19.i.i, align 4
  br label %if.end19.i

do.end22.i.i:                                     ; preds = %while.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call23.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.263) #12
  br label %if.end19.i

do.end16.i:                                       ; preds = %while.body.i.i.7.do.end16.i_crit_edge, %while.body.i.i.6.do.end16.i_crit_edge, %while.body.i.i.5.do.end16.i_crit_edge, %while.body.i.i.4.do.end16.i_crit_edge, %while.body.i.i.3.do.end16.i_crit_edge, %while.body.i.i.2.do.end16.i_crit_edge, %while.body.i.i.1.do.end16.i_crit_edge, %while.body.outer.i.i.do.end16.i_crit_edge
  %segment_x.i.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 25, i32 0, i32 3
  %232 = ptrtoint ptr %segment_x.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %segment_x.i.i.i, align 4
  tail call void @kfree(ptr noundef %233) #9
  %segment_x.1.i.i.i = getelementptr %struct.Scsi_Host, ptr %call17, i32 2, i32 13, i32 7
  %234 = ptrtoint ptr %segment_x.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %segment_x.1.i.i.i, align 4
  tail call void @kfree(ptr noundef %235) #9
  %segment_x.2.i.i.i = getelementptr %struct.Scsi_Host, ptr %call17, i32 2, i32 49, i32 9, i32 5, i32 1
  %236 = ptrtoint ptr %segment_x.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %segment_x.2.i.i.i, align 4
  tail call void @kfree(ptr noundef %237) #9
  %segment_x.3.i.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 25, i32 24, i32 3
  %238 = ptrtoint ptr %segment_x.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %segment_x.3.i.i.i, align 4
  tail call void @kfree(ptr noundef %239) #9
  %segment_x.4.i.i.i = getelementptr %struct.Scsi_Host, ptr %call17, i32 2, i32 50, i32 10, i32 5, i32 1, i32 1
  %240 = ptrtoint ptr %segment_x.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %segment_x.4.i.i.i, align 4
  tail call void @kfree(ptr noundef %241) #9
  %segment_x.5.i.i.i = getelementptr %struct.Scsi_Host, ptr %call17, i32 2, i32 50, i32 30
  %242 = ptrtoint ptr %segment_x.5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %segment_x.5.i.i.i, align 4
  tail call void @kfree(ptr noundef %243) #9
  %segment_x.6.i.i.i = getelementptr %struct.Scsi_Host, ptr %call17, i32 3, i32 13, i32 13, i32 5, i32 7
  %244 = ptrtoint ptr %segment_x.6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %segment_x.6.i.i.i, align 4
  tail call void @kfree(ptr noundef %245) #9
  %segment_x.7.i.i.i = getelementptr %struct.Scsi_Host, ptr %call17, i32 3, i32 49, i32 10, i32 5, i32 7
  %246 = ptrtoint ptr %segment_x.7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %segment_x.7.i.i.i, align 4
  tail call void @kfree(ptr noundef %247) #9
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #12
  br label %failed.i

if.end19.i:                                       ; preds = %do.end22.i.i, %if.then16.i.i
  %248 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %hostdata, align 4
  %eeprom1.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 3, i32 49, i32 30
  %max_cmd_len.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 0, i32 24
  %250 = ptrtoint ptr %max_cmd_len.i.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 24, ptr %max_cmd_len.i.i, align 4
  %can_queue.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 0, i32 26
  %251 = ptrtoint ptr %can_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 32, ptr %can_queue.i.i, align 4
  %cmd_per_lun.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 0, i32 27
  %252 = ptrtoint ptr %cmd_per_lun.i.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 16, ptr %cmd_per_lun.i.i, align 8
  %scsi_id.i77.i = getelementptr inbounds %struct.NvRamType, ptr %eeprom1.i.i, i32 0, i32 7
  %253 = ptrtoint ptr %scsi_id.i77.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %scsi_id.i77.i, align 2
  %conv.i78.i = zext i8 %254 to i32
  %this_id.i79.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 0, i32 25
  %255 = ptrtoint ptr %this_id.i79.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %conv.i78.i, ptr %this_id.i79.i, align 8
  %io_port_base.i80.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 1, i32 0, i32 1
  %256 = ptrtoint ptr %io_port_base.i80.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %io_port_base.i80.i, align 4
  %io_port.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 0, i32 44
  %258 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %io_port.i.i, align 8
  %io_port_len.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 1, i32 1
  %259 = ptrtoint ptr %io_port_len.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %io_port_len.i.i, align 4
  %conv2.i81.i = trunc i32 %260 to i8
  %n_io_port.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 0, i32 45
  %261 = ptrtoint ptr %n_io_port.i.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %conv2.i81.i, ptr %n_io_port.i.i, align 4
  %dma_channel.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 0, i32 46
  %262 = ptrtoint ptr %dma_channel.i.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 -1, ptr %dma_channel.i.i, align 1
  %unique_id.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 0, i32 23
  %263 = ptrtoint ptr %unique_id.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %257, ptr %unique_id.i.i, align 8
  %irq_level.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 1, i32 5, i32 5, i32 1, i32 1
  %264 = ptrtoint ptr %irq_level.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %irq_level.i.i, align 4
  %irq.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 0, i32 47
  %266 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %irq.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %267 = load volatile i32, ptr @jiffies, align 128
  %last_reset.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 1, i32 5, i32 5
  %268 = ptrtoint ptr %last_reset.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %last_reset.i.i, align 4
  %max_id.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %254)
  %cmp.i82.i = icmp eq i8 %254, 15
  %spec.store.select.i.i = select i1 %cmp.i82.i, i32 15, i32 16
  %269 = ptrtoint ptr %max_id.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %spec.store.select.i.i, ptr %max_id.i.i, align 4
  %channel_cfg.i83.i = getelementptr inbounds %struct.NvRamType, ptr %eeprom1.i.i, i32 0, i32 8
  %270 = ptrtoint ptr %channel_cfg.i83.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %channel_cfg.i83.i, align 1
  %272 = and i8 %271, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %272)
  %tobool.not.i84.i = icmp eq i8 %272, 0
  %spec.select.i85.i = select i1 %tobool.not.i84.i, i64 1, i64 8
  %273 = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 0, i32 22
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_store8_noabort(i32 %274)
  store i64 %spec.select.i85.i, ptr %273, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !574
  tail call void @arm_heavy_mb() #9
  %275 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %io_port_base.i, align 4
  %add.i87.i = add i32 %276, 164
  %and.i88.i = and i32 %add.i87.i, 1048575
  %add2.i.i = or i32 %and.i88.i, -18874368
  %277 = inttoptr i32 %add2.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %277, i8 0) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !575
  tail call void @arm_heavy_mb() #9
  %278 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %io_port_base.i, align 4
  %add7.i.i = add i32 %279, 140
  %and8.i.i = and i32 %add7.i.i, 1048575
  %add9.i.i = or i32 %and8.i.i, -18874368
  %280 = inttoptr i32 %add9.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %280, i8 0) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !576
  tail call void @arm_heavy_mb() #9
  %281 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %io_port_base.i, align 4
  %add15.i.i = add i32 %282, 128
  %and16.i.i = and i32 %add15.i.i, 1048575
  %add17.i.i = or i32 %and16.i.i, -18874368
  %283 = inttoptr i32 %add17.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %283, i16 4096) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !578
  tail call void @arm_heavy_mb() #9
  %284 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %io_port_base.i, align 4
  %add23.i.i = add i32 %285, 161
  %and24.i.i = and i32 %add23.i.i, 1048575
  %add25.i.i = or i32 %and24.i.i, -18874368
  %286 = inttoptr i32 %add25.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %286, i8 16) #9, !srcloc !547
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %287 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %287(i32 noundef 4294960) #9
  %288 = ptrtoint ptr %config.i.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 12, ptr %config.i.i, align 1
  %289 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %io_port_base.i, align 4
  %add28.i.i = add i32 %290, 213
  %and29.i.i = and i32 %add28.i.i, 1048575
  %add30.i.i = or i32 %and29.i.i, -18874368
  %291 = inttoptr i32 %add30.i.i to ptr
  %292 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %291) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !579
  %293 = and i8 %292, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %tobool.not.i90.i = icmp eq i8 %293, 0
  br i1 %tobool.not.i90.i, label %if.end19.i.if.end.i93.i_crit_edge, label %if.then.i91.i

if.end19.i.if.end.i93.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i93.i

if.then.i91.i:                                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %294 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %config.i.i, align 1
  %296 = or i8 %295, 32
  store i8 %296, ptr %config.i.i, align 1
  br label %if.end.i93.i

if.end.i93.i:                                     ; preds = %if.then.i91.i, %if.end19.i.if.end.i93.i_crit_edge
  %297 = ptrtoint ptr %channel_cfg.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %channel_cfg.i.i, align 1
  %299 = and i8 %298, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %tobool39.not.i.i = icmp eq i8 %299, 0
  br i1 %tobool39.not.i.i, label %if.end.i93.i.if.end45.i.i_crit_edge, label %if.then40.i.i

if.end.i93.i.if.end45.i.i_crit_edge:              ; preds = %if.end.i93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i.i

if.then40.i.i:                                    ; preds = %if.end.i93.i
  call void @__sanitizer_cov_trace_pc() #11
  %300 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %config.i.i, align 1
  %302 = or i8 %301, 16
  store i8 %302, ptr %config.i.i, align 1
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then40.i.i, %if.end.i93.i.if.end45.i.i_crit_edge
  %303 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %config.i.i, align 1
  %305 = and i8 %304, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %tobool49.not.i.i = icmp eq i8 %305, 0
  br i1 %tobool49.not.i.i, label %if.end45.i.i.if.end36_crit_edge, label %do.end53.i.i

if.end45.i.i.if.end36_crit_edge:                  ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end53.i.i:                                     ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call55.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.265) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !580
  tail call void @arm_heavy_mb() #9
  %306 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %io_port_base.i, align 4
  %add60.i.i = add i32 %307, 128
  %and61.i.i = and i32 %add60.i.i, 1048575
  %add62.i.i = or i32 %and61.i.i, -18874368
  %308 = inttoptr i32 %add62.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %308, i8 8) #9, !srcloc !547
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %309 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %309(i32 noundef 107374000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %310 = load volatile i32, ptr @jiffies, align 128
  %add64.i.i = add i32 %310, 50
  %311 = ptrtoint ptr %delay_time.i61.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %delay_time.i61.i, align 4
  %conv66.i95.i = zext i8 %312 to i32
  %mul.i96.i = mul nuw nsw i32 %conv66.i95.i, 100
  %add67.i.i = add i32 %add64.i.i, %mul.i96.i
  %last_reset.i97.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 5, i32 5
  %313 = ptrtoint ptr %last_reset.i97.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %add67.i.i, ptr %last_reset.i97.i, align 4
  br label %if.end36

failed.i:                                         ; preds = %do.end16.i, %do.end7.i, %do.end.i79
  %irq_level22.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 5, i32 5, i32 1, i32 1
  %314 = ptrtoint ptr %irq_level22.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %irq_level22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %tobool23.not.i = icmp eq i32 %315, 0
  br i1 %tobool23.not.i, label %failed.i.if.end27.i_crit_edge, label %if.then24.i

failed.i.if.end27.i_crit_edge:                    ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then24.i:                                      ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #11
  %call26.i = tail call ptr @free_irq(i32 noundef %315, ptr noundef %hostdata) #9
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %failed.i.if.end27.i_crit_edge
  %io_port_base28.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 0, i32 1
  %316 = ptrtoint ptr %io_port_base28.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %io_port_base28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool29.not.i = icmp eq i32 %317, 0
  br i1 %tobool29.not.i, label %if.end27.i.do.end33_crit_edge, label %if.then30.i

if.end27.i.do.end33_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %io_port_len32.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 1, i32 1
  %318 = ptrtoint ptr %io_port_len32.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %io_port_len32.i, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %317, i32 noundef %319) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then30.i, %if.end27.i.do.end33_crit_edge
  %segment_x.i98.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 25, i32 0, i32 3
  %320 = ptrtoint ptr %segment_x.i98.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %segment_x.i98.i, align 4
  tail call void @kfree(ptr noundef %321) #9
  %segment_x.1.i.i = getelementptr %struct.Scsi_Host, ptr %call17, i32 2, i32 13, i32 7
  %322 = ptrtoint ptr %segment_x.1.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %segment_x.1.i.i, align 4
  tail call void @kfree(ptr noundef %323) #9
  %segment_x.2.i.i = getelementptr %struct.Scsi_Host, ptr %call17, i32 2, i32 49, i32 9, i32 5, i32 1
  %324 = ptrtoint ptr %segment_x.2.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %segment_x.2.i.i, align 4
  tail call void @kfree(ptr noundef %325) #9
  %segment_x.3.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 25, i32 24, i32 3
  %326 = ptrtoint ptr %segment_x.3.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %segment_x.3.i.i, align 4
  tail call void @kfree(ptr noundef %327) #9
  %segment_x.4.i.i = getelementptr %struct.Scsi_Host, ptr %call17, i32 2, i32 50, i32 10, i32 5, i32 1, i32 1
  %328 = ptrtoint ptr %segment_x.4.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %segment_x.4.i.i, align 4
  tail call void @kfree(ptr noundef %329) #9
  %segment_x.5.i.i = getelementptr %struct.Scsi_Host, ptr %call17, i32 2, i32 50, i32 30
  %330 = ptrtoint ptr %segment_x.5.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %segment_x.5.i.i, align 4
  tail call void @kfree(ptr noundef %331) #9
  %segment_x.6.i.i = getelementptr %struct.Scsi_Host, ptr %call17, i32 3, i32 13, i32 13, i32 5, i32 7
  %332 = ptrtoint ptr %segment_x.6.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %segment_x.6.i.i, align 4
  tail call void @kfree(ptr noundef %333) #9
  %segment_x.7.i.i = getelementptr %struct.Scsi_Host, ptr %call17, i32 3, i32 49, i32 10, i32 5, i32 7
  %334 = ptrtoint ptr %segment_x.7.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %segment_x.7.i.i, align 4
  tail call void @kfree(ptr noundef %335) #9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %if.then51

if.end36:                                         ; preds = %do.end53.i.i, %if.end45.i.i.if.end36_crit_edge
  tail call fastcc void @set_basic_config(ptr noundef %hostdata) #9
  tail call void @pci_set_master(ptr noundef %dev) #9
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i80 = tail call i32 @scsi_add_host_with_dma(ptr noundef %call17, ptr noundef %dev37, ptr noundef %dev37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool39.not = icmp eq i32 %call.i80, 0
  br i1 %tobool39.not, label %if.end46, label %fail

if.end46:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %336 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %call17, ptr %driver_data.i.i, align 4
  tail call void @scsi_scan_host(ptr noundef nonnull %call17) #9
  br label %cleanup

fail:                                             ; preds = %if.end36
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  %cmp47.not = icmp eq ptr %hostdata, null
  br i1 %cmp47.not, label %fail.if.then51_crit_edge, label %if.then48

fail.if.then51_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

if.then48:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @adapter_uninit(ptr noundef nonnull %hostdata)
  br label %if.then51

if.then51:                                        ; preds = %if.then48, %fail.if.then51_crit_edge, %do.end33
  tail call void @scsi_host_put(ptr noundef nonnull %call17) #9
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end49.thread
  tail call void @pci_disable_device(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end46, %do.end3
  %retval.0 = phi i32 [ -19, %do.end3 ], [ -19, %if.end52 ], [ 0, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dc395x_remove_one(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  tail call void @scsi_remove_host(ptr noundef %1) #9
  tail call fastcc void @adapter_uninit(ptr noundef %hostdata)
  tail call void @pci_disable_device(ptr noundef %dev) #9
  tail call void @scsi_host_put(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adapter_uninit(ptr noundef %acb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acb, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %pprev.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 8, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %waiting_timer = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 8
  %call7 = tail call i32 @del_timer(ptr noundef %waiting_timer) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pprev.i.i40 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 9, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i40 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pprev.i.i40, align 4
  %tobool.not.i.i41.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.i41.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %selto_timer = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 9
  %call12 = tail call i32 @del_timer(ptr noundef %selto_timer) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !581
  tail call void @arm_heavy_mb() #9
  %io_port_base.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %8 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_port_base.i, align 4
  %add.i = add i32 %9, 164
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !582
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_port_base.i, align 4
  %add5.i = add i32 %12, 140
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %13 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #9, !srcloc !547
  %config.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 17
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %config.i, align 1
  %16 = and i8 %15, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end13.adapter_uninit_chip.exit_crit_edge, label %if.then.i

if.end13.adapter_uninit_chip.exit_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %adapter_uninit_chip.exit

if.then.i:                                        ; preds = %if.end13
  %acb_flag.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 15
  %17 = ptrtoint ptr %acb_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %acb_flag.i.i, align 1
  %19 = or i8 %18, 1
  store i8 %19, ptr %acb_flag.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !583
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_port_base.i, align 4
  %add.i.i = add i32 %21, 128
  %and.i.i = and i32 %add.i.i, 1048575
  %add4.i.i = or i32 %and.i.i, -18874368
  %22 = inttoptr i32 %add4.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 2048) #9, !srcloc !577
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.then.i
  %23 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_port_base.i, align 4
  %add6.i.i = add i32 %24, 132
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %25 = inttoptr i32 %add8.i.i to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !584
  %27 = and i8 %26, 4
  %tobool.not.i.i43 = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i43, label %while.cond.i.i.while.cond.i.i_crit_edge, label %while.cond.i.i.adapter_uninit_chip.exit_crit_edge

while.cond.i.i.adapter_uninit_chip.exit_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adapter_uninit_chip.exit

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

adapter_uninit_chip.exit:                         ; preds = %while.cond.i.i.adapter_uninit_chip.exit_crit_edge, %if.end13.adapter_uninit_chip.exit_crit_edge
  %28 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_port_base.i, align 4
  %add11.i = add i32 %29, 132
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %30 = inttoptr i32 %add13.i to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !585
  %dcb_list.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 3
  %32 = ptrtoint ptr %dcb_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dcb_list.i, align 4
  %cmp.not18.i = icmp eq ptr %33, %dcb_list.i
  br i1 %cmp.not18.i, label %adapter_uninit_chip.exit.adapter_remove_and_free_all_devices.exit_crit_edge, label %adapter_uninit_chip.exit.for.body.i_crit_edge

adapter_uninit_chip.exit.for.body.i_crit_edge:    ; preds = %adapter_uninit_chip.exit
  br label %for.body.i

adapter_uninit_chip.exit.adapter_remove_and_free_all_devices.exit_crit_edge: ; preds = %adapter_uninit_chip.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %adapter_remove_and_free_all_devices.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %adapter_uninit_chip.exit.for.body.i_crit_edge
  %dcb.019.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %33, %adapter_uninit_chip.exit.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %dcb.019.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %tmp.0.i = load ptr, ptr %dcb.019.i, align 4
  tail call fastcc void @adapter_remove_and_free_device(ptr noundef %acb, ptr noundef %dcb.019.i) #9
  %cmp.not.i = icmp eq ptr %tmp.0.i, %dcb_list.i
  br i1 %cmp.not.i, label %for.body.i.adapter_remove_and_free_all_devices.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.adapter_remove_and_free_all_devices.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adapter_remove_and_free_all_devices.exit

adapter_remove_and_free_all_devices.exit:         ; preds = %for.body.i.adapter_remove_and_free_all_devices.exit_crit_edge, %adapter_uninit_chip.exit.adapter_remove_and_free_all_devices.exit_crit_edge
  %35 = ptrtoint ptr %acb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %acb, align 4
  %host_lock15 = getelementptr inbounds %struct.Scsi_Host, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %host_lock15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host_lock15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %call2) #9
  %irq_level = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 13
  %39 = ptrtoint ptr %irq_level to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool16.not = icmp eq i32 %40, 0
  br i1 %tobool16.not, label %adapter_remove_and_free_all_devices.exit.if.end20_crit_edge, label %if.then17

adapter_remove_and_free_all_devices.exit.if.end20_crit_edge: ; preds = %adapter_remove_and_free_all_devices.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %adapter_remove_and_free_all_devices.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call ptr @free_irq(i32 noundef %40, ptr noundef %acb) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %adapter_remove_and_free_all_devices.exit.if.end20_crit_edge
  %41 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %io_port_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool21.not = icmp eq i32 %42, 0
  br i1 %tobool21.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %io_port_len = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 2
  %43 = ptrtoint ptr %io_port_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %io_port_len, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %42, i32 noundef %44) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %segment_x.i = getelementptr %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 25, i32 0, i32 3
  %45 = ptrtoint ptr %segment_x.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %segment_x.i, align 4
  tail call void @kfree(ptr noundef %46) #9
  %segment_x.1.i = getelementptr %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 25, i32 8, i32 3
  %47 = ptrtoint ptr %segment_x.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %segment_x.1.i, align 4
  tail call void @kfree(ptr noundef %48) #9
  %segment_x.2.i = getelementptr %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 25, i32 16, i32 3
  %49 = ptrtoint ptr %segment_x.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %segment_x.2.i, align 4
  tail call void @kfree(ptr noundef %50) #9
  %segment_x.3.i = getelementptr %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 25, i32 24, i32 3
  %51 = ptrtoint ptr %segment_x.3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %segment_x.3.i, align 4
  tail call void @kfree(ptr noundef %52) #9
  %segment_x.4.i = getelementptr %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 25, i32 32, i32 3
  %53 = ptrtoint ptr %segment_x.4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %segment_x.4.i, align 4
  tail call void @kfree(ptr noundef %54) #9
  %segment_x.5.i = getelementptr %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 25, i32 40, i32 3
  %55 = ptrtoint ptr %segment_x.5.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %segment_x.5.i, align 4
  tail call void @kfree(ptr noundef %56) #9
  %segment_x.6.i = getelementptr %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 25, i32 48, i32 3
  %57 = ptrtoint ptr %segment_x.6.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %segment_x.6.i, align 4
  tail call void @kfree(ptr noundef %58) #9
  %segment_x.7.i = getelementptr %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 25, i32 56, i32 3
  %59 = ptrtoint ptr %segment_x.7.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %segment_x.7.i, align 4
  tail call void @kfree(ptr noundef %60) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc395x_queue_command(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
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
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %6 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %result.i.i, align 4
  %and.i.i = and i32 %7, -16711681
  %or.i.i = or i32 %and.i.i, 262144
  store i32 %or.i.i, ptr %result.i.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 8
  %10 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hostdata.i, align 4
  %max_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %max_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp.not.i = icmp ult i32 %9, %13
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.complete.i_crit_edge

entry.complete.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %complete.i

lor.lhs.false.i:                                  ; preds = %entry
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %lun.i, align 8
  %max_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 22
  %16 = ptrtoint ptr %max_lun.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %max_lun.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %17)
  %cmp4.not.i = icmp uge i64 %15, %17
  call void @__sanitizer_cov_trace_const_cmp8(i64 31, i64 %15)
  %cmp8.i = icmp ugt i64 %15, 31
  %or.cond.i = or i1 %cmp8.i, %cmp4.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.complete.i_crit_edge, label %if.end.i

lor.lhs.false.i.complete.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %complete.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata.i, i32 0, i32 21, i32 %9
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %19 to i32
  %sh_prom.i = trunc i64 %15 to i32
  %shl.i = shl nuw i32 1, %sh_prom.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.complete.sink.split.i_crit_edge, label %if.end23.i

if.end.i.complete.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %complete.sink.split.i

if.end23.i:                                       ; preds = %if.end.i
  %idxprom.i.i = and i32 %9, 255
  %arrayidx2.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata.i, i32 0, i32 22, i32 %idxprom.i.i, i32 %sh_prom.i
  %20 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool31.not.i = icmp eq ptr %21, null
  br i1 %tobool31.not.i, label %if.end23.i.complete.sink.split.i_crit_edge, label %if.end44.i

if.end23.i.complete.sink.split.i_crit_edge:       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %complete.sink.split.i

if.end44.i:                                       ; preds = %if.end23.i
  %and.i107.i = and i32 %7, -16711936
  %22 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i107.i, ptr %result.i.i, align 4
  %srb_free_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %srb_free_list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %srb_free_list.i, align 4
  %cmp50.not.i = icmp eq ptr %24, %srb_free_list.i
  %tobool53.not121.i = icmp eq ptr %24, null
  %tobool53.not.i = or i1 %cmp50.not.i, %tobool53.not121.i
  br i1 %tobool53.not.i, label %if.end44.i.dc395x_queue_command_lck.exit_crit_edge, label %if.end58.i

if.end44.i.dc395x_queue_command_lck.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dc395x_queue_command_lck.exit

if.end58.i:                                       ; preds = %if.end44.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %24) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end58.i.list_del.exit.i_crit_edge

if.end58.i.list_del.exit.i_crit_edge:             ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end58.i.list_del.exit.i_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %sc_data_direction.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %33 = ptrtoint ptr %sc_data_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sc_data_direction.i.i, align 4
  %dcb1.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 1
  %35 = ptrtoint ptr %dcb1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %21, ptr %dcb1.i.i, align 4
  %cmd2.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 2
  %36 = ptrtoint ptr %cmd2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %cmd, ptr %cmd2.i.i, align 4
  %sg_count.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 5
  %37 = ptrtoint ptr %sg_count.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %sg_count.i.i, align 4
  %total_xfer_length.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 7
  %38 = ptrtoint ptr %total_xfer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %total_xfer_length.i.i, align 4
  %sg_bus_addr.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 4
  %39 = ptrtoint ptr %sg_bus_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %sg_bus_addr.i.i, align 4
  %sg_index.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 6
  %40 = ptrtoint ptr %sg_index.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %sg_index.i.i, align 1
  %adapter_status.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 13
  %41 = ptrtoint ptr %adapter_status.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %adapter_status.i.i, align 2
  %target_status.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 14
  %42 = ptrtoint ptr %target_status.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %target_status.i.i, align 1
  %msg_count.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 15
  %43 = ptrtoint ptr %msg_count.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %msg_count.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 18
  %44 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %status.i.i, align 1
  %flag.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 20
  %45 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %flag.i.i, align 1
  %state.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 10
  %46 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %state.i.i, align 4
  %retry_count.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 19
  %47 = ptrtoint ptr %retry_count.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %retry_count.i.i, align 4
  %tag_number.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 17
  %48 = ptrtoint ptr %tag_number.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %tag_number.i.i, align 2
  %scsi_phase.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 21
  %49 = ptrtoint ptr %scsi_phase.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 5, ptr %scsi_phase.i.i, align 2
  %end_message.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 16
  %50 = ptrtoint ptr %end_message.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %end_message.i.i, align 1
  %call.i.i = tail call i32 @scsi_dma_map(ptr noundef %cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body5.i.i, label %do.end12.i.i, !prof !586

do.body5.i.i:                                     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/dc395x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 888, 0\0A.popsection", ""() #9, !srcloc !587
  unreachable

do.end12.i.i:                                     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp13.i.i = icmp eq i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i.i = icmp eq i32 %call.i.i, 0
  %or.cond.i.i = select i1 %cmp13.i.i, i1 true, i1 %tobool14.not.i.i
  br i1 %or.cond.i.i, label %do.end12.i.i.build_srb.exit.i_crit_edge, label %if.else.i.i

do.end12.i.i.build_srb.exit.i_crit_edge:          ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_srb.exit.i

if.else.i.i:                                      ; preds = %do.end12.i.i
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %51 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length.i.i.i, align 4
  %segment_x.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 3
  %53 = ptrtoint ptr %segment_x.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %segment_x.i.i, align 4
  %conv.i.i = trunc i32 %call.i.i to i8
  %55 = ptrtoint ptr %sg_count.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i.i, ptr %sg_count.i.i, align 4
  %conv26113.i.i = and i32 %call.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv26113.i.i)
  %cmp27114.not.i.i = icmp eq i32 %conv26113.i.i, 0
  br i1 %cmp27114.not.i.i, label %if.else.i.i.for.end.i.i_crit_edge, label %for.body.preheader.i.i

if.else.i.i.for.end.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %if.else.i.i
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %56 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sdb.i.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %sg.0116.i.i = phi ptr [ %call32.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %57, %for.body.preheader.i.i ]
  %i.0115.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0116.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_address.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0116.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.SGentry, ptr %54, i32 %i.0115.i.i
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %59, ptr %arrayidx.i.i, align 4
  %length30.i.i = getelementptr %struct.SGentry, ptr %54, i32 %i.0115.i.i, i32 1
  %63 = ptrtoint ptr %length30.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %61, ptr %length30.i.i, align 4
  %64 = ptrtoint ptr %total_xfer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %total_xfer_length.i.i, align 4
  %add.i.i = add i32 %65, %61
  store i32 %add.i.i, ptr %total_xfer_length.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.0115.i.i, 1
  %call32.i.i = tail call ptr @sg_next(ptr noundef %sg.0116.i.i) #9
  %66 = ptrtoint ptr %sg_count.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %sg_count.i.i, align 4
  %conv26.i.i = zext i8 %67 to i32
  %cmp27.i.i = icmp ult i32 %inc.i.i, %conv26.i.i
  br i1 %cmp27.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i.loopexit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i.loopexit:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv26.i.i.le = zext i8 %67 to i32
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.i.i.loopexit, %if.else.i.i.for.end.i.i_crit_edge
  %conv26.le.pre-phi.i.i = phi i32 [ 0, %if.else.i.i.for.end.i.i_crit_edge ], [ %conv26.i.i.le, %for.end.i.i.loopexit ]
  %sub.i.i = add nsw i32 %conv26.le.pre-phi.i.i, -1
  %68 = ptrtoint ptr %total_xfer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %total_xfer_length.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %69)
  %cmp36.i.i = icmp ult i32 %52, %69
  br i1 %cmp36.i.i, label %if.then38.i.i, label %for.end.i.i.if.end44.i.i_crit_edge

for.end.i.i.if.end44.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i.i

if.then38.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub40.neg.i.i = sub i32 %52, %69
  %length41.i.i = getelementptr %struct.SGentry, ptr %54, i32 %sub.i.i, i32 1
  %70 = ptrtoint ptr %length41.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %length41.i.i, align 4
  %sub42.i.i = add i32 %sub40.neg.i.i, %71
  store i32 %sub42.i.i, ptr %length41.i.i, align 4
  %72 = ptrtoint ptr %total_xfer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %52, ptr %total_xfer_length.i.i, align 4
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then38.i.i, %for.end.i.i.if.end44.i.i_crit_edge
  %sync_period.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %21, i32 0, i32 14
  %73 = ptrtoint ptr %sync_period.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %sync_period.i.i, align 1
  %75 = and i8 %74, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool46.not.i.i = icmp eq i8 %75, 0
  br i1 %tobool46.not.i.i, label %if.end44.i.i.if.end54.i.i_crit_edge, label %land.lhs.true.i.i

if.end44.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i.i

land.lhs.true.i.i:                                ; preds = %if.end44.i.i
  %76 = ptrtoint ptr %total_xfer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %total_xfer_length.i.i, align 4
  %rem.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool48.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool48.not.i.i, label %land.lhs.true.i.i.if.end54.i.i_crit_edge, label %if.then49.i.i

land.lhs.true.i.i.if.end54.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i.i

if.then49.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc51.i.i = add i32 %77, 1
  %78 = ptrtoint ptr %total_xfer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %inc51.i.i, ptr %total_xfer_length.i.i, align 4
  %length52.i.i = getelementptr %struct.SGentry, ptr %54, i32 %sub.i.i, i32 1
  %79 = ptrtoint ptr %length52.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %length52.i.i, align 4
  %inc53.i.i = add i32 %80, 1
  store i32 %inc53.i.i, ptr %length52.i.i, align 4
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then49.i.i, %land.lhs.true.i.i.if.end54.i.i_crit_edge, %if.end44.i.i.if.end54.i.i_crit_edge
  %acb.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %21, i32 0, i32 1
  %81 = ptrtoint ptr %acb.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %acb.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %82, i32 0, i32 23
  %83 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i.i, align 4
  %dev55.i.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  %85 = ptrtoint ptr %segment_x.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %segment_x.i.i, align 4
  %call.i.i108.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %86) #9
  br i1 %call.i.i108.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end54.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !588

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev55.i.i) #9
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44, i32 3
  %87 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %88, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %dev55.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev55.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %90, %if.end.i.i.i.i ], [ %88, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #9
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev55.i.i, ptr noundef %86, i32 noundef 512) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %91 = load ptr, ptr @mem_map, align 4
  %92 = ptrtoint ptr %86 to i32
  %sub.i.i.i = add i32 %92, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %91, i32 %shr.i.i.i
  %and.i.i.i = and i32 %92, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev55.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef 512, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %93 = ptrtoint ptr %sg_bus_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %retval.0.i.i.i, ptr %sg_bus_addr.i.i, align 4
  br label %build_srb.exit.i

build_srb.exit.i:                                 ; preds = %dma_map_single_attrs.exit.i.i, %do.end12.i.i.build_srb.exit.i_crit_edge
  %94 = ptrtoint ptr %total_xfer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %total_xfer_length.i.i, align 4
  %request_length.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %24, i32 0, i32 8
  %96 = ptrtoint ptr %request_length.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %request_length.i.i, align 4
  %srb_waiting_list.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %21, i32 0, i32 3
  %97 = ptrtoint ptr %srb_waiting_list.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %srb_waiting_list.i, align 4
  %cmp.i109.not.i = icmp eq ptr %98, %srb_waiting_list.i
  br i1 %cmp.i109.not.i, label %if.else.i, label %if.then61.i

if.then61.i:                                      ; preds = %build_srb.exit.i
  %prev.i111.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %21, i32 0, i32 3, i32 1
  %99 = ptrtoint ptr %prev.i111.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i111.i, align 4
  %call.i.i112.i = tail call zeroext i1 @__list_add_valid(ptr noundef %24, ptr noundef %100, ptr noundef %srb_waiting_list.i) #9
  br i1 %call.i.i112.i, label %if.end.i.i113.i, label %if.then61.i.list_add_tail.exit.i_crit_edge

if.then61.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i113.i:                                  ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %prev.i111.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %24, ptr %prev.i111.i, align 4
  %102 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %srb_waiting_list.i, ptr %24, align 4
  %103 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev.i.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %24, ptr %100, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i113.i, %if.then61.i.list_add_tail.exit.i_crit_edge
  tail call fastcc void @waiting_process_next(ptr noundef %hostdata.i) #9
  br label %dc395x_queue_command_lck.exit

if.else.i:                                        ; preds = %build_srb.exit.i
  %105 = ptrtoint ptr %dcb1.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dcb1.i.i, align 4
  %max_command.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %106, i32 0, i32 6
  %107 = ptrtoint ptr %max_command.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %max_command.i.i, align 4
  %srb_going_list.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %106, i32 0, i32 2
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %if.else.i
  %count.0.i.i.i = phi i32 [ 0, %if.else.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %pos.0.in.i.i.i = phi ptr [ %srb_going_list.i.i, %if.else.i ], [ %pos.0.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %109 = ptrtoint ptr %pos.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %pos.0.i.i.i = load ptr, ptr %pos.0.in.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %pos.0.i.i.i, %srb_going_list.i.i
  %inc.i.i.i = add i32 %count.0.i.i.i, 1
  br i1 %cmp.i.not.i.i.i, label %list_size.exit.i.i, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i

list_size.exit.i.i:                               ; preds = %for.cond.i.i.i
  %conv.i115.i = zext i16 %108 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.i.i.i, i32 %conv.i115.i)
  %cmp.not.i.i = icmp ult i32 %count.0.i.i.i, %conv.i115.i
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %list_size.exit.i.i.if.then.i.i_crit_edge

list_size.exit.i.i.if.then.i.i_crit_edge:         ; preds = %list_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %list_size.exit.i.i
  %active_dcb.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3
  %110 = ptrtoint ptr %active_dcb.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %active_dcb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %111, null
  br i1 %tobool.not.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %acb_flag.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata.i, i32 0, i32 15
  %112 = ptrtoint ptr %acb_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %acb_flag.i.i, align 1
  %114 = and i8 %113, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool5.not.i.i = icmp eq i8 %114, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i, label %lor.lhs.false3.i.i.if.then.i.i_crit_edge

lor.lhs.false3.i.i.if.then.i.i_crit_edge:         ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false3.i.i.if.then.i.i_crit_edge, %lor.lhs.false.i.i.if.then.i.i_crit_edge, %list_size.exit.i.i.if.then.i.i_crit_edge
  %srb_waiting_list.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %106, i32 0, i32 3
  %prev.i.i116.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %106, i32 0, i32 3, i32 1
  %115 = ptrtoint ptr %prev.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %prev.i.i116.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %24, ptr noundef %116, ptr noundef %srb_waiting_list.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i117.i, label %if.then.i.i.list_add_tail.exit.i.i_crit_edge

if.then.i.i.list_add_tail.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.i

if.end.i.i.i117.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %prev.i.i116.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %24, ptr %prev.i.i116.i, align 4
  %118 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %srb_waiting_list.i.i, ptr %24, align 4
  %119 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %116, ptr %prev.i.i, align 4
  %120 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %24, ptr %116, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i117.i, %if.then.i.i.list_add_tail.exit.i.i_crit_edge
  tail call fastcc void @waiting_process_next(ptr noundef %hostdata.i) #9
  br label %dc395x_queue_command_lck.exit

if.end.i.i:                                       ; preds = %lor.lhs.false3.i.i
  %call6.i.i = tail call fastcc zeroext i8 @start_scsi(ptr noundef %hostdata.i, ptr noundef %106, ptr noundef %24) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call6.i.i)
  %tobool7.not.i.i = icmp eq i8 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.else.i118.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  %prev.i27.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %106, i32 0, i32 2, i32 1
  %121 = ptrtoint ptr %prev.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i27.i.i, align 4
  %call.i.i28.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %24, ptr noundef %122, ptr noundef %srb_going_list.i.i) #9
  br i1 %call.i.i28.i.i, label %if.end.i.i30.i.i, label %if.then8.i.i.dc395x_queue_command_lck.exit_crit_edge

if.then8.i.i.dc395x_queue_command_lck.exit_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dc395x_queue_command_lck.exit

if.end.i.i30.i.i:                                 ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %prev.i27.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %24, ptr %prev.i27.i.i, align 4
  %124 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %srb_going_list.i.i, ptr %24, align 4
  %125 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev.i.i, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %24, ptr %122, align 4
  br label %dc395x_queue_command_lck.exit

if.else.i118.i:                                   ; preds = %if.end.i.i
  %srb_waiting_list12.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %106, i32 0, i32 3
  %127 = ptrtoint ptr %srb_waiting_list12.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %srb_waiting_list12.i.i, align 4
  %call.i.i32.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %24, ptr noundef %srb_waiting_list12.i.i, ptr noundef %128) #9
  br i1 %call.i.i32.i.i, label %if.end.i.i34.i.i, label %if.else.i118.i.list_add.exit.i.i_crit_edge

if.else.i118.i.list_add.exit.i.i_crit_edge:       ; preds = %if.else.i118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.i.i

if.end.i.i34.i.i:                                 ; preds = %if.else.i118.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i119.i = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %prev1.i.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %24, ptr %prev1.i.i.i119.i, align 4
  %130 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %128, ptr %24, align 4
  %131 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %srb_waiting_list12.i.i, ptr %prev.i.i, align 4
  %132 = ptrtoint ptr %srb_waiting_list12.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %24, ptr %srb_waiting_list12.i.i, align 4
  br label %list_add.exit.i.i

list_add.exit.i.i:                                ; preds = %if.end.i.i34.i.i, %if.else.i118.i.list_add.exit.i.i_crit_edge
  %waiting_timer.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %133 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i.i = icmp eq ptr %134, null
  br i1 %tobool.not.i.i.not.i.i.i, label %if.end.i.i120.i, label %list_add.exit.i.i.dc395x_queue_command_lck.exit_crit_edge

list_add.exit.i.i.dc395x_queue_command_lck.exit_crit_edge: ; preds = %list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dc395x_queue_command_lck.exit

if.end.i.i120.i:                                  ; preds = %list_add.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %135 = load volatile i32, ptr @jiffies, align 128
  %last_reset.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 5, i32 5
  %136 = ptrtoint ptr %last_reset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %last_reset.i.i.i, align 4
  %add.i.i.i = add i32 %135, 52
  %sub1.i.i.i = sub i32 %add.i.i.i, %137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub1.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then2.i.i.i, label %if.else.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  %add5.i.i.i = add i32 %137, -49
  br label %if.end11.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %138 = load volatile i32, ptr @jiffies, align 128
  %add8.i.i.i = add i32 %138, 3
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then2.i.i.i
  %add8.sink.i.i.i = phi i32 [ %add5.i.i.i, %if.then2.i.i.i ], [ %add8.i.i.i, %if.else.i.i.i ]
  %139 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %add8.sink.i.i.i, ptr %139, align 4
  tail call void @add_timer(ptr noundef %waiting_timer.i.i.i) #9
  br label %dc395x_queue_command_lck.exit

complete.sink.split.i:                            ; preds = %if.end23.i.complete.sink.split.i_crit_edge, %if.end.i.complete.sink.split.i_crit_edge
  %.str.21.sink.i = phi ptr [ @.str.18, %if.end.i.complete.sink.split.i_crit_edge ], [ @.str.21, %if.end23.i.complete.sink.split.i_crit_edge ]
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.21.sink.i, i32 noundef %9, i32 noundef %sh_prom.i) #12
  br label %complete.i

complete.i:                                       ; preds = %complete.sink.split.i, %lor.lhs.false.i.complete.i_crit_edge, %entry.complete.i_crit_edge
  tail call void @scsi_done(ptr noundef %cmd) #9
  br label %dc395x_queue_command_lck.exit

dc395x_queue_command_lck.exit:                    ; preds = %complete.i, %if.end11.i.i.i, %list_add.exit.i.i.dc395x_queue_command_lck.exit_crit_edge, %if.end.i.i30.i.i, %if.then8.i.i.dc395x_queue_command_lck.exit_crit_edge, %list_add_tail.exit.i.i, %list_add_tail.exit.i, %if.end44.i.dc395x_queue_command_lck.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %complete.i ], [ 1, %if.end44.i.dc395x_queue_command_lck.exit_crit_edge ], [ 0, %list_add_tail.exit.i ], [ 0, %list_add_tail.exit.i.i ], [ 0, %if.then8.i.i.dc395x_queue_command_lck.exit_crit_edge ], [ 0, %if.end.i.i30.i.i ], [ 0, %list_add.exit.i.i.dc395x_queue_command_lck.exit_crit_edge ], [ 0, %if.end11.i.i.i ]
  %141 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %142, i32 noundef %call2) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc395x_eh_abort(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lun, align 8
  %conv = trunc i64 %7 to i32
  %conv3 = and i32 %conv, 255
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %cmd, i32 noundef %5, i32 noundef %conv3, ptr noundef %cmd) #12
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %id5 = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id5, align 8
  %lun8 = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 18
  %12 = ptrtoint ptr %lun8 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lun8, align 8
  %conv9 = trunc i64 %13 to i32
  %idxprom.i = and i32 %11, 255
  %idxprom1.i = and i32 %conv9, 255
  %arrayidx2.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 22, i32 %idxprom.i, i32 %idxprom1.i
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %do.end13, label %if.end

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %srb_waiting_list = getelementptr inbounds %struct.DeviceCtlBlk, ptr %15, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %i.0.in.i = phi ptr [ %srb_waiting_list, %if.end ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %i.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %i.0.i = load ptr, ptr %i.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %i.0.i, %srb_waiting_list
  br i1 %cmp.not.i, label %for.cond.i.if.end25_crit_edge, label %for.body.i

for.cond.i.if.end25_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

for.body.i:                                       ; preds = %for.cond.i
  %cmd1.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd1.i, align 4
  %cmp2.i = icmp eq ptr %18, %cmd
  br i1 %cmp2.i, label %find_cmd.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

find_cmd.exit:                                    ; preds = %for.body.i
  %cmd1.i.le = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i, i32 0, i32 2
  %tobool17.not = icmp eq ptr %i.0.i, null
  br i1 %tobool17.not, label %find_cmd.exit.if.end25_crit_edge, label %if.then18

find_cmd.exit.if.end25_crit_edge:                 ; preds = %find_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then18:                                        ; preds = %find_cmd.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %i.0.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then18.list_del.exit_crit_edge

if.then18.list_del.exit_crit_edge:                ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %i.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %i.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then18.list_del.exit_crit_edge
  %25 = ptrtoint ptr %i.0.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %i.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %i.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %flag.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i, i32 0, i32 20
  %27 = ptrtoint ptr %flag.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flag.i, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %list_del.exit.pci_unmap_srb_sense.exit_crit_edge, label %do.end.i

list_del.exit.pci_unmap_srb_sense.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_unmap_srb_sense.exit

do.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 23
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %segment_x.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i, i32 0, i32 3
  %32 = ptrtoint ptr %segment_x.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %segment_x.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %length.i = getelementptr inbounds %struct.SGentry, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %35, i32 noundef %37, i32 noundef 2, i32 noundef 0) #9
  %xferred.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i, i32 0, i32 9
  %38 = ptrtoint ptr %xferred.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %xferred.i, align 4
  %total_xfer_length.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i, i32 0, i32 7
  %40 = ptrtoint ptr %total_xfer_length.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %total_xfer_length.i, align 4
  %41 = ptrtoint ptr %segment_x.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %segment_x.i, align 4
  %arrayidx5.i = getelementptr %struct.SGentry, ptr %42, i32 63
  %43 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx5.i, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %42, align 4
  %46 = load ptr, ptr %segment_x.i, align 4
  %length12.i = getelementptr %struct.SGentry, ptr %46, i32 63, i32 1
  %47 = ptrtoint ptr %length12.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length12.i, align 4
  %length15.i = getelementptr inbounds %struct.SGentry, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %length15.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %length15.i, align 4
  br label %pci_unmap_srb_sense.exit

pci_unmap_srb_sense.exit:                         ; preds = %do.end.i, %list_del.exit.pci_unmap_srb_sense.exit_crit_edge
  %50 = ptrtoint ptr %cmd1.i.le to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cmd1.i.le, align 4
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sc_data_direction.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %51, i32 0, i32 17, i32 0, i32 1
  %54 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i64 = icmp eq i32 %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cmp.not.i65 = icmp eq i32 %53, 3
  %or.cond.i = select i1 %tobool.not.i64, i1 true, i1 %cmp.not.i65
  br i1 %or.cond.i, label %pci_unmap_srb_sense.exit.pci_unmap_srb.exit_crit_edge, label %do.end.i67

pci_unmap_srb_sense.exit.pci_unmap_srb.exit_crit_edge: ; preds = %pci_unmap_srb_sense.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_unmap_srb.exit

do.end.i67:                                       ; preds = %pci_unmap_srb_sense.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i66 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 23
  %56 = ptrtoint ptr %dev.i66 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i66, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %sg_bus_addr.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i, i32 0, i32 4
  %58 = ptrtoint ptr %sg_bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sg_bus_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i, i32 noundef %59, i32 noundef 512, i32 noundef 1, i32 noundef 0) #9
  tail call void @scsi_dma_unmap(ptr noundef %51) #9
  br label %pci_unmap_srb.exit

pci_unmap_srb.exit:                               ; preds = %do.end.i67, %pci_unmap_srb_sense.exit.pci_unmap_srb.exit_crit_edge
  %tag_number.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i, i32 0, i32 17
  %60 = ptrtoint ptr %tag_number.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tag_number.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %cmp.not.i68 = icmp eq i8 %61, -1
  br i1 %cmp.not.i68, label %pci_unmap_srb.exit.free_tag.exit_crit_edge, label %if.then.i

pci_unmap_srb.exit.free_tag.exit_crit_edge:       ; preds = %pci_unmap_srb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tag.exit

if.then.i:                                        ; preds = %pci_unmap_srb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %61 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %neg.i = xor i32 %shl.i, -1
  %tag_mask.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %15, i32 0, i32 5
  %62 = ptrtoint ptr %tag_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tag_mask.i, align 4
  %and.i = and i32 %63, %neg.i
  store i32 %and.i, ptr %tag_mask.i, align 4
  %64 = ptrtoint ptr %tag_number.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %tag_number.i, align 2
  br label %free_tag.exit

free_tag.exit:                                    ; preds = %if.then.i, %pci_unmap_srb.exit.free_tag.exit_crit_edge
  %srb_free_list = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 1
  %prev.i69 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 2
  %65 = ptrtoint ptr %prev.i69 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i69, align 4
  %call.i.i70 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %i.0.i, ptr noundef %66, ptr noundef %srb_free_list) #9
  br i1 %call.i.i70, label %if.end.i.i71, label %free_tag.exit.list_add_tail.exit_crit_edge

free_tag.exit.list_add_tail.exit_crit_edge:       ; preds = %free_tag.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i71:                                     ; preds = %free_tag.exit
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %prev.i69 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %i.0.i, ptr %prev.i69, align 4
  %68 = ptrtoint ptr %i.0.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %srb_free_list, ptr %i.0.i, align 4
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %i.0.i, ptr %66, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i71, %free_tag.exit.list_add_tail.exit_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %71 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %result.i, align 4
  %and.i72 = and i32 %72, -16711681
  %or.i = or i32 %and.i72, 327680
  store i32 %or.i, ptr %result.i, align 4
  br label %cleanup

if.end25:                                         ; preds = %find_cmd.exit.if.end25_crit_edge, %for.cond.i.if.end25_crit_edge
  %srb_going_list = getelementptr inbounds %struct.DeviceCtlBlk, ptr %15, i32 0, i32 2
  br label %for.cond.i76

for.cond.i76:                                     ; preds = %for.body.i79.for.cond.i76_crit_edge, %if.end25
  %i.0.in.i73 = phi ptr [ %srb_going_list, %if.end25 ], [ %i.0.i74, %for.body.i79.for.cond.i76_crit_edge ]
  %73 = ptrtoint ptr %i.0.in.i73 to i32
  call void @__asan_load4_noabort(i32 %73)
  %i.0.i74 = load ptr, ptr %i.0.in.i73, align 4
  %cmp.not.i75 = icmp eq ptr %i.0.i74, %srb_going_list
  br i1 %cmp.not.i75, label %for.cond.i76.do.end36_crit_edge, label %for.body.i79

for.cond.i76.do.end36_crit_edge:                  ; preds = %for.cond.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

for.body.i79:                                     ; preds = %for.cond.i76
  %cmd1.i77 = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i74, i32 0, i32 2
  %74 = ptrtoint ptr %cmd1.i77 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cmd1.i77, align 4
  %cmp2.i78 = icmp eq ptr %75, %cmd
  br i1 %cmp2.i78, label %find_cmd.exit81, label %for.body.i79.for.cond.i76_crit_edge

for.body.i79.for.cond.i76_crit_edge:              ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i76

find_cmd.exit81:                                  ; preds = %for.body.i79
  %tobool27.not = icmp eq ptr %i.0.i74, null
  br i1 %tobool27.not, label %find_cmd.exit81.do.end36_crit_edge, label %do.end31

find_cmd.exit81.do.end36_crit_edge:               ; preds = %find_cmd.exit81
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

do.end31:                                         ; preds = %find_cmd.exit81
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #12
  br label %cleanup

do.end36:                                         ; preds = %find_cmd.exit81.do.end36_crit_edge, %for.cond.i76.do.end36_crit_edge
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %do.end31, %list_add_tail.exit, %do.end13
  %retval.0 = phi i32 [ 8194, %list_add_tail.exit ], [ 8195, %do.end13 ], [ 8195, %do.end36 ], [ 8195, %do.end31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc395x_eh_bus_reset(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #9
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 16
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 8
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 18
  %12 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lun.i, align 8
  %conv.i = trunc i64 %13 to i32
  %conv3.i = and i32 %conv.i, 255
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %cmd, i32 noundef %11, i32 noundef %conv3.i, ptr noundef %cmd) #12
  %pprev.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.not.i, label %entry.do.body7.i_crit_edge, label %if.then.i

entry.do.body7.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %waiting_timer.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 1, i32 3, i32 0, i32 0, i32 4
  %call6.i = tail call i32 @del_timer(ptr noundef %waiting_timer.i) #9
  br label %do.body7.i

do.body7.i:                                       ; preds = %if.then.i, %entry.do.body7.i_crit_edge
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !589
  tail call void @arm_heavy_mb() #9
  %io_port_base.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_port_base.i, align 4
  %add.i = add i32 %17, 164
  %and.i = and i32 %add.i, 1048575
  %add10.i = or i32 %and.i, -18874368
  %18 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !590
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io_port_base.i, align 4
  %add16.i = add i32 %20, 140
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %21 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !591
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_port_base.i, align 4
  %add24.i = add i32 %23, 128
  %and25.i = and i32 %add24.i, 1048575
  %add26.i = or i32 %and25.i, -18874368
  %24 = inttoptr i32 %add26.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 16) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !592
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_port_base.i, align 4
  %add32.i = add i32 %26, 161
  %and33.i = and i32 %add32.i, 1048575
  %add34.i = or i32 %and33.i, -18874368
  %27 = inttoptr i32 %add34.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 16) #9, !srcloc !547
  %acb_flag.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata.i, i32 0, i32 15
  %28 = ptrtoint ptr %acb_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %acb_flag.i.i, align 1
  %30 = or i8 %29, 1
  store i8 %30, ptr %acb_flag.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !583
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io_port_base.i, align 4
  %add.i.i = add i32 %32, 128
  %and.i.i = and i32 %add.i.i, 1048575
  %add4.i.i = or i32 %and.i.i, -18874368
  %33 = inttoptr i32 %add4.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 2048) #9, !srcloc !577
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %do.body7.i
  %34 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io_port_base.i, align 4
  %add6.i.i = add i32 %35, 132
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %36 = inttoptr i32 %add8.i.i to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !584
  %38 = and i8 %37, 4
  %tobool.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %reset_scsi_bus.exit.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

reset_scsi_bus.exit.i:                            ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 107374000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %add36.i = add i32 %40, 150
  %delay_time.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 3, i32 49, i32 38
  %41 = ptrtoint ptr %delay_time.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %delay_time.i, align 4
  %conv37.i = zext i8 %42 to i32
  %mul.i = mul nuw nsw i32 %conv37.i, 100
  %add38.i = add i32 %add36.i, %mul.i
  %last_reset.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 1, i32 5, i32 5
  %43 = ptrtoint ptr %last_reset.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add38.i, ptr %last_reset.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !593
  tail call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_port_base.i, align 4
  %add43.i = add i32 %45, 161
  %and44.i = and i32 %add43.i, 1048575
  %add45.i = or i32 %and44.i, -18874368
  %46 = inttoptr i32 %add45.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 2) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !594
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %io_port_base.i, align 4
  %add.i2.i = add i32 %48, 128
  %and.i3.i = and i32 %add.i2.i, 1048575
  %add1.i.i = or i32 %and.i3.i, -18874368
  %49 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %49, i16 1024) #9, !srcloc !577
  %50 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %io_port_base.i, align 4
  %add48.i = add i32 %51, 132
  %and49.i = and i32 %add48.i, 1048575
  %add50.i = or i32 %and49.i, -18874368
  %52 = inttoptr i32 %add50.i to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !595
  tail call fastcc void @set_basic_config(ptr noundef %hostdata.i) #9
  %dcb_list.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 1, i32 1, i32 1
  %54 = ptrtoint ptr %dcb_list.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %dcb.042.i.i = load ptr, ptr %dcb_list.i.i, align 4
  %cmp.not43.i.i = icmp eq ptr %dcb.042.i.i, %dcb_list.i.i
  br i1 %cmp.not43.i.i, label %reset_scsi_bus.exit.i.__dc395x_eh_bus_reset.exit_crit_edge, label %for.body.lr.ph.i.i

reset_scsi_bus.exit.i.__dc395x_eh_bus_reset.exit_crit_edge: ; preds = %reset_scsi_bus.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__dc395x_eh_bus_reset.exit

for.body.lr.ph.i.i:                               ; preds = %reset_scsi_bus.exit.i
  %config.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata.i, i32 0, i32 17
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %dcb.044.i.i = phi ptr [ %dcb.042.i.i, %for.body.lr.ph.i.i ], [ %dcb.0.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %sync_mode.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.044.i.i, i32 0, i32 12
  %55 = ptrtoint ptr %sync_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %sync_mode.i.i, align 1
  %57 = and i8 %56, -11
  store i8 %57, ptr %sync_mode.i.i, align 1
  %sync_period.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.044.i.i, i32 0, i32 14
  %58 = ptrtoint ptr %sync_period.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %sync_period.i.i, align 1
  %sync_offset.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.044.i.i, i32 0, i32 15
  %59 = ptrtoint ptr %sync_offset.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %sync_offset.i.i, align 2
  %target_id.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.044.i.i, i32 0, i32 7
  %60 = ptrtoint ptr %target_id.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %target_id.i.i, align 2
  %idxprom.i.i = zext i8 %61 to i32
  %arrayidx.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata.i, i32 0, i32 27, i32 6, i32 %idxprom.i.i
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.i, align 2
  %dev_mode.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.044.i.i, i32 0, i32 10
  %64 = ptrtoint ptr %dev_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %dev_mode.i.i, align 1
  %period.i.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata.i, i32 0, i32 27, i32 6, i32 %idxprom.i.i, i32 1
  %65 = ptrtoint ptr %period.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %period.i.i, align 1
  %67 = and i8 %66, 7
  %idxprom11.i.i = zext i8 %67 to i32
  %arrayidx12.i.i = getelementptr [8 x i8], ptr @clock_period, i32 0, i32 %idxprom11.i.i
  %68 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx12.i.i, align 1
  %min_nego_period.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.044.i.i, i32 0, i32 13
  %70 = ptrtoint ptr %min_nego_period.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %min_nego_period.i.i, align 4
  %71 = and i8 %63, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i4.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i4.i, label %for.body.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.if.then.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %72 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %config.i.i, align 1
  %74 = and i8 %73, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool18.not.i.i = icmp eq i8 %74, 0
  br i1 %tobool18.not.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %for.body.i.i.if.then.i.i_crit_edge
  %75 = and i8 %56, -15
  %76 = ptrtoint ptr %sync_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %sync_mode.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %lor.lhs.false.i.i.if.end.i.i_crit_edge
  %77 = ptrtoint ptr %dcb.044.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %dcb.0.i.i = load ptr, ptr %dcb.044.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %dcb.0.i.i, %dcb_list.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i.__dc395x_eh_bus_reset.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end.i.i.__dc395x_eh_bus_reset.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__dc395x_eh_bus_reset.exit

__dc395x_eh_bus_reset.exit:                       ; preds = %if.end.i.i.__dc395x_eh_bus_reset.exit_crit_edge, %reset_scsi_bus.exit.i.__dc395x_eh_bus_reset.exit_crit_edge
  tail call fastcc void @doing_srb_done(ptr noundef %hostdata.i, i8 noundef zeroext 8, ptr noundef %cmd, i8 noundef zeroext 0) #9
  %active_dcb.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 1, i32 3
  %78 = ptrtoint ptr %active_dcb.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %active_dcb.i, align 4
  %79 = ptrtoint ptr %acb_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %acb_flag.i.i, align 1
  tail call fastcc void @waiting_process_next(ptr noundef %hostdata.i) #9
  %80 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %host_lock3 = getelementptr inbounds %struct.Scsi_Host, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %host_lock3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %host_lock3, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %85) #9
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc395x_slave_alloc(ptr nocapture noundef readonly %scsi_device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scsi_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsi_device, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %id = getelementptr inbounds %struct.scsi_device, ptr %scsi_device, i32 0, i32 16
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %scsi_device, i32 0, i32 18
  %4 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %lun, align 8
  %conv1 = trunc i64 %5 to i8
  %idxprom.i = and i32 %3, 255
  %period.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 %idxprom.i, i32 1
  %6 = ptrtoint ptr %period.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %period.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2592, i32 noundef 52) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv = trunc i32 %3 to i8
  %9 = and i8 %7, 7
  %arrayidx.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 27, i32 6, i32 %idxprom.i
  %acb4.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %acb4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %acb4.i, align 8
  %srb_going_list.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %srb_going_list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %srb_going_list.i, ptr %srb_going_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %srb_going_list.i, ptr %prev.i.i, align 8
  %srb_waiting_list.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %srb_waiting_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %srb_waiting_list.i, ptr %srb_waiting_list.i, align 4
  %prev.i127.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i127.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %srb_waiting_list.i, ptr %prev.i127.i, align 8
  %active_srb.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %active_srb.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %active_srb.i, align 4
  %tag_mask.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %tag_mask.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tag_mask.i, align 8
  %max_command.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %max_command.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %max_command.i, align 4
  %target_id.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %target_id.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %target_id.i, align 2
  %target_lun.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %target_lun.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv1, ptr %target_lun.i, align 1
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 2
  %dev_mode.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %dev_mode.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %dev_mode.i, align 1
  %23 = shl i8 %21, 4
  %24 = and i8 %23, 64
  %25 = and i8 %conv1, 7
  %26 = or i8 %25, %24
  %or14126.i = or i8 %26, -128
  %identify_msg.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %identify_msg.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %or14126.i, ptr %identify_msg.i, align 8
  %inquiry7.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 11
  %28 = ptrtoint ptr %inquiry7.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %inquiry7.i, align 2
  %sync_mode.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 12
  %29 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %sync_mode.i, align 1
  %idxprom16.i = zext i8 %9 to i32
  %arrayidx17.i = getelementptr [8 x i8], ptr @clock_period, i32 0, i32 %idxprom16.i
  %30 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx17.i, align 1
  %min_nego_period.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 13
  %32 = ptrtoint ptr %min_nego_period.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %min_nego_period.i, align 4
  %sync_period.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 14
  %33 = ptrtoint ptr %sync_period.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %sync_period.i, align 1
  %sync_offset.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 15
  %34 = ptrtoint ptr %sync_offset.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %sync_offset.i, align 2
  %flag.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %call7.i.i, i32 0, i32 16
  %35 = ptrtoint ptr %flag.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %flag.i, align 1
  %36 = and i8 %21, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool21.not.i = icmp eq i8 %36, 0
  br i1 %tobool21.not.i, label %if.end.i.if.end30.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end30.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %config.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 17
  %37 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %config.i, align 1
  %39 = and i8 %38, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool24.not.i = icmp eq i8 %39, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i.if.end30.i_crit_edge, label %if.then25.i

land.lhs.true.i.if.end30.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 4, ptr %sync_mode.i, align 1
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then25.i, %land.lhs.true.i.if.end30.i_crit_edge, %if.end.i.if.end30.i_crit_edge
  %41 = ptrtoint ptr %dev_mode.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dev_mode.i, align 1
  %43 = and i8 %42, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool34.not.i = icmp eq i8 %43, 0
  br i1 %tobool34.not.i, label %if.end30.i.if.end45.i_crit_edge, label %if.then35.i

if.end30.i.if.end45.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.then35.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1)
  %tobool36.not.i = icmp eq i8 %conv1, 0
  br i1 %tobool36.not.i, label %if.then35.i.if.then39.i_crit_edge, label %lor.lhs.false.i

if.then35.i.if.then39.i_crit_edge:                ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39.i

lor.lhs.false.i:                                  ; preds = %if.then35.i
  %44 = load i16, ptr @current_sync_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool38.not.i = icmp eq i16 %44, 0
  br i1 %tobool38.not.i, label %lor.lhs.false.i.if.end45.i_crit_edge, label %lor.lhs.false.i.if.then39.i_crit_edge

lor.lhs.false.i.if.then39.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39.i

lor.lhs.false.i.if.end45.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.then39.i:                                      ; preds = %lor.lhs.false.i.if.then39.i_crit_edge, %if.then35.i.if.then39.i_crit_edge
  %45 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sync_mode.i, align 1
  %47 = or i8 %46, 1
  store i8 %47, ptr %sync_mode.i, align 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then39.i, %lor.lhs.false.i.if.end45.i_crit_edge, %if.end30.i.if.end45.i_crit_edge
  %48 = ptrtoint ptr %target_lun.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %target_lun.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp.not.i = icmp eq i8 %49, 0
  br i1 %cmp.not.i, label %if.end45.i.if.end_crit_edge, label %if.then49.i

if.end45.i.if.end_crit_edge:                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then49.i:                                      ; preds = %if.end45.i
  %dcb_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then49.i
  %p.0.in.i = phi ptr [ %dcb_list.i, %if.then49.i ], [ %p.0.i, %for.body.i.for.cond.i_crit_edge ]
  %50 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp51.not.i = icmp eq ptr %p.0.i, %dcb_list.i
  br i1 %cmp51.not.i, label %for.cond.i.device_alloc.exit_crit_edge, label %for.body.i

for.cond.i.device_alloc.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %device_alloc.exit

for.body.i:                                       ; preds = %for.cond.i
  %target_id53.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %p.0.i, i32 0, i32 7
  %51 = ptrtoint ptr %target_id53.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %target_id53.i, align 2
  %53 = ptrtoint ptr %target_id.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %target_id.i, align 2
  %cmp57.i = icmp eq i8 %52, %54
  br i1 %cmp57.i, label %for.body.i.device_alloc.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.device_alloc.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %device_alloc.exit

device_alloc.exit:                                ; preds = %for.body.i.device_alloc.exit_crit_edge, %for.cond.i.device_alloc.exit_crit_edge
  %p.0.lcssa.i = phi ptr [ %dcb_list.i, %for.cond.i.device_alloc.exit_crit_edge ], [ %p.0.i, %for.body.i.device_alloc.exit_crit_edge ]
  %sync_mode69.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %p.0.lcssa.i, i32 0, i32 12
  %55 = ptrtoint ptr %sync_mode69.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %sync_mode69.i, align 1
  %57 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %sync_mode.i, align 1
  %sync_period71.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %p.0.lcssa.i, i32 0, i32 14
  %58 = ptrtoint ptr %sync_period71.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sync_period71.i, align 1
  %60 = ptrtoint ptr %sync_period.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %sync_period.i, align 1
  %min_nego_period73.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %p.0.lcssa.i, i32 0, i32 13
  %61 = ptrtoint ptr %min_nego_period73.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %min_nego_period73.i, align 4
  %63 = ptrtoint ptr %min_nego_period.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %min_nego_period.i, align 4
  %sync_offset75.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %p.0.lcssa.i, i32 0, i32 15
  %64 = ptrtoint ptr %sync_offset75.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sync_offset75.i, align 2
  %66 = ptrtoint ptr %sync_offset.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %sync_offset.i, align 2
  %inquiry777.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %p.0.lcssa.i, i32 0, i32 11
  %67 = ptrtoint ptr %inquiry777.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %inquiry777.i, align 2
  %69 = ptrtoint ptr %inquiry7.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %inquiry7.i, align 2
  br label %if.end

if.end:                                           ; preds = %device_alloc.exit, %if.end45.i.if.end_crit_edge
  %70 = ptrtoint ptr %acb4.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %hostdata, ptr %acb4.i, align 8
  %dcb_list.i7 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1, i32 1
  %71 = ptrtoint ptr %dcb_list.i7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %dcb_list.i7, align 4
  %cmp.i.not.i = icmp eq ptr %72, %dcb_list.i7
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.if.end.i9_crit_edge

if.end.if.end.i9_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i9

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dcb_run_robin.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 2, i32 1
  %73 = ptrtoint ptr %dcb_run_robin.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i, ptr %dcb_run_robin.i, align 4
  br label %if.end.i9

if.end.i9:                                        ; preds = %if.then.i, %if.end.if.end.i9_crit_edge
  %prev.i.i8 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 2
  %74 = ptrtoint ptr %prev.i.i8 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i8, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %75, ptr noundef %dcb_list.i7) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i9.adapter_add_device.exit_crit_edge

if.end.i9.adapter_add_device.exit_crit_edge:      ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #11
  br label %adapter_add_device.exit

if.end.i.i.i:                                     ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %prev.i.i8 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %prev.i.i8, align 4
  %77 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %dcb_list.i7, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %call7.i.i, ptr %75, align 4
  br label %adapter_add_device.exit

adapter_add_device.exit:                          ; preds = %if.end.i.i.i, %if.end.i9.adapter_add_device.exit_crit_edge
  %80 = ptrtoint ptr %target_lun.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %target_lun.i, align 1
  %conv.i = zext i8 %81 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %82 = ptrtoint ptr %target_id.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %target_id.i, align 2
  %idxprom.i12 = zext i8 %83 to i32
  %arrayidx.i13 = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 21, i32 %idxprom.i12
  %84 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i13, align 1
  %86 = trunc i32 %shl.i to i8
  %conv4.i = or i8 %85, %86
  store i8 %conv4.i, ptr %arrayidx.i13, align 1
  %87 = load i8, ptr %target_id.i, align 2
  %idxprom6.i = zext i8 %87 to i32
  %88 = load i8, ptr %target_lun.i, align 1
  %idxprom9.i = zext i8 %88 to i32
  %arrayidx10.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 22, i32 %idxprom6.i, i32 %idxprom9.i
  %89 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call7.i.i, ptr %arrayidx10.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %adapter_add_device.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %adapter_add_device.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dc395x_slave_destroy(ptr nocapture noundef readonly %scsi_device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scsi_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsi_device, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %id = getelementptr inbounds %struct.scsi_device, ptr %scsi_device, i32 0, i32 16
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %scsi_device, i32 0, i32 18
  %4 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %lun, align 8
  %conv1 = trunc i64 %5 to i32
  %idxprom.i = and i32 %3, 255
  %idxprom1.i = and i32 %conv1, 255
  %arrayidx2.i = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 22, i32 %idxprom.i, i32 %idxprom1.i
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @adapter_remove_and_free_device(ptr noundef %hostdata, ptr noundef nonnull %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc395x_show_info(ptr noundef %m, ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 53
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.71) #9
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.72, i32 noundef %5) #9
  %config = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 17
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %config, align 1
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool.not, ptr @.str.75, ptr @.str.74
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.73, ptr noundef nonnull %cond) #9
  %io_port_base = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_port_base, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.76, i32 noundef %10) #9
  %irq_level = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 5, i32 5, i32 1, i32 1
  %11 = ptrtoint ptr %irq_level to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_level, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.77, i32 noundef %12) #9
  %sel_timeout = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 12
  %13 = ptrtoint ptr %sel_timeout to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sel_timeout, align 2
  %conv6 = zext i8 %14 to i32
  %mul = mul nuw nsw i32 %conv6, 1638
  %div = udiv i32 %mul, 1000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.78, i32 noundef %div) #9
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 21
  %15 = ptrtoint ptr %max_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 22
  %17 = ptrtoint ptr %max_lun to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %max_lun, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.79, i32 noundef %16, i64 noundef %18) #9
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 25
  %19 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %this_id, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.80, i32 noundef %20) #9
  %tag_max_num = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 5, i32 5, i32 2
  %21 = ptrtoint ptr %tag_max_num to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tag_max_num, align 4
  %conv7 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.81, i32 noundef %conv7) #9
  %23 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_port_base, align 4
  %add = add i32 %24, 142
  %and9 = and i32 %add, 1048575
  %add10 = or i32 %and9, -18874368
  %25 = inttoptr i32 %add10 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !596
  %conv14 = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.82, i32 noundef %conv14) #9
  %delay_time = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 3, i32 49, i32 38
  %27 = ptrtoint ptr %delay_time to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %delay_time, align 4
  %conv15 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.83, i32 noundef %conv15) #9
  %dcb_list = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 1, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry
  %count.0.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %pos.0.in.i = phi ptr [ %dcb_list, %entry ], [ %pos.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %29 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %dcb_list
  %inc.i = add i32 %count.0.i, 1
  br i1 %cmp.i.not.i, label %list_size.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

list_size.exit:                                   ; preds = %for.cond.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.84, i32 noundef %count.0.i) #9
  %dcb_map = getelementptr inbounds %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 21
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.85, ptr noundef %dcb_map) #9
  %arrayidx18 = getelementptr %struct.AdapterCtlBlk, ptr %hostdata, i32 0, i32 21, i32 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.86, ptr noundef %arrayidx18) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.87) #9
  %30 = ptrtoint ptr %dcb_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %dcb.0309 = load ptr, ptr %dcb_list, align 4
  %cmp22.not310 = icmp eq ptr %dcb.0309, %dcb_list
  br i1 %cmp22.not310, label %list_size.exit.for.end_crit_edge, label %list_size.exit.for.body_crit_edge

list_size.exit.for.body_crit_edge:                ; preds = %list_size.exit
  br label %for.body

list_size.exit.for.end_crit_edge:                 ; preds = %list_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end85.for.body_crit_edge, %list_size.exit.for.body_crit_edge
  %dcb.0312 = phi ptr [ %dcb.0, %if.end85.for.body_crit_edge ], [ %dcb.0309, %list_size.exit.for.body_crit_edge ]
  %dev.0311 = phi i32 [ %inc, %if.end85.for.body_crit_edge ], [ 0, %list_size.exit.for.body_crit_edge ]
  %target_id = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0312, i32 0, i32 7
  %31 = ptrtoint ptr %target_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %target_id, align 2
  %conv24 = zext i8 %32 to i32
  %target_lun = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0312, i32 0, i32 8
  %33 = ptrtoint ptr %target_lun to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %target_lun, align 1
  %conv25 = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.88, i32 noundef %dev.0311, i32 noundef %conv24, i32 noundef %conv25) #9
  %dev_mode = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0312, i32 0, i32 10
  %35 = ptrtoint ptr %dev_mode to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dev_mode, align 1
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool28.not = icmp eq i8 %37, 0
  %.str.90..str.89 = select i1 %tobool28.not, ptr @.str.90, ptr @.str.89
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.90..str.89) #9
  %sync_offset = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0312, i32 0, i32 15
  %38 = ptrtoint ptr %sync_offset to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sync_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool29.not = icmp eq i8 %39, 0
  %.str.90.sink322 = select i1 %tobool29.not, ptr @.str.90, ptr @.str.89
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.90.sink322) #9
  %sync_period = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0312, i32 0, i32 14
  %40 = ptrtoint ptr %sync_period to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sync_period, align 1
  %42 = and i8 %41, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool35.not = icmp eq i8 %42, 0
  %.str.90.sink323 = select i1 %tobool35.not, ptr @.str.90, ptr @.str.89
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.90.sink323) #9
  %43 = ptrtoint ptr %dev_mode to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dev_mode, align 1
  %45 = and i8 %44, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool42.not = icmp eq i8 %45, 0
  %.str.90.sink324 = select i1 %tobool42.not, ptr @.str.90, ptr @.str.89
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.90.sink324) #9
  %46 = ptrtoint ptr %dev_mode to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dev_mode, align 1
  %48 = and i8 %47, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool49.not = icmp eq i8 %48, 0
  %.str.90.sink325 = select i1 %tobool49.not, ptr @.str.90, ptr @.str.89
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.90.sink325) #9
  %sync_mode = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0312, i32 0, i32 12
  %49 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sync_mode, align 1
  %51 = and i8 %50, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool55.not = icmp eq i8 %51, 0
  %.str.90.sink326 = select i1 %tobool55.not, ptr @.str.90, ptr @.str.89
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.90.sink326) #9
  %52 = ptrtoint ptr %sync_period to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sync_period, align 1
  %54 = and i8 %53, 7
  %and61 = zext i8 %54 to i32
  %arrayidx62 = getelementptr [8 x i8], ptr @clock_period, i32 0, i32 %and61
  %55 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %56 to i32
  %shl = shl nuw nsw i32 %conv63, 2
  %57 = ptrtoint ptr %sync_offset to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sync_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool65.not = icmp eq i8 %58, 0
  br i1 %tobool65.not, label %if.else67, label %if.then66

if.then66:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.91, i32 noundef %shl) #9
  br label %if.end70

if.else67:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %min_nego_period = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0312, i32 0, i32 13
  %59 = ptrtoint ptr %min_nego_period to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %min_nego_period, align 4
  %conv68 = zext i8 %60 to i32
  %shl69 = shl nuw nsw i32 %conv68, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.92, i32 noundef %shl69) #9
  br label %if.end70

if.end70:                                         ; preds = %if.else67, %if.then66
  %61 = ptrtoint ptr %sync_offset to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sync_offset, align 2
  %63 = and i8 %62, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool74.not = icmp eq i8 %63, 0
  br i1 %tobool74.not, label %if.else84, label %if.then75

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %and73 = zext i8 %63 to i32
  %div76.rhs.trunc = trunc i32 %shl to i16
  %div76.rhs.trunc.frozen = freeze i16 %div76.rhs.trunc
  %div76306 = udiv i16 1000, %div76.rhs.trunc.frozen
  %div76.zext = zext i16 %div76306 to i32
  %64 = mul i16 %div76306, %div76.rhs.trunc.frozen
  %rem307.decomposed = sub i16 1000, %64
  %narrow = mul nuw nsw i16 %rem307.decomposed, 10
  %conv63.tr = zext i8 %56 to i16
  %65 = shl nuw nsw i16 %conv63.tr, 1
  %div80.lhs.trunc = add nuw nsw i16 %narrow, %65
  %div80308 = udiv i16 %div80.lhs.trunc, %div76.rhs.trunc
  %div80.zext = zext i16 %div80308 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, i32 noundef %div76.zext, i32 noundef %div80.zext, i32 noundef %and73) #9
  br label %if.end85

if.else84:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.94) #9
  br label %if.end85

if.end85:                                         ; preds = %if.else84, %if.then75
  %max_command = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0312, i32 0, i32 6
  %66 = ptrtoint ptr %max_command to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %max_command, align 4
  %conv86 = zext i16 %67 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.95, i32 noundef %conv86) #9
  %inc = add i32 %dev.0311, 1
  %68 = ptrtoint ptr %dcb.0312 to i32
  call void @__asan_load4_noabort(i32 %68)
  %dcb.0 = load ptr, ptr %dcb.0312, align 4
  %cmp22.not = icmp eq ptr %dcb.0, %dcb_list
  br i1 %cmp22.not, label %if.end85.for.end_crit_edge, label %if.end85.for.body_crit_edge

if.end85.for.body_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end85.for.end_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end85.for.end_crit_edge, %list_size.exit.for.end_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %70, null
  br i1 %tobool.not.i.i.not, label %if.else95, label %if.then94

if.then94:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.96) #9
  br label %if.end96

if.else95:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #9
  br label %if.end96

if.end96:                                         ; preds = %if.else95, %if.then94
  %71 = ptrtoint ptr %dcb_list to i32
  call void @__asan_load4_noabort(i32 %71)
  %dcb.1319 = load ptr, ptr %dcb_list, align 4
  %cmp105.not320 = icmp eq ptr %dcb.1319, %dcb_list
  br i1 %cmp105.not320, label %if.end96.for.end182_crit_edge, label %if.end96.for.body108_crit_edge

if.end96.for.body108_crit_edge:                   ; preds = %if.end96
  br label %for.body108

if.end96.for.end182_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end182

for.body108:                                      ; preds = %if.end175.for.body108_crit_edge, %if.end96.for.body108_crit_edge
  %dcb.1321 = phi ptr [ %dcb.1, %if.end175.for.body108_crit_edge ], [ %dcb.1319, %if.end96.for.body108_crit_edge ]
  %srb_waiting_list = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.1321, i32 0, i32 3
  %72 = ptrtoint ptr %srb_waiting_list to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %srb_waiting_list, align 4
  %cmp.i.not = icmp eq ptr %73, %srb_waiting_list
  br i1 %cmp.i.not, label %for.body108.if.end118_crit_edge, label %if.then111

for.body108.if.end118_crit_edge:                  ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then111:                                       ; preds = %for.body108
  %target_id112 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.1321, i32 0, i32 7
  %74 = ptrtoint ptr %target_id112 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %target_id112, align 2
  %target_lun114 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.1321, i32 0, i32 8
  %76 = ptrtoint ptr %target_lun114 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %target_lun114, align 1
  br label %for.cond.i291

for.cond.i291:                                    ; preds = %for.cond.i291.for.cond.i291_crit_edge, %if.then111
  %count.0.i286 = phi i32 [ 0, %if.then111 ], [ %inc.i290, %for.cond.i291.for.cond.i291_crit_edge ]
  %pos.0.in.i287 = phi ptr [ %srb_waiting_list, %if.then111 ], [ %pos.0.i288, %for.cond.i291.for.cond.i291_crit_edge ]
  %78 = ptrtoint ptr %pos.0.in.i287 to i32
  call void @__asan_load4_noabort(i32 %78)
  %pos.0.i288 = load ptr, ptr %pos.0.in.i287, align 4
  %cmp.i.not.i289 = icmp eq ptr %pos.0.i288, %srb_waiting_list
  %inc.i290 = add i32 %count.0.i286, 1
  br i1 %cmp.i.not.i289, label %list_size.exit292, label %for.cond.i291.for.cond.i291_crit_edge

for.cond.i291.for.cond.i291_crit_edge:            ; preds = %for.cond.i291
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i291

list_size.exit292:                                ; preds = %for.cond.i291
  call void @__sanitizer_cov_trace_pc() #11
  %conv113 = zext i8 %75 to i32
  %conv115 = zext i8 %77 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.97, i32 noundef %conv113, i32 noundef %conv115, i32 noundef %count.0.i286) #9
  br label %if.end118

if.end118:                                        ; preds = %list_size.exit292, %for.body108.if.end118_crit_edge
  %79 = ptrtoint ptr %srb_waiting_list to i32
  call void @__asan_load4_noabort(i32 %79)
  %srb.0313 = load ptr, ptr %srb_waiting_list, align 4
  %cmp127.not314 = icmp eq ptr %srb.0313, %srb_waiting_list
  br i1 %cmp127.not314, label %if.end118.for.end137_crit_edge, label %if.end118.for.body130_crit_edge

if.end118.for.body130_crit_edge:                  ; preds = %if.end118
  br label %for.body130

if.end118.for.end137_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end137

for.body130:                                      ; preds = %for.body130.for.body130_crit_edge, %if.end118.for.body130_crit_edge
  %srb.0315 = phi ptr [ %srb.0, %for.body130.for.body130_crit_edge ], [ %srb.0313, %if.end118.for.body130_crit_edge ]
  %cmd = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.0315, i32 0, i32 2
  %80 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cmd, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.98, ptr noundef %81) #9
  %82 = ptrtoint ptr %srb.0315 to i32
  call void @__asan_load4_noabort(i32 %82)
  %srb.0 = load ptr, ptr %srb.0315, align 4
  %cmp127.not = icmp eq ptr %srb.0, %srb_waiting_list
  br i1 %cmp127.not, label %for.body130.for.end137_crit_edge, label %for.body130.for.body130_crit_edge

for.body130.for.body130_crit_edge:                ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body130

for.body130.for.end137_crit_edge:                 ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end137

for.end137:                                       ; preds = %for.body130.for.end137_crit_edge, %if.end118.for.end137_crit_edge
  %srb_going_list = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.1321, i32 0, i32 2
  %83 = ptrtoint ptr %srb_going_list to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %srb_going_list, align 4
  %cmp.i293.not = icmp eq ptr %84, %srb_going_list
  br i1 %cmp.i293.not, label %for.end137.if.end147_crit_edge, label %if.then140

for.end137.if.end147_crit_edge:                   ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.then140:                                       ; preds = %for.end137
  %target_id141 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.1321, i32 0, i32 7
  %85 = ptrtoint ptr %target_id141 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %target_id141, align 2
  %target_lun143 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.1321, i32 0, i32 8
  %87 = ptrtoint ptr %target_lun143 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %target_lun143, align 1
  br label %for.cond.i300

for.cond.i300:                                    ; preds = %for.cond.i300.for.cond.i300_crit_edge, %if.then140
  %count.0.i295 = phi i32 [ 0, %if.then140 ], [ %inc.i299, %for.cond.i300.for.cond.i300_crit_edge ]
  %pos.0.in.i296 = phi ptr [ %srb_going_list, %if.then140 ], [ %pos.0.i297, %for.cond.i300.for.cond.i300_crit_edge ]
  %89 = ptrtoint ptr %pos.0.in.i296 to i32
  call void @__asan_load4_noabort(i32 %89)
  %pos.0.i297 = load ptr, ptr %pos.0.in.i296, align 4
  %cmp.i.not.i298 = icmp eq ptr %pos.0.i297, %srb_going_list
  %inc.i299 = add i32 %count.0.i295, 1
  br i1 %cmp.i.not.i298, label %list_size.exit301, label %for.cond.i300.for.cond.i300_crit_edge

for.cond.i300.for.cond.i300_crit_edge:            ; preds = %for.cond.i300
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i300

list_size.exit301:                                ; preds = %for.cond.i300
  call void @__sanitizer_cov_trace_pc() #11
  %conv142 = zext i8 %86 to i32
  %conv144 = zext i8 %88 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.99, i32 noundef %conv142, i32 noundef %conv144, i32 noundef %count.0.i295) #9
  br label %if.end147

if.end147:                                        ; preds = %list_size.exit301, %for.end137.if.end147_crit_edge
  %90 = ptrtoint ptr %srb_going_list to i32
  call void @__asan_load4_noabort(i32 %90)
  %srb.1316 = load ptr, ptr %srb_going_list, align 4
  %cmp156.not317 = icmp eq ptr %srb.1316, %srb_going_list
  br i1 %cmp156.not317, label %if.end147.for.end167_crit_edge, label %if.end147.for.body159_crit_edge

if.end147.for.body159_crit_edge:                  ; preds = %if.end147
  br label %for.body159

if.end147.for.end167_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end167

for.body159:                                      ; preds = %for.body159.for.body159_crit_edge, %if.end147.for.body159_crit_edge
  %srb.1318 = phi ptr [ %srb.1, %for.body159.for.body159_crit_edge ], [ %srb.1316, %if.end147.for.body159_crit_edge ]
  %cmd160 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.1318, i32 0, i32 2
  %91 = ptrtoint ptr %cmd160 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cmd160, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.98, ptr noundef %92) #9
  %93 = ptrtoint ptr %srb.1318 to i32
  call void @__asan_load4_noabort(i32 %93)
  %srb.1 = load ptr, ptr %srb.1318, align 4
  %cmp156.not = icmp eq ptr %srb.1, %srb_going_list
  br i1 %cmp156.not, label %for.body159.for.end167_crit_edge, label %for.body159.for.body159_crit_edge

for.body159.for.body159_crit_edge:                ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body159

for.body159.for.end167_crit_edge:                 ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end167

for.end167:                                       ; preds = %for.body159.for.end167_crit_edge, %if.end147.for.end167_crit_edge
  %94 = ptrtoint ptr %srb_waiting_list to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %srb_waiting_list, align 4
  %cmp.i302.not = icmp eq ptr %95, %srb_waiting_list
  br i1 %cmp.i302.not, label %lor.lhs.false, label %for.end167.if.then174_crit_edge

for.end167.if.then174_crit_edge:                  ; preds = %for.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then174

lor.lhs.false:                                    ; preds = %for.end167
  %96 = ptrtoint ptr %srb_going_list to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %srb_going_list, align 4
  %cmp.i304.not = icmp eq ptr %97, %srb_going_list
  br i1 %cmp.i304.not, label %lor.lhs.false.if.end175_crit_edge, label %lor.lhs.false.if.then174_crit_edge

lor.lhs.false.if.then174_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then174

lor.lhs.false.if.end175_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175

if.then174:                                       ; preds = %lor.lhs.false.if.then174_crit_edge, %for.end167.if.then174_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #9
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %lor.lhs.false.if.end175_crit_edge
  %98 = ptrtoint ptr %dcb.1321 to i32
  call void @__asan_load4_noabort(i32 %98)
  %dcb.1 = load ptr, ptr %dcb.1321, align 4
  %cmp105.not = icmp eq ptr %dcb.1, %dcb_list
  br i1 %cmp105.not, label %if.end175.for.end182_crit_edge, label %if.end175.for.body108_crit_edge

if.end175.for.body108_crit_edge:                  ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body108

if.end175.for.end182_crit_edge:                   ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end182

for.end182:                                       ; preds = %if.end175.for.end182_crit_edge, %if.end96.for.end182_crit_edge
  %99 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hostdata, align 4
  %host_lock184 = getelementptr inbounds %struct.Scsi_Host, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %host_lock184 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %host_lock184, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %102, i32 noundef %call2) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @waiting_process_next(ptr noundef %acb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb_list = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 3
  %active_dcb = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 5
  %0 = ptrtoint ptr %active_dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active_dcb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup55_crit_edge

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup55

lor.lhs.false:                                    ; preds = %entry
  %acb_flag = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 15
  %2 = ptrtoint ptr %acb_flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %acb_flag, align 1
  %4 = and i8 %3, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup55_crit_edge

lor.lhs.false.cleanup55_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup55

if.end:                                           ; preds = %lor.lhs.false
  %waiting_timer = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 8
  %pprev.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 8, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @del_timer(ptr noundef %waiting_timer) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %7 = ptrtoint ptr %dcb_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %dcb_list, align 4
  %cmp.i.not = icmp eq ptr %8, %dcb_list
  br i1 %cmp.i.not, label %if.end6.cleanup55_crit_edge, label %for.cond.preheader

if.end6.cleanup55_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup55

for.cond.preheader:                               ; preds = %if.end6
  %dcb_run_robin = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 4
  %9 = ptrtoint ptr %dcb_run_robin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dcb_run_robin, align 4
  br label %for.body

for.condthread-pre-split:                         ; preds = %for.body
  %11 = ptrtoint ptr %dcb.0142 to i32
  call void @__asan_load4_noabort(i32 %11)
  %dcb.0.pr = load ptr, ptr %dcb.0142, align 4
  %cmp.not = icmp eq ptr %dcb.0.pr, %dcb_list
  br i1 %cmp.not, label %for.condthread-pre-split.if.then22_crit_edge, label %for.condthread-pre-split.for.body_crit_edge

for.condthread-pre-split.for.body_crit_edge:      ; preds = %for.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.condthread-pre-split.if.then22_crit_edge:     ; preds = %for.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

for.body:                                         ; preds = %for.condthread-pre-split.for.body_crit_edge, %for.cond.preheader
  %dcb.0142 = phi ptr [ %8, %for.cond.preheader ], [ %dcb.0.pr, %for.condthread-pre-split.for.body_crit_edge ]
  %cmp12 = icmp eq ptr %dcb.0142, %10
  br i1 %cmp12, label %for.end, label %for.condthread-pre-split

for.end:                                          ; preds = %for.body
  %tobool21.not = icmp eq ptr %dcb.0142, null
  br i1 %tobool21.not, label %for.end.if.then22_crit_edge, label %for.end.if.end28_crit_edge

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

for.end.if.then22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then22:                                        ; preds = %for.end.if.then22_crit_edge, %for.condthread-pre-split.if.then22_crit_edge
  %12 = ptrtoint ptr %dcb_run_robin to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %dcb_run_robin, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %for.end.if.end28_crit_edge
  %start.1 = phi ptr [ %dcb.0142, %for.end.if.end28_crit_edge ], [ %8, %if.then22 ]
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %if.end28
  %pos.0 = phi ptr [ %start.1, %if.end28 ], [ %pos.1, %cleanup.do.body_crit_edge ]
  %srb_waiting_list = getelementptr inbounds %struct.DeviceCtlBlk, ptr %pos.0, i32 0, i32 3
  %13 = ptrtoint ptr %dcb_run_robin to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dcb_run_robin, align 4
  %15 = ptrtoint ptr %dcb_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %dcb_list, align 4
  %cmp.i.i = icmp eq ptr %16, %dcb_list
  br i1 %cmp.i.i, label %do.body.dcb_get_next.exit_crit_edge, label %do.body.for.body.i_crit_edge

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

do.body.dcb_get_next.exit_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dcb_get_next.exit

for.body.i:                                       ; preds = %if.else.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %i.051.i = phi ptr [ %i.0.i, %if.else.i.for.body.i_crit_edge ], [ %16, %do.body.for.body.i_crit_edge ]
  %use_next.050.i = phi i32 [ %spec.select.i, %if.else.i.for.body.i_crit_edge ], [ 0, %do.body.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_next.050.i)
  %tobool2.not.i = icmp eq i32 %use_next.050.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %for.end.i

if.else.i:                                        ; preds = %for.body.i
  %cmp4.i = icmp eq ptr %i.051.i, %14
  %spec.select.i = zext i1 %cmp4.i to i32
  %17 = ptrtoint ptr %i.051.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %i.0.i = load ptr, ptr %i.051.i, align 4
  %cmp.not.i = icmp eq ptr %i.0.i, %dcb_list
  br i1 %cmp.not.i, label %if.else.i.if.then14.i_crit_edge, label %if.else.i.for.body.i_crit_edge

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.else.i.if.then14.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

for.end.i:                                        ; preds = %for.body.i
  %tobool13.not.i = icmp eq ptr %i.051.i, null
  br i1 %tobool13.not.i, label %for.end.i.if.then14.i_crit_edge, label %for.end.i.dcb_get_next.exit_crit_edge

for.end.i.dcb_get_next.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dcb_get_next.exit

for.end.i.if.then14.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.then14.i:                                      ; preds = %for.end.i.if.then14.i_crit_edge, %if.else.i.if.then14.i_crit_edge
  br label %dcb_get_next.exit

dcb_get_next.exit:                                ; preds = %if.then14.i, %for.end.i.dcb_get_next.exit_crit_edge, %do.body.dcb_get_next.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.body.dcb_get_next.exit_crit_edge ], [ %i.051.i, %for.end.i.dcb_get_next.exit_crit_edge ], [ %16, %if.then14.i ]
  %18 = ptrtoint ptr %dcb_run_robin to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i, ptr %dcb_run_robin, align 4
  %19 = ptrtoint ptr %srb_waiting_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %srb_waiting_list, align 4
  %cmp.i91.not = icmp eq ptr %20, %srb_waiting_list
  br i1 %cmp.i91.not, label %dcb_get_next.exit.if.then39_crit_edge, label %lor.lhs.false34

dcb_get_next.exit.if.then39_crit_edge:            ; preds = %dcb_get_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

lor.lhs.false34:                                  ; preds = %dcb_get_next.exit
  %max_command = getelementptr inbounds %struct.DeviceCtlBlk, ptr %pos.0, i32 0, i32 6
  %21 = ptrtoint ptr %max_command to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %max_command, align 4
  %srb_going_list = getelementptr inbounds %struct.DeviceCtlBlk, ptr %pos.0, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %lor.lhs.false34
  %count.0.i = phi i32 [ 0, %lor.lhs.false34 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %pos.0.in.i = phi ptr [ %srb_going_list, %lor.lhs.false34 ], [ %pos.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %23 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %srb_going_list
  %inc.i = add i32 %count.0.i, 1
  br i1 %cmp.i.not.i, label %list_size.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

list_size.exit:                                   ; preds = %for.cond.i
  %conv35 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.i, i32 %conv35)
  %cmp37.not = icmp ult i32 %count.0.i, %conv35
  br i1 %cmp37.not, label %if.else, label %list_size.exit.if.then39_crit_edge

list_size.exit.if.then39_crit_edge:               ; preds = %list_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

if.then39:                                        ; preds = %list_size.exit.if.then39_crit_edge, %dcb_get_next.exit.if.then39_crit_edge
  %24 = ptrtoint ptr %dcb_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %dcb_list, align 4
  %cmp.i.i94 = icmp eq ptr %25, %dcb_list
  br i1 %cmp.i.i94, label %if.then39.cleanup_crit_edge, label %if.then39.for.body.i101_crit_edge

if.then39.for.body.i101_crit_edge:                ; preds = %if.then39
  br label %for.body.i101

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i101:                                    ; preds = %if.else.i106.for.body.i101_crit_edge, %if.then39.for.body.i101_crit_edge
  %i.051.i98 = phi ptr [ %i.0.i104, %if.else.i106.for.body.i101_crit_edge ], [ %25, %if.then39.for.body.i101_crit_edge ]
  %use_next.050.i99 = phi i32 [ %spec.select.i103, %if.else.i106.for.body.i101_crit_edge ], [ 0, %if.then39.for.body.i101_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_next.050.i99)
  %tobool2.not.i100 = icmp eq i32 %use_next.050.i99, 0
  br i1 %tobool2.not.i100, label %if.else.i106, label %for.end.i108

if.else.i106:                                     ; preds = %for.body.i101
  %cmp4.i102 = icmp eq ptr %i.051.i98, %pos.0
  %spec.select.i103 = zext i1 %cmp4.i102 to i32
  %26 = ptrtoint ptr %i.051.i98 to i32
  call void @__asan_load4_noabort(i32 %26)
  %i.0.i104 = load ptr, ptr %i.051.i98, align 4
  %cmp.not.i105 = icmp eq ptr %i.0.i104, %dcb_list
  br i1 %cmp.not.i105, label %if.else.i106.if.then14.i109_crit_edge, label %if.else.i106.for.body.i101_crit_edge

if.else.i106.for.body.i101_crit_edge:             ; preds = %if.else.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i101

if.else.i106.if.then14.i109_crit_edge:            ; preds = %if.else.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i109

for.end.i108:                                     ; preds = %for.body.i101
  %tobool13.not.i107 = icmp eq ptr %i.051.i98, null
  br i1 %tobool13.not.i107, label %for.end.i108.if.then14.i109_crit_edge, label %for.end.i108.cleanup_crit_edge

for.end.i108.cleanup_crit_edge:                   ; preds = %for.end.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.i108.if.then14.i109_crit_edge:            ; preds = %for.end.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i109

if.then14.i109:                                   ; preds = %for.end.i108.if.then14.i109_crit_edge, %if.else.i106.if.then14.i109_crit_edge
  br label %cleanup

if.else:                                          ; preds = %list_size.exit
  %call45 = tail call fastcc zeroext i8 @start_scsi(ptr noundef %acb, ptr noundef %pos.0, ptr noundef %20)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call45)
  %tobool46.not = icmp eq i8 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.else50

if.then47:                                        ; preds = %if.else
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then47.__list_del_entry.exit.i_crit_edge

if.then47.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then47.__list_del_entry.exit.i_crit_edge
  %33 = ptrtoint ptr %srb_going_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %srb_going_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %20, ptr noundef %srb_going_list, ptr noundef %34) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.cleanup55_crit_edge

__list_del_entry.exit.i.cleanup55_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup55

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %20, ptr %prev1.i.i2.i, align 4
  %36 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %20, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %srb_going_list, ptr %prev3.i.i.i, align 4
  %38 = ptrtoint ptr %srb_going_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %20, ptr %srb_going_list, align 4
  br label %cleanup55

if.else50:                                        ; preds = %if.else
  %39 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.not.i, label %if.end.i, label %if.else50.cleanup55_crit_edge

if.else50.cleanup55_crit_edge:                    ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup55

if.end.i:                                         ; preds = %if.else50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %last_reset.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 10
  %42 = ptrtoint ptr %last_reset.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %last_reset.i, align 4
  %add.i = add i32 %41, 52
  %sub1.i = sub i32 %add.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp.i112 = icmp slt i32 %sub1.i, 0
  br i1 %cmp.i112, label %if.then2.i, label %if.else.i113

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add5.i = add i32 %43, -49
  br label %if.end11.i

if.else.i113:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %add8.i = add i32 %44, 3
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i113, %if.then2.i
  %add8.sink.i = phi i32 [ %add5.i, %if.then2.i ], [ %add8.i, %if.else.i113 ]
  %45 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add8.sink.i, ptr %45, align 4
  tail call void @add_timer(ptr noundef %waiting_timer) #9
  br label %cleanup55

cleanup:                                          ; preds = %if.then14.i109, %for.end.i108.cleanup_crit_edge, %if.then39.cleanup_crit_edge
  %pos.1 = phi ptr [ null, %if.then39.cleanup_crit_edge ], [ %i.051.i98, %for.end.i108.cleanup_crit_edge ], [ %25, %if.then14.i109 ]
  %cmp53.not = icmp eq ptr %pos.1, %start.1
  br i1 %cmp53.not, label %cleanup.cleanup55_crit_edge, label %cleanup.do.body_crit_edge

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup.cleanup55_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup55

cleanup55:                                        ; preds = %cleanup.cleanup55_crit_edge, %if.end11.i, %if.else50.cleanup55_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.cleanup55_crit_edge, %if.end6.cleanup55_crit_edge, %lor.lhs.false.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @start_scsi(ptr noundef %acb, ptr noundef %dcb, ptr noundef %srb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tag_number = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 17
  %0 = ptrtoint ptr %tag_number to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tag_number, align 2
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %1 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %io_port_base, align 4
  %add = add i32 %2, 131
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !597
  %5 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_port_base, align 4
  %add5 = add i32 %6, 128
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %7 = inttoptr i32 %add7 to ptr
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %7) #9, !srcloc !598
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !599
  %9 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup363_crit_edge

entry.cleanup363_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup363

if.end:                                           ; preds = %entry
  %active_dcb = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 5
  %10 = ptrtoint ptr %active_dcb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %active_dcb, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %if.end27, label %do.end19

do.end19:                                         ; preds = %if.end
  %cmd = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 2
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd, align 4
  %active_srb = getelementptr inbounds %struct.DeviceCtlBlk, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %active_srb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %active_srb, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %do.end19.cond.end_crit_edge, label %cond.true

do.end19.cond.end_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  %cmd25 = getelementptr inbounds %struct.ScsiReqBlk, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %cmd25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd25, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end19.cond.end_crit_edge
  %cond = phi ptr [ %17, %cond.true ], [ null, %do.end19.cond.end_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %13, ptr noundef %cond) #12
  br label %cleanup363

if.end27:                                         ; preds = %if.end
  %18 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io_port_base, align 4
  %add30 = add i32 %19, 128
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %20 = inttoptr i32 %add32 to ptr
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %20) #9, !srcloc !598
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !600
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %tobool38.not = icmp sgt i16 %21, -1
  br i1 %tobool38.not, label %if.end43, label %if.end27.cleanup363_crit_edge

if.end27.cleanup363_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup363

if.end43:                                         ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %last_reset = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 10
  %23 = ptrtoint ptr %last_reset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %last_reset, align 4
  %sub.neg = add i32 %22, 50
  %sub44 = sub i32 %sub.neg, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub44)
  %cmp = icmp slt i32 %sub44, 0
  br i1 %cmp, label %if.end43.cleanup363_crit_edge, label %if.end50

if.end43.cleanup363_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup363

if.end50:                                         ; preds = %if.end43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !594
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_port_base, align 4
  %add.i = add i32 %26, 128
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %27 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 1024) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !601
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %acb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %acb, align 4
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %29, i32 0, i32 25
  %30 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %this_id, align 8
  %conv54 = trunc i32 %31 to i8
  %32 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_port_base, align 4
  %add56 = add i32 %33, 135
  %and57 = and i32 %add56, 1048575
  %add58 = or i32 %and57, -18874368
  %34 = inttoptr i32 %add58 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv54) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !602
  tail call void @arm_heavy_mb() #9
  %target_id = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 7
  %35 = ptrtoint ptr %target_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %target_id, align 2
  %37 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %io_port_base, align 4
  %add64 = add i32 %38, 134
  %and65 = and i32 %add64, 1048575
  %add66 = or i32 %and65, -18874368
  %39 = inttoptr i32 %add66 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %36) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !603
  tail call void @arm_heavy_mb() #9
  %sync_period = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 14
  %40 = ptrtoint ptr %sync_period to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sync_period, align 1
  %42 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %io_port_base, align 4
  %add72 = add i32 %43, 133
  %and73 = and i32 %add72, 1048575
  %add74 = or i32 %and73, -18874368
  %44 = inttoptr i32 %add74 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %41) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !604
  tail call void @arm_heavy_mb() #9
  %sync_offset = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 15
  %45 = ptrtoint ptr %sync_offset to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sync_offset, align 2
  %47 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %io_port_base, align 4
  %add80 = add i32 %48, 132
  %and81 = and i32 %add80, 1048575
  %add82 = or i32 %and81, -18874368
  %49 = inttoptr i32 %add82 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 %46) #9, !srcloc !547
  %scsi_phase = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 21
  %50 = ptrtoint ptr %scsi_phase to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 5, ptr %scsi_phase, align 2
  %identify_msg = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 9
  %51 = ptrtoint ptr %identify_msg to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %identify_msg, align 4
  %flag = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 20
  %53 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %flag, align 1
  %55 = and i8 %54, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool86.not = icmp eq i8 %55, 0
  %56 = and i8 %52, -65
  %spec.select = select i1 %tobool86.not, i8 %52, i8 %56
  %cmd92 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 2
  %57 = ptrtoint ptr %cmd92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cmd92, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cmnd, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1
  %63 = zext i8 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i8 %62, label %lor.lhs.false102 [
    i8 18, label %if.end50.land.lhs.true_crit_edge
    i8 3, label %if.end50.land.lhs.true_crit_edge483
  ]

if.end50.land.lhs.true_crit_edge483:              ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end50.land.lhs.true_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false102:                                 ; preds = %if.end50
  br i1 %tobool86.not, label %lor.lhs.false102.do.body165_crit_edge, label %lor.lhs.false102.land.lhs.true_crit_edge

lor.lhs.false102.land.lhs.true_crit_edge:         ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false102.do.body165_crit_edge:            ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body165

land.lhs.true:                                    ; preds = %lor.lhs.false102.land.lhs.true_crit_edge, %if.end50.land.lhs.true_crit_edge, %if.end50.land.lhs.true_crit_edge483
  %sync_mode = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 12
  %64 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sync_mode, align 1
  %conv107 = zext i8 %65 to i32
  %66 = and i32 %conv107, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %66)
  %67 = icmp eq i32 %66, 4
  %68 = and i32 %conv107, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %69 = icmp eq i32 %68, 1
  %or.cond = or i1 %67, %69
  br i1 %or.cond, label %land.lhs.true125, label %land.lhs.true.do.body165_crit_edge

land.lhs.true.do.body165_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body165

land.lhs.true125:                                 ; preds = %land.lhs.true
  %target_lun = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 8
  %70 = ptrtoint ptr %target_lun to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %target_lun, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp127 = icmp eq i8 %71, 0
  br i1 %cmp127, label %if.then129, label %land.lhs.true125.do.body165_crit_edge

land.lhs.true125.do.body165_crit_edge:            ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body165

if.then129:                                       ; preds = %land.lhs.true125
  %msgout_buf = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %72 = ptrtoint ptr %msgout_buf to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %spec.select, ptr %msgout_buf, align 4
  %msg_count = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %73 = ptrtoint ptr %msg_count to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %msg_count, align 4
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %74 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 4, ptr %state, align 4
  %75 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %sync_mode, align 1
  %77 = and i8 %76, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool134.not = icmp eq i8 %77, 0
  br i1 %tobool134.not, label %if.then129.if.end140_crit_edge, label %land.lhs.true135

if.then129.if.end140_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

land.lhs.true135:                                 ; preds = %if.then129
  %inquiry7 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 11
  %78 = ptrtoint ptr %inquiry7 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %inquiry7, align 2
  %80 = and i8 %79, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool138.not = icmp eq i8 %80, 0
  br i1 %tobool138.not, label %land.lhs.true135.if.end140_crit_edge, label %if.then139

land.lhs.true135.if.end140_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then139:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @build_wdtr(ptr noundef %acb, ptr noundef %dcb, ptr noundef %srb)
  br label %do.body316

if.end140:                                        ; preds = %land.lhs.true135.if.end140_crit_edge, %if.then129.if.end140_crit_edge
  %81 = and i8 %76, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool144.not = icmp eq i8 %81, 0
  br i1 %tobool144.not, label %if.end140.if.end151_crit_edge, label %land.lhs.true145

if.end140.if.end151_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

land.lhs.true145:                                 ; preds = %if.end140
  %inquiry7146 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 11
  %82 = ptrtoint ptr %inquiry7146 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %inquiry7146, align 2
  %84 = and i8 %83, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool149.not = icmp eq i8 %84, 0
  br i1 %tobool149.not, label %land.lhs.true145.if.end151_crit_edge, label %if.then150

land.lhs.true145.if.end151_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.then150:                                       ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @build_sdtr(ptr noundef %dcb, ptr noundef %srb)
  br label %do.body316

if.end151:                                        ; preds = %land.lhs.true145.if.end151_crit_edge, %if.end140.if.end151_crit_edge
  br i1 %tobool134.not, label %if.end151.if.end162_crit_edge, label %land.lhs.true156

if.end151.if.end162_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162

land.lhs.true156:                                 ; preds = %if.end151
  %inquiry7157 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 11
  %85 = ptrtoint ptr %inquiry7157 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %inquiry7157, align 2
  %87 = and i8 %86, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool160.not = icmp eq i8 %87, 0
  br i1 %tobool160.not, label %land.lhs.true156.if.end162_crit_edge, label %if.then161

land.lhs.true156.if.end162_crit_edge:             ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162

if.then161:                                       ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @build_wdtr(ptr noundef %acb, ptr noundef %dcb, ptr noundef %srb)
  br label %do.body316

if.end162:                                        ; preds = %land.lhs.true156.if.end162_crit_edge, %if.end151.if.end162_crit_edge
  %88 = ptrtoint ptr %msg_count to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %msg_count, align 4
  br label %do.body165

do.body165:                                       ; preds = %if.end162, %land.lhs.true125.do.body165_crit_edge, %land.lhs.true.do.body165_crit_edge, %lor.lhs.false102.do.body165_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !605
  tail call void @arm_heavy_mb() #9
  %89 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %io_port_base, align 4
  %add169 = add i32 %90, 152
  %and170 = and i32 %add169, 1048575
  %add171 = or i32 %and170, -18874368
  %91 = inttoptr i32 %add171 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 %spec.select) #9, !srcloc !547
  %state173 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %92 = ptrtoint ptr %state173 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 64, ptr %state173, align 4
  %sync_mode174 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 12
  %93 = ptrtoint ptr %sync_mode174 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %sync_mode174, align 1
  %95 = and i8 %94, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool177.not = icmp eq i8 %95, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %spec.select)
  %tobool181.not = icmp ult i8 %spec.select, 64
  %or.cond468 = select i1 %tobool177.not, i1 true, i1 %tobool181.not
  br i1 %or.cond468, label %do.body165.do.end241_crit_edge, label %while.cond.preheader

do.body165.do.end241_crit_edge:                   ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end241

while.cond.preheader:                             ; preds = %do.body165
  %tag_mask184 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 5
  %96 = ptrtoint ptr %tag_mask184 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tag_mask184, align 4
  %and185472 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185472)
  %tobool186.not473 = icmp eq i32 %and185472, 0
  br i1 %tobool186.not473, label %while.cond.preheader.while.end_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %max_command = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 6
  %98 = ptrtoint ptr %max_command to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %max_command, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %tag_number183.0475 = phi i8 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body.land.rhs_crit_edge ]
  %tag_mask.0474 = phi i32 [ 1, %land.rhs.lr.ph ], [ %shl, %while.body.land.rhs_crit_edge ]
  %100 = zext i8 %tag_number183.0475 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %99, i16 %100)
  %cmp189 = icmp ugt i16 %99, %100
  br i1 %cmp189, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %shl = shl i32 %tag_mask.0474, 1
  %inc = add i8 %tag_number183.0475, 1
  %and185 = and i32 %97, %shl
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %tag_mask.0.lcssa = phi i32 [ 1, %while.cond.preheader.while.end_crit_edge ], [ %shl, %while.body.while.end_crit_edge ], [ %tag_mask.0474, %land.rhs.while.end_crit_edge ]
  %tag_number183.0.lcssa = phi i8 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ], [ %tag_number183.0475, %land.rhs.while.end_crit_edge ]
  %max_command192 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 6
  %101 = ptrtoint ptr %max_command192 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %max_command192, align 4
  %103 = zext i8 %tag_number183.0.lcssa to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %102, i16 %103)
  %cmp194.not = icmp ugt i16 %102, %103
  br i1 %cmp194.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !606
  tail call void @arm_heavy_mb() #9
  %104 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %io_port_base, align 4
  %add222 = add i32 %105, 152
  %and223 = and i32 %add222, 1048575
  %add224 = or i32 %and223, -18874368
  %106 = inttoptr i32 %add224 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 32) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !607
  tail call void @arm_heavy_mb() #9
  %107 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %io_port_base, align 4
  %add230 = add i32 %108, 152
  %and231 = and i32 %add230, 1048575
  %add232 = or i32 %and231, -18874368
  %109 = inttoptr i32 %add232 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 %tag_number183.0.lcssa) #9, !srcloc !547
  %110 = ptrtoint ptr %tag_mask184 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tag_mask184, align 4
  %or = or i32 %111, %tag_mask.0.lcssa
  store i32 %or, ptr %tag_mask184, align 4
  %112 = ptrtoint ptr %tag_number to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %tag_number183.0.lcssa, ptr %tag_number, align 2
  %113 = ptrtoint ptr %state173 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 64, ptr %state173, align 4
  br label %do.end241

cleanup:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %cmd92 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cmd92, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %117, i32 0, i32 16
  %118 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %117, i32 0, i32 18
  %120 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %lun, align 8
  %conv205 = trunc i64 %121 to i32
  %conv206 = and i32 %conv205, 255
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %115, i32 noundef %119, i32 noundef %conv206) #12
  %122 = ptrtoint ptr %state173 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 2, ptr %state173, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !608
  tail call void @arm_heavy_mb() #9
  %123 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %io_port_base, align 4
  %add213 = add i32 %124, 128
  %and214 = and i32 %add213, 1048575
  %add215 = or i32 %and214, -18874368
  %125 = inttoptr i32 %add215 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %125, i16 256) #9, !srcloc !577
  br label %cleanup363

do.end241:                                        ; preds = %cleanup.thread, %do.body165.do.end241_crit_edge
  %scsicommand.1 = phi i8 [ 96, %do.body165.do.end241_crit_edge ], [ 100, %cleanup.thread ]
  %126 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %flag, align 1
  %128 = and i8 %127, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool245.not = icmp eq i8 %128, 0
  br i1 %tobool245.not, label %if.else, label %do.body247

do.body247:                                       ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !609
  tail call void @arm_heavy_mb() #9
  %129 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %io_port_base, align 4
  %add251 = add i32 %130, 152
  %and252 = and i32 %add251, 1048575
  %add253 = or i32 %and252, -18874368
  %131 = inttoptr i32 %add253 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %131, i8 3) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !610
  tail call void @arm_heavy_mb() #9
  %target_lun258 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 8
  %132 = ptrtoint ptr %target_lun258 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %target_lun258, align 1
  %shl260 = shl i8 %133, 5
  %134 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %io_port_base, align 4
  %add263 = add i32 %135, 152
  %and264 = and i32 %add263, 1048575
  %add265 = or i32 %and264, -18874368
  %136 = inttoptr i32 %add265 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 %shl260) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %137 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %io_port_base, align 4
  %add271 = add i32 %138, 152
  %and272 = and i32 %add271, 1048575
  %add273 = or i32 %and272, -18874368
  %139 = inttoptr i32 %add273 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 0) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !612
  tail call void @arm_heavy_mb() #9
  %140 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %io_port_base, align 4
  %add279 = add i32 %141, 152
  %and280 = and i32 %add279, 1048575
  %add281 = or i32 %and280, -18874368
  %142 = inttoptr i32 %add281 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 0) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !613
  tail call void @arm_heavy_mb() #9
  %143 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %io_port_base, align 4
  %add287 = add i32 %144, 152
  %and288 = and i32 %add287, 1048575
  %add289 = or i32 %and288, -18874368
  %145 = inttoptr i32 %add289 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 96) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  tail call void @arm_heavy_mb() #9
  %146 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %io_port_base, align 4
  %add295 = add i32 %147, 152
  %and296 = and i32 %add295, 1048575
  %add297 = or i32 %and296, -18874368
  %148 = inttoptr i32 %add297 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 0) #9, !srcloc !547
  br label %do.body316

if.else:                                          ; preds = %do.end241
  %149 = ptrtoint ptr %cmd92 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cmd92, align 4
  %cmd_len479 = getelementptr inbounds %struct.scsi_cmnd, ptr %150, i32 0, i32 14
  %151 = ptrtoint ptr %cmd_len479 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %cmd_len479, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %cmp304480.not = icmp eq i16 %152, 0
  br i1 %cmp304480.not, label %if.else.do.body316_crit_edge, label %do.body306.preheader

if.else.do.body316_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body316

do.body306.preheader:                             ; preds = %if.else
  %cmnd300 = getelementptr inbounds %struct.scsi_cmnd, ptr %150, i32 0, i32 16
  %153 = ptrtoint ptr %cmnd300 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cmnd300, align 4
  br label %do.body306

do.body306:                                       ; preds = %do.body306.do.body306_crit_edge, %do.body306.preheader
  %i.0482 = phi i8 [ %inc314, %do.body306.do.body306_crit_edge ], [ 0, %do.body306.preheader ]
  %ptr.0481 = phi ptr [ %incdec.ptr, %do.body306.do.body306_crit_edge ], [ %154, %do.body306.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !615
  tail call void @arm_heavy_mb() #9
  %incdec.ptr = getelementptr i8, ptr %ptr.0481, i32 1
  %155 = ptrtoint ptr %ptr.0481 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %ptr.0481, align 1
  %157 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %io_port_base, align 4
  %add310 = add i32 %158, 152
  %and311 = and i32 %add310, 1048575
  %add312 = or i32 %and311, -18874368
  %159 = inttoptr i32 %add312 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %159, i8 %156) #9, !srcloc !547
  %inc314 = add i8 %i.0482, 1
  %160 = ptrtoint ptr %cmd92 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cmd92, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %161, i32 0, i32 14
  %162 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %cmd_len, align 4
  %164 = zext i8 %inc314 to i16
  %cmp304 = icmp ugt i16 %163, %164
  br i1 %cmp304, label %do.body306.do.body306_crit_edge, label %do.body306.do.body316_crit_edge

do.body306.do.body316_crit_edge:                  ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body316

do.body306.do.body306_crit_edge:                  ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body306

do.body316:                                       ; preds = %do.body306.do.body316_crit_edge, %if.else.do.body316_crit_edge, %do.body247, %if.then161, %if.then150, %if.then139
  %scsicommand.2 = phi i8 [ %scsicommand.1, %do.body247 ], [ -72, %if.then139 ], [ -72, %if.then150 ], [ -72, %if.then161 ], [ %scsicommand.1, %if.else.do.body316_crit_edge ], [ %scsicommand.1, %do.body306.do.body316_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !616
  tail call void @arm_heavy_mb() #9
  %165 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %io_port_base, align 4
  %add320 = add i32 %166, 128
  %and321 = and i32 %add320, 1048575
  %add322 = or i32 %and321, -18874368
  %167 = inttoptr i32 %add322 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %167, i16 768) #9, !srcloc !577
  %168 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %io_port_base, align 4
  %add326 = add i32 %169, 128
  %and327 = and i32 %add326, 1048575
  %add328 = or i32 %and327, -18874368
  %170 = inttoptr i32 %add328 to ptr
  %171 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %170) #9, !srcloc !598
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !617
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %171)
  %tobool334.not = icmp sgt i16 %171, -1
  br i1 %tobool334.not, label %if.else341, label %do.end338

do.end338:                                        ; preds = %do.body316
  %state339 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %172 = ptrtoint ptr %state339 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 2, ptr %state339, align 4
  %173 = ptrtoint ptr %tag_number to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %tag_number, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %174)
  %cmp.not.i = icmp eq i8 %174, -1
  br i1 %cmp.not.i, label %do.end338.free_tag.exit_crit_edge, label %if.then.i

do.end338.free_tag.exit_crit_edge:                ; preds = %do.end338
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tag.exit

if.then.i:                                        ; preds = %do.end338
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %174 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %neg.i = xor i32 %shl.i, -1
  %tag_mask.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 5
  %175 = ptrtoint ptr %tag_mask.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %tag_mask.i, align 4
  %and.i469 = and i32 %176, %neg.i
  store i32 %and.i469, ptr %tag_mask.i, align 4
  %177 = ptrtoint ptr %tag_number to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 -1, ptr %tag_number, align 2
  br label %free_tag.exit

free_tag.exit:                                    ; preds = %if.then.i, %do.end338.free_tag.exit_crit_edge
  %msg_count340 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %178 = ptrtoint ptr %msg_count340 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %msg_count340, align 4
  br label %cleanup363

if.else341:                                       ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #11
  %179 = ptrtoint ptr %scsi_phase to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 5, ptr %scsi_phase, align 2
  %active_srb343 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 4
  %180 = ptrtoint ptr %active_srb343 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %srb, ptr %active_srb343, align 4
  %181 = ptrtoint ptr %active_dcb to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %dcb, ptr %active_dcb, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !618
  tail call void @arm_heavy_mb() #9
  %182 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %io_port_base, align 4
  %add349 = add i32 %183, 128
  %and350 = and i32 %add349, 1048575
  %add351 = or i32 %and350, -18874368
  %184 = inttoptr i32 %add351 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %184, i16 768) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !619
  tail call void @arm_heavy_mb() #9
  %185 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %io_port_base, align 4
  %add357 = add i32 %186, 144
  %and358 = and i32 %add357, 1048575
  %add359 = or i32 %and358, -18874368
  %187 = inttoptr i32 %add359 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %187, i8 %scsicommand.2) #9, !srcloc !547
  br label %cleanup363

cleanup363:                                       ; preds = %if.else341, %free_tag.exit, %cleanup, %if.end43.cleanup363_crit_edge, %if.end27.cleanup363_crit_edge, %cond.end, %entry.cleanup363_crit_edge
  %retval.1 = phi i8 [ 1, %cond.end ], [ 1, %cleanup ], [ 1, %entry.cleanup363_crit_edge ], [ 1, %if.end27.cleanup363_crit_edge ], [ 1, %if.end43.cleanup363_crit_edge ], [ 1, %free_tag.exit ], [ 0, %if.else341 ]
  ret i8 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move(ptr noundef %list, ptr noundef %head) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %head, ptr noundef %7) #9
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add.exit_crit_edge

__list_del_entry.exit.list_add.exit_crit_edge:    ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %head, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %__list_del_entry.exit.list_add.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @waiting_set_timer(ptr noundef %acb, i32 noundef %to) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %waiting_timer = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 8
  %pprev.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 8, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %last_reset = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 10
  %3 = ptrtoint ptr %last_reset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_reset, align 4
  %sub.neg = add i32 %to, 50
  %add = add i32 %sub.neg, %2
  %sub1 = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1)
  %cmp = icmp slt i32 %sub1, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add5 = add i32 %4, -49
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add7 = add i32 %to, 1
  %add8 = add i32 %add7, %5
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then2
  %add8.sink = phi i32 [ %add5, %if.then2 ], [ %add8, %if.else ]
  %6 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add8.sink, ptr %6, align 4
  tail call void @add_timer(ptr noundef %waiting_timer) #9
  br label %return

return:                                           ; preds = %if.end11, %entry.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_wdtr(ptr nocapture noundef readonly %acb, ptr nocapture noundef readonly %dcb, ptr noundef %srb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msgout_buf = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %msg_count = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %0 = ptrtoint ptr %msg_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msg_count, align 4
  %conv5 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %msgout_buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msgout_buf, align 4
  %conv12 = zext i8 %3 to i32
  %arrayidx14 = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv5, i32 noundef %conv12, i32 noundef %conv15) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %msgout_buf, i32 %conv5
  %dev_mode = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 10
  %6 = ptrtoint ptr %dev_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dev_mode, align 1
  %config = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 17
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %config, align 1
  %10 = and i8 %7, 32
  %and331 = and i8 %10, %9
  %and331.lobit = lshr exact i8 %and331, 5
  %conv16 = zext i8 %and331.lobit to i32
  %call17 = tail call i32 @spi_populate_width_msg(ptr noundef %add.ptr, i32 noundef %conv16) #9
  %11 = ptrtoint ptr %msg_count to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %msg_count, align 4
  %13 = trunc i32 %call17 to i8
  %conv20 = add i8 %12, %13
  store i8 %conv20, ptr %msg_count, align 4
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %state, align 4
  %16 = or i16 %15, 16384
  store i16 %16, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_sdtr(ptr nocapture noundef %dcb, ptr noundef %srb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msgout_buf = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %msg_count = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %0 = ptrtoint ptr %msg_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msg_count, align 4
  %conv = zext i8 %1 to i32
  %add.ptr = getelementptr i8, ptr %msgout_buf, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %msgout_buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msgout_buf, align 4
  %conv7 = zext i8 %3 to i32
  %arrayidx9 = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv10) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_mode = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 10
  %6 = ptrtoint ptr %dev_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dev_mode, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %sync_offset = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 15
  br i1 %tobool.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %sync_offset to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %sync_offset, align 2
  %min_nego_period = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 13
  %10 = ptrtoint ptr %min_nego_period to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 50, ptr %min_nego_period, align 4
  br label %if.end20

if.else:                                          ; preds = %if.end
  %11 = ptrtoint ptr %sync_offset to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sync_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp15 = icmp eq i8 %12, 0
  br i1 %cmp15, label %if.then17, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %sync_offset to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 15, ptr %sync_offset, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.else.if.end20_crit_edge, %if.then12
  %min_nego_period21 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 13
  %14 = ptrtoint ptr %min_nego_period21 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %min_nego_period21, align 4
  %conv22 = zext i8 %15 to i32
  %sync_offset23 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 15
  %16 = ptrtoint ptr %sync_offset23 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sync_offset23, align 2
  %conv24 = zext i8 %17 to i32
  %call25 = tail call i32 @spi_populate_sync_msg(ptr noundef %add.ptr, i32 noundef %conv22, i32 noundef %conv24) #9
  %18 = ptrtoint ptr %msg_count to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %msg_count, align 4
  %20 = trunc i32 %call25 to i8
  %conv28 = add i8 %19, %20
  store i8 %conv28, ptr %msg_count, align 4
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %state, align 4
  %23 = or i16 %22, 8192
  store i16 %23, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_populate_width_msg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_populate_sync_msg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_basic_config(ptr nocapture noundef readonly %acb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !620
  tail call void @arm_heavy_mb() #9
  %sel_timeout = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 12
  %0 = ptrtoint ptr %sel_timeout to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sel_timeout, align 2
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %2 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_port_base, align 4
  %add = add i32 %3, 145
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %1) #9, !srcloc !547
  %config = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 17
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config, align 1
  %7 = and i8 %6, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %. = select i1 %tobool.not, i8 97, i8 113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !621
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_port_base, align 4
  %add7 = add i32 %9, 141
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %10 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %.) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !622
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_port_base, align 4
  %add15 = add i32 %12, 142
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %13 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 3) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !623
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %acb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %acb, align 4
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 25
  %16 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %this_id, align 8
  %conv22 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io_port_base, align 4
  %add24 = add i32 %19, 135
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %20 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv22) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !624
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io_port_base, align 4
  %add32 = add i32 %22, 132
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %23 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 0) #9, !srcloc !547
  %24 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_port_base, align 4
  %add37 = add i32 %25, 212
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %26 = inttoptr i32 %add39 to ptr
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %26) #9, !srcloc !598
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !625
  %28 = and i16 %27, 32512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !626
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io_port_base, align 4
  %add49 = add i32 %30, 212
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %31 = inttoptr i32 %add51 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %31, i16 %28) #9, !srcloc !577
  %32 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_port_base, align 4
  %add55 = add i32 %33, 166
  %and56 = and i32 %add55, 1048575
  %add57 = or i32 %and56, -18874368
  %34 = inttoptr i32 %add57 to ptr
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %34) #9, !srcloc !598
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !627
  %36 = and i16 %35, -132
  %37 = or i16 %36, 130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !628
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_port_base, align 4
  %add70 = add i32 %39, 166
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %40 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %40, i16 %37) #9, !srcloc !577
  %41 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %io_port_base, align 4
  %add76 = add i32 %42, 132
  %and77 = and i32 %add76, 1048575
  %add78 = or i32 %and77, -18874368
  %43 = inttoptr i32 %add78 to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !629
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !630
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %io_port_base, align 4
  %add86 = add i32 %46, 140
  %and87 = and i32 %add86, 1048575
  %add88 = or i32 %and87, -18874368
  %47 = inttoptr i32 %add88 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 127) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !631
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io_port_base, align 4
  %add94 = add i32 %49, 164
  %and95 = and i32 %add94, 1048575
  %add96 = or i32 %and95, -18874368
  %50 = inttoptr i32 %add96 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 9) #9, !srcloc !547
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @doing_srb_done(ptr noundef %acb, i8 noundef zeroext %did_flag, ptr noundef %cmd, i8 noundef zeroext %force) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #12
  %dcb_list = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 3
  %0 = ptrtoint ptr %dcb_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %dcb.0240 = load ptr, ptr %dcb_list, align 4
  %cmp.not241 = icmp eq ptr %dcb.0240, %dcb_list
  br i1 %cmp.not241, label %entry.do.end126_crit_edge, label %for.body.lr.ph

entry.do.end126_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end126

for.body.lr.ph:                                   ; preds = %entry
  %srb_free_list = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 6
  %prev.i182 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 6, i32 1
  %conv.i186 = zext i8 %did_flag to i32
  %shl.i187 = shl nuw nsw i32 %conv.i186, 16
  %dev.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %force)
  %tobool.not = icmp eq i8 %force, 0
  br label %for.body

for.body:                                         ; preds = %if.end114.for.body_crit_edge, %for.body.lr.ph
  %dcb.0242 = phi ptr [ %dcb.0240, %for.body.lr.ph ], [ %dcb.0, %if.end114.for.body_crit_edge ]
  %srb_going_list = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0242, i32 0, i32 2
  %1 = ptrtoint ptr %srb_going_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %srb_going_list, align 4
  %cmp16.not233 = icmp eq ptr %2, %srb_going_list
  br i1 %cmp16.not233, label %for.body.for.end_crit_edge, label %for.body18.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body18.lr.ph:                                 ; preds = %for.body
  %tag_mask.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0242, i32 0, i32 5
  br label %for.body18

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %for.body18.lr.ph
  %srb.0234 = phi ptr [ %2, %for.body18.lr.ph ], [ %tmp3.0235, %for.inc.for.body18_crit_edge ]
  %3 = ptrtoint ptr %srb.0234 to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp3.0235 = load ptr, ptr %srb.0234, align 4
  %cmd19 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.0234, i32 0, i32 2
  %4 = ptrtoint ptr %cmd19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd19, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 18
  %10 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lun, align 8
  %conv = trunc i64 %11 to i32
  %conv25 = and i32 %conv, 255
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %5, i32 noundef %9, i32 noundef %conv25) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %srb.0234) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body18.list_del.exit_crit_edge

for.body18.list_del.exit_crit_edge:               ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %srb.0234, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %srb.0234 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %srb.0234, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body18.list_del.exit_crit_edge
  %18 = ptrtoint ptr %srb.0234 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %srb.0234, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %srb.0234, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tag_number.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.0234, i32 0, i32 17
  %20 = ptrtoint ptr %tag_number.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tag_number.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp.not.i = icmp eq i8 %21, -1
  br i1 %cmp.not.i, label %list_del.exit.free_tag.exit_crit_edge, label %if.then.i

list_del.exit.free_tag.exit_crit_edge:            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tag.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %21 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %neg.i = xor i32 %shl.i, -1
  %22 = ptrtoint ptr %tag_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tag_mask.i, align 4
  %and.i = and i32 %23, %neg.i
  store i32 %and.i, ptr %tag_mask.i, align 4
  %24 = ptrtoint ptr %tag_number.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %tag_number.i, align 2
  br label %free_tag.exit

free_tag.exit:                                    ; preds = %if.then.i, %list_del.exit.free_tag.exit_crit_edge
  %25 = ptrtoint ptr %prev.i182 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i182, align 4
  %call.i.i183 = tail call zeroext i1 @__list_add_valid(ptr noundef %srb.0234, ptr noundef %26, ptr noundef %srb_free_list) #9
  br i1 %call.i.i183, label %if.end.i.i184, label %free_tag.exit.list_add_tail.exit_crit_edge

free_tag.exit.list_add_tail.exit_crit_edge:       ; preds = %free_tag.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i184:                                    ; preds = %free_tag.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %prev.i182 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %srb.0234, ptr %prev.i182, align 4
  %28 = ptrtoint ptr %srb.0234 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %srb_free_list, ptr %srb.0234, align 4
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %srb.0234, ptr %26, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i184, %free_tag.exit.list_add_tail.exit_crit_edge
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 24
  %31 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %result.i, align 4
  %and.i185 = and i32 %32, -16711936
  %or.i = or i32 %and.i185, %shl.i187
  store i32 %or.i, ptr %result.i, align 4
  %flag.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.0234, i32 0, i32 20
  %33 = ptrtoint ptr %flag.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flag.i, align 1
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i, label %list_add_tail.exit.pci_unmap_srb_sense.exit_crit_edge, label %do.end.i

list_add_tail.exit.pci_unmap_srb_sense.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_unmap_srb_sense.exit

do.end.i:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %segment_x.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.0234, i32 0, i32 3
  %38 = ptrtoint ptr %segment_x.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %segment_x.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %length.i = getelementptr inbounds %struct.SGentry, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %41, i32 noundef %43, i32 noundef 2, i32 noundef 0) #9
  %xferred.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.0234, i32 0, i32 9
  %44 = ptrtoint ptr %xferred.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xferred.i, align 4
  %total_xfer_length.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.0234, i32 0, i32 7
  %46 = ptrtoint ptr %total_xfer_length.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %total_xfer_length.i, align 4
  %47 = ptrtoint ptr %segment_x.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %segment_x.i, align 4
  %arrayidx5.i = getelementptr %struct.SGentry, ptr %48, i32 63
  %49 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx5.i, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %48, align 4
  %52 = load ptr, ptr %segment_x.i, align 4
  %length12.i = getelementptr %struct.SGentry, ptr %52, i32 63, i32 1
  %53 = ptrtoint ptr %length12.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length12.i, align 4
  %length15.i = getelementptr inbounds %struct.SGentry, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %length15.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %length15.i, align 4
  br label %pci_unmap_srb_sense.exit

pci_unmap_srb_sense.exit:                         ; preds = %do.end.i, %list_add_tail.exit.pci_unmap_srb_sense.exit_crit_edge
  %56 = ptrtoint ptr %cmd19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cmd19, align 4
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %57, i32 0, i32 15
  %58 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sc_data_direction.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %57, i32 0, i32 17, i32 0, i32 1
  %60 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i190 = icmp eq i32 %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %59)
  %cmp.not.i191 = icmp eq i32 %59, 3
  %or.cond.i = select i1 %tobool.not.i190, i1 true, i1 %cmp.not.i191
  br i1 %or.cond.i, label %pci_unmap_srb_sense.exit.pci_unmap_srb.exit_crit_edge, label %do.end.i193

pci_unmap_srb_sense.exit.pci_unmap_srb.exit_crit_edge: ; preds = %pci_unmap_srb_sense.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_unmap_srb.exit

do.end.i193:                                      ; preds = %pci_unmap_srb_sense.exit
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %sg_bus_addr.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.0234, i32 0, i32 4
  %64 = ptrtoint ptr %sg_bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sg_bus_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i, i32 noundef %65, i32 noundef 512, i32 noundef 1, i32 noundef 0) #9
  tail call void @scsi_dma_unmap(ptr noundef %57) #9
  br label %pci_unmap_srb.exit

pci_unmap_srb.exit:                               ; preds = %do.end.i193, %pci_unmap_srb_sense.exit.pci_unmap_srb.exit_crit_edge
  br i1 %tobool.not, label %pci_unmap_srb.exit.for.inc_crit_edge, label %if.then

pci_unmap_srb.exit.for.inc_crit_edge:             ; preds = %pci_unmap_srb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %pci_unmap_srb.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @scsi_done(ptr noundef %5) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %pci_unmap_srb.exit.for.inc_crit_edge
  %cmp16.not = icmp eq ptr %tmp3.0235, %srb_going_list
  br i1 %cmp16.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body18_crit_edge

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %66 = ptrtoint ptr %srb_going_list to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %srb_going_list, align 4
  %cmp.i.not = icmp eq ptr %67, %srb_going_list
  br i1 %cmp.i.not, label %for.end.if.end45_crit_edge, label %do.end40

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.end40:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %target_id = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0242, i32 0, i32 7
  %68 = ptrtoint ptr %target_id to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %target_id, align 2
  %conv42 = zext i8 %69 to i32
  %target_lun = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0242, i32 0, i32 8
  %70 = ptrtoint ptr %target_lun to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %target_lun, align 1
  %conv43 = zext i8 %71 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %conv42, i32 noundef %conv43) #12
  br label %if.end45

if.end45:                                         ; preds = %do.end40, %for.end.if.end45_crit_edge
  %tag_mask = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0242, i32 0, i32 5
  %72 = ptrtoint ptr %tag_mask to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tag_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool46.not = icmp eq i32 %73, 0
  br i1 %tobool46.not, label %if.end45.if.end58_crit_edge, label %do.end50

if.end45.if.end58_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

do.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %target_id52 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0242, i32 0, i32 7
  %74 = ptrtoint ptr %target_id52 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %target_id52, align 2
  %conv53 = zext i8 %75 to i32
  %target_lun54 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0242, i32 0, i32 8
  %76 = ptrtoint ptr %target_lun54 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %target_lun54, align 1
  %conv55 = zext i8 %77 to i32
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %conv53, i32 noundef %conv55, i32 noundef %73) #12
  br label %if.end58

if.end58:                                         ; preds = %do.end50, %if.end45.if.end58_crit_edge
  %srb_waiting_list = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0242, i32 0, i32 3
  %78 = ptrtoint ptr %srb_waiting_list to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %srb_waiting_list, align 4
  %cmp71.not237 = icmp eq ptr %79, %srb_waiting_list
  br i1 %cmp71.not237, label %if.end58.for.end98_crit_edge, label %if.end58.for.body74_crit_edge

if.end58.for.body74_crit_edge:                    ; preds = %if.end58
  br label %for.body74

if.end58.for.end98_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end98

for.body74:                                       ; preds = %for.inc92.for.body74_crit_edge, %if.end58.for.body74_crit_edge
  %srb.1238 = phi ptr [ %tmp3.1239, %for.inc92.for.body74_crit_edge ], [ %79, %if.end58.for.body74_crit_edge ]
  %80 = ptrtoint ptr %srb.1238 to i32
  call void @__asan_load4_noabort(i32 %80)
  %tmp3.1239 = load ptr, ptr %srb.1238, align 4
  %cmd75 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.1238, i32 0, i32 2
  %81 = ptrtoint ptr %cmd75 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cmd75, align 4
  %device80 = getelementptr inbounds %struct.scsi_cmnd, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %device80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device80, align 4
  %id81 = getelementptr inbounds %struct.scsi_device, ptr %84, i32 0, i32 16
  %85 = ptrtoint ptr %id81 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %id81, align 8
  %lun83 = getelementptr inbounds %struct.scsi_device, ptr %84, i32 0, i32 18
  %87 = ptrtoint ptr %lun83 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %lun83, align 8
  %conv84 = trunc i64 %88 to i32
  %conv85 = and i32 %conv84, 255
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %82, i32 noundef %86, i32 noundef %conv85) #12
  %call.i.i195 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %srb.1238) #9
  br i1 %call.i.i195, label %if.end.i.i198, label %for.body74.__list_del_entry.exit.i_crit_edge

for.body74.__list_del_entry.exit.i_crit_edge:     ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i198:                                    ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i196 = getelementptr inbounds %struct.list_head, ptr %srb.1238, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i196 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i196, align 4
  %91 = ptrtoint ptr %srb.1238 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %srb.1238, align 4
  %prev1.i.i.i197 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i197 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i197, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i198, %for.body74.__list_del_entry.exit.i_crit_edge
  %95 = ptrtoint ptr %prev.i182 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i182, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %srb.1238, ptr noundef %96, ptr noundef %srb_free_list) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %prev.i182 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %srb.1238, ptr %prev.i182, align 4
  %98 = ptrtoint ptr %srb.1238 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %srb_free_list, ptr %srb.1238, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %srb.1238, i32 0, i32 1
  %99 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev3.i.i.i, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %srb.1238, ptr %96, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %result.i199 = getelementptr inbounds %struct.scsi_cmnd, ptr %82, i32 0, i32 24
  %101 = ptrtoint ptr %result.i199 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %result.i199, align 4
  %and.i200 = and i32 %102, -16711936
  %or.i203 = or i32 %and.i200, %shl.i187
  store i32 %or.i203, ptr %result.i199, align 4
  %flag.i206 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.1238, i32 0, i32 20
  %103 = ptrtoint ptr %flag.i206 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %flag.i206, align 1
  %105 = and i8 %104, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i207 = icmp eq i8 %105, 0
  br i1 %tobool.not.i207, label %list_move_tail.exit.pci_unmap_srb_sense.exit218_crit_edge, label %do.end.i217

list_move_tail.exit.pci_unmap_srb_sense.exit218_crit_edge: ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_unmap_srb_sense.exit218

do.end.i217:                                      ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i, align 4
  %dev1.i209 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  %segment_x.i210 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.1238, i32 0, i32 3
  %108 = ptrtoint ptr %segment_x.i210 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %segment_x.i210, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 4
  %length.i211 = getelementptr inbounds %struct.SGentry, ptr %109, i32 0, i32 1
  %112 = ptrtoint ptr %length.i211 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %length.i211, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i209, i32 noundef %111, i32 noundef %113, i32 noundef 2, i32 noundef 0) #9
  %xferred.i212 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.1238, i32 0, i32 9
  %114 = ptrtoint ptr %xferred.i212 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %xferred.i212, align 4
  %total_xfer_length.i213 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.1238, i32 0, i32 7
  %116 = ptrtoint ptr %total_xfer_length.i213 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %total_xfer_length.i213, align 4
  %117 = ptrtoint ptr %segment_x.i210 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %segment_x.i210, align 4
  %arrayidx5.i214 = getelementptr %struct.SGentry, ptr %118, i32 63
  %119 = ptrtoint ptr %arrayidx5.i214 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx5.i214, align 4
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %118, align 4
  %122 = load ptr, ptr %segment_x.i210, align 4
  %length12.i215 = getelementptr %struct.SGentry, ptr %122, i32 63, i32 1
  %123 = ptrtoint ptr %length12.i215 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %length12.i215, align 4
  %length15.i216 = getelementptr inbounds %struct.SGentry, ptr %122, i32 0, i32 1
  %125 = ptrtoint ptr %length15.i216 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %length15.i216, align 4
  br label %pci_unmap_srb_sense.exit218

pci_unmap_srb_sense.exit218:                      ; preds = %do.end.i217, %list_move_tail.exit.pci_unmap_srb_sense.exit218_crit_edge
  %126 = ptrtoint ptr %cmd75 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cmd75, align 4
  %sc_data_direction.i220 = getelementptr inbounds %struct.scsi_cmnd, ptr %127, i32 0, i32 15
  %128 = ptrtoint ptr %sc_data_direction.i220 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %sc_data_direction.i220, align 4
  %nents.i.i221 = getelementptr inbounds %struct.scsi_cmnd, ptr %127, i32 0, i32 17, i32 0, i32 1
  %130 = ptrtoint ptr %nents.i.i221 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nents.i.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i222 = icmp eq i32 %131, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %129)
  %cmp.not.i223 = icmp eq i32 %129, 3
  %or.cond.i224 = select i1 %tobool.not.i222, i1 true, i1 %cmp.not.i223
  br i1 %or.cond.i224, label %pci_unmap_srb_sense.exit218.pci_unmap_srb.exit229_crit_edge, label %do.end.i228

pci_unmap_srb_sense.exit218.pci_unmap_srb.exit229_crit_edge: ; preds = %pci_unmap_srb_sense.exit218
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_unmap_srb.exit229

do.end.i228:                                      ; preds = %pci_unmap_srb_sense.exit218
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i, align 4
  %dev2.i226 = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  %sg_bus_addr.i227 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.1238, i32 0, i32 4
  %134 = ptrtoint ptr %sg_bus_addr.i227 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sg_bus_addr.i227, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i226, i32 noundef %135, i32 noundef 512, i32 noundef 1, i32 noundef 0) #9
  tail call void @scsi_dma_unmap(ptr noundef %127) #9
  br label %pci_unmap_srb.exit229

pci_unmap_srb.exit229:                            ; preds = %do.end.i228, %pci_unmap_srb_sense.exit218.pci_unmap_srb.exit229_crit_edge
  br i1 %tobool.not, label %pci_unmap_srb.exit229.for.inc92_crit_edge, label %if.then90

pci_unmap_srb.exit229.for.inc92_crit_edge:        ; preds = %pci_unmap_srb.exit229
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc92

if.then90:                                        ; preds = %pci_unmap_srb.exit229
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @scsi_done(ptr noundef %cmd) #9
  br label %for.inc92

for.inc92:                                        ; preds = %if.then90, %pci_unmap_srb.exit229.for.inc92_crit_edge
  %cmp71.not = icmp eq ptr %tmp3.1239, %srb_waiting_list
  br i1 %cmp71.not, label %for.inc92.for.end98_crit_edge, label %for.inc92.for.body74_crit_edge

for.inc92.for.body74_crit_edge:                   ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body74

for.inc92.for.end98_crit_edge:                    ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end98

for.end98:                                        ; preds = %for.inc92.for.end98_crit_edge, %if.end58.for.end98_crit_edge
  %136 = ptrtoint ptr %srb_waiting_list to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile ptr, ptr %srb_waiting_list, align 4
  %cmp.i230.not = icmp eq ptr %137, %srb_waiting_list
  br i1 %cmp.i230.not, label %for.end98.if.end114_crit_edge, label %for.end98.for.cond.i_crit_edge

for.end98.for.cond.i_crit_edge:                   ; preds = %for.end98
  br label %for.cond.i

for.end98.if.end114_crit_edge:                    ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.end98.for.cond.i_crit_edge
  %count.0.i = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 0, %for.end98.for.cond.i_crit_edge ]
  %pos.0.in.i = phi ptr [ %pos.0.i, %for.cond.i.for.cond.i_crit_edge ], [ %srb_waiting_list, %for.end98.for.cond.i_crit_edge ]
  %138 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %srb_waiting_list
  %inc.i = add i32 %count.0.i, 1
  br i1 %cmp.i.not.i, label %list_size.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

list_size.exit:                                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %target_id109 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0242, i32 0, i32 7
  %139 = ptrtoint ptr %target_id109 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %target_id109, align 2
  %conv110 = zext i8 %140 to i32
  %target_lun111 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0242, i32 0, i32 8
  %141 = ptrtoint ptr %target_lun111 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %target_lun111, align 1
  %conv112 = zext i8 %142 to i32
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %count.0.i, i32 noundef %conv110, i32 noundef %conv112) #12
  br label %if.end114

if.end114:                                        ; preds = %list_size.exit, %for.end98.if.end114_crit_edge
  %flag = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.0242, i32 0, i32 16
  %143 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %flag, align 1
  %145 = and i8 %144, -2
  store i8 %145, ptr %flag, align 1
  %146 = ptrtoint ptr %dcb.0242 to i32
  call void @__asan_load4_noabort(i32 %146)
  %dcb.0 = load ptr, ptr %dcb.0242, align 4
  %cmp.not = icmp eq ptr %dcb.0, %dcb_list
  br i1 %cmp.not, label %if.end114.do.end126_crit_edge, label %if.end114.for.body_crit_edge

if.end114.for.body_crit_edge:                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end114.do.end126_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end126

do.end126:                                        ; preds = %if.end114.do.end126_crit_edge, %entry.do.end126_crit_edge
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adapter_remove_and_free_device(ptr noundef %acb, ptr noundef %dcb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %srb_going_list = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry
  %count.0.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %pos.0.in.i = phi ptr [ %srb_going_list, %entry ], [ %pos.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %srb_going_list
  %inc.i = add i32 %count.0.i, 1
  br i1 %cmp.i.not.i, label %list_size.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

list_size.exit:                                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.0.i)
  %cmp = icmp ugt i32 %count.0.i, 1
  br i1 %cmp, label %list_size.exit.return_crit_edge, label %if.end

list_size.exit.return_crit_edge:                  ; preds = %list_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %list_size.exit
  %active_dcb.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 5
  %1 = ptrtoint ptr %active_dcb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %active_dcb.i, align 4
  %cmp.i = icmp eq ptr %2, %dcb
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %active_dcb.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %active_dcb.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %dcb_run_robin.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 4
  %4 = ptrtoint ptr %dcb_run_robin.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcb_run_robin.i, align 4
  %cmp2.i = icmp eq ptr %5, %dcb
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  %dcb_list.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 3
  %6 = ptrtoint ptr %dcb_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %dcb_list.i, align 4
  %cmp.i.i.i = icmp eq ptr %7, %dcb_list.i
  br i1 %cmp.i.i.i, label %if.then3.i.dcb_get_next.exit.i_crit_edge, label %if.then3.i.for.body.i.i_crit_edge

if.then3.i.for.body.i.i_crit_edge:                ; preds = %if.then3.i
  br label %for.body.i.i

if.then3.i.dcb_get_next.exit.i_crit_edge:         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dcb_get_next.exit.i

for.body.i.i:                                     ; preds = %if.else.i.i.for.body.i.i_crit_edge, %if.then3.i.for.body.i.i_crit_edge
  %i.051.i.i = phi ptr [ %i.0.i.i, %if.else.i.i.for.body.i.i_crit_edge ], [ %7, %if.then3.i.for.body.i.i_crit_edge ]
  %use_next.050.i.i = phi i32 [ %spec.select.i.i, %if.else.i.i.for.body.i.i_crit_edge ], [ 0, %if.then3.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_next.050.i.i)
  %tobool2.not.i.i = icmp eq i32 %use_next.050.i.i, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i, label %for.end.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %cmp4.i.i = icmp eq ptr %i.051.i.i, %dcb
  %spec.select.i.i = zext i1 %cmp4.i.i to i32
  %8 = ptrtoint ptr %i.051.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %i.0.i.i = load ptr, ptr %i.051.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %i.0.i.i, %dcb_list.i
  br i1 %cmp.not.i.i, label %if.else.i.i.if.then14.i.i_crit_edge, label %if.else.i.i.for.body.i.i_crit_edge

if.else.i.i.for.body.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.else.i.i.if.then14.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %tobool13.not.i.i = icmp eq ptr %i.051.i.i, null
  br i1 %tobool13.not.i.i, label %for.end.i.i.if.then14.i.i_crit_edge, label %for.end.i.i.dcb_get_next.exit.i_crit_edge

for.end.i.i.dcb_get_next.exit.i_crit_edge:        ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dcb_get_next.exit.i

for.end.i.i.if.then14.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i.i

if.then14.i.i:                                    ; preds = %for.end.i.i.if.then14.i.i_crit_edge, %if.else.i.i.if.then14.i.i_crit_edge
  br label %dcb_get_next.exit.i

dcb_get_next.exit.i:                              ; preds = %if.then14.i.i, %for.end.i.i.dcb_get_next.exit.i_crit_edge, %if.then3.i.dcb_get_next.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.then3.i.dcb_get_next.exit.i_crit_edge ], [ %i.051.i.i, %for.end.i.i.dcb_get_next.exit.i_crit_edge ], [ %7, %if.then14.i.i ]
  %9 = ptrtoint ptr %dcb_run_robin.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i.i, ptr %dcb_run_robin.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %dcb_get_next.exit.i, %if.end.i.if.end5.i_crit_edge
  %dcb_list6.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 3
  br label %for.cond.i3

for.cond.i3:                                      ; preds = %for.body.i.for.cond.i3_crit_edge, %if.end5.i
  %i.0.in.i = phi ptr [ %dcb_list6.i, %if.end5.i ], [ %i.0.i, %for.body.i.for.cond.i3_crit_edge ]
  %10 = ptrtoint ptr %i.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %i.0.i = load ptr, ptr %i.0.in.i, align 4
  %cmp14.not.i = icmp eq ptr %i.0.i, %dcb_list6.i
  br i1 %cmp14.not.i, label %for.cond.i3.adapter_remove_device.exit_crit_edge, label %for.body.i

for.cond.i3.adapter_remove_device.exit_crit_edge: ; preds = %for.cond.i3
  call void @__sanitizer_cov_trace_pc() #11
  br label %adapter_remove_device.exit

for.body.i:                                       ; preds = %for.cond.i3
  %cmp15.i = icmp eq ptr %i.0.i, %dcb
  br i1 %cmp15.i, label %if.then16.i, label %for.body.i.for.cond.i3_crit_edge

for.body.i.for.cond.i3_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i3

if.then16.i:                                      ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dcb) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then16.i.list_del.exit.i_crit_edge

if.then16.i.list_del.exit.i_crit_edge:            ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dcb, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dcb, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then16.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %dcb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %dcb, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dcb, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %adapter_remove_device.exit

adapter_remove_device.exit:                       ; preds = %list_del.exit.i, %for.cond.i3.adapter_remove_device.exit_crit_edge
  %target_lun.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 8
  %19 = ptrtoint ptr %target_lun.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %target_lun.i, align 1
  %conv.i = zext i8 %20 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %target_id.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 7
  %21 = ptrtoint ptr %target_id.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %target_id.i, align 2
  %idxprom.i = zext i8 %22 to i32
  %arrayidx.i = getelementptr %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 21, i32 %idxprom.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %25 = trunc i32 %shl.i to i8
  %26 = xor i8 %25, -1
  %conv25.i = and i8 %24, %26
  store i8 %conv25.i, ptr %arrayidx.i, align 1
  %27 = load i8, ptr %target_id.i, align 2
  %idxprom27.i = zext i8 %27 to i32
  %28 = load i8, ptr %target_lun.i, align 1
  %idxprom30.i = zext i8 %28 to i32
  %arrayidx31.i = getelementptr %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 22, i32 %idxprom27.i, i32 %idxprom30.i
  %29 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx31.i, align 4
  %acb32.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 1
  %30 = ptrtoint ptr %acb32.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %acb32.i, align 4
  tail call void @kfree(ptr noundef %dcb) #9
  br label %return

return:                                           ; preds = %adapter_remove_device.exit, %list_size.exit.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc395x_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %offset.i.i.i = alloca i32, align 4
  %len.i.i.i = alloca i32, align 4
  %scsi_status.addr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port_base, align 4
  %add = add i32 %1, 128
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #9, !srcloc !598
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !632
  %5 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_port_base, align 4
  %add5 = add i32 %6, 163
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %7 = inttoptr i32 %add7 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !633
  %9 = and i16 %4, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %scsi_status.addr.i)
  %10 = ptrtoint ptr %scsi_status.addr.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %4, ptr %scsi_status.addr.i, align 2
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_id, align 4
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host_lock.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #9
  %15 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_port_base, align 4
  %add.i = add i32 %16, 132
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %17 = inttoptr i32 %add5.i to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !634
  %conv9.i = zext i16 %4 to i32
  %and10.i = and i32 %conv9.i, 8199
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and10.i)
  %cmp11.i = icmp eq i32 %and10.i, 8194
  br i1 %cmp11.i, label %do.end15.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end15.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %conv9.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end15.i, %if.then.if.end.i_crit_edge
  %pprev.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 9, i32 0, i32 1
  %19 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then20.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %selto_timer.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 9
  %call22.i = tail call i32 @del_timer(ptr noundef %selto_timer.i) #9
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end.i.if.end23.i_crit_edge
  %conv24.i = zext i8 %18 to i32
  %and25.i = and i32 %conv24.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end23.i
  %active_dcb.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 5
  %21 = ptrtoint ptr %active_dcb.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %active_dcb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 107374000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %24, 50
  %delay_time.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 27, i32 9
  %25 = ptrtoint ptr %delay_time.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %delay_time.i.i, align 4
  %conv.i.i = zext i8 %26 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 100
  %add1.i.i = add i32 %add.i.i, %mul.i.i
  %last_reset.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 10
  %27 = ptrtoint ptr %last_reset.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add1.i.i, ptr %last_reset.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !594
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_port_base, align 4
  %add.i.i.i = add i32 %29, 128
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %30 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %30, i16 1024) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !635
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io_port_base, align 4
  %add5.i.i = add i32 %32, 128
  %and.i.i = and i32 %add5.i.i, 1048575
  %add6.i.i = or i32 %and.i.i, -18874368
  %33 = inttoptr i32 %add6.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 256) #9, !srcloc !577
  br label %dc395x_handle_interrupt.exit

if.end.i.i:                                       ; preds = %if.then27.i
  %active_srb.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 4
  %34 = ptrtoint ptr %active_srb.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %active_srb.i.i, align 4
  %36 = ptrtoint ptr %active_dcb.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %active_dcb.i.i, align 4
  %scsi_phase.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 21
  %37 = ptrtoint ptr %scsi_phase.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 5, ptr %scsi_phase.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !594
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_port_base, align 4
  %add.i172.i.i = add i32 %39, 128
  %and.i173.i.i = and i32 %add.i172.i.i, 1048575
  %add1.i174.i.i = or i32 %and.i173.i.i, -18874368
  %40 = inttoptr i32 %add1.i174.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %40, i16 1024) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !636
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %io_port_base, align 4
  %add16.i.i = add i32 %42, 128
  %and17.i.i = and i32 %add16.i.i, 1048575
  %add18.i.i = or i32 %and17.i.i, -18874368
  %43 = inttoptr i32 %add18.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %43, i16 256) #9, !srcloc !577
  %state.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 10
  %44 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %state.i.i, align 4
  %conv20.i.i = zext i16 %45 to i32
  %and21.i.i = and i32 %conv20.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.else.i.i, label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %target_id.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 7
  %46 = ptrtoint ptr %target_id.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %target_id.i.i, align 2
  %conv28.i.i = zext i8 %47 to i32
  %target_lun.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 8
  %48 = ptrtoint ptr %target_lun.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %target_lun.i.i, align 1
  %conv29.i.i = zext i8 %49 to i32
  %call30.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %conv28.i.i, i32 noundef %conv29.i.i) #12
  %50 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %state.i.i, align 4
  tail call fastcc void @waiting_process_next(ptr noundef %dev_id) #9
  br label %dc395x_handle_interrupt.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  %and34.i.i = and i32 %conv20.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.else48.i.i, label %if.then36.i.i

if.then36.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %flag.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 16
  %51 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %flag.i.i, align 1
  %53 = and i8 %52, -2
  store i8 %53, ptr %flag.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %add41.i.i = add i32 %54, 51
  %last_reset42.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 10
  %55 = ptrtoint ptr %last_reset42.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add41.i.i, ptr %last_reset42.i.i, align 4
  %call47.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #12
  %cmd.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 2
  %56 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cmd.i.i, align 4
  tail call fastcc void @doing_srb_done(ptr noundef %dev_id, i8 noundef zeroext 5, ptr noundef %57, i8 noundef zeroext 1) #9
  tail call fastcc void @waiting_process_next(ptr noundef %dev_id) #9
  br label %dc395x_handle_interrupt.exit

if.else48.i.i:                                    ; preds = %if.else.i.i
  %and51.i.i = and i32 %conv20.i.i, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i.i)
  %tobool52.not.i.i = icmp ne i32 %and51.i.i, 0
  %and55.i.i = and i32 %conv20.i.i, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i)
  %tobool56.not.i.i = icmp eq i32 %and55.i.i, 0
  %or.cond.i.i = or i1 %tobool52.not.i.i, %tobool56.not.i.i
  br i1 %or.cond.i.i, label %if.then57.i.i, label %if.else90.i.i

if.then57.i.i:                                    ; preds = %if.else48.i.i
  %58 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.267)
  switch i16 %45, label %if.then65.i.i [
    i16 64, label %if.then57.i.i.do.end76.i.i_crit_edge
    i16 4, label %if.then57.i.i.do.end76.i.i_crit_edge31
  ]

if.then57.i.i.do.end76.i.i_crit_edge31:           ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end76.i.i

if.then57.i.i.do.end76.i.i_crit_edge:             ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end76.i.i

if.then65.i.i:                                    ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 2, ptr %state.i.i, align 4
  %cmd71.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 2
  %60 = ptrtoint ptr %cmd71.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cmd71.i.i, align 4
  %call72.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %61) #12
  br label %disc1.sink.split.i.i

do.end76.i.i:                                     ; preds = %if.then57.i.i.do.end76.i.i_crit_edge, %if.then57.i.i.do.end76.i.i_crit_edge31
  %retry_count.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 19
  %62 = ptrtoint ptr %retry_count.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %retry_count.i.i, align 4
  %inc.i.i = add i8 %63, 1
  store i8 %inc.i.i, ptr %retry_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %63)
  %cmp78.i.i = icmp ugt i8 %63, 3
  br i1 %cmp78.i.i, label %do.end76.i.i.disc1.sink.split.i.i_crit_edge, label %lor.lhs.false80.i.i

do.end76.i.i.disc1.sink.split.i.i_crit_edge:      ; preds = %do.end76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %disc1.sink.split.i.i

lor.lhs.false80.i.i:                              ; preds = %do.end76.i.i
  %scan_devices.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 19
  %64 = ptrtoint ptr %scan_devices.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %scan_devices.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool82.not.i.i = icmp eq i8 %65, 0
  br i1 %tobool82.not.i.i, label %if.end85.i.i, label %lor.lhs.false80.i.i.disc1.sink.split.i.i_crit_edge

lor.lhs.false80.i.i.disc1.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %disc1.sink.split.i.i

if.end85.i.i:                                     ; preds = %lor.lhs.false80.i.i
  %tag_number.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 17
  %66 = ptrtoint ptr %tag_number.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %tag_number.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %cmp.not.i.i.i = icmp eq i8 %67, -1
  br i1 %cmp.not.i.i.i, label %if.end85.i.i.free_tag.exit.i.i_crit_edge, label %if.then.i.i.i

if.end85.i.i.free_tag.exit.i.i_crit_edge:         ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tag.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = zext i8 %67 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %tag_mask.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 5
  %68 = ptrtoint ptr %tag_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tag_mask.i.i.i, align 4
  %and.i175.i.i = and i32 %69, %neg.i.i.i
  store i32 %and.i175.i.i, ptr %tag_mask.i.i.i, align 4
  %70 = ptrtoint ptr %tag_number.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -1, ptr %tag_number.i.i.i, align 2
  br label %free_tag.exit.i.i

free_tag.exit.i.i:                                ; preds = %if.then.i.i.i, %if.end85.i.i.free_tag.exit.i.i_crit_edge
  %srb_waiting_list.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %free_tag.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge

free_tag.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %free_tag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %free_tag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i.i, align 4
  %73 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %35, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %free_tag.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %77 = ptrtoint ptr %srb_waiting_list.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %srb_waiting_list.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %35, ptr noundef %srb_waiting_list.i.i, ptr noundef %78) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.list_move.exit.i.i_crit_edge

__list_del_entry.exit.i.i.i.list_move.exit.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %35, ptr %prev1.i.i2.i.i.i, align 4
  %80 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %78, ptr %35, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %81 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %srb_waiting_list.i.i, ptr %prev3.i.i.i.i.i, align 4
  %82 = ptrtoint ptr %srb_waiting_list.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %35, ptr %srb_waiting_list.i.i, align 4
  br label %list_move.exit.i.i

list_move.exit.i.i:                               ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.list_move.exit.i.i_crit_edge
  %waiting_timer.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 8
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 8, i32 0, i32 1
  %83 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i.not.i.i.i, label %if.end.i.i.i, label %list_move.exit.i.i.dc395x_handle_interrupt.exit_crit_edge

list_move.exit.i.i.dc395x_handle_interrupt.exit_crit_edge: ; preds = %list_move.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dc395x_handle_interrupt.exit

if.end.i.i.i:                                     ; preds = %list_move.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %last_reset.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 10
  %86 = ptrtoint ptr %last_reset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %last_reset.i.i.i, align 4
  %add.i176.i.i = add i32 %85, 55
  %sub1.i.i.i = sub i32 %add.i176.i.i, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub1.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then2.i.i.i, label %if.else.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add5.i.i.i = add i32 %87, -49
  br label %if.end11.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %add8.i.i.i = add i32 %88, 6
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then2.i.i.i
  %add8.sink.i.i.i = phi i32 [ %add5.i.i.i, %if.then2.i.i.i ], [ %add8.i.i.i, %if.else.i.i.i ]
  %89 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 8, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add8.sink.i.i.i, ptr %89, align 4
  tail call void @add_timer(ptr noundef %waiting_timer.i.i.i) #9
  br label %dc395x_handle_interrupt.exit

if.else90.i.i:                                    ; preds = %if.else48.i.i
  %and93.i.i = and i32 %conv20.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i.i)
  %tobool94.not.i.i = icmp eq i32 %and93.i.i, 0
  br i1 %tobool94.not.i.i, label %if.else112.i.i, label %if.then95.i.i

if.then95.i.i:                                    ; preds = %if.else90.i.i
  %91 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %io_port_base, align 4
  %add97.i.i = add i32 %92, 131
  %and98.i.i = and i32 %add97.i.i, 1048575
  %add99.i.i = or i32 %and98.i.i, -18874368
  %93 = inttoptr i32 %add99.i.i to ptr
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %93) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !637
  %95 = and i8 %94, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool105.not.i.i = icmp eq i8 %95, 0
  br i1 %tobool105.not.i.i, label %if.else110.i.i, label %if.then95.i.i.dc395x_handle_interrupt.exit_crit_edge

if.then95.i.i.dc395x_handle_interrupt.exit_crit_edge: ; preds = %if.then95.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dc395x_handle_interrupt.exit

if.else110.i.i:                                   ; preds = %if.then95.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @waiting_process_next(ptr noundef %dev_id) #9
  br label %dc395x_handle_interrupt.exit

if.else112.i.i:                                   ; preds = %if.else90.i.i
  %and115.i.i = and i32 %conv20.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i.i)
  %tobool116.not.i.i = icmp eq i32 %and115.i.i, 0
  br i1 %tobool116.not.i.i, label %if.else112.i.i.dc395x_handle_interrupt.exit_crit_edge, label %if.else112.i.i.disc1.i.i_crit_edge

if.else112.i.i.disc1.i.i_crit_edge:               ; preds = %if.else112.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %disc1.i.i

if.else112.i.i.dc395x_handle_interrupt.exit_crit_edge: ; preds = %if.else112.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dc395x_handle_interrupt.exit

disc1.sink.split.i.i:                             ; preds = %lor.lhs.false80.i.i.disc1.sink.split.i.i_crit_edge, %do.end76.i.i.disc1.sink.split.i.i_crit_edge, %if.then65.i.i
  %target_status84.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 14
  %96 = ptrtoint ptr %target_status84.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -1, ptr %target_status84.i.i, align 1
  br label %disc1.i.i

disc1.i.i:                                        ; preds = %disc1.sink.split.i.i, %if.else112.i.i.disc1.i.i_crit_edge
  %tag_number.i177.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 17
  %97 = ptrtoint ptr %tag_number.i177.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %tag_number.i177.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %98)
  %cmp.not.i178.i.i = icmp eq i8 %98, -1
  br i1 %cmp.not.i178.i.i, label %disc1.i.i.free_tag.exit186.i.i_crit_edge, label %if.then.i184.i.i

disc1.i.i.free_tag.exit186.i.i_crit_edge:         ; preds = %disc1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tag.exit186.i.i

if.then.i184.i.i:                                 ; preds = %disc1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i179.i.i = zext i8 %98 to i32
  %shl.i180.i.i = shl nuw i32 1, %conv.i179.i.i
  %neg.i181.i.i = xor i32 %shl.i180.i.i, -1
  %tag_mask.i182.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 5
  %99 = ptrtoint ptr %tag_mask.i182.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tag_mask.i182.i.i, align 4
  %and.i183.i.i = and i32 %100, %neg.i181.i.i
  store i32 %and.i183.i.i, ptr %tag_mask.i182.i.i, align 4
  %101 = ptrtoint ptr %tag_number.i177.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -1, ptr %tag_number.i177.i.i, align 2
  br label %free_tag.exit186.i.i

free_tag.exit186.i.i:                             ; preds = %if.then.i184.i.i, %disc1.i.i.free_tag.exit186.i.i_crit_edge
  %102 = ptrtoint ptr %active_srb.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %active_srb.i.i, align 4
  %103 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 0, ptr %state.i.i, align 4
  %cmd1.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 2
  %104 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cmd1.i.i.i, align 4
  %sc_data_direction.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %105, i32 0, i32 15
  %106 = ptrtoint ptr %sc_data_direction.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sc_data_direction.i.i.i, align 4
  %target_status.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 14
  %108 = ptrtoint ptr %target_status.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %target_status.i.i.i, align 1
  %result.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %105, i32 0, i32 24
  %110 = ptrtoint ptr %result.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %result.i.i.i.i, align 4
  %and.i277.i.i.i = and i32 %111, -16711936
  store i32 %and.i277.i.i.i, ptr %result.i.i.i.i, align 4
  %flag.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 20
  %112 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %flag.i.i.i, align 1
  %114 = and i8 %113, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not.i.i108.i = icmp eq i8 %114, 0
  br i1 %tobool.not.i.i108.i, label %if.end19.i.i.i, label %pci_unmap_srb_sense.exit.i.i.i

pci_unmap_srb_sense.exit.i.i.i:                   ; preds = %free_tag.exit186.i.i
  %dev.i.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 23
  %115 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i.i.i.i, align 4
  %dev1.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 44
  %segment_x.i.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 3
  %117 = ptrtoint ptr %segment_x.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %segment_x.i.i.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 4
  %length.i.i.i.i = getelementptr inbounds %struct.SGentry, ptr %118, i32 0, i32 1
  %121 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %length.i.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i.i.i, i32 noundef %120, i32 noundef %122, i32 noundef 2, i32 noundef 0) #9
  %xferred.i.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 9
  %123 = ptrtoint ptr %xferred.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %xferred.i.i.i.i, align 4
  %total_xfer_length.i.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 7
  %125 = ptrtoint ptr %total_xfer_length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %total_xfer_length.i.i.i.i, align 4
  %126 = ptrtoint ptr %segment_x.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %segment_x.i.i.i.i, align 4
  %arrayidx5.i.i.i.i = getelementptr %struct.SGentry, ptr %127, i32 63
  %128 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx5.i.i.i.i, align 4
  %130 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %127, align 4
  %131 = load ptr, ptr %segment_x.i.i.i.i, align 4
  %length12.i.i.i.i = getelementptr %struct.SGentry, ptr %131, i32 63, i32 1
  %132 = ptrtoint ptr %length12.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %length12.i.i.i.i, align 4
  %length15.i.i.i.i = getelementptr inbounds %struct.SGentry, ptr %131, i32 0, i32 1
  %134 = ptrtoint ptr %length15.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %length15.i.i.i.i, align 4
  %135 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %flag.i.i.i, align 1
  %137 = and i8 %136, -2
  store i8 %137, ptr %flag.i.i.i, align 1
  %adapter_status.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 13
  %138 = ptrtoint ptr %adapter_status.i.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %adapter_status.i.i.i, align 2
  %139 = ptrtoint ptr %target_status.i.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 2, ptr %target_status.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %109)
  %cmp.i187.i.i = icmp eq i8 %109, 2
  %140 = ptrtoint ptr %result.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %result.i.i.i.i, align 4
  br i1 %cmp.i187.i.i, label %if.then15.i.i.i, label %do.end18.i.i.i

if.then15.i.i.i:                                  ; preds = %pci_unmap_srb_sense.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i279.i.i.i = and i32 %141, -16711681
  %or.i.i.i.i = or i32 %and.i279.i.i.i, 262144
  %142 = ptrtoint ptr %result.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %or.i.i.i.i, ptr %result.i.i.i.i, align 4
  br label %ckc_e.i.i.i

do.end18.i.i.i:                                   ; preds = %pci_unmap_srb_sense.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i281.i.i.i = and i32 %141, -256
  %or.i282.i.i.i = or i32 %and.i281.i.i.i, 2
  %143 = ptrtoint ptr %result.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or.i282.i.i.i, ptr %result.i.i.i.i, align 4
  br label %ckc_e.i.i.i

if.end19.i.i.i:                                   ; preds = %free_tag.exit186.i.i
  %144 = zext i8 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.268)
  switch i8 %109, label %if.else53.i.i.i [
    i8 0, label %if.else58.i.i.i
    i8 2, label %if.then25.i.i.i
    i8 40, label %if.then29.i.i.i
    i8 -1, label %if.then50.i.i.i
  ]

if.then25.i.i.i:                                  ; preds = %if.end19.i.i.i
  %145 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cmd1.i.i.i, align 4
  %147 = or i8 %113, 1
  %148 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %flag.i.i.i, align 1
  %adapter_status.i.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 13
  %149 = ptrtoint ptr %adapter_status.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %adapter_status.i.i.i.i, align 2
  %150 = ptrtoint ptr %target_status.i.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %target_status.i.i.i, align 1
  %sense_buffer.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %146, i32 0, i32 21
  %151 = ptrtoint ptr %sense_buffer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %sense_buffer.i.i.i.i, align 4
  %153 = call ptr @memset(ptr %152, i32 0, i32 96)
  %segment_x.i284.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 3
  %154 = ptrtoint ptr %segment_x.i284.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %segment_x.i284.i.i.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 4
  %arrayidx4.i.i.i.i = getelementptr %struct.SGentry, ptr %155, i32 63
  %158 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %arrayidx4.i.i.i.i, align 4
  %159 = load ptr, ptr %segment_x.i284.i.i.i, align 4
  %length.i285.i.i.i = getelementptr inbounds %struct.SGentry, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %length.i285.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %length.i285.i.i.i, align 4
  %length10.i.i.i.i = getelementptr %struct.SGentry, ptr %159, i32 63, i32 1
  %162 = ptrtoint ptr %length10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %length10.i.i.i.i, align 4
  %total_xfer_length.i286.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 7
  %163 = ptrtoint ptr %total_xfer_length.i286.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %total_xfer_length.i286.i.i.i, align 4
  %xferred.i287.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 9
  %165 = ptrtoint ptr %xferred.i287.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %xferred.i287.i.i.i, align 4
  store i32 96, ptr %total_xfer_length.i286.i.i.i, align 4
  %166 = load ptr, ptr %segment_x.i284.i.i.i, align 4
  %length14.i.i.i.i = getelementptr inbounds %struct.SGentry, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %length14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 96, ptr %length14.i.i.i.i, align 4
  %dev.i288.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 23
  %168 = ptrtoint ptr %dev.i288.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev.i288.i.i.i, align 4
  %dev15.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %169, i32 0, i32 44
  %170 = load ptr, ptr %sense_buffer.i.i.i.i, align 4
  %call.i.i.i188.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %170) #9
  br i1 %call.i.i.i188.i.i, label %land.rhs.i.i.i.i.i, label %if.end39.i.i.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %if.then25.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs.i.i.i.i.i.dma_map_single_attrs.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i, !prof !588

land.rhs.i.i.i.i.i.dma_map_single_attrs.exit.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev15.i.i.i.i) #9
  %init_name.i.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %169, i32 0, i32 44, i32 3
  %171 = ptrtoint ptr %init_name.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %init_name.i.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %172, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then.i.i.i.i.i.dev_name.exit.i.i.i.i.i_crit_edge

if.then.i.i.i.i.i.dev_name.exit.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %173 = ptrtoint ptr %dev15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev15.i.i.i.i, align 4
  br label %dev_name.exit.i.i.i.i.i

dev_name.exit.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i.i, %if.then.i.i.i.i.i.dev_name.exit.i.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i.i = phi ptr [ %174, %if.end.i.i.i.i.i.i ], [ %172, %if.then.i.i.i.i.i.dev_name.exit.i.i.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call16.i.i.i.i.i, ptr noundef %retval.0.i.i.i.i.i.i) #9
  br label %dma_map_single_attrs.exit.i.i.i.i

if.end39.i.i.i.i.i:                               ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev15.i.i.i.i, ptr noundef %170, i32 noundef 96) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %175 = load ptr, ptr @mem_map, align 4
  %176 = ptrtoint ptr %170 to i32
  %sub.i.i.i.i.i = add i32 %176, 1073741824
  %shr.i.i.i.i.i = lshr i32 %sub.i.i.i.i.i, 12
  %add.ptr.i.i.i.i.i = getelementptr %struct.page, ptr %175, i32 %shr.i.i.i.i.i
  %and.i.i.i.i.i = and i32 %176, 4095
  %call41.i.i.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev15.i.i.i.i, ptr noundef %add.ptr.i.i.i.i.i, i32 noundef %and.i.i.i.i.i, i32 noundef 96, i32 noundef 2, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit.i.i.i.i

dma_map_single_attrs.exit.i.i.i.i:                ; preds = %if.end39.i.i.i.i.i, %dev_name.exit.i.i.i.i.i, %land.rhs.i.i.i.i.i.dma_map_single_attrs.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %call41.i.i.i.i.i, %if.end39.i.i.i.i.i ], [ -1, %dev_name.exit.i.i.i.i.i ], [ -1, %land.rhs.i.i.i.i.i.dma_map_single_attrs.exit.i.i.i.i_crit_edge ]
  %177 = ptrtoint ptr %segment_x.i284.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %segment_x.i284.i.i.i, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %retval.0.i.i.i.i.i, ptr %178, align 4
  %sg_count.i.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 5
  %180 = ptrtoint ptr %sg_count.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %sg_count.i.i.i.i, align 4
  %sg_index.i.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 6
  %181 = ptrtoint ptr %sg_index.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %sg_index.i.i.i.i, align 1
  %call23.i.i.i.i = tail call fastcc zeroext i8 @start_scsi(ptr noundef %dev_id, ptr noundef nonnull %22, ptr noundef %35) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call23.i.i.i.i)
  %tobool.not.i289.i.i.i = icmp eq i8 %call23.i.i.i.i, 0
  br i1 %tobool.not.i289.i.i.i, label %dma_map_single_attrs.exit.i.i.i.i.dc395x_handle_interrupt.exit_crit_edge, label %do.end26.i.i.i.i

dma_map_single_attrs.exit.i.i.i.i.dc395x_handle_interrupt.exit_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dc395x_handle_interrupt.exit

do.end26.i.i.i.i:                                 ; preds = %dma_map_single_attrs.exit.i.i.i.i
  %182 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cmd1.i.i.i, align 4
  %target_id.i.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 7
  %184 = ptrtoint ptr %target_id.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %target_id.i.i.i.i, align 2
  %conv28.i.i.i.i = zext i8 %185 to i32
  %target_lun.i.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 8
  %186 = ptrtoint ptr %target_lun.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %target_lun.i.i.i.i, align 1
  %conv29.i.i.i.i = zext i8 %187 to i32
  %call30.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %183, i32 noundef %conv28.i.i.i.i, i32 noundef %conv29.i.i.i.i) #12
  %srb_waiting_list.i.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #9
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i54.i.i.i.i, label %do.end26.i.i.i.i.__list_del_entry.exit.i.i.i.i.i_crit_edge

do.end26.i.i.i.i.__list_del_entry.exit.i.i.i.i.i_crit_edge: ; preds = %do.end26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i.i.i.i

if.end.i.i54.i.i.i.i:                             ; preds = %do.end26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %188 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %190 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %35, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %189, ptr %prev1.i.i.i.i.i.i.i, align 4
  %193 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile ptr %191, ptr %189, align 4
  br label %__list_del_entry.exit.i.i.i.i.i

__list_del_entry.exit.i.i.i.i.i:                  ; preds = %if.end.i.i54.i.i.i.i, %do.end26.i.i.i.i.__list_del_entry.exit.i.i.i.i.i_crit_edge
  %194 = ptrtoint ptr %srb_waiting_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %srb_waiting_list.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %35, ptr noundef %srb_waiting_list.i.i.i.i, ptr noundef %195) #9
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.i.i.list_move.exit.i.i.i.i_crit_edge

__list_del_entry.exit.i.i.i.i.i.list_move.exit.i.i.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %__list_del_entry.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %prev1.i.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %35, ptr %prev1.i.i2.i.i.i.i.i, align 4
  %197 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %195, ptr %35, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %198 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %srb_waiting_list.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %199 = ptrtoint ptr %srb_waiting_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %35, ptr %srb_waiting_list.i.i.i.i, align 4
  br label %list_move.exit.i.i.i.i

list_move.exit.i.i.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i, %__list_del_entry.exit.i.i.i.i.i.list_move.exit.i.i.i.i_crit_edge
  %waiting_timer.i.i.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 8
  %pprev.i.i.i.i.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 8, i32 0, i32 1
  %200 = ptrtoint ptr %pprev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile ptr, ptr %pprev.i.i.i.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i.i.i.i = icmp eq ptr %201, null
  br i1 %tobool.not.i.i.not.i.i.i.i.i, label %if.end.i.i.i189.i.i, label %list_move.exit.i.i.i.i.dc395x_handle_interrupt.exit_crit_edge

list_move.exit.i.i.i.i.dc395x_handle_interrupt.exit_crit_edge: ; preds = %list_move.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dc395x_handle_interrupt.exit

if.end.i.i.i189.i.i:                              ; preds = %list_move.exit.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %202 = load volatile i32, ptr @jiffies, align 128
  %last_reset.i.i.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 10
  %203 = ptrtoint ptr %last_reset.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %last_reset.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %202, 51
  %sub1.i.i.i.i.i = sub i32 %add.i.i.i.i.i, %204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %sub1.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then2.i.i.i.i.i, label %if.else.i.i.i.i.i

if.then2.i.i.i.i.i:                               ; preds = %if.end.i.i.i189.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add5.i.i.i.i.i = add i32 %204, -49
  br label %if.end11.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i.i.i189.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %205 = load volatile i32, ptr @jiffies, align 128
  %add8.i.i.i.i.i = add i32 %205, 2
  br label %if.end11.i.i.i.i.i

if.end11.i.i.i.i.i:                               ; preds = %if.else.i.i.i.i.i, %if.then2.i.i.i.i.i
  %add8.sink.i.i.i.i.i = phi i32 [ %add5.i.i.i.i.i, %if.then2.i.i.i.i.i ], [ %add8.i.i.i.i.i, %if.else.i.i.i.i.i ]
  %206 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 8, i32 1
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %add8.sink.i.i.i.i.i, ptr %206, align 4
  tail call void @add_timer(ptr noundef %waiting_timer.i.i.i.i.i) #9
  br label %dc395x_handle_interrupt.exit

if.then29.i.i.i:                                  ; preds = %if.end19.i.i.i
  %srb_going_list.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 2
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge, %if.then29.i.i.i
  %count.0.i.i.i.i = phi i32 [ 0, %if.then29.i.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %pos.0.in.i.i.i.i = phi ptr [ %srb_going_list.i.i.i, %if.then29.i.i.i ], [ %pos.0.i.i.i.i, %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %208 = ptrtoint ptr %pos.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %pos.0.i.i.i.i = load ptr, ptr %pos.0.in.i.i.i.i, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %pos.0.i.i.i.i, %srb_going_list.i.i.i
  %inc.i.i.i.i = add i32 %count.0.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i.i, label %list_size.exit.i.i.i, label %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i

list_size.exit.i.i.i:                             ; preds = %for.cond.i.i.i.i
  %conv30.i.i.i = trunc i32 %count.0.i.i.i.i to i8
  %target_id.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 7
  %209 = ptrtoint ptr %target_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %target_id.i.i.i, align 2
  %conv34.i.i.i = zext i8 %210 to i32
  %target_lun.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 8
  %211 = ptrtoint ptr %target_lun.i.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %target_lun.i.i.i, align 1
  %conv35.i.i.i = zext i8 %212 to i32
  %conv36.i.i.i = and i32 %count.0.i.i.i.i, 255
  %call37.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %conv34.i.i.i, i32 noundef %conv35.i.i.i, i32 noundef %conv36.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv36.i.i.i)
  %cmp39.i.i.i = icmp ugt i32 %conv36.i.i.i, 1
  %dec.i.i.i = sext i1 %cmp39.i.i.i to i8
  %spec.select.i.i.i = add i8 %dec.i.i.i, %conv30.i.i.i
  %conv43.i.i.i = zext i8 %spec.select.i.i.i to i16
  %max_command.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 6
  %213 = ptrtoint ptr %max_command.i.i.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %conv43.i.i.i, ptr %max_command.i.i.i, align 4
  %214 = ptrtoint ptr %tag_number.i177.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %tag_number.i177.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %215)
  %cmp.not.i.i.i.i = icmp eq i8 %215, -1
  br i1 %cmp.not.i.i.i.i, label %list_size.exit.i.i.i.free_tag.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

list_size.exit.i.i.i.free_tag.exit.i.i.i_crit_edge: ; preds = %list_size.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tag.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %list_size.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i8 %215 to i32
  %shl.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i
  %neg.i.i.i.i = xor i32 %shl.i.i.i.i, -1
  %tag_mask.i.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 5
  %216 = ptrtoint ptr %tag_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %tag_mask.i.i.i.i, align 4
  %and.i290.i.i.i = and i32 %217, %neg.i.i.i.i
  store i32 %and.i290.i.i.i, ptr %tag_mask.i.i.i.i, align 4
  %218 = ptrtoint ptr %tag_number.i177.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 -1, ptr %tag_number.i177.i.i, align 2
  br label %free_tag.exit.i.i.i

free_tag.exit.i.i.i:                              ; preds = %if.then.i.i.i.i, %list_size.exit.i.i.i.free_tag.exit.i.i.i_crit_edge
  %srb_waiting_list.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 3
  tail call fastcc void @list_move(ptr noundef %35, ptr noundef %srb_waiting_list.i.i.i) #9
  tail call fastcc void @waiting_set_timer(ptr noundef %dev_id, i32 noundef 5) #9
  %adapter_status44.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 13
  %219 = ptrtoint ptr %adapter_status44.i.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %adapter_status44.i.i.i, align 2
  %220 = ptrtoint ptr %target_status.i.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %target_status.i.i.i, align 1
  br label %dc395x_handle_interrupt.exit

if.then50.i.i.i:                                  ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %adapter_status51.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 13
  %221 = ptrtoint ptr %adapter_status51.i.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 17, ptr %adapter_status51.i.i.i, align 2
  %222 = ptrtoint ptr %target_status.i.i.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 0, ptr %target_status.i.i.i, align 1
  %223 = ptrtoint ptr %result.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %result.i.i.i.i, align 4
  %and.i292.i.i.i = and i32 %224, -16711681
  %or.i293.i.i.i = or i32 %and.i292.i.i.i, 65536
  store i32 %or.i293.i.i.i, ptr %result.i.i.i.i, align 4
  br label %ckc_e.i.i.i

if.else53.i.i.i:                                  ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %adapter_status54.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 13
  %225 = ptrtoint ptr %adapter_status54.i.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %adapter_status54.i.i.i, align 2
  %226 = ptrtoint ptr %result.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %result.i.i.i.i, align 4
  %and.i295.i.i.i = and i32 %227, -16711936
  %conv.i299.i.i.i = zext i8 %109 to i32
  %or.i296.i.i.i = or i32 %and.i295.i.i.i, %conv.i299.i.i.i
  %or.i300.i.i.i = or i32 %or.i296.i.i.i, 458752
  store i32 %or.i300.i.i.i, ptr %result.i.i.i.i, align 4
  br label %ckc_e.i.i.i

if.else58.i.i.i:                                  ; preds = %if.end19.i.i.i
  %adapter_status59.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 13
  %228 = ptrtoint ptr %adapter_status59.i.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %adapter_status59.i.i.i, align 2
  %230 = and i8 %229, 18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool62.not.i.i.i = icmp eq i8 %230, 0
  br i1 %tobool62.not.i.i.i, label %if.else65.i.i.i, label %if.then63.i.i.i

if.then63.i.i.i:                                  ; preds = %if.else58.i.i.i
  %231 = ptrtoint ptr %target_status.i.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 0, ptr %target_status.i.i.i, align 1
  %end_message.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 16
  %232 = ptrtoint ptr %end_message.i.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %end_message.i.i.i, align 1
  %234 = zext i8 %233 to i64
  call void @__sanitizer_cov_trace_switch(i64 %234, ptr @__sancov_gen_cov_switch_values.269)
  switch i8 %233, label %sw.default.i.i.i.i [
    i8 0, label %if.then63.i.i.i.ckc_e.i.i.i_crit_edge
    i8 6, label %if.then63.i.i.i.sw.epilog.sink.split.i.i.i.i_crit_edge
    i8 12, label %sw.bb1.i.i.i.i
  ]

if.then63.i.i.i.sw.epilog.sink.split.i.i.i.i_crit_edge: ; preds = %if.then63.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i.i.i.i

if.then63.i.i.i.ckc_e.i.i.i_crit_edge:            ; preds = %if.then63.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ckc_e.i.i.i

sw.bb1.i.i.i.i:                                   ; preds = %if.then63.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i.i.i.i

sw.default.i.i.i.i:                               ; preds = %if.then63.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i.i.i.i

sw.epilog.sink.split.i.i.i.i:                     ; preds = %sw.default.i.i.i.i, %sw.bb1.i.i.i.i, %if.then63.i.i.i.sw.epilog.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 458752, %sw.default.i.i.i.i ], [ 524288, %sw.bb1.i.i.i.i ], [ 327680, %if.then63.i.i.i.sw.epilog.sink.split.i.i.i.i_crit_edge ]
  %235 = ptrtoint ptr %result.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %result.i.i.i.i, align 4
  %and.i8.i.i.i.i = and i32 %236, -16711681
  %or.i9.i.i.i.i = or i32 %and.i8.i.i.i.i, %.sink.i.i.i.i
  store i32 %or.i9.i.i.i.i, ptr %result.i.i.i.i, align 4
  br label %ckc_e.i.i.i

if.else65.i.i.i:                                  ; preds = %if.else58.i.i.i
  %status66.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 18
  %237 = ptrtoint ptr %status66.i.i.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %status66.i.i.i, align 1
  %239 = and i8 %238, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool69.not.i.i.i = icmp eq i8 %239, 0
  br i1 %tobool69.not.i.i.i, label %if.else71.i.i.i, label %if.then70.i.i.i

if.then70.i.i.i:                                  ; preds = %if.else65.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i303.i.i.i = or i32 %and.i277.i.i.i, 393216
  %240 = ptrtoint ptr %result.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %or.i303.i.i.i, ptr %result.i.i.i.i, align 4
  br label %ckc_e.i.i.i

if.else71.i.i.i:                                  ; preds = %if.else65.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %241 = ptrtoint ptr %adapter_status59.i.i.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 0, ptr %adapter_status59.i.i.i, align 2
  %242 = ptrtoint ptr %target_status.i.i.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 0, ptr %target_status.i.i.i, align 1
  br label %ckc_e.i.i.i

ckc_e.i.i.i:                                      ; preds = %if.else71.i.i.i, %if.then70.i.i.i, %sw.epilog.sink.split.i.i.i.i, %if.then63.i.i.i.ckc_e.i.i.i_crit_edge, %if.else53.i.i.i, %if.then50.i.i.i, %do.end18.i.i.i, %if.then15.i.i.i
  %243 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %cmd1.i.i.i, align 4
  %sc_data_direction.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %244, i32 0, i32 15
  %245 = ptrtoint ptr %sc_data_direction.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %sc_data_direction.i.i.i.i, align 4
  %nents.i.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %244, i32 0, i32 17, i32 0, i32 1
  %247 = ptrtoint ptr %nents.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %nents.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %tobool.not.i305.i.i.i = icmp eq i32 %248, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %246)
  %cmp.not.i306.i.i.i = icmp eq i32 %246, 3
  %or.cond.i.i.i.i = select i1 %tobool.not.i305.i.i.i, i1 true, i1 %cmp.not.i306.i.i.i
  br i1 %or.cond.i.i.i.i, label %ckc_e.i.i.i.pci_unmap_srb.exit.i.i.i_crit_edge, label %do.end.i308.i.i.i

ckc_e.i.i.i.pci_unmap_srb.exit.i.i.i_crit_edge:   ; preds = %ckc_e.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_unmap_srb.exit.i.i.i

do.end.i308.i.i.i:                                ; preds = %ckc_e.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i307.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 23
  %249 = ptrtoint ptr %dev.i307.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev.i307.i.i.i, align 4
  %dev2.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %250, i32 0, i32 44
  %sg_bus_addr.i.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 4
  %251 = ptrtoint ptr %sg_bus_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %sg_bus_addr.i.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i.i.i.i, i32 noundef %252, i32 noundef 512, i32 noundef 1, i32 noundef 0) #9
  tail call void @scsi_dma_unmap(ptr noundef %244) #9
  br label %pci_unmap_srb.exit.i.i.i

pci_unmap_srb.exit.i.i.i:                         ; preds = %do.end.i308.i.i.i, %ckc_e.i.i.i.pci_unmap_srb.exit.i.i.i_crit_edge
  %cmnd.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %105, i32 0, i32 16
  %253 = ptrtoint ptr %cmnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %cmnd.i.i.i, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %254, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %256)
  %cmp78.i.i.i = icmp eq i8 %256, 18
  br i1 %cmp78.i.i.i, label %if.then80.i.i.i, label %pci_unmap_srb.exit.i.i.i.if.end176.i.i.i_crit_edge

pci_unmap_srb.exit.i.i.i.if.end176.i.i.i_crit_edge: ; preds = %pci_unmap_srb.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end176.i.i.i

if.then80.i.i.i:                                  ; preds = %pci_unmap_srb.exit.i.i.i
  %sdb.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %105, i32 0, i32 17
  %257 = ptrtoint ptr %sdb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %sdb.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i.i.i) #9
  %259 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 0, ptr %offset.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i.i) #9
  %260 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 36, ptr %len.i.i.i, align 4
  %261 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !638
  %and.i309.i.i.i = and i32 %261, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i309.i.i.i)
  %tobool97.not.i.i.i = icmp eq i32 %and.i309.i.i.i, 0
  br i1 %tobool97.not.i.i.i, label %if.then98.i.i.i, label %if.then80.i.i.i.do.end101.i.i.i_crit_edge

if.then80.i.i.i.do.end101.i.i.i_crit_edge:        ; preds = %if.then80.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end101.i.i.i

if.then98.i.i.i:                                  ; preds = %if.then80.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.end101.i.i.i

do.end101.i.i.i:                                  ; preds = %if.then98.i.i.i, %if.then80.i.i.i.do.end101.i.i.i_crit_edge
  %nents.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %105, i32 0, i32 17, i32 0, i32 1
  %262 = ptrtoint ptr %nents.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %nents.i.i.i.i, align 4
  %call103.i.i.i = call ptr @scsi_kmap_atomic_sg(ptr noundef %258, i32 noundef %263, ptr noundef nonnull %offset.i.i.i, ptr noundef nonnull %len.i.i.i) #9
  %264 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call103.i.i.i, i32 %265
  br i1 %tobool.not.i.i108.i, label %land.lhs.true.i.i.i, label %do.end101.i.i.i.if.end130.i.i.i_crit_edge

do.end101.i.i.i.if.end130.i.i.i_crit_edge:        ; preds = %do.end101.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end101.i.i.i
  %266 = ptrtoint ptr %result.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %result.i.i.i.i, align 4
  %268 = lshr i32 %267, 16
  %conv.i311.i.i.i = trunc i32 %268 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i311.i.i.i)
  %cmp107.i.i.i = icmp eq i8 %conv.i311.i.i.i, 0
  br i1 %cmp107.i.i.i, label %land.lhs.true109.i.i.i, label %land.lhs.true.i.i.i.if.end130.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end130.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.i.i.i

land.lhs.true109.i.i.i:                           ; preds = %land.lhs.true.i.i.i
  %269 = ptrtoint ptr %cmnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %cmnd.i.i.i, align 4
  %arrayidx111.i.i.i = getelementptr i8, ptr %270, i32 2
  %271 = ptrtoint ptr %arrayidx111.i.i.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx111.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %272)
  %cmp113.i.i.i = icmp eq i8 %272, 0
  br i1 %cmp113.i.i.i, label %land.lhs.true115.i.i.i, label %land.lhs.true109.i.i.i.if.end130.i.i.i_crit_edge

land.lhs.true109.i.i.i.if.end130.i.i.i_crit_edge: ; preds = %land.lhs.true109.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.i.i.i

land.lhs.true115.i.i.i:                           ; preds = %land.lhs.true109.i.i.i
  %length.i312.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %105, i32 0, i32 17, i32 1
  %273 = ptrtoint ptr %length.i312.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %length.i312.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %274)
  %cmp117.i.i.i = icmp ult i32 %274, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %107)
  %cmp120.not.i.i.i = icmp eq i32 %107, 3
  %or.cond.i.i.i = select i1 %cmp117.i.i.i, i1 true, i1 %cmp120.not.i.i.i
  %tobool123.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %or.cond275.i.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %tobool123.not.i.i.i
  br i1 %or.cond275.i.i.i, label %land.lhs.true115.i.i.i.if.end130.i.i.i_crit_edge, label %land.lhs.true124.i.i.i

land.lhs.true115.i.i.i.if.end130.i.i.i_crit_edge: ; preds = %land.lhs.true115.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.i.i.i

land.lhs.true124.i.i.i:                           ; preds = %land.lhs.true115.i.i.i
  %Vers.i.i.i = getelementptr inbounds %struct.ScsiInqData, ptr %add.ptr.i.i.i, i32 0, i32 2
  %275 = ptrtoint ptr %Vers.i.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %Vers.i.i.i, align 1
  %277 = and i8 %276, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %cmp127.not.i.i.i = icmp eq i8 %277, 0
  br i1 %cmp127.not.i.i.i, label %land.lhs.true124.i.i.i.if.end130.i.i.i_crit_edge, label %if.then129.i.i.i

land.lhs.true124.i.i.i.if.end130.i.i.i_crit_edge: ; preds = %land.lhs.true124.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.i.i.i

if.then129.i.i.i:                                 ; preds = %land.lhs.true124.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %Flags.i.i.i = getelementptr inbounds %struct.ScsiInqData, ptr %add.ptr.i.i.i, i32 0, i32 7
  %278 = ptrtoint ptr %Flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %Flags.i.i.i, align 1
  %inquiry7.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 11
  %280 = ptrtoint ptr %inquiry7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %279, ptr %inquiry7.i.i.i, align 2
  br label %if.end130.i.i.i

if.end130.i.i.i:                                  ; preds = %if.then129.i.i.i, %land.lhs.true124.i.i.i.if.end130.i.i.i_crit_edge, %land.lhs.true115.i.i.i.if.end130.i.i.i_crit_edge, %land.lhs.true109.i.i.i.if.end130.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end130.i.i.i_crit_edge, %do.end101.i.i.i.if.end130.i.i.i_crit_edge
  %281 = ptrtoint ptr %result.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %result.i.i.i.i, align 4
  %283 = and i32 %282, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %cmp133.i.i.i = icmp eq i32 %283, 0
  %conv.i316.i.i.i = trunc i32 %282 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv.i316.i.i.i)
  %cmp137.i.i.i = icmp eq i8 %conv.i316.i.i.i, 2
  %or.cond326.i.i.i = or i1 %cmp133.i.i.i, %cmp137.i.i.i
  br i1 %or.cond326.i.i.i, label %if.then139.i.i.i, label %if.end130.i.i.i.if.end144.i.i.i_crit_edge

if.end130.i.i.i.if.end144.i.i.i_crit_edge:        ; preds = %if.end130.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144.i.i.i

if.then139.i.i.i:                                 ; preds = %if.end130.i.i.i
  %init_tcq_flag.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 18
  %284 = ptrtoint ptr %init_tcq_flag.i.i.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %init_tcq_flag.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool140.not.i.i.i = icmp eq i8 %285, 0
  br i1 %tobool140.not.i.i.i, label %if.then141.i.i.i, label %if.then139.i.i.i.if.end144.i.i.i_crit_edge

if.then139.i.i.i.if.end144.i.i.i_crit_edge:       ; preds = %if.then139.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144.i.i.i

if.then141.i.i.i:                                 ; preds = %if.then139.i.i.i
  %286 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %add.ptr.i.i.i, align 1
  %288 = and i8 %287, 31
  %dev_type.i.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 17
  %289 = ptrtoint ptr %dev_type.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %288, ptr %dev_type.i.i.i.i, align 4
  %Vers.i.i.i.i.i = getelementptr inbounds %struct.ScsiInqData, ptr %add.ptr.i.i.i, i32 0, i32 2
  %290 = ptrtoint ptr %Vers.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %Vers.i.i.i.i.i, align 1
  %292 = and i8 %291, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %292)
  %cmp.not.i.i.i.i.i = icmp eq i8 %292, 0
  br i1 %cmp.not.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i, label %if.then141.i.i.i.if.then.i.i317.i.i.i_crit_edge

if.then141.i.i.i.if.then.i.i317.i.i.i_crit_edge:  ; preds = %if.then141.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i317.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.then141.i.i.i
  %RDF.i.i.i.i.i = getelementptr inbounds %struct.ScsiInqData, ptr %add.ptr.i.i.i, i32 0, i32 3
  %293 = ptrtoint ptr %RDF.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %RDF.i.i.i.i.i, align 1
  %295 = and i8 %294, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %295)
  %cmp4.i.i.i.i.i = icmp eq i8 %295, 2
  br i1 %cmp4.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.if.then.i.i317.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.add_dev.exit.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.i.add_dev.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_dev.exit.i.i.i

lor.lhs.false.i.i.i.i.i.if.then.i.i317.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i317.i.i.i

if.then.i.i317.i.i.i:                             ; preds = %lor.lhs.false.i.i.i.i.i.if.then.i.i317.i.i.i_crit_edge, %if.then141.i.i.i.if.then.i.i317.i.i.i_crit_edge
  %Flags.i.i.i.i.i = getelementptr inbounds %struct.ScsiInqData, ptr %add.ptr.i.i.i, i32 0, i32 7
  %296 = ptrtoint ptr %Flags.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %Flags.i.i.i.i.i, align 1
  %298 = and i8 %297, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %tobool.not.i.i.i.i.i = icmp eq i8 %298, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i317.i.i.i.if.else.i.i319.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then.i.i317.i.i.i.if.else.i.i319.i.i.i_crit_edge: ; preds = %if.then.i.i317.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i319.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then.i.i317.i.i.i
  %dev_mode.i.i.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 10
  %299 = ptrtoint ptr %dev_mode.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %dev_mode.i.i.i.i.i, align 1
  %301 = and i8 %300, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %301)
  %tobool10.not.i.i.i.i.i = icmp eq i8 %301, 0
  br i1 %tobool10.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.else.i.i319.i.i.i_crit_edge, label %land.lhs.true11.i.i.i.i.i

land.lhs.true.i.i.i.i.i.if.else.i.i319.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i319.i.i.i

land.lhs.true11.i.i.i.i.i:                        ; preds = %land.lhs.true.i.i.i.i.i
  %max_command.i.i.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 6
  %302 = ptrtoint ptr %max_command.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %max_command.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %303)
  %cmp15.i.i.i.i.i = icmp eq i16 %303, 1
  br i1 %cmp15.i.i.i.i.i, label %if.then17.i.i.i.i.i, label %land.lhs.true11.i.i.i.i.i.if.end.i.i318.i.i.i_crit_edge

land.lhs.true11.i.i.i.i.i.if.end.i.i318.i.i.i_crit_edge: ; preds = %land.lhs.true11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i318.i.i.i

if.then17.i.i.i.i.i:                              ; preds = %land.lhs.true11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %acb.i.i.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 1
  %304 = ptrtoint ptr %acb.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %acb.i.i.i.i.i, align 4
  %tag_max_num.i.i.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %305, i32 0, i32 14
  %306 = ptrtoint ptr %tag_max_num.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %tag_max_num.i.i.i.i.i, align 4
  %conv18.i.i.i.i.i = zext i8 %307 to i16
  %308 = ptrtoint ptr %max_command.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 %conv18.i.i.i.i.i, ptr %max_command.i.i.i.i.i, align 4
  br label %if.end.i.i318.i.i.i

if.end.i.i318.i.i.i:                              ; preds = %if.then17.i.i.i.i.i, %land.lhs.true11.i.i.i.i.i.if.end.i.i318.i.i.i_crit_edge
  %sync_mode.i.i.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 12
  %309 = ptrtoint ptr %sync_mode.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %sync_mode.i.i.i.i.i, align 1
  %311 = or i8 %310, 32
  store i8 %311, ptr %sync_mode.i.i.i.i.i, align 1
  br label %add_dev.exit.i.i.i

if.else.i.i319.i.i.i:                             ; preds = %land.lhs.true.i.i.i.i.i.if.else.i.i319.i.i.i_crit_edge, %if.then.i.i317.i.i.i.if.else.i.i319.i.i.i_crit_edge
  %max_command22.i.i.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %22, i32 0, i32 6
  %312 = ptrtoint ptr %max_command22.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 1, ptr %max_command22.i.i.i.i.i, align 4
  br label %add_dev.exit.i.i.i

add_dev.exit.i.i.i:                               ; preds = %if.else.i.i319.i.i.i, %if.end.i.i318.i.i.i, %lor.lhs.false.i.i.i.i.i.add_dev.exit.i.i.i_crit_edge
  %313 = ptrtoint ptr %init_tcq_flag.i.i.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 1, ptr %init_tcq_flag.i.i.i, align 1
  br label %if.end144.i.i.i

if.end144.i.i.i:                                  ; preds = %add_dev.exit.i.i.i, %if.then139.i.i.i.if.end144.i.i.i_crit_edge, %if.end130.i.i.i.if.end144.i.i.i_crit_edge
  call void @scsi_kunmap_atomic_sg(ptr noundef %call103.i.i.i) #9
  br i1 %tobool97.not.i.i.i, label %if.then154.i.i.i, label %if.end144.i.i.i.do.body156.i.i.i_crit_edge

if.end144.i.i.i.do.body156.i.i.i_crit_edge:       ; preds = %if.end144.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body156.i.i.i

if.then154.i.i.i:                                 ; preds = %if.end144.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_on() #9
  br label %do.body156.i.i.i

do.body156.i.i.i:                                 ; preds = %if.then154.i.i.i, %if.end144.i.i.i.do.body156.i.i.i_crit_edge
  %314 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !639
  %and.i.i321.i.i.i = and i32 %314, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i321.i.i.i)
  %tobool164.not.i.i.i = icmp eq i32 %and.i.i321.i.i.i, 0
  br i1 %tobool164.not.i.i.i, label %if.then168.i.i.i, label %do.body156.i.i.i.do.end171.i.i.i_crit_edge, !prof !586

do.body156.i.i.i.do.end171.i.i.i_crit_edge:       ; preds = %do.body156.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end171.i.i.i

if.then168.i.i.i:                                 ; preds = %do.body156.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %do.end171.i.i.i

do.end171.i.i.i:                                  ; preds = %if.then168.i.i.i, %do.body156.i.i.i.do.end171.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %261) #9, !srcloc !640
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i.i.i) #9
  br label %if.end176.i.i.i

if.end176.i.i.i:                                  ; preds = %do.end171.i.i.i, %pci_unmap_srb.exit.i.i.i.if.end176.i.i.i_crit_edge
  %total_xfer_length.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %35, i32 0, i32 7
  %315 = ptrtoint ptr %total_xfer_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %total_xfer_length.i.i.i, align 4
  %resid_len.i.i.i.i = getelementptr inbounds %struct.scsi_request, ptr %105, i32 0, i32 5
  %317 = ptrtoint ptr %resid_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %316, ptr %resid_len.i.i.i.i, align 4
  %318 = load i32, ptr %total_xfer_length.i.i.i, align 4
  %this_residual.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %105, i32 0, i32 22, i32 1
  %319 = ptrtoint ptr %this_residual.i.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %318, ptr %this_residual.i.i.i, align 4
  %buffers_residual.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %105, i32 0, i32 22, i32 3
  %320 = ptrtoint ptr %buffers_residual.i.i.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 0, ptr %buffers_residual.i.i.i, align 4
  %tmp_srb.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 7
  %321 = ptrtoint ptr %tmp_srb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %tmp_srb.i.i.i, align 4
  %cmp179.not.i.i.i = icmp eq ptr %322, %35
  br i1 %cmp179.not.i.i.i, label %do.end189.i.i.i, label %do.end184.i.i.i

do.end184.i.i.i:                                  ; preds = %if.end176.i.i.i
  %srb_free_list.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 6
  %call.i.i322.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #9
  br i1 %call.i.i322.i.i.i, label %if.end.i.i323.i.i.i, label %do.end184.i.i.i.__list_del_entry.exit.i.i.i.i_crit_edge

do.end184.i.i.i.__list_del_entry.exit.i.i.i.i_crit_edge: ; preds = %do.end184.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i.i.i

if.end.i.i323.i.i.i:                              ; preds = %do.end184.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %323 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %325 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %35, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %326, i32 0, i32 1
  %327 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %324, ptr %prev1.i.i.i.i.i.i, align 4
  %328 = ptrtoint ptr %324 to i32
  call void @__asan_store4_noabort(i32 %328)
  store volatile ptr %326, ptr %324, align 4
  br label %__list_del_entry.exit.i.i.i.i

__list_del_entry.exit.i.i.i.i:                    ; preds = %if.end.i.i323.i.i.i, %do.end184.i.i.i.__list_del_entry.exit.i.i.i.i_crit_edge
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 6, i32 1
  %329 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %prev.i2.i.i.i.i, align 4
  %call.i.i.i324.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %35, ptr noundef %330, ptr noundef %srb_free_list.i.i.i) #9
  br i1 %call.i.i.i324.i.i.i, label %if.end.i.i.i325.i.i.i, label %__list_del_entry.exit.i.i.i.i.if.end192.i.i.i_crit_edge

__list_del_entry.exit.i.i.i.i.if.end192.i.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192.i.i.i

if.end.i.i.i325.i.i.i:                            ; preds = %__list_del_entry.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %331 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %35, ptr %prev.i2.i.i.i.i, align 4
  %332 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %srb_free_list.i.i.i, ptr %35, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %333 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %330, ptr %prev3.i.i.i.i.i.i, align 4
  %334 = ptrtoint ptr %330 to i32
  call void @__asan_store4_noabort(i32 %334)
  store volatile ptr %35, ptr %330, align 4
  br label %if.end192.i.i.i

do.end189.i.i.i:                                  ; preds = %if.end176.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call191.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #12
  br label %if.end192.i.i.i

if.end192.i.i.i:                                  ; preds = %do.end189.i.i.i, %if.end.i.i.i325.i.i.i, %__list_del_entry.exit.i.i.i.i.if.end192.i.i.i_crit_edge
  call void @scsi_done(ptr noundef %105) #9
  call fastcc void @waiting_process_next(ptr noundef %dev_id) #9
  br label %dc395x_handle_interrupt.exit

if.end28.i:                                       ; preds = %if.end23.i
  %and30.i = and i32 %conv24.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end28.i
  %active_dcb.i109.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 5
  %335 = ptrtoint ptr %active_dcb.i109.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %active_dcb.i109.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !594
  tail call void @arm_heavy_mb() #9
  %337 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %io_port_base, align 4
  %add.i.i111.i = add i32 %338, 128
  %and.i.i112.i = and i32 %add.i.i111.i, 1048575
  %add1.i.i113.i = or i32 %and.i.i112.i, -18874368
  %339 = inttoptr i32 %add1.i.i113.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %339, i16 1024) #9, !srcloc !577
  %340 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %io_port_base, align 4
  %add.i114.i = add i32 %341, 134
  %and.i115.i = and i32 %add.i114.i, 1048575
  %add1.i116.i = or i32 %and.i115.i, -18874368
  %342 = inttoptr i32 %add1.i116.i to ptr
  %343 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %342) #9, !srcloc !598
  %344 = tail call i16 @llvm.bswap.i16(i16 %343) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !641
  %tobool.not.i117.i = icmp eq ptr %336, null
  br i1 %tobool.not.i117.i, label %if.then32.i.if.end24.i.i_crit_edge, label %if.then.i.i

if.then32.i.if.end24.i.i_crit_edge:               ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.then.i.i:                                      ; preds = %if.then32.i
  %active_srb.i118.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %336, i32 0, i32 4
  %345 = ptrtoint ptr %active_srb.i118.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %active_srb.i118.i, align 4
  %tobool3.not.i.i = icmp eq ptr %346, null
  br i1 %tobool3.not.i.i, label %do.end7.i.i, label %if.end.i121.i

do.end7.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !642
  tail call void @arm_heavy_mb() #9
  %347 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %io_port_base, align 4
  %add14.i.i = add i32 %348, 128
  %and15.i.i = and i32 %add14.i.i, 1048575
  %add16.i119.i = or i32 %and15.i.i, -18874368
  %349 = inttoptr i32 %add16.i119.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %349, i16 512) #9, !srcloc !577
  br label %dc395x_handle_interrupt.exit

if.end.i121.i:                                    ; preds = %if.then.i.i
  %scan_devices.i120.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 19
  %350 = ptrtoint ptr %scan_devices.i120.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %scan_devices.i120.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %351)
  %tobool18.not.i.i = icmp eq i8 %351, 0
  br i1 %tobool18.not.i.i, label %do.end22.i.i, label %if.end.i121.i.if.end24.i.i_crit_edge

if.end.i121.i.if.end24.i.i_crit_edge:             ; preds = %if.end.i121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

do.end22.i.i:                                     ; preds = %if.end.i121.i
  %state.i122.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %346, i32 0, i32 10
  %352 = ptrtoint ptr %state.i122.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 2, ptr %state.i122.i, align 4
  %tag_number.i.i123.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %346, i32 0, i32 17
  %353 = ptrtoint ptr %tag_number.i.i123.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %tag_number.i.i123.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %354)
  %cmp.not.i.i124.i = icmp eq i8 %354, -1
  br i1 %cmp.not.i.i124.i, label %do.end22.i.i.free_tag.exit.i132.i_crit_edge, label %if.then.i.i129.i

do.end22.i.i.free_tag.exit.i132.i_crit_edge:      ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tag.exit.i132.i

if.then.i.i129.i:                                 ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i125.i = zext i8 %354 to i32
  %shl.i.i126.i = shl nuw i32 1, %conv.i.i125.i
  %neg.i.i127.i = xor i32 %shl.i.i126.i, -1
  %tag_mask.i.i128.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %336, i32 0, i32 5
  %355 = ptrtoint ptr %tag_mask.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %tag_mask.i.i128.i, align 4
  %and.i220.i.i = and i32 %356, %neg.i.i127.i
  store i32 %and.i220.i.i, ptr %tag_mask.i.i128.i, align 4
  %357 = ptrtoint ptr %tag_number.i.i123.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 -1, ptr %tag_number.i.i123.i, align 2
  br label %free_tag.exit.i132.i

free_tag.exit.i132.i:                             ; preds = %if.then.i.i129.i, %do.end22.i.i.free_tag.exit.i132.i_crit_edge
  %srb_waiting_list.i130.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %336, i32 0, i32 3
  %call.i.i.i131.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %346) #9
  br i1 %call.i.i.i131.i, label %if.end.i.i.i135.i, label %free_tag.exit.i132.i.__list_del_entry.exit.i.i137.i_crit_edge

free_tag.exit.i132.i.__list_del_entry.exit.i.i137.i_crit_edge: ; preds = %free_tag.exit.i132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i137.i

if.end.i.i.i135.i:                                ; preds = %free_tag.exit.i132.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i133.i = getelementptr inbounds %struct.list_head, ptr %346, i32 0, i32 1
  %358 = ptrtoint ptr %prev.i.i.i133.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %prev.i.i.i133.i, align 4
  %360 = ptrtoint ptr %346 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %346, align 4
  %prev1.i.i.i.i134.i = getelementptr inbounds %struct.list_head, ptr %361, i32 0, i32 1
  %362 = ptrtoint ptr %prev1.i.i.i.i134.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr %359, ptr %prev1.i.i.i.i134.i, align 4
  %363 = ptrtoint ptr %359 to i32
  call void @__asan_store4_noabort(i32 %363)
  store volatile ptr %361, ptr %359, align 4
  br label %__list_del_entry.exit.i.i137.i

__list_del_entry.exit.i.i137.i:                   ; preds = %if.end.i.i.i135.i, %free_tag.exit.i132.i.__list_del_entry.exit.i.i137.i_crit_edge
  %364 = ptrtoint ptr %srb_waiting_list.i130.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %srb_waiting_list.i130.i, align 4
  %call.i.i.i.i136.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %346, ptr noundef %srb_waiting_list.i130.i, ptr noundef %365) #9
  br i1 %call.i.i.i.i136.i, label %if.end.i.i.i.i140.i, label %__list_del_entry.exit.i.i137.i.list_move.exit.i144.i_crit_edge

__list_del_entry.exit.i.i137.i.list_move.exit.i144.i_crit_edge: ; preds = %__list_del_entry.exit.i.i137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit.i144.i

if.end.i.i.i.i140.i:                              ; preds = %__list_del_entry.exit.i.i137.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i.i138.i = getelementptr inbounds %struct.list_head, ptr %365, i32 0, i32 1
  %366 = ptrtoint ptr %prev1.i.i2.i.i138.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr %346, ptr %prev1.i.i2.i.i138.i, align 4
  %367 = ptrtoint ptr %346 to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %365, ptr %346, align 4
  %prev3.i.i.i.i139.i = getelementptr inbounds %struct.list_head, ptr %346, i32 0, i32 1
  %368 = ptrtoint ptr %prev3.i.i.i.i139.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %srb_waiting_list.i130.i, ptr %prev3.i.i.i.i139.i, align 4
  %369 = ptrtoint ptr %srb_waiting_list.i130.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store volatile ptr %346, ptr %srb_waiting_list.i130.i, align 4
  br label %list_move.exit.i144.i

list_move.exit.i144.i:                            ; preds = %if.end.i.i.i.i140.i, %__list_del_entry.exit.i.i137.i.list_move.exit.i144.i_crit_edge
  %waiting_timer.i.i141.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 8
  %pprev.i.i.i.i142.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 8, i32 0, i32 1
  %370 = ptrtoint ptr %pprev.i.i.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load volatile ptr, ptr %pprev.i.i.i.i142.i, align 4
  %tobool.not.i.i.not.i.i143.i = icmp eq ptr %371, null
  br i1 %tobool.not.i.i.not.i.i143.i, label %if.end.i.i148.i, label %list_move.exit.i144.i.if.end24.i.i_crit_edge

list_move.exit.i144.i.if.end24.i.i_crit_edge:     ; preds = %list_move.exit.i144.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.end.i.i148.i:                                  ; preds = %list_move.exit.i144.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %372 = load volatile i32, ptr @jiffies, align 128
  %last_reset.i.i145.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 10
  %373 = ptrtoint ptr %last_reset.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %last_reset.i.i145.i, align 4
  %add.i221.i.i = add i32 %372, 55
  %sub1.i.i146.i = sub i32 %add.i221.i.i, %374
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i146.i)
  %cmp.i.i147.i = icmp slt i32 %sub1.i.i146.i, 0
  br i1 %cmp.i.i147.i, label %if.then2.i.i150.i, label %if.else.i.i152.i

if.then2.i.i150.i:                                ; preds = %if.end.i.i148.i
  call void @__sanitizer_cov_trace_pc() #11
  %add5.i.i149.i = add i32 %374, -49
  br label %if.end11.i.i154.i

if.else.i.i152.i:                                 ; preds = %if.end.i.i148.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %375 = load volatile i32, ptr @jiffies, align 128
  %add8.i.i151.i = add i32 %375, 6
  br label %if.end11.i.i154.i

if.end11.i.i154.i:                                ; preds = %if.else.i.i152.i, %if.then2.i.i150.i
  %add8.sink.i.i153.i = phi i32 [ %add5.i.i149.i, %if.then2.i.i150.i ], [ %add8.i.i151.i, %if.else.i.i152.i ]
  %376 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 8, i32 1
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %add8.sink.i.i153.i, ptr %376, align 4
  tail call void @add_timer(ptr noundef %waiting_timer.i.i141.i) #9
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.end11.i.i154.i, %list_move.exit.i144.i.if.end24.i.i_crit_edge, %if.end.i121.i.if.end24.i.i_crit_edge, %if.then32.i.if.end24.i.i_crit_edge
  %conv.i155.i = zext i16 %344 to i32
  %and25.i.i = and i32 %conv.i155.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %do.end30.i.i, label %if.end24.i.i.if.end34.i.i_crit_edge

if.end24.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

do.end30.i.i:                                     ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call33.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, i32 noundef %conv.i155.i) #12
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %do.end30.i.i, %if.end24.i.i.if.end34.i.i_crit_edge
  %378 = lshr i16 %344, 8
  %379 = and i16 %378, 7
  %conv40.i.i = zext i16 %379 to i32
  %380 = and i16 %344, 255
  %idxprom.i.i.i = zext i16 %380 to i32
  %arrayidx2.i.i.i = getelementptr %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 22, i32 %idxprom.i.i.i, i32 %conv40.i.i
  %381 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %arrayidx2.i.i.i, align 4
  %tobool42.not.i.i = icmp eq ptr %382, null
  br i1 %tobool42.not.i.i, label %do.end46.i.i, label %if.end59.i.i

do.end46.i.i:                                     ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call50.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %idxprom.i.i.i, i32 noundef %conv40.i.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !643
  tail call void @arm_heavy_mb() #9
  %383 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %io_port_base, align 4
  %add55.i.i = add i32 %384, 128
  %and56.i.i = and i32 %add55.i.i, 1048575
  %add57.i.i = or i32 %and56.i.i, -18874368
  %385 = inttoptr i32 %add57.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %385, i16 512) #9, !srcloc !577
  br label %dc395x_handle_interrupt.exit

if.end59.i.i:                                     ; preds = %if.end34.i.i
  %386 = ptrtoint ptr %active_dcb.i109.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr %382, ptr %active_dcb.i109.i, align 4
  %dev_mode.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %382, i32 0, i32 10
  %387 = ptrtoint ptr %dev_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %dev_mode.i.i, align 1
  %389 = and i8 %388, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %389)
  %tobool63.not.i.i = icmp eq i8 %389, 0
  br i1 %tobool63.not.i.i, label %do.end67.i.i, label %if.end59.i.i.if.end72.i.i_crit_edge

if.end59.i.i.if.end72.i.i_crit_edge:              ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i.i

do.end67.i.i:                                     ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %target_id.i156.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %382, i32 0, i32 7
  %390 = ptrtoint ptr %target_id.i156.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %target_id.i156.i, align 2
  %conv69.i.i = zext i8 %391 to i32
  %target_lun.i157.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %382, i32 0, i32 8
  %392 = ptrtoint ptr %target_lun.i157.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %target_lun.i157.i, align 1
  %conv70.i.i = zext i8 %393 to i32
  %call71.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %conv69.i.i, i32 noundef %conv70.i.i) #12
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %do.end67.i.i, %if.end59.i.i.if.end72.i.i_crit_edge
  %sync_mode.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %382, i32 0, i32 12
  %394 = ptrtoint ptr %sync_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %sync_mode.i.i, align 1
  %396 = and i8 %395, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %396)
  %tobool75.not.i.i = icmp eq i8 %396, 0
  br i1 %tobool75.not.i.i, label %if.else.i158.i, label %if.then76.i.i

if.then76.i.i:                                    ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tmp_srb.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 7
  %397 = ptrtoint ptr %tmp_srb.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %tmp_srb.i.i, align 4
  %active_srb77.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %382, i32 0, i32 4
  %399 = ptrtoint ptr %active_srb77.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store ptr %398, ptr %active_srb77.i.i, align 4
  br label %if.end106.i.i

if.else.i158.i:                                   ; preds = %if.end72.i.i
  %active_srb78.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %382, i32 0, i32 4
  %400 = ptrtoint ptr %active_srb78.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %active_srb78.i.i, align 4
  %tobool79.not.i.i = icmp eq ptr %401, null
  br i1 %tobool79.not.i.i, label %if.else.i158.i.do.end87.i.i_crit_edge, label %lor.lhs.false.i.i

if.else.i158.i.do.end87.i.i_crit_edge:            ; preds = %if.else.i158.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87.i.i

lor.lhs.false.i.i:                                ; preds = %if.else.i158.i
  %state80.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %401, i32 0, i32 10
  %402 = ptrtoint ptr %state80.i.i to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %state80.i.i, align 4
  %404 = and i16 %403, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %404)
  %tobool83.not.i.i = icmp eq i16 %404, 0
  br i1 %tobool83.not.i.i, label %lor.lhs.false.i.i.do.end87.i.i_crit_edge, label %if.else97.i.i

lor.lhs.false.i.i.do.end87.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87.i.i

do.end87.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end87.i.i_crit_edge, %if.else.i158.i.do.end87.i.i_crit_edge
  %target_id89.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %382, i32 0, i32 7
  %405 = ptrtoint ptr %target_id89.i.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %target_id89.i.i, align 2
  %conv90.i.i = zext i8 %406 to i32
  %target_lun91.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %382, i32 0, i32 8
  %407 = ptrtoint ptr %target_lun91.i.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %target_lun91.i.i, align 1
  %conv92.i.i = zext i8 %408 to i32
  %call93.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %conv90.i.i, i32 noundef %conv92.i.i) #12
  %tmp_srb94.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 7
  %409 = ptrtoint ptr %tmp_srb94.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %tmp_srb94.i.i, align 4
  %state95.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %410, i32 0, i32 10
  %411 = ptrtoint ptr %state95.i.i to i32
  call void @__asan_store2_noabort(i32 %411)
  store i16 -32768, ptr %state95.i.i, align 4
  %412 = ptrtoint ptr %active_srb78.i.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %410, ptr %active_srb78.i.i, align 4
  %msgout_buf.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %410, i32 0, i32 12
  %413 = ptrtoint ptr %msgout_buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 6, ptr %msgout_buf.i.i.i, align 4
  %msg_count.i.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %410, i32 0, i32 15
  %414 = ptrtoint ptr %msg_count.i.i.i to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 1, ptr %msg_count.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !644
  tail call void @arm_heavy_mb() #9
  %415 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %io_port_base, align 4
  %add.i223.i.i = add i32 %416, 128
  %and.i224.i.i = and i32 %add.i223.i.i, 1048575
  %add1.i225.i.i = or i32 %and.i224.i.i, -18874368
  %417 = inttoptr i32 %add1.i225.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %417, i16 2) #9, !srcloc !577
  %418 = ptrtoint ptr %state95.i.i to i32
  call void @__asan_load2_noabort(i32 %418)
  %419 = load i16, ptr %state95.i.i, align 4
  %420 = and i16 %419, -13
  %421 = or i16 %420, 4
  store i16 %421, ptr %state95.i.i, align 4
  br label %if.end106.i.i

if.else97.i.i:                                    ; preds = %lor.lhs.false.i.i
  %flag.i159.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %382, i32 0, i32 16
  %422 = ptrtoint ptr %flag.i159.i to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %flag.i159.i, align 1
  %424 = and i8 %423, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %424)
  %tobool100.not.i.i = icmp eq i8 %424, 0
  br i1 %tobool100.not.i.i, label %if.else102.i.i, label %if.then101.i.i

if.then101.i.i:                                   ; preds = %if.else97.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %msgout_buf.i226.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %401, i32 0, i32 12
  %425 = ptrtoint ptr %msgout_buf.i226.i.i to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 6, ptr %msgout_buf.i226.i.i, align 4
  %msg_count.i227.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %401, i32 0, i32 15
  %426 = ptrtoint ptr %msg_count.i227.i.i to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 1, ptr %msg_count.i227.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !644
  tail call void @arm_heavy_mb() #9
  %427 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %io_port_base, align 4
  %add.i229.i.i = add i32 %428, 128
  %and.i230.i.i = and i32 %add.i229.i.i, 1048575
  %add1.i231.i.i = or i32 %and.i230.i.i, -18874368
  %429 = inttoptr i32 %add1.i231.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %429, i16 2) #9, !srcloc !577
  %430 = ptrtoint ptr %state80.i.i to i32
  call void @__asan_load2_noabort(i32 %430)
  %431 = load i16, ptr %state80.i.i, align 4
  %432 = and i16 %431, -13
  %433 = or i16 %432, 4
  store i16 %433, ptr %state80.i.i, align 4
  br label %if.end106.i.i

if.else102.i.i:                                   ; preds = %if.else97.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %434 = ptrtoint ptr %state80.i.i to i32
  call void @__asan_store2_noabort(i32 %434)
  store i16 256, ptr %state80.i.i, align 4
  br label %if.end106.i.i

if.end106.i.i:                                    ; preds = %if.else102.i.i, %if.then101.i.i, %do.end87.i.i, %if.then76.i.i
  %srb.0.i.i = phi ptr [ %398, %if.then76.i.i ], [ %401, %if.then101.i.i ], [ %401, %if.else102.i.i ], [ %410, %do.end87.i.i ]
  %scsi_phase.i160.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.0.i.i, i32 0, i32 21
  %435 = ptrtoint ptr %scsi_phase.i160.i to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 5, ptr %scsi_phase.i160.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !645
  tail call void @arm_heavy_mb() #9
  %436 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %dev_id, align 4
  %this_id.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %437, i32 0, i32 25
  %438 = ptrtoint ptr %this_id.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %this_id.i.i, align 8
  %conv113.i.i = trunc i32 %439 to i8
  %440 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %io_port_base, align 4
  %add115.i.i = add i32 %441, 135
  %and116.i.i = and i32 %add115.i.i, 1048575
  %add117.i.i = or i32 %and116.i.i, -18874368
  %442 = inttoptr i32 %add117.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %442, i8 %conv113.i.i) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !646
  tail call void @arm_heavy_mb() #9
  %target_id122.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %382, i32 0, i32 7
  %443 = ptrtoint ptr %target_id122.i.i to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %target_id122.i.i, align 2
  %445 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %io_port_base, align 4
  %add124.i.i = add i32 %446, 134
  %and125.i.i = and i32 %add124.i.i, 1048575
  %add126.i.i = or i32 %and125.i.i, -18874368
  %447 = inttoptr i32 %add126.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %447, i8 %444) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !647
  tail call void @arm_heavy_mb() #9
  %sync_offset.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %382, i32 0, i32 15
  %448 = ptrtoint ptr %sync_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %sync_offset.i.i, align 2
  %450 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %io_port_base, align 4
  %add132.i.i = add i32 %451, 132
  %and133.i.i = and i32 %add132.i.i, 1048575
  %add134.i.i = or i32 %and133.i.i, -18874368
  %452 = inttoptr i32 %add134.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %452, i8 %449) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !648
  tail call void @arm_heavy_mb() #9
  %sync_period.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %382, i32 0, i32 14
  %453 = ptrtoint ptr %sync_period.i.i to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %sync_period.i.i, align 1
  %455 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %io_port_base, align 4
  %add140.i.i = add i32 %456, 133
  %and141.i.i = and i32 %add140.i.i, 1048575
  %add142.i.i = or i32 %and141.i.i, -18874368
  %457 = inttoptr i32 %add142.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %457, i8 %454) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !649
  tail call void @arm_heavy_mb() #9
  %458 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %io_port_base, align 4
  %add148.i.i = add i32 %459, 128
  %and149.i.i = and i32 %add148.i.i, 1048575
  %add150.i.i = or i32 %and149.i.i, -18874368
  %460 = inttoptr i32 %add150.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %460, i16 512) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !650
  tail call void @arm_heavy_mb() #9
  %461 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %io_port_base, align 4
  %add156.i.i = add i32 %462, 144
  %and157.i.i = and i32 %add156.i.i, 1048575
  %add158.i.i = or i32 %and157.i.i, -18874368
  %463 = inttoptr i32 %add158.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %463, i8 -40) #9, !srcloc !547
  br label %dc395x_handle_interrupt.exit

if.end33.i:                                       ; preds = %if.end28.i
  %and35.i = and i32 %conv24.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end43.i, label %do.end40.i

do.end40.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #12
  br label %dc395x_handle_interrupt.exit

if.end43.i:                                       ; preds = %if.end33.i
  %and45.i = and i32 %conv24.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.end43.i
  %call.i161.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %dev_id) #12
  %pprev.i.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 8, i32 0, i32 1
  %464 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load volatile ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %465, null
  br i1 %tobool.not.i.i.not.i.i, label %if.then47.i.do.body4.i.i_crit_edge, label %if.then.i162.i

if.then47.i.do.body4.i.i_crit_edge:               ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4.i.i

if.then.i162.i:                                   ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  %waiting_timer.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 8
  %call3.i.i = tail call i32 @del_timer(ptr noundef %waiting_timer.i.i) #9
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %if.then.i162.i, %if.then47.i.do.body4.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !651
  tail call void @arm_heavy_mb() #9
  %466 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %io_port_base, align 4
  %add.i163.i = add i32 %467, 128
  %and.i164.i = and i32 %add.i163.i, 1048575
  %add6.i165.i = or i32 %and.i164.i, -18874368
  %468 = inttoptr i32 %add6.i165.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %468, i8 16) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !652
  tail call void @arm_heavy_mb() #9
  %469 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %io_port_base, align 4
  %add11.i.i = add i32 %470, 161
  %and12.i.i = and i32 %add11.i.i, 1048575
  %add13.i.i = or i32 %and12.i.i, -18874368
  %471 = inttoptr i32 %add13.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %471, i8 16) #9, !srcloc !547
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %472 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %472(i32 noundef 107374000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %473 = load volatile i32, ptr @jiffies, align 128
  %add15.i.i = add i32 %473, 250
  %delay_time.i166.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 27, i32 9
  %474 = ptrtoint ptr %delay_time.i166.i to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %delay_time.i166.i, align 4
  %conv.i167.i = zext i8 %475 to i32
  %mul.i168.i = mul nuw nsw i32 %conv.i167.i, 100
  %add16.i169.i = add i32 %add15.i.i, %mul.i168.i
  %last_reset.i170.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 10
  %476 = ptrtoint ptr %last_reset.i170.i to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 %add16.i169.i, ptr %last_reset.i170.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !594
  tail call void @arm_heavy_mb() #9
  %477 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %io_port_base, align 4
  %add.i.i171.i = add i32 %478, 128
  %and.i.i172.i = and i32 %add.i.i171.i, 1048575
  %add1.i.i173.i = or i32 %and.i.i172.i, -18874368
  %479 = inttoptr i32 %add1.i.i173.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %479, i16 1024) #9, !srcloc !577
  tail call fastcc void @set_basic_config(ptr noundef %dev_id) #9
  %acb_flag.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 15
  %480 = ptrtoint ptr %acb_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %acb_flag.i.i, align 1
  %482 = and i8 %481, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %482)
  %tobool19.not.i.i = icmp eq i8 %482, 0
  br i1 %tobool19.not.i.i, label %if.else.i174.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i8 %481, 4
  %483 = ptrtoint ptr %acb_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %483)
  store i8 %or.i.i, ptr %acb_flag.i.i, align 1
  br label %dc395x_handle_interrupt.exit

if.else.i174.i:                                   ; preds = %do.body4.i.i
  %or26.i.i = or i8 %481, 2
  %484 = ptrtoint ptr %acb_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 %or26.i.i, ptr %acb_flag.i.i, align 1
  %dcb_list.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 3
  %485 = ptrtoint ptr %dcb_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %dcb.042.i.i.i = load ptr, ptr %dcb_list.i.i.i, align 4
  %cmp.not43.i.i.i = icmp eq ptr %dcb.042.i.i.i, %dcb_list.i.i.i
  br i1 %cmp.not43.i.i.i, label %if.else.i174.i.reset_dev_param.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.else.i174.i.reset_dev_param.exit.i.i_crit_edge: ; preds = %if.else.i174.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_dev_param.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.else.i174.i
  %config.i.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 17
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i180.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %dcb.044.i.i.i = phi ptr [ %dcb.042.i.i.i, %for.body.lr.ph.i.i.i ], [ %dcb.0.i.i.i, %if.end.i.i180.i.for.body.i.i.i_crit_edge ]
  %sync_mode.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.044.i.i.i, i32 0, i32 12
  %486 = ptrtoint ptr %sync_mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %sync_mode.i.i.i, align 1
  %488 = and i8 %487, -11
  store i8 %488, ptr %sync_mode.i.i.i, align 1
  %sync_period.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.044.i.i.i, i32 0, i32 14
  %489 = ptrtoint ptr %sync_period.i.i.i to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 0, ptr %sync_period.i.i.i, align 1
  %sync_offset.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.044.i.i.i, i32 0, i32 15
  %490 = ptrtoint ptr %sync_offset.i.i.i to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 0, ptr %sync_offset.i.i.i, align 2
  %target_id.i.i175.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.044.i.i.i, i32 0, i32 7
  %491 = ptrtoint ptr %target_id.i.i175.i to i32
  call void @__asan_load1_noabort(i32 %491)
  %492 = load i8, ptr %target_id.i.i175.i, align 2
  %idxprom.i.i176.i = zext i8 %492 to i32
  %arrayidx.i.i.i = getelementptr %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 27, i32 6, i32 %idxprom.i.i176.i
  %493 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %arrayidx.i.i.i, align 2
  %dev_mode.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.044.i.i.i, i32 0, i32 10
  %495 = ptrtoint ptr %dev_mode.i.i.i to i32
  call void @__asan_store1_noabort(i32 %495)
  store i8 %494, ptr %dev_mode.i.i.i, align 1
  %period.i.i.i = getelementptr %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 27, i32 6, i32 %idxprom.i.i176.i, i32 1
  %496 = ptrtoint ptr %period.i.i.i to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %period.i.i.i, align 1
  %498 = and i8 %497, 7
  %idxprom11.i.i.i = zext i8 %498 to i32
  %arrayidx12.i.i.i = getelementptr [8 x i8], ptr @clock_period, i32 0, i32 %idxprom11.i.i.i
  %499 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %arrayidx12.i.i.i, align 1
  %min_nego_period.i.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.044.i.i.i, i32 0, i32 13
  %501 = ptrtoint ptr %min_nego_period.i.i.i to i32
  call void @__asan_store1_noabort(i32 %501)
  store i8 %500, ptr %min_nego_period.i.i.i, align 4
  %502 = and i8 %494, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %502)
  %tobool.not.i.i177.i = icmp eq i8 %502, 0
  br i1 %tobool.not.i.i177.i, label %for.body.i.i.i.if.then.i.i178.i_crit_edge, label %lor.lhs.false.i.i.i

for.body.i.i.i.if.then.i.i178.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i178.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i.i.i
  %503 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %config.i.i.i, align 1
  %505 = and i8 %504, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %505)
  %tobool18.not.i.i.i = icmp eq i8 %505, 0
  br i1 %tobool18.not.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i178.i_crit_edge, label %lor.lhs.false.i.i.i.if.end.i.i180.i_crit_edge

lor.lhs.false.i.i.i.if.end.i.i180.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i180.i

lor.lhs.false.i.i.i.if.then.i.i178.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i178.i

if.then.i.i178.i:                                 ; preds = %lor.lhs.false.i.i.i.if.then.i.i178.i_crit_edge, %for.body.i.i.i.if.then.i.i178.i_crit_edge
  %506 = and i8 %487, -15
  %507 = ptrtoint ptr %sync_mode.i.i.i to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 %506, ptr %sync_mode.i.i.i, align 1
  br label %if.end.i.i180.i

if.end.i.i180.i:                                  ; preds = %if.then.i.i178.i, %lor.lhs.false.i.i.i.if.end.i.i180.i_crit_edge
  %508 = ptrtoint ptr %dcb.044.i.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %dcb.0.i.i.i = load ptr, ptr %dcb.044.i.i.i, align 4
  %cmp.not.i.i179.i = icmp eq ptr %dcb.0.i.i.i, %dcb_list.i.i.i
  br i1 %cmp.not.i.i179.i, label %if.end.i.i180.i.reset_dev_param.exit.i.i_crit_edge, label %if.end.i.i180.i.for.body.i.i.i_crit_edge

if.end.i.i180.i.for.body.i.i.i_crit_edge:         ; preds = %if.end.i.i180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

if.end.i.i180.i.reset_dev_param.exit.i.i_crit_edge: ; preds = %if.end.i.i180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_dev_param.exit.i.i

reset_dev_param.exit.i.i:                         ; preds = %if.end.i.i180.i.reset_dev_param.exit.i.i_crit_edge, %if.else.i174.i.reset_dev_param.exit.i.i_crit_edge
  tail call fastcc void @doing_srb_done(ptr noundef %dev_id, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 1) #9
  %active_dcb.i181.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 5
  %509 = ptrtoint ptr %active_dcb.i181.i to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr null, ptr %active_dcb.i181.i, align 4
  %510 = ptrtoint ptr %acb_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %510)
  store i8 0, ptr %acb_flag.i.i, align 1
  tail call fastcc void @waiting_process_next(ptr noundef %dev_id) #9
  br label %dc395x_handle_interrupt.exit

if.end48.i:                                       ; preds = %if.end43.i
  %and50.i = and i32 %conv24.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %if.end48.i.dc395x_handle_interrupt.exit_crit_edge, label %if.then52.i

if.end48.i.dc395x_handle_interrupt.exit_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dc395x_handle_interrupt.exit

if.then52.i:                                      ; preds = %if.end48.i
  %active_dcb.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %dev_id, i32 0, i32 5
  %511 = ptrtoint ptr %active_dcb.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %active_dcb.i, align 4
  %tobool53.not.i = icmp eq ptr %512, null
  br i1 %tobool53.not.i, label %do.end57.i, label %if.end62.i

do.end57.i:                                       ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #11
  %513 = ptrtoint ptr %scsi_status.addr.i to i32
  call void @__asan_load2_noabort(i32 %513)
  %514 = load i16, ptr %scsi_status.addr.i, align 2
  %conv59.i = zext i16 %514 to i32
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %conv59.i, i32 noundef %conv24.i) #12
  br label %dc395x_handle_interrupt.exit

if.end62.i:                                       ; preds = %if.then52.i
  %active_srb.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %512, i32 0, i32 4
  %515 = ptrtoint ptr %active_srb.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %active_srb.i, align 4
  %flag.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %512, i32 0, i32 16
  %517 = ptrtoint ptr %flag.i to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %flag.i, align 1
  %519 = and i8 %518, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %519)
  %tobool65.not.i = icmp eq i8 %519, 0
  br i1 %tobool65.not.i, label %if.end62.i.if.end70.i_crit_edge, label %do.end69.i

if.end62.i.if.end70.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i

do.end69.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  %msgout_buf.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %516, i32 0, i32 12
  %520 = ptrtoint ptr %msgout_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %520)
  store i8 6, ptr %msgout_buf.i.i, align 4
  %msg_count.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %516, i32 0, i32 15
  %521 = ptrtoint ptr %msg_count.i.i to i32
  call void @__asan_store1_noabort(i32 %521)
  store i8 1, ptr %msg_count.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !644
  tail call void @arm_heavy_mb() #9
  %522 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %io_port_base, align 4
  %add.i183.i = add i32 %523, 128
  %and.i184.i = and i32 %add.i183.i, 1048575
  %add1.i185.i = or i32 %and.i184.i, -18874368
  %524 = inttoptr i32 %add1.i185.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %524, i16 2) #9, !srcloc !577
  %state.i186.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %516, i32 0, i32 10
  %525 = ptrtoint ptr %state.i186.i to i32
  call void @__asan_load2_noabort(i32 %525)
  %526 = load i16, ptr %state.i186.i, align 4
  %527 = and i16 %526, -13
  %528 = or i16 %527, 4
  store i16 %528, ptr %state.i186.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %do.end69.i, %if.end62.i.if.end70.i_crit_edge
  %scsi_phase.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %516, i32 0, i32 21
  %529 = ptrtoint ptr %scsi_phase.i to i32
  call void @__asan_load1_noabort(i32 %529)
  %530 = load i8, ptr %scsi_phase.i, align 2
  %idxprom.i = zext i8 %530 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @dc395x_scsi_phase0, i32 0, i32 %idxprom.i
  %531 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %arrayidx.i, align 4
  call void %532(ptr noundef %dev_id, ptr noundef %516, ptr noundef nonnull %scsi_status.addr.i) #9
  %533 = ptrtoint ptr %scsi_status.addr.i to i32
  call void @__asan_load2_noabort(i32 %533)
  %534 = load i16, ptr %scsi_status.addr.i, align 2
  %535 = trunc i16 %534 to i8
  %conv74.i = and i8 %535, 7
  %536 = ptrtoint ptr %scsi_phase.i to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 %conv74.i, ptr %scsi_phase.i, align 2
  %537 = and i16 %534, 7
  %idxprom79.i = zext i16 %537 to i32
  %arrayidx80.i = getelementptr [8 x ptr], ptr @dc395x_scsi_phase1, i32 0, i32 %idxprom79.i
  %538 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %arrayidx80.i, align 4
  call void %539(ptr noundef %dev_id, ptr noundef %516, ptr noundef nonnull %scsi_status.addr.i) #9
  br label %dc395x_handle_interrupt.exit

dc395x_handle_interrupt.exit:                     ; preds = %if.end70.i, %do.end57.i, %if.end48.i.dc395x_handle_interrupt.exit_crit_edge, %reset_dev_param.exit.i.i, %if.then20.i.i, %do.end40.i, %if.end106.i.i, %do.end46.i.i, %do.end7.i.i, %if.end192.i.i.i, %free_tag.exit.i.i.i, %if.end11.i.i.i.i.i, %list_move.exit.i.i.i.i.dc395x_handle_interrupt.exit_crit_edge, %dma_map_single_attrs.exit.i.i.i.i.dc395x_handle_interrupt.exit_crit_edge, %if.else112.i.i.dc395x_handle_interrupt.exit_crit_edge, %if.else110.i.i, %if.then95.i.i.dc395x_handle_interrupt.exit_crit_edge, %if.end11.i.i.i, %list_move.exit.i.i.dc395x_handle_interrupt.exit_crit_edge, %if.then36.i.i, %do.end26.i.i, %do.end.i.i
  %540 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %dev_id, align 4
  %host_lock83.i = getelementptr inbounds %struct.Scsi_Host, ptr %541, i32 0, i32 4
  %542 = ptrtoint ptr %host_lock83.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %host_lock83.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %543, i32 noundef %call2.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %scsi_status.addr.i)
  br label %if.end24

if.else:                                          ; preds = %entry
  %conv12 = zext i8 %8 to i32
  %and13 = and i32 %conv12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else.if.end24_crit_edge, label %do.end

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %conv12) #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #12
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.else.if.end24_crit_edge, %dc395x_handle_interrupt.exit
  %handled.0 = phi i32 [ 1, %dc395x_handle_interrupt.exit ], [ 1, %do.end ], [ 0, %if.else.if.end24_crit_edge ]
  ret i32 %handled.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_msgout_abort(ptr nocapture noundef readonly %acb, ptr nocapture noundef %srb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %msgout_buf = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %0 = ptrtoint ptr %msgout_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 6, ptr %msgout_buf, align 4
  %msg_count = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %1 = ptrtoint ptr %msg_count to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %msg_count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !644
  tail call void @arm_heavy_mb() #9
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %2 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_port_base, align 4
  %add = add i32 %3, 128
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 2) #9, !srcloc !577
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %state, align 4
  %7 = and i16 %6, -13
  %8 = or i16 %7, 4
  store i16 %8, ptr %state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_kmap_atomic_sg(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_kunmap_atomic_sg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @data_out_phase0(ptr nocapture noundef readonly %acb, ptr nocapture noundef %srb, ptr nocapture noundef readonly %pscsi_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb1 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb1, align 4
  %2 = ptrtoint ptr %pscsi_status to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pscsi_status, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !653
  tail call void @arm_heavy_mb() #9
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %4 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port_base, align 4
  %add = add i32 %5, 161
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %6 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 10) #9, !srcloc !547
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %state, align 4
  %9 = and i16 %8, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end95_crit_edge

entry.if.end95_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then:                                          ; preds = %entry
  %conv10 = zext i16 %3 to i32
  %and11 = and i32 %conv10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then.if.end_crit_edge, label %if.then13

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 18
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %status, align 1
  %12 = or i8 %11, 16
  store i8 %12, ptr %status, align 1
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then.if.end_crit_edge
  %and17 = and i32 %conv10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_port_base, align 4
  %add21 = add i32 %14, 130
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %15 = inttoptr i32 %add23 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !654
  %17 = and i8 %16, 31
  %and27 = zext i8 %17 to i32
  %sync_period = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %sync_period to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sync_period, align 1
  %20 = lshr i8 %19, 4
  %.lobit = and i8 %20, 1
  %21 = zext i8 %.lobit to i32
  %spec.select = shl nuw nsw i32 %and27, %21
  br label %if.end36

if.end36:                                         ; preds = %if.then19, %if.end.if.end36_crit_edge
  %d_left_counter.0 = phi i32 [ 0, %if.end.if.end36_crit_edge ], [ %spec.select, %if.then19 ]
  %total_xfer_length = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 7
  %22 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %total_xfer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp = icmp ugt i32 %23, 4
  br i1 %cmp, label %if.then38, label %if.end36.if.end48_crit_edge

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_port_base, align 4
  %add41 = add i32 %25, 136
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %26 = inttoptr i32 %add43 to ptr
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %26) #9, !srcloc !655
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !656
  %add47 = add i32 %28, %d_left_counter.0
  br label %if.end48

if.end48:                                         ; preds = %if.then38, %if.end36.if.end48_crit_edge
  %d_left_counter.1 = phi i32 [ %add47, %if.then38 ], [ %d_left_counter.0, %if.end36.if.end48_crit_edge ]
  %29 = zext i32 %d_left_counter.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.270)
  switch i32 %d_left_counter.1, label %if.end48.if.else_crit_edge [
    i32 1, label %land.lhs.true
    i32 0, label %if.end48.if.then68_crit_edge
  ]

if.end48.if.then68_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

if.end48.if.else_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end48
  %sync_period51 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 14
  %30 = ptrtoint ptr %sync_period51 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sync_period51, align 1
  %32 = and i8 %31, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool54.not = icmp eq i8 %32, 0
  br i1 %tobool54.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true55

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true55:                                  ; preds = %land.lhs.true
  %cmd = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 2
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %34, i32 0, i32 17, i32 1
  %35 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length.i, align 4
  %rem = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool57.not = icmp eq i32 %rem, 0
  br i1 %tobool57.not, label %land.lhs.true55.if.else_crit_edge, label %if.end65.thread135

land.lhs.true55.if.else_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end65.thread135:                               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %conv10) #12
  br label %if.then68

if.then68:                                        ; preds = %if.end65.thread135, %if.end48.if.then68_crit_edge
  %37 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %total_xfer_length, align 4
  br label %if.end95

if.else:                                          ; preds = %land.lhs.true55.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end48.if.else_crit_edge
  %38 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %total_xfer_length, align 4
  %sub = sub i32 %39, %d_left_counter.1
  %sync_period71 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 14
  %40 = ptrtoint ptr %sync_period71 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sync_period71, align 1
  %42 = and i8 %41, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool74.not = icmp eq i8 %42, 0
  %cond = select i1 %tobool74.not, i32 1, i32 2
  tail call fastcc void @sg_update_list(ptr noundef %srb, i32 noundef %d_left_counter.1)
  %segment_x = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 3
  %43 = ptrtoint ptr %segment_x to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %segment_x, align 4
  %sg_index = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 6
  %45 = ptrtoint ptr %sg_index to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sg_index, align 1
  %idxprom = zext i8 %46 to i32
  %length = getelementptr %struct.SGentry, ptr %44, i32 %idxprom, i32 1
  %47 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %cond)
  %cmp75 = icmp eq i32 %48, %cond
  br i1 %cmp75, label %land.lhs.true77, label %if.else.lor.lhs.false_crit_edge

if.else.lor.lhs.false_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true77:                                  ; preds = %if.else
  %cmd78 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 2
  %49 = ptrtoint ptr %cmd78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cmd78, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %50, i32 0, i32 17, i32 0, i32 1
  %51 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool80.not = icmp eq i32 %52, 0
  br i1 %tobool80.not, label %land.lhs.true77.lor.lhs.false_crit_edge, label %land.lhs.true77.do.end88_crit_edge

land.lhs.true77.do.end88_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88

land.lhs.true77.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true77.lor.lhs.false_crit_edge, %if.else.lor.lhs.false_crit_edge
  %and81 = and i32 %sub, 4095
  %sub82 = sub nuw nsw i32 4096, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %and81, i32 %sub82)
  %cmp83 = icmp eq i32 %and81, %sub82
  br i1 %cmp83, label %lor.lhs.false.do.end88_crit_edge, label %lor.lhs.false.if.end95_crit_edge

lor.lhs.false.if.end95_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

lor.lhs.false.do.end88_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88

do.end88:                                         ; preds = %lor.lhs.false.do.end88_crit_edge, %land.lhs.true77.do.end88_crit_edge
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, i32 noundef %cond) #12
  %53 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %total_xfer_length, align 4
  %sub92 = sub i32 %54, %cond
  tail call fastcc void @sg_update_list(ptr noundef %srb, i32 noundef %sub92)
  br label %if.end95

if.end95:                                         ; preds = %do.end88, %lor.lhs.false.if.end95_crit_edge, %if.then68, %entry.if.end95_crit_edge
  %55 = ptrtoint ptr %pscsi_status to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %pscsi_status, align 2
  %57 = and i16 %56, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp98.not = icmp eq i16 %57, 0
  br i1 %cmp98.not, label %if.end95.if.end101_crit_edge, label %if.then100

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cleanup_after_transfer(ptr noundef %acb)
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end95.if.end101_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @data_in_phase0(ptr nocapture noundef readonly %acb, ptr nocapture noundef %srb, ptr nocapture noundef readonly %pscsi_status) #2 align 64 {
entry:
  %len = alloca i32, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state, align 4
  %2 = and i16 %1, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end235_crit_edge

entry.if.end235_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end235

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %pscsi_status to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pscsi_status, align 2
  %conv1 = zext i16 %4 to i32
  %and2 = and i32 %conv1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %do.end7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end7:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %cmd = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 2
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef %6) #12
  %status = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 18
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status, align 1
  %9 = or i8 %8, 16
  store i8 %9, ptr %status, align 1
  br label %if.end

if.end:                                           ; preds = %do.end7, %if.then.if.end_crit_edge
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %10 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_port_base, align 4
  %add = add i32 %11, 162
  %and10 = and i32 %add, 1048575
  %add11 = or i32 %and10, -18874368
  %12 = inttoptr i32 %add11 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !657
  %14 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_port_base, align 4
  %add25 = add i32 %15, 136
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %16 = inttoptr i32 %add27 to ptr
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #9, !srcloc !655
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !658
  %19 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io_port_base, align 4
  %add33 = add i32 %20, 130
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %21 = inttoptr i32 %add35 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !659
  %conv39 = zext i8 %22 to i32
  %and40 = and i32 %conv39, 31
  %dcb = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 1
  %23 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dcb, align 4
  %sync_period = getelementptr inbounds %struct.DeviceCtlBlk, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %sync_period to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sync_period, align 1
  %27 = and i8 %26, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool43.not = icmp eq i8 %27, 0
  %not.tobool43.not = xor i1 %tobool43.not, true
  %cond = zext i1 %not.tobool43.not to i32
  %shl = shl nuw nsw i32 %and40, %cond
  %add44 = add i32 %shl, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add44)
  %tobool48.not = icmp eq i32 %add44, 0
  br i1 %tobool48.not, label %if.end.if.then232_crit_edge, label %land.lhs.true

if.end.if.then232_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then232

land.lhs.true:                                    ; preds = %if.end
  %total_xfer_length = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 7
  %28 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %total_xfer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %29)
  %cmp = icmp ult i32 %29, 5
  br i1 %cmp, label %if.then50, label %land.lhs.true.if.end226_crit_edge

land.lhs.true.if.end226_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end226

if.then50:                                        ; preds = %land.lhs.true
  br i1 %tobool43.not, label %if.then50.if.end69_crit_edge, label %do.body61

if.then50.if.end69_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

do.body61:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !660
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_port_base, align 4
  %add65 = add i32 %31, 143
  %and66 = and i32 %add65, 1048575
  %add67 = or i32 %and66, -18874368
  %32 = inttoptr i32 %add67 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 2) #9, !srcloc !547
  br label %if.end69

if.end69:                                         ; preds = %do.body61, %if.then50.if.end69_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool70.not319 = icmp eq i32 %29, 0
  br i1 %tobool70.not319, label %if.end69.if.end226_crit_edge, label %while.body.lr.ph

if.end69.if.end226_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end226

while.body.lr.ph:                                 ; preds = %if.end69
  %request_length = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 8
  %cmd91 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 2
  %sg_count = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %do.end220.while.body_crit_edge, %while.body.lr.ph
  %d_left_counter.0322 = phi i32 [ %add44, %while.body.lr.ph ], [ %d_left_counter.2294298, %do.end220.while.body_crit_edge ]
  %fc.0321 = phi i32 [ %conv39, %while.body.lr.ph ], [ %fc.2292300, %do.end220.while.body_crit_edge ]
  %left_io.0320 = phi i32 [ %29, %while.body.lr.ph ], [ %left_io.3290302, %do.end220.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %33 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %left_io.0320, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %34 = ptrtoint ptr %request_length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %request_length, align 4
  %sub = sub i32 %35, %left_io.0320
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub, ptr %offset, align 4
  %37 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !638
  %and.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool86.not = icmp eq i32 %and.i, 0
  br i1 %tobool86.not, label %if.then87, label %while.body.do.end90_crit_edge

while.body.do.end90_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end90

if.then87:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_off() #9
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %while.body.do.end90_crit_edge
  %38 = ptrtoint ptr %cmd91 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmd91, align 4
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdb.i, align 4
  %42 = ptrtoint ptr %sg_count to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sg_count, align 4
  %conv93 = zext i8 %43 to i32
  %call94 = call ptr @scsi_kmap_atomic_sg(ptr noundef %41, i32 noundef %conv93, ptr noundef nonnull %offset, ptr noundef nonnull %len) #9
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %call94, i32 %45
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %sub95 = sub i32 %left_io.0320, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool97.not314 = icmp eq i32 %47, 0
  br i1 %tobool97.not314, label %do.end90.while.end_crit_edge, label %do.end90.while.body98_crit_edge

do.end90.while.body98_crit_edge:                  ; preds = %do.end90
  br label %while.body98

do.end90.while.end_crit_edge:                     ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond96thread-pre-split:                     ; preds = %while.body98
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr = load i32, ptr %len, align 4
  %tobool97.not = icmp eq i32 %.pr, 0
  br i1 %tobool97.not, label %while.cond96.while.end_crit_edge, label %while.cond96thread-pre-split.while.body98_crit_edge

while.cond96thread-pre-split.while.body98_crit_edge: ; preds = %while.cond96thread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body98

while.body98:                                     ; preds = %while.cond96thread-pre-split.while.body98_crit_edge, %do.end90.while.body98_crit_edge
  %d_left_counter.1316 = phi i32 [ %dec, %while.cond96thread-pre-split.while.body98_crit_edge ], [ %d_left_counter.0322, %do.end90.while.body98_crit_edge ]
  %virt.0315 = phi ptr [ %incdec.ptr, %while.cond96thread-pre-split.while.body98_crit_edge ], [ %add.ptr, %do.end90.while.body98_crit_edge ]
  %49 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_port_base, align 4
  %add101 = add i32 %50, 152
  %and102 = and i32 %add101, 1048575
  %add103 = or i32 %and102, -18874368
  %51 = inttoptr i32 %add103 to ptr
  %52 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !661
  %incdec.ptr = getelementptr i8, ptr %virt.0315, i32 1
  %53 = ptrtoint ptr %virt.0315 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %virt.0315, align 1
  %dec = add i32 %d_left_counter.1316, -1
  %54 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %total_xfer_length, align 4
  %sub.i = add i32 %55, -1
  call fastcc void @sg_update_list(ptr noundef %srb, i32 noundef %sub.i) #9
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  %dec107 = add i32 %57, -1
  store i32 %dec107, ptr %len, align 4
  %58 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_port_base, align 4
  %add110 = add i32 %59, 130
  %and111 = and i32 %add110, 1048575
  %add112 = or i32 %and111, -18874368
  %60 = inttoptr i32 %add112 to ptr
  %61 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !662
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %61)
  %cmp117 = icmp eq i8 %61, 64
  br i1 %cmp117, label %while.body98.while.end_crit_edge, label %while.cond96thread-pre-split

while.body98.while.end_crit_edge:                 ; preds = %while.body98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool123.not286.not = icmp eq i32 %dec, 0
  br i1 %tobool123.not286.not, label %while.body98.while.end_crit_edge.land.lhs.true156_crit_edge, label %do.end140.thread, !prof !588

while.body98.while.end_crit_edge.land.lhs.true156_crit_edge: ; preds = %while.body98.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true156

do.end140.thread:                                 ; preds = %while.body98.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2152, i32 noundef 9, ptr noundef null) #9
  br label %land.lhs.true156

while.cond96.while.end_crit_edge:                 ; preds = %while.cond96thread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  %conv116.le = zext i8 %61 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond96.while.end_crit_edge, %do.end90.while.end_crit_edge
  %virt.0.lcssa = phi ptr [ %incdec.ptr, %while.cond96.while.end_crit_edge ], [ %add.ptr, %do.end90.while.end_crit_edge ]
  %fc.1.lcssa = phi i32 [ %conv116.le, %while.cond96.while.end_crit_edge ], [ %fc.0321, %do.end90.while.end_crit_edge ]
  %d_left_counter.1.lcssa = phi i32 [ %dec, %while.cond96.while.end_crit_edge ], [ %d_left_counter.0322, %do.end90.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %fc.1.lcssa)
  %cmp121 = icmp eq i32 %fc.1.lcssa, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d_left_counter.1.lcssa)
  %tobool123.not = icmp eq i32 %d_left_counter.1.lcssa, 0
  %cmp124 = xor i1 %cmp121, %tobool123.not
  br i1 %cmp124, label %do.end140, label %if.end146, !prof !586

do.end140:                                        ; preds = %while.end
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2152, i32 noundef 9, ptr noundef null) #9
  br i1 %cmp121, label %do.end140.land.lhs.true156_crit_edge, label %do.end140.if.end188_crit_edge

do.end140.if.end188_crit_edge:                    ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

do.end140.land.lhs.true156_crit_edge:             ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true156

if.end146:                                        ; preds = %while.end
  br i1 %cmp121, label %if.end146.land.lhs.true156_crit_edge, label %if.end146.if.end188_crit_edge

if.end146.if.end188_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

if.end146.land.lhs.true156_crit_edge:             ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true156

land.lhs.true156:                                 ; preds = %if.end146.land.lhs.true156_crit_edge, %do.end140.land.lhs.true156_crit_edge, %do.end140.thread, %while.body98.while.end_crit_edge.land.lhs.true156_crit_edge
  %virt.1288304 = phi ptr [ %virt.0.lcssa, %do.end140.land.lhs.true156_crit_edge ], [ %virt.0.lcssa, %if.end146.land.lhs.true156_crit_edge ], [ %incdec.ptr, %do.end140.thread ], [ %incdec.ptr, %while.body98.while.end_crit_edge.land.lhs.true156_crit_edge ]
  %left_io.3290303 = phi i32 [ %sub95, %do.end140.land.lhs.true156_crit_edge ], [ %sub95, %if.end146.land.lhs.true156_crit_edge ], [ 0, %do.end140.thread ], [ 0, %while.body98.while.end_crit_edge.land.lhs.true156_crit_edge ]
  %fc.2292301 = phi i32 [ 64, %do.end140.land.lhs.true156_crit_edge ], [ %fc.1.lcssa, %if.end146.land.lhs.true156_crit_edge ], [ 64, %do.end140.thread ], [ 64, %while.body98.while.end_crit_edge.land.lhs.true156_crit_edge ]
  %d_left_counter.2294299 = phi i32 [ %d_left_counter.1.lcssa, %do.end140.land.lhs.true156_crit_edge ], [ %d_left_counter.1.lcssa, %if.end146.land.lhs.true156_crit_edge ], [ %dec, %do.end140.thread ], [ 0, %while.body98.while.end_crit_edge.land.lhs.true156_crit_edge ]
  %62 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dcb, align 4
  %sync_period158 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %sync_period158 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sync_period158, align 1
  %66 = and i8 %65, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool161.not = icmp eq i8 %66, 0
  br i1 %tobool161.not, label %land.lhs.true156.if.end188_crit_edge, label %if.then162

land.lhs.true156.if.end188_crit_edge:             ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

if.then162:                                       ; preds = %land.lhs.true156
  %67 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %total_xfer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp164.not = icmp eq i32 %68, 0
  br i1 %cmp164.not, label %if.then162.do.body180_crit_edge, label %if.then166

if.then162.do.body180_crit_edge:                  ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body180

if.then166:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %io_port_base, align 4
  %add170 = add i32 %70, 152
  %and171 = and i32 %add170, 1048575
  %add172 = or i32 %and171, -18874368
  %71 = inttoptr i32 %add172 to ptr
  %72 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %71) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !663
  %73 = ptrtoint ptr %virt.1288304 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %virt.1288304, align 1
  %74 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %total_xfer_length, align 4
  %dec178 = add i32 %75, -1
  store i32 %dec178, ptr %total_xfer_length, align 4
  br label %do.body180

do.body180:                                       ; preds = %if.then166, %if.then162.do.body180_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !664
  call void @arm_heavy_mb() #9
  %76 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %io_port_base, align 4
  %add184 = add i32 %77, 143
  %and185 = and i32 %add184, 1048575
  %add186 = or i32 %and185, -18874368
  %78 = inttoptr i32 %add186 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 0) #9, !srcloc !547
  br label %if.end188

if.end188:                                        ; preds = %do.body180, %land.lhs.true156.if.end188_crit_edge, %if.end146.if.end188_crit_edge, %do.end140.if.end188_crit_edge
  %left_io.3290302 = phi i32 [ %sub95, %do.end140.if.end188_crit_edge ], [ %left_io.3290303, %do.body180 ], [ %left_io.3290303, %land.lhs.true156.if.end188_crit_edge ], [ %sub95, %if.end146.if.end188_crit_edge ]
  %fc.2292300 = phi i32 [ %fc.1.lcssa, %do.end140.if.end188_crit_edge ], [ %fc.2292301, %do.body180 ], [ %fc.2292301, %land.lhs.true156.if.end188_crit_edge ], [ %fc.1.lcssa, %if.end146.if.end188_crit_edge ]
  %d_left_counter.2294298 = phi i32 [ %d_left_counter.1.lcssa, %do.end140.if.end188_crit_edge ], [ %d_left_counter.2294299, %do.body180 ], [ %d_left_counter.2294299, %land.lhs.true156.if.end188_crit_edge ], [ %d_left_counter.1.lcssa, %if.end146.if.end188_crit_edge ]
  call void @scsi_kunmap_atomic_sg(ptr noundef %call94) #9
  br i1 %tobool86.not, label %if.then198, label %if.end188.do.body200_crit_edge

if.end188.do.body200_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body200

if.then198:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_on() #9
  br label %do.body200

do.body200:                                       ; preds = %if.then198, %if.end188.do.body200_crit_edge
  %79 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !639
  %and.i.i = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool208.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool208.not, label %if.then217, label %do.body200.do.end220_crit_edge, !prof !586

do.body200.do.end220_crit_edge:                   ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end220

if.then217:                                       ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %do.end220

do.end220:                                        ; preds = %if.then217, %do.body200.do.end220_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #9, !srcloc !640
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  %tobool70.not = icmp eq i32 %left_io.3290302, 0
  br i1 %tobool70.not, label %do.end220.if.end226_crit_edge, label %do.end220.while.body_crit_edge

do.end220.while.body_crit_edge:                   ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end220.if.end226_crit_edge:                    ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end226

if.end226:                                        ; preds = %do.end220.if.end226_crit_edge, %if.end69.if.end226_crit_edge, %land.lhs.true.if.end226_crit_edge
  %d_left_counter.3 = phi i32 [ %add44, %land.lhs.true.if.end226_crit_edge ], [ %add44, %if.end69.if.end226_crit_edge ], [ %d_left_counter.2294298, %do.end220.if.end226_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d_left_counter.3)
  %cmp227 = icmp ne i32 %d_left_counter.3, 0
  %and230 = and i32 %conv1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  %or.cond = select i1 %cmp227, i1 %tobool231.not, i1 false
  br i1 %or.cond, label %if.else, label %if.end226.if.then232_crit_edge

if.end226.if.then232_crit_edge:                   ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then232

if.then232:                                       ; preds = %if.end226.if.then232_crit_edge, %if.end.if.then232_crit_edge
  %d_left_counter.3310 = phi i32 [ %d_left_counter.3, %if.end226.if.then232_crit_edge ], [ 0, %if.end.if.then232_crit_edge ]
  %total_xfer_length233 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 7
  %80 = ptrtoint ptr %total_xfer_length233 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %d_left_counter.3310, ptr %total_xfer_length233, align 4
  br label %if.end235

if.else:                                          ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @sg_update_list(ptr noundef %srb, i32 noundef %d_left_counter.3)
  br label %if.end235

if.end235:                                        ; preds = %if.else, %if.then232, %entry.if.end235_crit_edge
  %81 = ptrtoint ptr %pscsi_status to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %pscsi_status, align 2
  %83 = and i16 %82, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %83)
  %cmp238.not = icmp eq i16 %83, 1
  br i1 %cmp238.not, label %if.end235.if.end241_crit_edge, label %if.then240

if.end235.if.end241_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end241

if.then240:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @cleanup_after_transfer(ptr noundef %acb)
  br label %if.end241

if.end241:                                        ; preds = %if.then240, %if.end235.if.end241_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @command_phase0(ptr nocapture noundef readonly %acb, ptr nocapture noundef readnone %srb, ptr nocapture noundef readnone %pscsi_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !665
  tail call void @arm_heavy_mb() #9
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %0 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port_base, align 4
  %add = add i32 %1, 128
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %2 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 512) #9, !srcloc !577
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @status_phase0(ptr nocapture noundef readonly %acb, ptr nocapture noundef writeonly %srb, ptr nocapture noundef writeonly %pscsi_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %0 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port_base, align 4
  %add = add i32 %1, 152
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !666
  %target_status = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 14
  %4 = ptrtoint ptr %target_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %target_status, align 1
  %5 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_port_base, align 4
  %add5 = add i32 %6, 152
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %7 = inttoptr i32 %add7 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !667
  %end_message = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 16
  %9 = ptrtoint ptr %end_message to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %end_message, align 1
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2048, ptr %state, align 4
  %11 = ptrtoint ptr %pscsi_status to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 5, ptr %pscsi_status, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !668
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_port_base, align 4
  %add14 = add i32 %13, 128
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %14 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 512) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !669
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_port_base, align 4
  %add21 = add i32 %16, 144
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %17 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 -40) #9, !srcloc !547
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nop0(ptr nocapture noundef %acb, ptr nocapture noundef %srb, ptr nocapture noundef %pscsi_status) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msgout_phase0(ptr nocapture noundef readonly %acb, ptr nocapture noundef %srb, ptr nocapture noundef writeonly %pscsi_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state, align 4
  %2 = and i16 %1, -28672
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.do.body1_crit_edge, label %if.then

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %pscsi_status to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 5, ptr %pscsi_status, align 2
  br label %do.body1

do.body1:                                         ; preds = %if.then, %entry.do.body1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !670
  tail call void @arm_heavy_mb() #9
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %4 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port_base, align 4
  %add = add i32 %5, 128
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %6 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 512) #9, !srcloc !577
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %state, align 4
  %9 = and i16 %8, -5
  store i16 %9, ptr %state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msgin_phase0(ptr noundef %acb, ptr noundef %srb, ptr nocapture noundef writeonly %pscsi_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %active_dcb = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 5
  %0 = ptrtoint ptr %active_dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active_dcb, align 4
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %2 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_port_base, align 4
  %add = add i32 %3, 152
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !671
  %msgin_buf = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 11
  %msg_len = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 24
  %6 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msg_len, align 4
  %inc = add i8 %7, 1
  store i8 %inc, ptr %msg_len, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 11, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %arrayidx, align 1
  %9 = load i8, ptr %msg_len, align 4
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %msgin_buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %msgin_buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i = icmp eq i8 %11, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp2.i = icmp ult i8 %9, 2
  br i1 %cmp2.i, label %if.then.i.if.end114_crit_edge, label %if.end.i

if.then.i.if.end114_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.end.i:                                         ; preds = %if.then.i
  %arrayidx.i = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv5.i = zext i8 %13 to i32
  %add.i = add nuw nsw i32 %conv5.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv)
  %cmp6.i = icmp ugt i32 %add.i, %conv
  br i1 %cmp6.i, label %if.end.i.if.end114_crit_edge, label %sw.bb33

if.end.i.if.end114_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.else.i:                                        ; preds = %entry
  %14 = and i8 %11, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %15 = icmp eq i8 %14, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp17.i = icmp ult i8 %9, 2
  %or.cond28.i = and i1 %cmp17.i, %15
  br i1 %or.cond28.i, label %if.else.i.if.end114_crit_edge, label %if.then

if.else.i.if.end114_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then:                                          ; preds = %if.else.i
  %16 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.271)
  switch i8 %11, label %sw.default [
    i8 4, label %sw.bb
    i8 32, label %if.then.sw.bb9_crit_edge
    i8 33, label %if.then.sw.bb9_crit_edge229
    i8 34, label %if.then.sw.bb9_crit_edge230
    i8 7, label %do.body14
    i8 6, label %do.end79
    i8 35, label %if.then.sw.epilog_crit_edge
    i8 0, label %if.then.sw.epilog_crit_edge231
    i8 2, label %if.then.sw.epilog_crit_edge232
    i8 3, label %if.then.sw.epilog_crit_edge233
  ]

if.then.sw.epilog_crit_edge233:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.sw.epilog_crit_edge232:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.sw.epilog_crit_edge231:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.sw.bb9_crit_edge230:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

if.then.sw.bb9_crit_edge229:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

if.then.sw.bb9_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 128, ptr %state, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then.sw.bb9_crit_edge, %if.then.sw.bb9_crit_edge229, %if.then.sw.bb9_crit_edge230
  %arrayidx11 = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx11, align 1
  %tag_mask.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %tag_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tag_mask.i, align 4
  %conv.i = zext i8 %19 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end3.i, label %sw.bb9.if.end.i175_crit_edge

sw.bb9.if.end.i175_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i175

do.end3.i:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, i32 noundef %21, i32 noundef %conv.i) #12
  br label %if.end.i175

if.end.i175:                                      ; preds = %do.end3.i, %sw.bb9.if.end.i175_crit_edge
  %srb_going_list.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %srb_going_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %srb_going_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %23, %srb_going_list.i
  br i1 %cmp.i.not.i, label %if.end.i175.mingx0.i_crit_edge, label %if.end.i175.for.body.i_crit_edge

if.end.i175.for.body.i_crit_edge:                 ; preds = %if.end.i175
  br label %for.body.i

if.end.i175.mingx0.i_crit_edge:                   ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #11
  br label %mingx0.i

for.condthread-pre-split.i:                       ; preds = %for.body.i
  %24 = ptrtoint ptr %i.0.i223 to i32
  call void @__asan_load4_noabort(i32 %24)
  %i.0.pr.i = load ptr, ptr %i.0.i223, align 4
  %cmp.not.i = icmp eq ptr %i.0.pr.i, %srb_going_list.i
  br i1 %cmp.not.i, label %for.condthread-pre-split.i.mingx0.i_crit_edge, label %for.condthread-pre-split.i.for.body.i_crit_edge

for.condthread-pre-split.i.for.body.i_crit_edge:  ; preds = %for.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.condthread-pre-split.i.mingx0.i_crit_edge:    ; preds = %for.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mingx0.i

for.body.i:                                       ; preds = %for.condthread-pre-split.i.for.body.i_crit_edge, %if.end.i175.for.body.i_crit_edge
  %i.0.i223 = phi ptr [ %i.0.pr.i, %for.condthread-pre-split.i.for.body.i_crit_edge ], [ %23, %if.end.i175.for.body.i_crit_edge ]
  %tag_number.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i223, i32 0, i32 17
  %25 = ptrtoint ptr %tag_number.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tag_number.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %19)
  %cmp16.i = icmp eq i8 %26, %19
  br i1 %cmp16.i, label %for.end.i, label %for.condthread-pre-split.i

for.end.i:                                        ; preds = %for.body.i
  %tobool25.not.i = icmp eq ptr %i.0.i223, null
  br i1 %tobool25.not.i, label %for.end.i.mingx0.i_crit_edge, label %do.end30.i

for.end.i.mingx0.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mingx0.i

do.end30.i:                                       ; preds = %for.end.i
  %flag.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 16
  %27 = ptrtoint ptr %flag.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flag.i, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool33.not.i = icmp eq i8 %29, 0
  br i1 %tobool33.not.i, label %do.end30.i.if.end35.i_crit_edge, label %if.then34.i

do.end30.i.if.end35.i_crit_edge:                  ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then34.i:                                      ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %msgout_buf.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i223, i32 0, i32 12
  %30 = ptrtoint ptr %msgout_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 6, ptr %msgout_buf.i.i, align 4
  %msg_count.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i223, i32 0, i32 15
  %31 = ptrtoint ptr %msg_count.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %msg_count.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !644
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_port_base, align 4
  %add.i.i = add i32 %33, 128
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %34 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 2) #9, !srcloc !577
  %state.i.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i223, i32 0, i32 10
  %35 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %state.i.i, align 4
  %37 = and i16 %36, -13
  %38 = or i16 %37, 4
  store i16 %38, ptr %state.i.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then34.i, %do.end30.i.if.end35.i_crit_edge
  %state.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i223, i32 0, i32 10
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %state.i, align 4
  %41 = and i16 %40, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool38.not.i = icmp eq i16 %41, 0
  br i1 %tobool38.not.i, label %if.end35.i.mingx0.i_crit_edge, label %if.end40.i

if.end35.i.mingx0.i_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mingx0.i

if.end40.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %msgin_buf.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %i.0.i223, i32 0, i32 11
  %active_srb.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %active_srb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %active_srb.i, align 4
  %msgin_buf41.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %msg_len, align 4
  %conv43.i = zext i8 %45 to i32
  %46 = call ptr @memcpy(ptr %msgin_buf.i, ptr %msgin_buf41.i, i32 %conv43.i)
  %47 = load ptr, ptr %active_srb.i, align 4
  %state45.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %state45.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %state45.i, align 4
  %or105.i = or i16 %40, %49
  %50 = or i16 %or105.i, 256
  %51 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %state.i, align 4
  store ptr %i.0.i223, ptr %active_srb.i, align 4
  br label %sw.epilog

mingx0.i:                                         ; preds = %if.end35.i.mingx0.i_crit_edge, %for.end.i.mingx0.i_crit_edge, %for.condthread-pre-split.i.mingx0.i_crit_edge, %if.end.i175.mingx0.i_crit_edge
  %tmp_srb.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 7
  %52 = ptrtoint ptr %tmp_srb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tmp_srb.i, align 4
  %state55.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %state55.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -32768, ptr %state55.i, align 4
  %active_srb56.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 4
  %55 = ptrtoint ptr %active_srb56.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %active_srb56.i, align 4
  %msgout_buf.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %53, i32 0, i32 12
  %56 = ptrtoint ptr %msgout_buf.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 13, ptr %msgout_buf.i, align 4
  %msg_count.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %53, i32 0, i32 15
  %57 = ptrtoint ptr %msg_count.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %msg_count.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !672
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_port_base, align 4
  %add.i176 = add i32 %59, 128
  %and60.i = and i32 %add.i176, 1048575
  %add61.i = or i32 %and60.i, -18874368
  %60 = inttoptr i32 %add61.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %60, i16 2) #9, !srcloc !577
  %61 = ptrtoint ptr %state55.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %state55.i, align 4
  %63 = or i16 %62, 4
  store i16 %63, ptr %state55.i, align 4
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %conv.i) #12
  br label %sw.epilog

do.body14:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !673
  tail call void @arm_heavy_mb() #9
  %64 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %io_port_base, align 4
  %add18 = add i32 %65, 128
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %66 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %66, i16 516) #9, !srcloc !577
  %state22 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %67 = ptrtoint ptr %state22 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %state22, align 4
  %conv23 = zext i16 %68 to i32
  %and24 = and i32 %conv23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end, label %if.then26

if.then26:                                        ; preds = %do.body14
  %dcb1.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 1
  %69 = ptrtoint ptr %dcb1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dcb1.i, align 4
  %target_id.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %target_id.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %target_id.i, align 2
  %conv.i178 = zext i8 %72 to i32
  %target_lun.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %70, i32 0, i32 8
  %73 = ptrtoint ptr %target_lun.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %target_lun.i, align 1
  %conv2.i = zext i8 %74 to i32
  %call.i179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, i32 noundef %conv.i178, i32 noundef %conv2.i) #12
  %sync_mode.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %70, i32 0, i32 12
  %75 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %sync_mode.i, align 1
  %77 = and i8 %76, -4
  %78 = or i8 %77, 2
  store i8 %78, ptr %sync_mode.i, align 1
  %sync_offset.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %70, i32 0, i32 15
  %79 = ptrtoint ptr %sync_offset.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %sync_offset.i, align 2
  %min_nego_period.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %70, i32 0, i32 13
  %80 = ptrtoint ptr %min_nego_period.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 50, ptr %min_nego_period.i, align 4
  %81 = ptrtoint ptr %state22 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %state22, align 4
  %83 = and i16 %82, -8193
  store i16 %83, ptr %state22, align 4
  tail call fastcc void @reprogram_regs(ptr noundef %acb, ptr noundef %70) #9
  %84 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %sync_mode.i, align 1
  %86 = and i8 %85, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %86)
  %87 = icmp eq i8 %86, 4
  br i1 %87, label %if.then.i183, label %if.then26.sw.epilog_crit_edge

if.then26.sw.epilog_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i183:                                     ; preds = %if.then26
  %msgout_buf.i.i181 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %msg_count.i.i182 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %88 = ptrtoint ptr %msg_count.i.i182 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %msg_count.i.i182, align 4
  %conv5.i.i = zext i8 %89 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %89)
  %cmp.i.i = icmp ugt i8 %89, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i183
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %msgout_buf.i.i181 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %msgout_buf.i.i181, align 4
  %conv12.i.i = zext i8 %91 to i32
  %arrayidx14.i.i = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12, i32 1
  %92 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %93 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv5.i.i, i32 noundef %conv12.i.i, i32 noundef %conv15.i.i) #12
  br label %build_wdtr.exit.i

if.end.i.i:                                       ; preds = %if.then.i183
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %msgout_buf.i.i181, i32 %conv5.i.i
  %dev_mode.i.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %70, i32 0, i32 10
  %94 = ptrtoint ptr %dev_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %dev_mode.i.i, align 1
  %config.i.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 17
  %96 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %config.i.i, align 1
  %98 = and i8 %95, 32
  %and331.i.i = and i8 %98, %97
  %and331.lobit.i.i = lshr exact i8 %and331.i.i, 5
  %conv16.i.i = zext i8 %and331.lobit.i.i to i32
  %call17.i.i = tail call i32 @spi_populate_width_msg(ptr noundef %add.ptr.i.i, i32 noundef %conv16.i.i) #9
  %99 = ptrtoint ptr %msg_count.i.i182 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %msg_count.i.i182, align 4
  %101 = trunc i32 %call17.i.i to i8
  %conv20.i.i = add i8 %100, %101
  store i8 %conv20.i.i, ptr %msg_count.i.i182, align 4
  %102 = ptrtoint ptr %state22 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %state22, align 4
  %104 = or i16 %103, 16384
  store i16 %104, ptr %state22, align 4
  br label %build_wdtr.exit.i

build_wdtr.exit.i:                                ; preds = %if.end.i.i, %do.end.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !674
  tail call void @arm_heavy_mb() #9
  %105 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %io_port_base, align 4
  %add.i185 = add i32 %106, 128
  %and21.i = and i32 %add.i185, 1048575
  %add22.i = or i32 %and21.i, -18874368
  %107 = inttoptr i32 %add22.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %107, i16 2) #9, !srcloc !577
  %108 = ptrtoint ptr %state22 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %state22, align 4
  %110 = or i16 %109, 4
  store i16 %110, ptr %state22, align 4
  br label %sw.epilog

if.end:                                           ; preds = %do.body14
  %and29 = and i32 %conv23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @msgin_set_nowide(ptr noundef %acb, ptr noundef %srb)
  br label %sw.epilog

if.end32:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @enable_msgout_abort(ptr noundef %acb, ptr noundef %srb)
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end.i
  %111 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i, align 1
  %113 = zext i8 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.272)
  switch i8 %112, label %sw.bb33.if.end63_crit_edge [
    i8 3, label %land.lhs.true
    i8 2, label %land.lhs.true50
  ]

sw.bb33.if.end63_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

land.lhs.true:                                    ; preds = %sw.bb33
  %arrayidx39 = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 11, i32 2
  %114 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx39, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %115)
  %cmp41 = icmp eq i8 %115, 1
  br i1 %cmp41, label %if.then43, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @msgin_set_sync(ptr noundef %acb, ptr noundef %srb)
  br label %sw.epilog

land.lhs.true50:                                  ; preds = %sw.bb33
  %arrayidx52 = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 11, i32 2
  %116 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx52, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %117)
  %cmp54 = icmp eq i8 %117, 3
  br i1 %cmp54, label %land.lhs.true56, label %land.lhs.true50.if.end63_crit_edge

land.lhs.true50.if.end63_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

land.lhs.true56:                                  ; preds = %land.lhs.true50
  %arrayidx58 = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 11, i32 3
  %118 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %119)
  %cmp60 = icmp ult i8 %119, 3
  br i1 %cmp60, label %if.then62, label %land.lhs.true56.if.end63_crit_edge

land.lhs.true56.if.end63_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then62:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @msgin_set_wide(ptr noundef %acb, ptr noundef %srb)
  br label %sw.epilog

if.end63:                                         ; preds = %land.lhs.true56.if.end63_crit_edge, %land.lhs.true50.if.end63_crit_edge, %land.lhs.true.if.end63_crit_edge, %sw.bb33.if.end63_crit_edge
  %msgout_buf.i187 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %120 = ptrtoint ptr %msgout_buf.i187 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 7, ptr %msgout_buf.i187, align 4
  %msg_count.i188 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %121 = ptrtoint ptr %msg_count.i188 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %msg_count.i188, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !675
  tail call void @arm_heavy_mb() #9
  %122 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %io_port_base, align 4
  %add.i190 = add i32 %123, 128
  %and.i191 = and i32 %add.i190, 1048575
  %add1.i = or i32 %and.i191, -18874368
  %124 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %124, i16 2) #9, !srcloc !577
  %state.i192 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %125 = ptrtoint ptr %state.i192 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %state.i192, align 4
  %127 = and i16 %126, -13
  %128 = or i16 %127, 4
  store i16 %128, ptr %state.i192, align 4
  %129 = ptrtoint ptr %msgin_buf to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %msgin_buf, align 2
  %conv14.i = zext i8 %130 to i32
  %dcb.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 1
  %131 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dcb.i, align 4
  %target_id.i194 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %132, i32 0, i32 7
  %133 = ptrtoint ptr %target_id.i194 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %target_id.i194, align 2
  %conv15.i = zext i8 %134 to i32
  %target_lun.i195 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %132, i32 0, i32 8
  %135 = ptrtoint ptr %target_lun.i195 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %target_lun.i195, align 1
  %conv17.i = zext i8 %136 to i32
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %conv14.i, i32 noundef %conv15.i, i32 noundef %conv17.i) #12
  br label %sw.epilog

do.end79:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %flag = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 16
  %137 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %flag, align 1
  %139 = or i8 %138, 1
  store i8 %139, ptr %flag, align 1
  %msgout_buf.i196 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %140 = ptrtoint ptr %msgout_buf.i196 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 6, ptr %msgout_buf.i196, align 4
  %msg_count.i197 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %141 = ptrtoint ptr %msg_count.i197 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %msg_count.i197, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !644
  tail call void @arm_heavy_mb() #9
  %142 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %io_port_base, align 4
  %add.i199 = add i32 %143, 128
  %and.i200 = and i32 %add.i199, 1048575
  %add1.i201 = or i32 %and.i200, -18874368
  %144 = inttoptr i32 %add1.i201 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %144, i16 2) #9, !srcloc !577
  %state.i202 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %145 = ptrtoint ptr %state.i202 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %state.i202, align 4
  %147 = and i16 %146, -13
  %148 = or i16 %147, 4
  store i16 %148, ptr %state.i202, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool86.not = icmp sgt i8 %11, -1
  br i1 %tobool86.not, label %sw.default.if.end108_crit_edge, label %do.end90

sw.default.if.end108_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

do.end90:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %msg_count = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %149 = ptrtoint ptr %msg_count to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %msg_count, align 4
  %identify_msg = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 9
  %150 = ptrtoint ptr %identify_msg to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %identify_msg, align 4
  %msgout_buf = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %152 = ptrtoint ptr %msgout_buf to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %msgout_buf, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !676
  tail call void @arm_heavy_mb() #9
  %153 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %io_port_base, align 4
  %add96 = add i32 %154, 128
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %155 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %155, i16 2) #9, !srcloc !577
  %state100 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %156 = ptrtoint ptr %state100 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %state100, align 4
  %158 = or i16 %157, 4
  store i16 %158, ptr %state100, align 4
  br label %if.end108

if.end108:                                        ; preds = %do.end90, %sw.default.if.end108_crit_edge
  %msgout_buf.i203 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %159 = ptrtoint ptr %msgout_buf.i203 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 7, ptr %msgout_buf.i203, align 4
  %msg_count.i204 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %160 = ptrtoint ptr %msg_count.i204 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %msg_count.i204, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !675
  tail call void @arm_heavy_mb() #9
  %161 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %io_port_base, align 4
  %add.i206 = add i32 %162, 128
  %and.i207 = and i32 %add.i206, 1048575
  %add1.i208 = or i32 %and.i207, -18874368
  %163 = inttoptr i32 %add1.i208 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %163, i16 2) #9, !srcloc !577
  %state.i209 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %164 = ptrtoint ptr %state.i209 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %state.i209, align 4
  %166 = and i16 %165, -13
  %167 = or i16 %166, 4
  store i16 %167, ptr %state.i209, align 4
  %168 = ptrtoint ptr %msgin_buf to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %msgin_buf, align 2
  %conv14.i211 = zext i8 %169 to i32
  %dcb.i212 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 1
  %170 = ptrtoint ptr %dcb.i212 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dcb.i212, align 4
  %target_id.i213 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %171, i32 0, i32 7
  %172 = ptrtoint ptr %target_id.i213 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %target_id.i213, align 2
  %conv15.i214 = zext i8 %173 to i32
  %target_lun.i215 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %171, i32 0, i32 8
  %174 = ptrtoint ptr %target_lun.i215 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %target_lun.i215, align 1
  %conv17.i216 = zext i8 %175 to i32
  %call18.i217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %conv14.i211, i32 noundef %conv15.i214, i32 noundef %conv17.i216) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end108, %do.end79, %if.end63, %if.then62, %if.then43, %if.end32, %if.then31, %build_wdtr.exit.i, %if.then26.sw.epilog_crit_edge, %mingx0.i, %if.end40.i, %sw.bb, %if.then.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge231, %if.then.sw.epilog_crit_edge232, %if.then.sw.epilog_crit_edge233
  %srb.addr.0 = phi ptr [ %srb, %if.end108 ], [ %srb, %do.end79 ], [ %srb, %if.then.sw.epilog_crit_edge ], [ %srb, %if.then.sw.epilog_crit_edge231 ], [ %srb, %if.then.sw.epilog_crit_edge232 ], [ %srb, %if.then.sw.epilog_crit_edge233 ], [ %srb, %if.then43 ], [ %srb, %if.then62 ], [ %srb, %if.end63 ], [ %srb, %if.then31 ], [ %srb, %if.end32 ], [ %srb, %sw.bb ], [ %53, %mingx0.i ], [ %i.0.i223, %if.end40.i ], [ %srb, %if.then26.sw.epilog_crit_edge ], [ %srb, %build_wdtr.exit.i ]
  %state109 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.addr.0, i32 0, i32 10
  %176 = ptrtoint ptr %state109 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %state109, align 4
  %178 = and i16 %177, -9
  store i16 %178, ptr %state109, align 4
  %179 = ptrtoint ptr %msg_len to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %msg_len, align 4
  br label %if.end114

if.end114:                                        ; preds = %sw.epilog, %if.else.i.if.end114_crit_edge, %if.end.i.if.end114_crit_edge, %if.then.i.if.end114_crit_edge
  %180 = ptrtoint ptr %pscsi_status to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 5, ptr %pscsi_status, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !677
  tail call void @arm_heavy_mb() #9
  %181 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %io_port_base, align 4
  %add119 = add i32 %182, 128
  %and120 = and i32 %add119, 1048575
  %add121 = or i32 %and120, -18874368
  %183 = inttoptr i32 %add121 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %183, i16 512) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !678
  tail call void @arm_heavy_mb() #9
  %184 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %io_port_base, align 4
  %add127 = add i32 %185, 144
  %and128 = and i32 %add127, 1048575
  %add129 = or i32 %and128, -18874368
  %186 = inttoptr i32 %add129 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %186, i8 -40) #9, !srcloc !547
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_update_list(ptr nocapture noundef %srb, i32 noundef %left) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %total_xfer_length = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 7
  %0 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_xfer_length, align 4
  %sub = sub i32 %1, %left
  %sg_index = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %segment_x = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 3
  %2 = ptrtoint ptr %segment_x to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %segment_x, align 4
  %4 = ptrtoint ptr %sg_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sg_index, align 1
  %6 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %left, ptr %total_xfer_length, align 4
  %sg_count = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 5
  %7 = ptrtoint ptr %sg_count to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sg_count, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %8)
  %cmp651 = icmp ult i8 %5, %8
  br i1 %cmp651, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %conv = zext i8 %5 to i32
  %add.ptr = getelementptr %struct.SGentry, ptr %3, i32 %conv
  br label %for.body

for.body:                                         ; preds = %if.then10.for.body_crit_edge, %for.body.preheader
  %psge.054 = phi ptr [ %incdec.ptr, %if.then10.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %xferred.053 = phi i32 [ %sub12, %if.then10.for.body_crit_edge ], [ %sub, %for.body.preheader ]
  %idx.052 = phi i8 [ %inc, %if.then10.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %length = getelementptr inbounds %struct.SGentry, ptr %psge.054, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %xferred.053, i32 %10)
  %cmp8.not = icmp ult i32 %xferred.053, %10
  br i1 %cmp8.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %for.body
  %sub12 = sub i32 %xferred.053, %10
  %incdec.ptr = getelementptr %struct.SGentry, ptr %psge.054, i32 1
  %inc = add nuw i8 %idx.052, 1
  %cmp6 = icmp ult i8 %inc, %8
  br i1 %cmp6, label %if.then10.for.body_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.for.body_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %length.le = getelementptr inbounds %struct.SGentry, ptr %psge.054, i32 0, i32 1
  %dcb = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 1
  %11 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dcb, align 4
  %acb = getelementptr inbounds %struct.DeviceCtlBlk, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %acb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %acb, align 4
  %dev = getelementptr inbounds %struct.AdapterCtlBlk, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %sg_bus_addr = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 4
  %17 = ptrtoint ptr %sg_bus_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sg_bus_addr, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev13, i32 noundef %18, i32 noundef 512, i32 noundef 1) #9
  %19 = ptrtoint ptr %length.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.le, align 4
  %sub15 = sub i32 %20, %xferred.053
  store i32 %sub15, ptr %length.le, align 4
  %21 = ptrtoint ptr %psge.054 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %psge.054, align 4
  %add = add i32 %22, %xferred.053
  store i32 %add, ptr %psge.054, align 4
  %23 = ptrtoint ptr %sg_index to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %idx.052, ptr %sg_index, align 1
  %24 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dcb, align 4
  %acb18 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %acb18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %acb18, align 4
  %dev19 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %27, i32 0, i32 23
  %28 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev19, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %sg_bus_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sg_bus_addr, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev20, i32 noundef %31, i32 noundef 512, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cleanup_after_transfer(ptr nocapture noundef readonly %acb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %0 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port_base, align 4
  %add = add i32 %1, 160
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #9, !srcloc !598
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !679
  %4 = and i16 %3, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %5 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_port_base, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add6 = add i32 %6, 130
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %7 = inttoptr i32 %add8 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !680
  %9 = and i8 %8, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not = icmp eq i8 %9, 0
  br i1 %tobool14.not, label %if.then15, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !594
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_port_base, align 4
  %add.i = add i32 %11, 128
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 1024) #9, !srcloc !577
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then.if.end_crit_edge
  %13 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_port_base, align 4
  %add18 = add i32 %14, 162
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %15 = inttoptr i32 %add20 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !681
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %tobool26.not = icmp sgt i8 %16, -1
  br i1 %tobool26.not, label %do.body, label %if.end.do.body68_crit_edge

if.end.do.body68_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !682
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_port_base, align 4
  %add29 = add i32 %18, 161
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %19 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 2) #9, !srcloc !547
  br label %do.body68

if.else:                                          ; preds = %entry
  %add36 = add i32 %6, 162
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %20 = inttoptr i32 %add38 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !683
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %tobool44.not = icmp sgt i8 %21, -1
  br i1 %tobool44.not, label %do.body46, label %if.else.if.end53_crit_edge

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

do.body46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !684
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_port_base, align 4
  %add49 = add i32 %23, 161
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %24 = inttoptr i32 %add51 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 2) #9, !srcloc !547
  br label %if.end53

if.end53:                                         ; preds = %do.body46, %if.else.if.end53_crit_edge
  %25 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_port_base, align 4
  %add56 = add i32 %26, 130
  %and57 = and i32 %add56, 1048575
  %add58 = or i32 %and57, -18874368
  %27 = inttoptr i32 %add58 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !685
  %29 = and i8 %28, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool64.not = icmp eq i8 %29, 0
  br i1 %tobool64.not, label %if.then65, label %if.end53.do.body68_crit_edge

if.end53.do.body68_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then65:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !594
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_port_base, align 4
  %add.i2 = add i32 %31, 128
  %and.i3 = and i32 %add.i2, 1048575
  %add1.i4 = or i32 %and.i3, -18874368
  %32 = inttoptr i32 %add1.i4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %32, i16 1024) #9, !srcloc !577
  br label %do.body68

do.body68:                                        ; preds = %if.then65, %if.end53.do.body68_crit_edge, %do.body, %if.end.do.body68_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !686
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_port_base, align 4
  %add71 = add i32 %34, 128
  %and72 = and i32 %add71, 1048575
  %add73 = or i32 %and72, -18874368
  %35 = inttoptr i32 %add73 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %35, i16 512) #9, !srcloc !577
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msgin_set_nowide(ptr noundef %acb, ptr noundef %srb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %dcb1 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb1, align 4
  %sync_period = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %sync_period to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sync_period, align 1
  %4 = and i8 %3, -17
  store i8 %4, ptr %sync_period, align 1
  %sync_mode = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sync_mode, align 1
  %7 = and i8 %6, -13
  %8 = or i8 %7, 8
  store i8 %8, ptr %sync_mode, align 1
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %state, align 4
  %11 = and i16 %10, -16385
  store i16 %11, ptr %state, align 4
  tail call fastcc void @reprogram_regs(ptr noundef %acb, ptr noundef %1)
  %12 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sync_mode, align 1
  %14 = and i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %msgout_buf.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %msg_count.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %16 = ptrtoint ptr %msg_count.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msg_count.i, align 4
  %conv.i = zext i8 %17 to i32
  %add.ptr.i = getelementptr i8, ptr %msgout_buf.i, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp.i = icmp ugt i8 %17, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %msgout_buf.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %msgout_buf.i, align 4
  %conv7.i = zext i8 %19 to i32
  %arrayidx9.i = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %21 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv.i, i32 noundef %conv7.i, i32 noundef %conv10.i) #12
  br label %build_sdtr.exit

if.end.i:                                         ; preds = %if.then
  %dev_mode.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %dev_mode.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dev_mode.i, align 1
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  %sync_offset.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 15
  br i1 %tobool.not.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %sync_offset.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %sync_offset.i, align 2
  %min_nego_period.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %min_nego_period.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 50, ptr %min_nego_period.i, align 4
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i
  %27 = ptrtoint ptr %sync_offset.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sync_offset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp15.i = icmp eq i8 %28, 0
  br i1 %cmp15.i, label %if.then17.i, label %if.else.i.if.end20.i_crit_edge

if.else.i.if.end20.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %sync_offset.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 15, ptr %sync_offset.i, align 2
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.else.i.if.end20.i_crit_edge, %if.then12.i
  %min_nego_period21.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %min_nego_period21.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %min_nego_period21.i, align 4
  %conv22.i = zext i8 %31 to i32
  %32 = ptrtoint ptr %sync_offset.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sync_offset.i, align 2
  %conv24.i = zext i8 %33 to i32
  %call25.i = tail call i32 @spi_populate_sync_msg(ptr noundef %add.ptr.i, i32 noundef %conv22.i, i32 noundef %conv24.i) #9
  %34 = ptrtoint ptr %msg_count.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %msg_count.i, align 4
  %36 = trunc i32 %call25.i to i8
  %conv28.i = add i8 %35, %36
  store i8 %conv28.i, ptr %msg_count.i, align 4
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %state, align 4
  %39 = or i16 %38, 8192
  store i16 %39, ptr %state, align 4
  br label %build_sdtr.exit

build_sdtr.exit:                                  ; preds = %if.end20.i, %do.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !687
  tail call void @arm_heavy_mb() #9
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %40 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_port_base, align 4
  %add = add i32 %41, 128
  %and22 = and i32 %add, 1048575
  %add23 = or i32 %and22, -18874368
  %42 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %42, i16 2) #9, !srcloc !577
  %43 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %state, align 4
  %45 = or i16 %44, 4
  store i16 %45, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %build_sdtr.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msgin_set_sync(ptr noundef %acb, ptr noundef %srb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb1 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb1, align 4
  %msgin_buf = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 11
  %arrayidx = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 11, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %3)
  %cmp = icmp ugt i8 %3, 15
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 15, ptr %arrayidx, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev_mode = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %dev_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dev_mode, align 1
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %sync_offset = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 15
  br i1 %tobool.not, label %if.end.if.end16.sink.split_crit_edge, label %if.else

if.end.if.end16.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.sink.split

if.else:                                          ; preds = %if.end
  %8 = ptrtoint ptr %sync_offset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sync_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp9 = icmp eq i8 %9, 0
  br i1 %cmp9, label %if.then11, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 2
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.then11, %if.end.if.end16.sink.split_crit_edge
  %.sink = phi i8 [ %11, %if.then11 ], [ 0, %if.end.if.end16.sink.split_crit_edge ]
  %12 = ptrtoint ptr %sync_offset to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %sync_offset, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.else.if.end16_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 2
  %sync_offset20 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %sync_offset20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sync_offset20, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp22 = icmp ugt i8 %14, %16
  br i1 %cmp22, label %if.then24, label %if.else28

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx, align 2
  br label %if.end32

if.else28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %sync_offset20 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %14, ptr %sync_offset20, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.then24
  %min_nego_period = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 13
  %arrayidx37 = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 11, i32 3
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %20)
  %cmp41 = icmp ugt i8 %20, 12
  br i1 %cmp41, label %while.body, label %lor.rhs

lor.rhs:                                          ; preds = %if.end32
  %21 = ptrtoint ptr %min_nego_period to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %min_nego_period, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %22)
  %cmp47 = icmp ugt i8 %22, 12
  br i1 %cmp47, label %lor.rhs.lor.rhs.1_crit_edge, label %lor.rhs.while.end_crit_edge

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.rhs.lor.rhs.1_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.1

while.body:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %20)
  %cmp41.1 = icmp ugt i8 %20, 18
  br i1 %cmp41.1, label %while.body.1, label %lor.rhs.1thread-pre-split

lor.rhs.1thread-pre-split:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %min_nego_period to i32
  call void @__asan_load1_noabort(i32 %23)
  %.pr = load i8, ptr %min_nego_period, align 4
  br label %lor.rhs.1

lor.rhs.1:                                        ; preds = %lor.rhs.1thread-pre-split, %lor.rhs.lor.rhs.1_crit_edge
  %24 = phi i8 [ %.pr, %lor.rhs.1thread-pre-split ], [ %22, %lor.rhs.lor.rhs.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %24)
  %cmp47.1 = icmp ugt i8 %24, 18
  br i1 %cmp47.1, label %lor.rhs.1.lor.rhs.2_crit_edge, label %lor.rhs.1.while.end_crit_edge

lor.rhs.1.while.end_crit_edge:                    ; preds = %lor.rhs.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.rhs.1.lor.rhs.2_crit_edge:                    ; preds = %lor.rhs.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.2

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %20)
  %cmp41.2 = icmp ugt i8 %20, 25
  br i1 %cmp41.2, label %while.body.2, label %while.body.1.lor.rhs.2_crit_edge

while.body.1.lor.rhs.2_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.2

lor.rhs.2:                                        ; preds = %while.body.1.lor.rhs.2_crit_edge, %lor.rhs.1.lor.rhs.2_crit_edge
  %25 = ptrtoint ptr %min_nego_period to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %min_nego_period, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %26)
  %cmp47.2 = icmp ugt i8 %26, 25
  br i1 %cmp47.2, label %lor.rhs.2.lor.rhs.3_crit_edge, label %lor.rhs.2.while.end_crit_edge

lor.rhs.2.while.end_crit_edge:                    ; preds = %lor.rhs.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.rhs.2.lor.rhs.3_crit_edge:                    ; preds = %lor.rhs.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.3

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %20)
  %cmp41.3 = icmp ugt i8 %20, 31
  br i1 %cmp41.3, label %while.body.3, label %lor.rhs.3thread-pre-split

lor.rhs.3thread-pre-split:                        ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %min_nego_period to i32
  call void @__asan_load1_noabort(i32 %27)
  %.pr244 = load i8, ptr %min_nego_period, align 4
  br label %lor.rhs.3

lor.rhs.3:                                        ; preds = %lor.rhs.3thread-pre-split, %lor.rhs.2.lor.rhs.3_crit_edge
  %28 = phi i8 [ %.pr244, %lor.rhs.3thread-pre-split ], [ %26, %lor.rhs.2.lor.rhs.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %28)
  %cmp47.3 = icmp ugt i8 %28, 31
  br i1 %cmp47.3, label %lor.rhs.3.lor.rhs.4_crit_edge, label %lor.rhs.3.while.end_crit_edge

lor.rhs.3.while.end_crit_edge:                    ; preds = %lor.rhs.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.rhs.3.lor.rhs.4_crit_edge:                    ; preds = %lor.rhs.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.4

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %20)
  %cmp41.4 = icmp ugt i8 %20, 37
  br i1 %cmp41.4, label %while.body.4, label %while.body.3.lor.rhs.4_crit_edge

while.body.3.lor.rhs.4_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.4

lor.rhs.4:                                        ; preds = %while.body.3.lor.rhs.4_crit_edge, %lor.rhs.3.lor.rhs.4_crit_edge
  %29 = ptrtoint ptr %min_nego_period to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %min_nego_period, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %30)
  %cmp47.4 = icmp ugt i8 %30, 37
  br i1 %cmp47.4, label %lor.rhs.4.lor.rhs.5_crit_edge, label %lor.rhs.4.while.end_crit_edge

lor.rhs.4.while.end_crit_edge:                    ; preds = %lor.rhs.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.rhs.4.lor.rhs.5_crit_edge:                    ; preds = %lor.rhs.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.5

while.body.4:                                     ; preds = %while.body.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %20)
  %cmp41.5 = icmp ugt i8 %20, 43
  br i1 %cmp41.5, label %while.body.5, label %lor.rhs.5thread-pre-split

lor.rhs.5thread-pre-split:                        ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %min_nego_period to i32
  call void @__asan_load1_noabort(i32 %31)
  %.pr247 = load i8, ptr %min_nego_period, align 4
  br label %lor.rhs.5

lor.rhs.5:                                        ; preds = %lor.rhs.5thread-pre-split, %lor.rhs.4.lor.rhs.5_crit_edge
  %32 = phi i8 [ %.pr247, %lor.rhs.5thread-pre-split ], [ %30, %lor.rhs.4.lor.rhs.5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %32)
  %cmp47.5 = icmp ugt i8 %32, 43
  br i1 %cmp47.5, label %lor.rhs.5.lor.rhs.6_crit_edge, label %lor.rhs.5.while.end_crit_edge

lor.rhs.5.while.end_crit_edge:                    ; preds = %lor.rhs.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.rhs.5.lor.rhs.6_crit_edge:                    ; preds = %lor.rhs.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.6

while.body.5:                                     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %20)
  %cmp41.6 = icmp ugt i8 %20, 50
  br i1 %cmp41.6, label %while.body.5.while.body.6_crit_edge, label %while.body.5.lor.rhs.6_crit_edge

while.body.5.lor.rhs.6_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.6

while.body.5.while.body.6_crit_edge:              ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.6

lor.rhs.6:                                        ; preds = %while.body.5.lor.rhs.6_crit_edge, %lor.rhs.5.lor.rhs.6_crit_edge
  %33 = ptrtoint ptr %min_nego_period to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %min_nego_period, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %34)
  %cmp47.6 = icmp ugt i8 %34, 50
  br i1 %cmp47.6, label %lor.rhs.6.while.body.6_crit_edge, label %lor.rhs.6.while.end_crit_edge

lor.rhs.6.while.end_crit_edge:                    ; preds = %lor.rhs.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.rhs.6.while.body.6_crit_edge:                 ; preds = %lor.rhs.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.6

while.body.6:                                     ; preds = %lor.rhs.6.while.body.6_crit_edge, %while.body.5.while.body.6_crit_edge
  br label %while.end

while.end:                                        ; preds = %while.body.6, %lor.rhs.6.while.end_crit_edge, %lor.rhs.5.while.end_crit_edge, %lor.rhs.4.while.end_crit_edge, %lor.rhs.3.while.end_crit_edge, %lor.rhs.2.while.end_crit_edge, %lor.rhs.1.while.end_crit_edge, %lor.rhs.while.end_crit_edge
  %bval.0.lcssa = phi i8 [ 0, %lor.rhs.while.end_crit_edge ], [ 1, %lor.rhs.1.while.end_crit_edge ], [ 2, %lor.rhs.2.while.end_crit_edge ], [ 3, %lor.rhs.3.while.end_crit_edge ], [ 4, %lor.rhs.4.while.end_crit_edge ], [ 5, %lor.rhs.5.while.end_crit_edge ], [ 6, %lor.rhs.6.while.end_crit_edge ], [ 7, %while.body.6 ]
  %conv33.lcssa = phi i32 [ 0, %lor.rhs.while.end_crit_edge ], [ 1, %lor.rhs.1.while.end_crit_edge ], [ 2, %lor.rhs.2.while.end_crit_edge ], [ 3, %lor.rhs.3.while.end_crit_edge ], [ 4, %lor.rhs.4.while.end_crit_edge ], [ 5, %lor.rhs.5.while.end_crit_edge ], [ 6, %lor.rhs.6.while.end_crit_edge ], [ 7, %while.body.6 ]
  %35 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx37, align 1
  %arrayidx53 = getelementptr [8 x i8], ptr @clock_period, i32 0, i32 %conv33.lcssa
  %37 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx53, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp55 = icmp ult i8 %36, %38
  br i1 %cmp55, label %do.end60, label %while.end.if.end64_crit_edge

while.end.if.end64_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.end60:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv54 = zext i8 %38 to i32
  %shl = shl nuw nsw i32 %conv54, 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %shl) #12
  br label %if.end64

if.end64:                                         ; preds = %do.end60, %while.end.if.end64_crit_edge
  %39 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx37, align 1
  %sync_period = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 14
  %40 = ptrtoint ptr %sync_period to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sync_period, align 1
  %42 = and i8 %41, -16
  %or233 = or i8 %42, %bval.0.lcssa
  %43 = or i8 %or233, 8
  store i8 %43, ptr %sync_period, align 1
  %44 = load i8, ptr %arrayidx37, align 1
  %45 = ptrtoint ptr %min_nego_period to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %min_nego_period, align 4
  %46 = and i8 %41, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool83.not = icmp eq i8 %46, 0
  %.str.75..str.177 = select i1 %tobool83.not, ptr @.str.75, ptr @.str.177
  %target_id = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 7
  %47 = ptrtoint ptr %target_id to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %target_id, align 2
  %conv91 = zext i8 %48 to i32
  %conv95 = zext i8 %44 to i32
  %shl96 = shl nuw nsw i32 %conv95, 2
  %49 = ptrtoint ptr %sync_offset20 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sync_offset20, align 2
  %conv98 = zext i8 %50 to i32
  %div.lhs.trunc = select i1 %tobool83.not, i16 250, i16 500
  %div.rhs.trunc = zext i8 %44 to i16
  %div.lhs.trunc.frozen = freeze i16 %div.lhs.trunc
  %div.rhs.trunc.frozen = freeze i16 %div.rhs.trunc
  %div235 = udiv i16 %div.lhs.trunc.frozen, %div.rhs.trunc.frozen
  %div.zext = zext i16 %div235 to i32
  %51 = mul i16 %div235, %div.rhs.trunc.frozen
  %rem236.decomposed = sub i16 %div.lhs.trunc.frozen, %51
  %narrow = mul nuw nsw i16 %rem236.decomposed, 10
  %div105234 = lshr i32 %conv95, 1
  %52 = trunc i32 %div105234 to i16
  %div108.lhs.trunc = add nuw nsw i16 %narrow, %52
  %div108237 = udiv i16 %div108.lhs.trunc, %div.rhs.trunc
  %div108.zext = zext i16 %div108237 to i32
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, i32 noundef %conv91, ptr noundef nonnull %.str.75..str.177, i32 noundef %shl96, i32 noundef %conv98, i32 noundef %div.zext, i32 noundef %div108.zext) #12
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %53 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %state, align 4
  %55 = and i16 %54, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool112.not = icmp eq i16 %55, 0
  br i1 %tobool112.not, label %do.end116, label %if.else142

do.end116:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx37, align 1
  %conv120 = zext i8 %57 to i32
  %shl121 = shl nuw nsw i32 %conv120, 2
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx, align 2
  %conv124 = zext i8 %59 to i32
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, i32 noundef %shl121, i32 noundef %conv124) #12
  %msgout_buf = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %60 = call ptr @memcpy(ptr %msgout_buf, ptr %msgin_buf, i32 5)
  %msg_count = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %61 = ptrtoint ptr %msg_count to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 5, ptr %msg_count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !688
  tail call void @arm_heavy_mb() #9
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %62 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %io_port_base, align 4
  %add131 = add i32 %63, 128
  %and132 = and i32 %add131, 1048575
  %add133 = or i32 %and132, -18874368
  %64 = inttoptr i32 %add133 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %64, i16 2) #9, !srcloc !577
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %state, align 4
  %67 = or i16 %66, 4
  store i16 %67, ptr %state, align 4
  %sync_mode = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 12
  %68 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sync_mode, align 1
  %70 = or i8 %69, 2
  store i8 %70, ptr %sync_mode, align 1
  br label %if.end168

if.else142:                                       ; preds = %if.end64
  %sync_mode143 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 12
  %71 = ptrtoint ptr %sync_mode143 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %sync_mode143, align 1
  %73 = and i8 %72, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %73)
  %74 = icmp eq i8 %73, 4
  br i1 %74, label %if.then151, label %if.else142.if.end168_crit_edge

if.else142.if.end168_crit_edge:                   ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

if.then151:                                       ; preds = %if.else142
  %msgout_buf.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %msg_count.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %75 = ptrtoint ptr %msg_count.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %msg_count.i, align 4
  %conv5.i = zext i8 %76 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %76)
  %cmp.i = icmp ugt i8 %76, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %msgout_buf.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %msgout_buf.i, align 4
  %conv12.i = zext i8 %78 to i32
  %arrayidx14.i = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12, i32 1
  %79 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %80 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv5.i, i32 noundef %conv12.i, i32 noundef %conv15.i) #12
  br label %build_wdtr.exit

if.end.i:                                         ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %msgout_buf.i, i32 %conv5.i
  %81 = ptrtoint ptr %dev_mode to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %dev_mode, align 1
  %config.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 17
  %83 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %config.i, align 1
  %85 = and i8 %82, 32
  %and331.i = and i8 %85, %84
  %and331.lobit.i = lshr exact i8 %and331.i, 5
  %conv16.i = zext i8 %and331.lobit.i to i32
  %call17.i = tail call i32 @spi_populate_width_msg(ptr noundef %add.ptr.i, i32 noundef %conv16.i) #9
  %86 = ptrtoint ptr %msg_count.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %msg_count.i, align 4
  %88 = trunc i32 %call17.i to i8
  %conv20.i = add i8 %87, %88
  store i8 %conv20.i, ptr %msg_count.i, align 4
  %89 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %state, align 4
  %91 = or i16 %90, 16384
  store i16 %91, ptr %state, align 4
  br label %build_wdtr.exit

build_wdtr.exit:                                  ; preds = %if.end.i, %do.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !689
  tail call void @arm_heavy_mb() #9
  %io_port_base155 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %92 = ptrtoint ptr %io_port_base155 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %io_port_base155, align 4
  %add156 = add i32 %93, 128
  %and157 = and i32 %add156, 1048575
  %add158 = or i32 %and157, -18874368
  %94 = inttoptr i32 %add158 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %94, i16 2) #9, !srcloc !577
  %95 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %state, align 4
  %97 = or i16 %96, 4
  store i16 %97, ptr %state, align 4
  br label %if.end168

if.end168:                                        ; preds = %build_wdtr.exit, %if.else142.if.end168_crit_edge, %do.end116
  %98 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %state, align 4
  %100 = and i16 %99, -8193
  store i16 %100, ptr %state, align 4
  %sync_mode173 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 12
  %101 = ptrtoint ptr %sync_mode173 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %sync_mode173, align 1
  %103 = or i8 %102, 3
  store i8 %103, ptr %sync_mode173, align 1
  tail call fastcc void @reprogram_regs(ptr noundef %acb, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msgin_set_wide(ptr noundef %acb, ptr noundef %srb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb1 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb1, align 4
  %dev_mode = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dev_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dev_mode, align 1
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %config = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 17
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config, align 1
  %7 = and i8 %6, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4 = icmp ne i8 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool4, %land.rhs ]
  %msgin_buf = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 11
  %arrayidx = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 11, i32 3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = zext i1 %8 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %11)
  %cmp = icmp ugt i8 %10, %11
  br i1 %cmp, label %if.then, label %land.end.if.end_crit_edge

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.if.end_crit_edge
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %state, align 4
  %15 = and i16 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool13.not = icmp eq i16 %15, 0
  br i1 %tobool13.not, label %do.end17, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %target_id = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %target_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %target_id, align 2
  %conv18 = zext i8 %17 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, i32 noundef %conv18) #12
  %msgout_buf = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %18 = ptrtoint ptr %msgin_buf to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %msgin_buf, align 2
  %20 = ptrtoint ptr %msgout_buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %msgout_buf, align 4
  %msg_count = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %21 = ptrtoint ptr %msg_count to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %msg_count, align 4
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %state, align 4
  %24 = or i16 %23, 16384
  store i16 %24, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !690
  tail call void @arm_heavy_mb() #9
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %25 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_port_base, align 4
  %add = add i32 %26, 128
  %and27 = and i32 %add, 1048575
  %add28 = or i32 %and27, -18874368
  %27 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 2) #9, !srcloc !577
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %state, align 4
  %30 = or i16 %29, 4
  store i16 %30, ptr %state, align 4
  br label %if.end34

if.end34:                                         ; preds = %do.end17, %if.end.if.end34_crit_edge
  %sync_mode = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 12
  %31 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sync_mode, align 1
  %33 = or i8 %32, 12
  store i8 %33, ptr %sync_mode, align 1
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp41.not = icmp eq i8 %35, 0
  %sync_period47 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 14
  %36 = ptrtoint ptr %sync_period47 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sync_period47, align 1
  %38 = and i8 %37, -17
  %masksel = select i1 %cmp41.not, i8 0, i8 16
  %.sink = or i8 %38, %masksel
  store i8 %.sink, ptr %sync_period47, align 1
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %state, align 4
  %41 = and i16 %40, -16385
  store i16 %41, ptr %state, align 4
  tail call fastcc void @reprogram_regs(ptr noundef %acb, ptr noundef %1)
  %42 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sync_mode, align 1
  %44 = and i8 %43, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %45 = icmp eq i8 %44, 1
  br i1 %45, label %if.then67, label %if.end34.if.end83_crit_edge

if.end34.if.end83_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then67:                                        ; preds = %if.end34
  %msgout_buf.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %msg_count.i = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %46 = ptrtoint ptr %msg_count.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %msg_count.i, align 4
  %conv.i = zext i8 %47 to i32
  %add.ptr.i = getelementptr i8, ptr %msgout_buf.i, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp.i = icmp ugt i8 %47, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %msgout_buf.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %msgout_buf.i, align 4
  %conv7.i = zext i8 %49 to i32
  %arrayidx9.i = getelementptr %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12, i32 1
  %50 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %51 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv.i, i32 noundef %conv7.i, i32 noundef %conv10.i) #12
  br label %build_sdtr.exit

if.end.i:                                         ; preds = %if.then67
  %52 = ptrtoint ptr %dev_mode to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dev_mode, align 1
  %54 = and i8 %53, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i = icmp eq i8 %54, 0
  %sync_offset.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 15
  br i1 %tobool.not.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %sync_offset.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %sync_offset.i, align 2
  %min_nego_period.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 13
  %56 = ptrtoint ptr %min_nego_period.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 50, ptr %min_nego_period.i, align 4
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i
  %57 = ptrtoint ptr %sync_offset.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sync_offset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp15.i = icmp eq i8 %58, 0
  br i1 %cmp15.i, label %if.then17.i, label %if.else.i.if.end20.i_crit_edge

if.else.i.if.end20.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %sync_offset.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 15, ptr %sync_offset.i, align 2
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.else.i.if.end20.i_crit_edge, %if.then12.i
  %min_nego_period21.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 13
  %60 = ptrtoint ptr %min_nego_period21.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %min_nego_period21.i, align 4
  %conv22.i = zext i8 %61 to i32
  %62 = ptrtoint ptr %sync_offset.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %sync_offset.i, align 2
  %conv24.i = zext i8 %63 to i32
  %call25.i = tail call i32 @spi_populate_sync_msg(ptr noundef %add.ptr.i, i32 noundef %conv22.i, i32 noundef %conv24.i) #9
  %64 = ptrtoint ptr %msg_count.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %msg_count.i, align 4
  %66 = trunc i32 %call25.i to i8
  %conv28.i = add i8 %65, %66
  store i8 %conv28.i, ptr %msg_count.i, align 4
  %67 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %state, align 4
  %69 = or i16 %68, 8192
  store i16 %69, ptr %state, align 4
  br label %build_sdtr.exit

build_sdtr.exit:                                  ; preds = %if.end20.i, %do.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !691
  tail call void @arm_heavy_mb() #9
  %io_port_base71 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %70 = ptrtoint ptr %io_port_base71 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %io_port_base71, align 4
  %add72 = add i32 %71, 128
  %and73 = and i32 %add72, 1048575
  %add74 = or i32 %and73, -18874368
  %72 = inttoptr i32 %add74 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %72, i16 2) #9, !srcloc !577
  %73 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %state, align 4
  %75 = or i16 %74, 4
  store i16 %75, ptr %state, align 4
  br label %if.end83

if.end83:                                         ; preds = %build_sdtr.exit, %if.end34.if.end83_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reprogram_regs(ptr noundef readonly %acb, ptr nocapture noundef readonly %dcb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !692
  tail call void @arm_heavy_mb() #9
  %target_id = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 7
  %0 = ptrtoint ptr %target_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %target_id, align 2
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %2 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_port_base, align 4
  %add = add i32 %3, 134
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %1) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !693
  tail call void @arm_heavy_mb() #9
  %sync_period = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 14
  %5 = ptrtoint ptr %sync_period to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sync_period, align 1
  %7 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_port_base, align 4
  %add5 = add i32 %8, 133
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %9 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %6) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !694
  tail call void @arm_heavy_mb() #9
  %sync_offset = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 15
  %10 = ptrtoint ptr %sync_offset to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sync_offset, align 2
  %12 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_port_base, align 4
  %add12 = add i32 %13, 132
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %14 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %11) #9, !srcloc !547
  %identify_msg.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 9
  %15 = ptrtoint ptr %identify_msg.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %identify_msg.i, align 4
  %17 = and i8 %16, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.set_xfer_rate.exit_crit_edge

entry.set_xfer_rate.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_xfer_rate.exit

if.end.i:                                         ; preds = %entry
  %scan_devices.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 19
  %18 = ptrtoint ptr %scan_devices.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %scan_devices.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.not.i = icmp eq i8 %19, 0
  br i1 %tobool1.not.i, label %if.end4.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %sync_offset to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sync_offset, align 2
  %conv3.i = zext i8 %21 to i16
  store i16 %conv3.i, ptr @current_sync_offset, align 2
  br label %set_xfer_rate.exit

if.end4.i:                                        ; preds = %if.end.i
  %dcb_list.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 3
  %22 = ptrtoint ptr %dcb_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %i.038.i = load ptr, ptr %dcb_list.i, align 4
  %cmp.not39.i = icmp eq ptr %i.038.i, %dcb_list.i
  br i1 %cmp.not39.i, label %if.end4.i.set_xfer_rate.exit_crit_edge, label %for.body.lr.ph.i

if.end4.i.set_xfer_rate.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_xfer_rate.exit

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %sync_mode.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 12
  %min_nego_period.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.040.i = phi ptr [ %i.038.i, %for.body.lr.ph.i ], [ %i.0.i, %for.inc.i.for.body.i_crit_edge ]
  %target_id.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %i.040.i, i32 0, i32 7
  %23 = ptrtoint ptr %target_id.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %target_id.i, align 2
  %25 = ptrtoint ptr %target_id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %target_id, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp10.i = icmp eq i8 %24, %26
  br i1 %cmp10.i, label %if.then12.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then12.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %sync_period to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sync_period, align 1
  %sync_period13.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %i.040.i, i32 0, i32 14
  %29 = ptrtoint ptr %sync_period13.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %sync_period13.i, align 1
  %30 = ptrtoint ptr %sync_offset to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sync_offset, align 2
  %sync_offset15.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %i.040.i, i32 0, i32 15
  %32 = ptrtoint ptr %sync_offset15.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %sync_offset15.i, align 2
  %33 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sync_mode.i, align 1
  %sync_mode16.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %i.040.i, i32 0, i32 12
  %35 = ptrtoint ptr %sync_mode16.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %sync_mode16.i, align 1
  %36 = ptrtoint ptr %min_nego_period.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %min_nego_period.i, align 4
  %min_nego_period17.i = getelementptr inbounds %struct.DeviceCtlBlk, ptr %i.040.i, i32 0, i32 13
  %38 = ptrtoint ptr %min_nego_period17.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %min_nego_period17.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then12.i, %for.body.i.for.inc.i_crit_edge
  %39 = ptrtoint ptr %i.040.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %i.0.i = load ptr, ptr %i.040.i, align 4
  %cmp.not.i = icmp eq ptr %i.0.i, %dcb_list.i
  br i1 %cmp.not.i, label %for.inc.i.set_xfer_rate.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.set_xfer_rate.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_xfer_rate.exit

set_xfer_rate.exit:                               ; preds = %for.inc.i.set_xfer_rate.exit_crit_edge, %if.end4.i.set_xfer_rate.exit_crit_edge, %if.then2.i, %entry.set_xfer_rate.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @data_out_phase1(ptr noundef %acb, ptr noundef %srb, ptr nocapture noundef readnone %pscsi_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !594
  tail call void @arm_heavy_mb() #9
  %io_port_base.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %0 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port_base.i, align 4
  %add.i = add i32 %1, 128
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 1024) #9, !srcloc !577
  tail call fastcc void @data_io_transfer(ptr noundef %acb, ptr noundef %srb, i16 noundef zeroext 256)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @data_in_phase1(ptr noundef %acb, ptr noundef %srb, ptr nocapture noundef readnone %pscsi_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @data_io_transfer(ptr noundef %acb, ptr noundef %srb, i16 noundef zeroext 257)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @command_phase1(ptr nocapture noundef readonly %acb, ptr nocapture noundef %srb, ptr nocapture noundef readnone %pscsi_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !594
  tail call void @arm_heavy_mb() #9
  %io_port_base.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %0 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port_base.i, align 4
  %add.i = add i32 %1, 128
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 1024) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !695
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_port_base.i, align 4
  %add = add i32 %4, 128
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %5 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 4) #9, !srcloc !577
  %flag = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 20
  %6 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flag, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %do.body18

if.then:                                          ; preds = %entry
  %cmd = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 2
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd, align 4
  %cmd_len102 = getelementptr inbounds %struct.scsi_cmnd, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %cmd_len102 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cmd_len102, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp103.not = icmp eq i16 %12, 0
  br i1 %cmp103.not, label %if.then.if.end_crit_edge, label %do.body10.preheader

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body10.preheader:                              ; preds = %if.then
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %10, i32 0, i32 16
  %13 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmnd, align 4
  br label %do.body10

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %do.body10.preheader
  %i.0105 = phi i16 [ %inc, %do.body10.do.body10_crit_edge ], [ 0, %do.body10.preheader ]
  %ptr.0104 = phi ptr [ %incdec.ptr, %do.body10.do.body10_crit_edge ], [ %14, %do.body10.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !696
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %ptr.0104 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ptr.0104, align 1
  %17 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_port_base.i, align 4
  %add14 = add i32 %18, 152
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %19 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %16) #9, !srcloc !547
  %incdec.ptr = getelementptr i8, ptr %ptr.0104, i32 1
  %inc = add nuw i16 %i.0105, 1
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cmd_len, align 4
  %cmp = icmp ult i16 %inc, %23
  br i1 %cmp, label %do.body10.do.body10_crit_edge, label %do.body10.if.end_crit_edge

do.body10.if.end_crit_edge:                       ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !697
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_port_base.i, align 4
  %add22 = add i32 %25, 152
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %26 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 3) #9, !srcloc !547
  %active_dcb = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 5
  %27 = ptrtoint ptr %active_dcb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %active_dcb, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !698
  tail call void @arm_heavy_mb() #9
  %target_lun = getelementptr inbounds %struct.DeviceCtlBlk, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %target_lun to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %target_lun, align 1
  %shl = shl i8 %30, 5
  %31 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io_port_base.i, align 4
  %add32 = add i32 %32, 152
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %33 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %shl) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !699
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io_port_base.i, align 4
  %add40 = add i32 %35, 152
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %36 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 0) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !700
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %io_port_base.i, align 4
  %add48 = add i32 %38, 152
  %and49 = and i32 %add48, 1048575
  %add50 = or i32 %and49, -18874368
  %39 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 0) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !701
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_port_base.i, align 4
  %add56 = add i32 %41, 152
  %and57 = and i32 %add56, 1048575
  %add58 = or i32 %and57, -18874368
  %42 = inttoptr i32 %add58 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 96) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !702
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %io_port_base.i, align 4
  %add64 = add i32 %44, 152
  %and65 = and i32 %add64, 1048575
  %add66 = or i32 %and65, -18874368
  %45 = inttoptr i32 %add66 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 0) #9, !srcloc !547
  br label %if.end

if.end:                                           ; preds = %do.body18, %do.body10.if.end_crit_edge, %if.then.if.end_crit_edge
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %state, align 4
  %48 = or i16 %47, 32
  store i16 %48, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !703
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_port_base.i, align 4
  %add74 = add i32 %50, 128
  %and75 = and i32 %add74, 1048575
  %add76 = or i32 %and75, -18874368
  %51 = inttoptr i32 %add76 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 512) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !704
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %io_port_base.i, align 4
  %add82 = add i32 %53, 144
  %and83 = and i32 %add82, 1048575
  %add84 = or i32 %and83, -18874368
  %54 = inttoptr i32 %add84 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 -64) #9, !srcloc !547
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @status_phase1(ptr nocapture noundef readonly %acb, ptr nocapture noundef writeonly %srb, ptr nocapture noundef readnone %pscsi_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1024, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !705
  tail call void @arm_heavy_mb() #9
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %1 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %io_port_base, align 4
  %add = add i32 %2, 128
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %3 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 512) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !706
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port_base, align 4
  %add7 = add i32 %5, 144
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %6 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 18) #9, !srcloc !547
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nop1(ptr nocapture noundef %acb, ptr nocapture noundef %srb, ptr nocapture noundef %pscsi_status) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msgout_phase1(ptr nocapture noundef readonly %acb, ptr nocapture noundef %srb, ptr nocapture noundef readnone %pscsi_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !594
  tail call void @arm_heavy_mb() #9
  %io_port_base.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %0 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port_base.i, align 4
  %add.i = add i32 %1, 128
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 1024) #9, !srcloc !577
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %state, align 4
  %5 = and i16 %4, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i16 %4, 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %or, ptr %state, align 4
  %cmd = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 2
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, ptr noundef %8) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %msg_count = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 15
  %9 = ptrtoint ptr %msg_count to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %msg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %do.body12, label %if.end34

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !707
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_port_base.i, align 4
  %add = add i32 %12, 152
  %and15 = and i32 %add, 1048575
  %add16 = or i32 %and15, -18874368
  %13 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 8) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !708
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_port_base.i, align 4
  %add22 = add i32 %15, 128
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %16 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %16, i16 512) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !709
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_port_base.i, align 4
  %add30 = add i32 %18, 144
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %19 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 -64) #9, !srcloc !547
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %msgout_buf = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 12
  %20 = ptrtoint ptr %msg_count to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %msg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp78.not = icmp eq i8 %21, 0
  br i1 %cmp78.not, label %if.end34.for.end_crit_edge, label %if.end34.do.body39_crit_edge

if.end34.do.body39_crit_edge:                     ; preds = %if.end34
  br label %do.body39

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body39:                                        ; preds = %do.body39.do.body39_crit_edge, %if.end34.do.body39_crit_edge
  %i.080 = phi i16 [ %inc, %do.body39.do.body39_crit_edge ], [ 0, %if.end34.do.body39_crit_edge ]
  %ptr.079 = phi ptr [ %incdec.ptr, %do.body39.do.body39_crit_edge ], [ %msgout_buf, %if.end34.do.body39_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !710
  tail call void @arm_heavy_mb() #9
  %incdec.ptr = getelementptr i8, ptr %ptr.079, i32 1
  %22 = ptrtoint ptr %ptr.079 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ptr.079, align 1
  %24 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_port_base.i, align 4
  %add43 = add i32 %25, 152
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %26 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %23) #9, !srcloc !547
  %inc = add nuw nsw i16 %i.080, 1
  %27 = ptrtoint ptr %msg_count to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %msg_count, align 4
  %29 = zext i8 %28 to i16
  %cmp = icmp ult i16 %inc, %29
  br i1 %cmp, label %do.body39.do.body39_crit_edge, label %do.body39.for.end_crit_edge

do.body39.for.end_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body39.do.body39_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.end:                                          ; preds = %do.body39.for.end_crit_edge, %if.end34.for.end_crit_edge
  %30 = ptrtoint ptr %msg_count to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %msg_count, align 4
  %31 = ptrtoint ptr %msgout_buf to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %msgout_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %32)
  %cmp50 = icmp eq i8 %32, 6
  br i1 %cmp50, label %if.then52, label %for.end.do.body55_crit_edge

for.end.do.body55_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body55

if.then52:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 4096, ptr %state, align 4
  br label %do.body55

do.body55:                                        ; preds = %if.then52, %for.end.do.body55_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !711
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io_port_base.i, align 4
  %add59 = add i32 %35, 144
  %and60 = and i32 %add59, 1048575
  %add61 = or i32 %and60, -18874368
  %36 = inttoptr i32 %add61 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 -64) #9, !srcloc !547
  br label %cleanup

cleanup:                                          ; preds = %do.body55, %do.body12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msgin_phase1(ptr nocapture noundef readonly %acb, ptr nocapture noundef %srb, ptr nocapture noundef readnone %pscsi_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !594
  tail call void @arm_heavy_mb() #9
  %io_port_base.i = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %0 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port_base.i, align 4
  %add.i = add i32 %1, 128
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 1024) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !712
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_port_base.i, align 4
  %add = add i32 %4, 136
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %5 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 16777216) #9, !srcloc !713
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %state, align 4
  %8 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and7 = and i16 %7, -137
  %9 = or i16 %and7, 8
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %state, align 4
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !714
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_port_base.i, align 4
  %add15 = add i32 %12, 128
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %13 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 512) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !715
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %io_port_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_port_base.i, align 4
  %add22 = add i32 %15, 144
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %16 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -62) #9, !srcloc !547
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @data_io_transfer(ptr noundef %acb, ptr noundef %srb, i16 noundef zeroext %io_dir) unnamed_addr #2 align 64 {
entry:
  %len = alloca i32, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb1 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb1, align 4
  %tmp_srb = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 7
  %2 = ptrtoint ptr %tmp_srb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tmp_srb, align 4
  %cmp = icmp eq ptr %3, %srb
  br i1 %cmp, label %do.end4, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186) #12
  br label %if.end

if.end:                                           ; preds = %do.end4, %entry.if.end_crit_edge
  %sg_index = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 6
  %4 = ptrtoint ptr %sg_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sg_index, align 1
  %sg_count = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 5
  %6 = ptrtoint ptr %sg_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sg_count, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp6.not = icmp ult i8 %5, %7
  br i1 %cmp6.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %total_xfer_length = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 7
  %8 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_xfer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp10 = icmp ugt i32 %9, 4
  br i1 %cmp10, label %if.then12, label %if.else150

if.then12:                                        ; preds = %if.end9
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %10 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_port_base, align 4
  %add = add i32 %11, 163
  %and = and i32 %add, 1048575
  %add13 = or i32 %and, -18874368
  %12 = inttoptr i32 %add13 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !716
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %tobool.not = icmp sgt i8 %13, -1
  br i1 %tobool.not, label %if.then12.if.end33_crit_edge, label %do.end22

if.then12.if.end33_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

do.end22:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189) #12
  tail call fastcc void @dump_register_info(ptr noundef %acb, ptr noundef %1, ptr noundef %srb)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !717
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_port_base, align 4
  %add29 = add i32 %15, 161
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %16 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 2) #9, !srcloc !547
  br label %if.end33

if.end33:                                         ; preds = %do.end22, %if.then12.if.end33_crit_edge
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %state, align 4
  %19 = or i16 %18, 256
  store i16 %19, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !718
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_port_base, align 4
  %add40 = add i32 %21, 180
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %22 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 0) #9, !srcloc !713
  %cmd = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 2
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %24, i32 0, i32 17, i32 0, i32 1
  %25 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool45.not = icmp eq i32 %26, 0
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %27 = or i16 %io_dir, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !719
  tail call void @arm_heavy_mb() #9
  %sg_bus_addr = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 4
  %28 = ptrtoint ptr %sg_bus_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sg_bus_addr, align 4
  %30 = ptrtoint ptr %sg_index to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sg_index, align 1
  %conv54 = zext i8 %31 to i32
  %mul = shl nuw nsw i32 %conv54, 3
  %add55 = add i32 %mul, %29
  %32 = tail call i32 @llvm.bswap.i32(i32 %add55)
  %33 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_port_base, align 4
  %add57 = add i32 %34, 176
  %and58 = and i32 %add57, 1048575
  %add59 = or i32 %and58, -18874368
  %35 = inttoptr i32 %add59 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 %32) #9, !srcloc !713
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !720
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %sg_count to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sg_count, align 4
  %conv65 = zext i8 %37 to i32
  %38 = ptrtoint ptr %sg_index to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sg_index, align 1
  %conv67 = zext i8 %39 to i32
  %sub = sub nsw i32 %conv65, %conv67
  %shl = shl nsw i32 %sub, 3
  %40 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %41 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %io_port_base, align 4
  %add69 = add i32 %42, 168
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %43 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %43, i32 %40) #9, !srcloc !713
  br label %do.body95

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %44 = and i16 %io_dir, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !721
  tail call void @arm_heavy_mb() #9
  %segment_x = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 3
  %45 = ptrtoint ptr %segment_x to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %segment_x, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %io_port_base, align 4
  %add80 = add i32 %51, 176
  %and81 = and i32 %add80, 1048575
  %add82 = or i32 %and81, -18874368
  %52 = inttoptr i32 %add82 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %52, i32 %49) #9, !srcloc !713
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !722
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %segment_x to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %segment_x, align 4
  %length = getelementptr inbounds %struct.SGentry, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %length, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_port_base, align 4
  %add90 = add i32 %59, 168
  %and91 = and i32 %add90, 1048575
  %add92 = or i32 %and91, -18874368
  %60 = inttoptr i32 %add92 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %60, i32 %57) #9, !srcloc !713
  br label %do.body95

do.body95:                                        ; preds = %if.else, %if.then46
  %io_dir.addr.0 = phi i16 [ %27, %if.then46 ], [ %44, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !723
  tail call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %total_xfer_length, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %io_port_base, align 4
  %add100 = add i32 %65, 136
  %and101 = and i32 %add100, 1048575
  %add102 = or i32 %and101, -18874368
  %66 = inttoptr i32 %add102 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %66, i32 %63) #9, !srcloc !713
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !724
  tail call void @arm_heavy_mb() #9
  %67 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %io_port_base, align 4
  %add108 = add i32 %68, 128
  %and109 = and i32 %add108, 1048575
  %add110 = or i32 %and109, -18874368
  %69 = inttoptr i32 %add110 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %69, i16 512) #9, !srcloc !577
  %70 = and i16 %io_dir.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool114.not = icmp eq i16 %70, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool114.not, label %do.body133, label %do.body116

do.body116:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %io_port_base, align 4
  %add120 = add i32 %72, 144
  %and121 = and i32 %add120, 1048575
  %add122 = or i32 %and121, -18874368
  %73 = inttoptr i32 %add122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 -61) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !725
  tail call void @arm_heavy_mb() #9
  %74 = tail call i16 @llvm.bswap.i16(i16 %io_dir.addr.0)
  %75 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %io_port_base, align 4
  %add128 = add i32 %76, 160
  %and129 = and i32 %add128, 1048575
  %add130 = or i32 %and129, -18874368
  %77 = inttoptr i32 %add130 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %77, i16 %74) #9, !srcloc !577
  br label %cleanup

do.body133:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #11
  %78 = tail call i16 @llvm.bswap.i16(i16 %io_dir.addr.0)
  %79 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %io_port_base, align 4
  %add137 = add i32 %80, 160
  %and138 = and i32 %add137, 1048575
  %add139 = or i32 %and138, -18874368
  %81 = inttoptr i32 %add139 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %81, i16 %78) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !726
  tail call void @arm_heavy_mb() #9
  %82 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %io_port_base, align 4
  %add145 = add i32 %83, 144
  %and146 = and i32 %add145, 1048575
  %add147 = or i32 %and146, -18874368
  %84 = inttoptr i32 %add147 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 -63) #9, !srcloc !547
  br label %cleanup

if.else150:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp152.not = icmp eq i32 %9, 0
  br i1 %cmp152.not, label %if.then314, label %if.then154

if.then154:                                       ; preds = %if.else150
  %state155 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %85 = ptrtoint ptr %state155 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %state155, align 4
  %87 = or i16 %86, 256
  store i16 %87, ptr %state155, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !727
  tail call void @arm_heavy_mb() #9
  %88 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %total_xfer_length, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  %io_port_base163 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %91 = ptrtoint ptr %io_port_base163 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %io_port_base163, align 4
  %add164 = add i32 %92, 136
  %and165 = and i32 %add164, 1048575
  %add166 = or i32 %and165, -18874368
  %93 = inttoptr i32 %add166 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %93, i32 %90) #9, !srcloc !713
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !728
  tail call void @arm_heavy_mb() #9
  %94 = ptrtoint ptr %io_port_base163 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %io_port_base163, align 4
  %add172 = add i32 %95, 128
  %and173 = and i32 %add172, 1048575
  %add174 = or i32 %and173, -18874368
  %96 = inttoptr i32 %add174 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %96, i16 512) #9, !srcloc !577
  %97 = and i16 %io_dir, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool178.not = icmp eq i16 %97, 0
  br i1 %tobool178.not, label %if.else188, label %do.body180

do.body180:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !729
  tail call void @arm_heavy_mb() #9
  %98 = ptrtoint ptr %io_port_base163 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %io_port_base163, align 4
  %add184 = add i32 %99, 144
  %and185 = and i32 %add184, 1048575
  %add186 = or i32 %and185, -18874368
  %100 = inttoptr i32 %add186 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 -62) #9, !srcloc !547
  br label %cleanup

if.else188:                                       ; preds = %if.then154
  %101 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %total_xfer_length, align 4
  %103 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dcb1, align 4
  %sync_period = getelementptr inbounds %struct.DeviceCtlBlk, ptr %104, i32 0, i32 14
  %105 = ptrtoint ptr %sync_period to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %sync_period, align 1
  %107 = and i8 %106, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool194.not = icmp eq i8 %107, 0
  br i1 %tobool194.not, label %if.else188.if.end204_crit_edge, label %do.body196

if.else188.if.end204_crit_edge:                   ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204

do.body196:                                       ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !730
  tail call void @arm_heavy_mb() #9
  %108 = ptrtoint ptr %io_port_base163 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %io_port_base163, align 4
  %add200 = add i32 %109, 143
  %and201 = and i32 %add200, 1048575
  %add202 = or i32 %and201, -18874368
  %110 = inttoptr i32 %add202 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 2) #9, !srcloc !547
  br label %if.end204

if.end204:                                        ; preds = %do.body196, %if.else188.if.end204_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool205.not527 = icmp eq i32 %102, 0
  br i1 %tobool205.not527, label %if.end204.while.end275_crit_edge, label %while.body.lr.ph

if.end204.while.end275_crit_edge:                 ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end275

while.body.lr.ph:                                 ; preds = %if.end204
  %request_length = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 8
  %cmd227 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %do.end270.while.body_crit_edge, %while.body.lr.ph
  %left_io.0528 = phi i32 [ %102, %while.body.lr.ph ], [ %sub232, %do.end270.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %111 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %left_io.0528, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %112 = ptrtoint ptr %request_length to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %request_length, align 4
  %sub206 = sub i32 %113, %left_io.0528
  %114 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %sub206, ptr %offset, align 4
  %115 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !638
  %and.i = and i32 %115, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool222.not = icmp eq i32 %and.i, 0
  br i1 %tobool222.not, label %if.then223, label %while.body.do.end226_crit_edge

while.body.do.end226_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end226

if.then223:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_off() #9
  br label %do.end226

do.end226:                                        ; preds = %if.then223, %while.body.do.end226_crit_edge
  %116 = ptrtoint ptr %cmd227 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cmd227, align 4
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %117, i32 0, i32 17
  %118 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sdb.i, align 4
  %120 = ptrtoint ptr %sg_count to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %sg_count, align 4
  %conv230 = zext i8 %121 to i32
  %call231 = call ptr @scsi_kmap_atomic_sg(ptr noundef %119, i32 noundef %conv230, ptr noundef nonnull %offset, ptr noundef nonnull %len) #9
  %122 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %offset, align 4
  %124 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len, align 4
  %sub232 = sub i32 %left_io.0528, %125
  %dec524 = add i32 %125, -1
  store i32 %dec524, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool234.not525 = icmp eq i32 %125, 0
  br i1 %tobool234.not525, label %do.end226.while.end_crit_edge, label %do.body236.preheader

do.end226.while.end_crit_edge:                    ; preds = %do.end226
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.body236.preheader:                             ; preds = %do.end226
  %add.ptr = getelementptr i8, ptr %call231, i32 %123
  br label %do.body236

do.body236:                                       ; preds = %do.body236.do.body236_crit_edge, %do.body236.preheader
  %virt.0526 = phi ptr [ %incdec.ptr, %do.body236.do.body236_crit_edge ], [ %add.ptr, %do.body236.preheader ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !731
  call void @arm_heavy_mb() #9
  %incdec.ptr = getelementptr i8, ptr %virt.0526, i32 1
  %126 = ptrtoint ptr %virt.0526 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %virt.0526, align 1
  %128 = ptrtoint ptr %io_port_base163 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %io_port_base163, align 4
  %add240 = add i32 %129, 152
  %and241 = and i32 %add240, 1048575
  %add242 = or i32 %and241, -18874368
  %130 = inttoptr i32 %add242 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 %127) #9, !srcloc !547
  %131 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %total_xfer_length, align 4
  %sub.i = add i32 %132, -1
  call fastcc void @sg_update_list(ptr noundef %srb, i32 noundef %sub.i) #9
  %133 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %133)
  %.pr = load i32, ptr %len, align 4
  %dec = add i32 %.pr, -1
  store i32 %dec, ptr %len, align 4
  %tobool234.not = icmp eq i32 %.pr, 0
  br i1 %tobool234.not, label %do.body236.while.end_crit_edge, label %do.body236.do.body236_crit_edge

do.body236.do.body236_crit_edge:                  ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body236

do.body236.while.end_crit_edge:                   ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.body236.while.end_crit_edge, %do.end226.while.end_crit_edge
  call void @scsi_kunmap_atomic_sg(ptr noundef %call231) #9
  br i1 %tobool222.not, label %if.then253, label %while.end.do.body255_crit_edge

while.end.do.body255_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body255

if.then253:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_on() #9
  br label %do.body255

do.body255:                                       ; preds = %if.then253, %while.end.do.body255_crit_edge
  %134 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !639
  %and.i.i = and i32 %134, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool263.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool263.not, label %if.then267, label %do.body255.do.end270_crit_edge, !prof !586

do.body255.do.end270_crit_edge:                   ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end270

if.then267:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %do.end270

do.end270:                                        ; preds = %if.then267, %do.body255.do.end270_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %115) #9, !srcloc !640
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  %tobool205.not = icmp eq i32 %sub232, 0
  br i1 %tobool205.not, label %do.end270.while.end275_crit_edge, label %do.end270.while.body_crit_edge

do.end270.while.body_crit_edge:                   ; preds = %do.end270
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end270.while.end275_crit_edge:                 ; preds = %do.end270
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end275

while.end275:                                     ; preds = %do.end270.while.end275_crit_edge, %if.end204.while.end275_crit_edge
  %135 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dcb1, align 4
  %sync_period277 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %136, i32 0, i32 14
  %137 = ptrtoint ptr %sync_period277 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %sync_period277, align 1
  %139 = and i8 %138, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool280.not = icmp eq i8 %139, 0
  br i1 %tobool280.not, label %while.end275.do.body302_crit_edge, label %if.then281

while.end275.do.body302_crit_edge:                ; preds = %while.end275
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body302

if.then281:                                       ; preds = %while.end275
  %140 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool282.not = icmp eq i32 %140, 0
  br i1 %tobool282.not, label %if.then281.do.body293_crit_edge, label %do.body284

if.then281.do.body293_crit_edge:                  ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body293

do.body284:                                       ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !732
  call void @arm_heavy_mb() #9
  %141 = ptrtoint ptr %io_port_base163 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %io_port_base163, align 4
  %add288 = add i32 %142, 152
  %and289 = and i32 %add288, 1048575
  %add290 = or i32 %and289, -18874368
  %143 = inttoptr i32 %add290 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %143, i8 0) #9, !srcloc !547
  br label %do.body293

do.body293:                                       ; preds = %do.body284, %if.then281.do.body293_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !733
  call void @arm_heavy_mb() #9
  %144 = ptrtoint ptr %io_port_base163 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %io_port_base163, align 4
  %add297 = add i32 %145, 143
  %and298 = and i32 %add297, 1048575
  %add299 = or i32 %and298, -18874368
  %146 = inttoptr i32 %add299 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %146, i8 0) #9, !srcloc !547
  br label %do.body302

do.body302:                                       ; preds = %do.body293, %while.end275.do.body302_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !734
  call void @arm_heavy_mb() #9
  %147 = ptrtoint ptr %io_port_base163 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %io_port_base163, align 4
  %add306 = add i32 %148, 144
  %and307 = and i32 %add306, 1048575
  %add308 = or i32 %and307, -18874368
  %149 = inttoptr i32 %add308 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %149, i8 -64) #9, !srcloc !547
  br label %cleanup

if.then314:                                       ; preds = %if.else150
  %adapter_status = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 13
  %150 = ptrtoint ptr %adapter_status to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 18, ptr %adapter_status, align 2
  %status = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 18
  %151 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %status, align 1
  %153 = or i8 %152, 4
  store i8 %153, ptr %status, align 1
  %sync_period319 = getelementptr inbounds %struct.DeviceCtlBlk, ptr %1, i32 0, i32 14
  %154 = ptrtoint ptr %sync_period319 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %sync_period319, align 1
  %156 = and i8 %155, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool322.not = icmp eq i8 %156, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %io_port_base390 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %157 = ptrtoint ptr %io_port_base390 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %io_port_base390, align 4
  %add391 = add i32 %158, 136
  %and392 = and i32 %add391, 1048575
  %add393 = or i32 %and392, -18874368
  %159 = inttoptr i32 %add393 to ptr
  br i1 %tobool322.not, label %do.body387, label %do.body324

do.body324:                                       ; preds = %if.then314
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %159, i32 33554432) #9, !srcloc !713
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !735
  tail call void @arm_heavy_mb() #9
  %160 = ptrtoint ptr %io_port_base390 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %io_port_base390, align 4
  %add336 = add i32 %161, 143
  %and337 = and i32 %add336, 1048575
  %add338 = or i32 %and337, -18874368
  %162 = inttoptr i32 %add338 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %162, i8 2) #9, !srcloc !547
  %163 = and i16 %io_dir, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool342.not = icmp eq i16 %163, 0
  br i1 %tobool342.not, label %do.body361, label %if.then343

if.then343:                                       ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #11
  %164 = ptrtoint ptr %io_port_base390 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %io_port_base390, align 4
  %add346 = add i32 %165, 152
  %and347 = and i32 %add346, 1048575
  %add348 = or i32 %and347, -18874368
  %166 = inttoptr i32 %add348 to ptr
  %167 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %166) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !736
  %168 = ptrtoint ptr %io_port_base390 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %io_port_base390, align 4
  %add354 = add i32 %169, 152
  %and355 = and i32 %add354, 1048575
  %add356 = or i32 %and355, -18874368
  %170 = inttoptr i32 %add356 to ptr
  %171 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %170) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !737
  br label %do.body378

do.body361:                                       ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !738
  tail call void @arm_heavy_mb() #9
  %172 = ptrtoint ptr %io_port_base390 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %io_port_base390, align 4
  %add365 = add i32 %173, 152
  %and366 = and i32 %add365, 1048575
  %add367 = or i32 %and366, -18874368
  %174 = inttoptr i32 %add367 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %174, i8 75) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !739
  tail call void @arm_heavy_mb() #9
  %175 = ptrtoint ptr %io_port_base390 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %io_port_base390, align 4
  %add373 = add i32 %176, 152
  %and374 = and i32 %add373, 1048575
  %add375 = or i32 %and374, -18874368
  %177 = inttoptr i32 %add375 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %177, i8 71) #9, !srcloc !547
  br label %do.body378

do.body378:                                       ; preds = %do.body361, %if.then343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !740
  tail call void @arm_heavy_mb() #9
  %178 = ptrtoint ptr %io_port_base390 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %io_port_base390, align 4
  %add382 = add i32 %179, 143
  %and383 = and i32 %add382, 1048575
  %add384 = or i32 %and383, -18874368
  %180 = inttoptr i32 %add384 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %180, i8 0) #9, !srcloc !547
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %phi.cmp = icmp eq i16 %163, 0
  %phi.sel = select i1 %phi.cmp, i8 -64, i8 -62
  br label %if.end417

do.body387:                                       ; preds = %if.then314
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %159, i32 16777216) #9, !srcloc !713
  %181 = and i16 %io_dir, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %181)
  %tobool397.not = icmp eq i16 %181, 0
  br i1 %tobool397.not, label %do.body408, label %if.then398

if.then398:                                       ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #11
  %182 = ptrtoint ptr %io_port_base390 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %io_port_base390, align 4
  %add401 = add i32 %183, 152
  %and402 = and i32 %add401, 1048575
  %add403 = or i32 %and402, -18874368
  %184 = inttoptr i32 %add403 to ptr
  %185 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %184) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !741
  br label %if.end417

do.body408:                                       ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !742
  tail call void @arm_heavy_mb() #9
  %186 = ptrtoint ptr %io_port_base390 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %io_port_base390, align 4
  %add412 = add i32 %187, 152
  %and413 = and i32 %add412, 1048575
  %add414 = or i32 %and413, -18874368
  %188 = inttoptr i32 %add414 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 75) #9, !srcloc !547
  br label %if.end417

if.end417:                                        ; preds = %do.body408, %if.then398, %do.body378
  %.pre-phi = phi i8 [ -62, %if.then398 ], [ -64, %do.body408 ], [ %phi.sel, %do.body378 ]
  %state418 = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb, i32 0, i32 10
  %189 = ptrtoint ptr %state418 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %state418, align 4
  %191 = or i16 %190, 512
  store i16 %191, ptr %state418, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !743
  tail call void @arm_heavy_mb() #9
  %io_port_base425 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %192 = ptrtoint ptr %io_port_base425 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %io_port_base425, align 4
  %add426 = add i32 %193, 128
  %and427 = and i32 %add426, 1048575
  %add428 = or i32 %and427, -18874368
  %194 = inttoptr i32 %add428 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %194, i16 512) #9, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !744
  tail call void @arm_heavy_mb() #9
  %195 = ptrtoint ptr %io_port_base425 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %io_port_base425, align 4
  %add438 = add i32 %196, 144
  %and439 = and i32 %add438, 1048575
  %add440 = or i32 %and439, -18874368
  %197 = inttoptr i32 %add440 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %197, i8 %.pre-phi) #9, !srcloc !547
  br label %cleanup

cleanup:                                          ; preds = %if.end417, %do.body302, %do.body180, %do.body133, %do.body116, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_register_info(ptr noundef readonly %acb, ptr noundef readonly %dcb, ptr noundef %srb) unnamed_addr #2 align 64 {
entry:
  %pstat = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pstat) #9
  %0 = ptrtoint ptr %pstat to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %pstat, align 2, !annotation !745
  %dev1 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 23
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %call = call i32 @pci_read_config_word(ptr noundef %2, i32 noundef 6, ptr noundef nonnull %pstat) #9
  %tobool.not = icmp eq ptr %dcb, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %active_dcb = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 5
  %3 = ptrtoint ptr %active_dcb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %active_dcb, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dcb.addr.0 = phi ptr [ %dcb, %entry.if.end_crit_edge ], [ %4, %if.then ]
  %tobool2.not = icmp eq ptr %srb, null
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

land.lhs.true:                                    ; preds = %if.end
  %tobool3.not = icmp eq ptr %dcb.addr.0, null
  br i1 %tobool3.not, label %land.lhs.true.do.end45_crit_edge, label %if.end5

land.lhs.true.do.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

if.end5:                                          ; preds = %land.lhs.true
  %active_srb = getelementptr inbounds %struct.DeviceCtlBlk, ptr %dcb.addr.0, i32 0, i32 4
  %5 = ptrtoint ptr %active_srb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %active_srb, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end5.do.end45_crit_edge, label %if.end5.if.then7_crit_edge

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.end5.do.end45_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

if.then7:                                         ; preds = %if.end5.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %srb.addr.0336 = phi ptr [ %6, %if.end5.if.then7_crit_edge ], [ %srb, %if.end.if.then7_crit_edge ]
  %cmd = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.addr.0336, i32 0, i32 2
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %do.end, label %do.end14

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef nonnull %srb.addr.0336, ptr noundef null) #12
  br label %do.end27

do.end14:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmnd, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv = zext i8 %12 to i32
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 18
  %17 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %lun, align 8
  %conv21 = trunc i64 %18 to i32
  %conv22 = and i32 %conv21, 255
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef nonnull %srb.addr.0336, ptr noundef nonnull %8, i32 noundef %conv, i32 noundef %16, i32 noundef %conv22) #12
  br label %do.end27

do.end27:                                         ; preds = %do.end14, %do.end
  %segment_x = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.addr.0336, i32 0, i32 3
  %19 = ptrtoint ptr %segment_x to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %segment_x, align 4
  %sg_count = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.addr.0336, i32 0, i32 5
  %21 = ptrtoint ptr %sg_count to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sg_count, align 4
  %conv29 = zext i8 %22 to i32
  %sg_index = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.addr.0336, i32 0, i32 6
  %23 = ptrtoint ptr %sg_index to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sg_index, align 1
  %conv30 = zext i8 %24 to i32
  %total_xfer_length = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.addr.0336, i32 0, i32 7
  %25 = ptrtoint ptr %total_xfer_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_xfer_length, align 4
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef %20, i32 noundef %conv29, i32 noundef %conv30, i32 noundef %26) #12
  %state = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.addr.0336, i32 0, i32 10
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %state, align 4
  %conv36 = zext i16 %28 to i32
  %status = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.addr.0336, i32 0, i32 18
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %status, align 1
  %conv37 = zext i8 %30 to i32
  %scsi_phase = getelementptr inbounds %struct.ScsiReqBlk, ptr %srb.addr.0336, i32 0, i32 21
  %31 = ptrtoint ptr %scsi_phase to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %scsi_phase, align 2
  %conv38 = zext i8 %32 to i32
  %active_dcb39 = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 5
  %33 = ptrtoint ptr %active_dcb39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %active_dcb39, align 4
  %tobool40.not = icmp eq ptr %34, null
  %cond = select i1 %tobool40.not, ptr @.str.202, ptr @.str.75
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, i32 noundef %conv36, i32 noundef %conv37, i32 noundef %conv38, ptr noundef nonnull %cond) #12
  br label %do.end45

do.end45:                                         ; preds = %do.end27, %if.end5.do.end45_crit_edge, %land.lhs.true.do.end45_crit_edge
  %io_port_base = getelementptr inbounds %struct.AdapterCtlBlk, ptr %acb, i32 0, i32 1
  %35 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io_port_base, align 4
  %add = add i32 %36, 128
  %and = and i32 %add, 1048575
  %add47 = or i32 %and, -18874368
  %37 = inttoptr i32 %add47 to ptr
  %38 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %37) #9, !srcloc !598
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !746
  %conv51 = zext i16 %39 to i32
  %40 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_port_base, align 4
  %add54 = add i32 %41, 130
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %42 = inttoptr i32 %add56 to ptr
  %43 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !747
  %conv60 = zext i8 %43 to i32
  %44 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_port_base, align 4
  %add63 = add i32 %45, 131
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %46 = inttoptr i32 %add65 to ptr
  %47 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !748
  %conv69 = zext i8 %47 to i32
  %48 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io_port_base, align 4
  %add72 = add i32 %49, 132
  %and73 = and i32 %add72, 1048575
  %add74 = or i32 %and73, -18874368
  %50 = inttoptr i32 %add74 to ptr
  %51 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !749
  %conv78 = zext i8 %51 to i32
  %52 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %io_port_base, align 4
  %add81 = add i32 %53, 133
  %and82 = and i32 %add81, 1048575
  %add83 = or i32 %and82, -18874368
  %54 = inttoptr i32 %add83 to ptr
  %55 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %54) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !750
  %conv87 = zext i8 %55 to i32
  %56 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %io_port_base, align 4
  %add90 = add i32 %57, 134
  %and91 = and i32 %add90, 1048575
  %add92 = or i32 %and91, -18874368
  %58 = inttoptr i32 %add92 to ptr
  %59 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !751
  %conv96 = zext i8 %59 to i32
  %60 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %io_port_base, align 4
  %add99 = add i32 %61, 135
  %and100 = and i32 %add99, 1048575
  %add101 = or i32 %and100, -18874368
  %62 = inttoptr i32 %add101 to ptr
  %63 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %62) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !752
  %conv105 = zext i8 %63 to i32
  %64 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %io_port_base, align 4
  %add108 = add i32 %65, 136
  %and109 = and i32 %add108, 1048575
  %add110 = or i32 %and109, -18874368
  %66 = inttoptr i32 %add110 to ptr
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %66) #9, !srcloc !655
  %68 = call i32 @llvm.bswap.i32(i32 %67)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !753
  %69 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %io_port_base, align 4
  %add116 = add i32 %70, 140
  %and117 = and i32 %add116, 1048575
  %add118 = or i32 %and117, -18874368
  %71 = inttoptr i32 %add118 to ptr
  %72 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %71) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !754
  %conv122 = zext i8 %72 to i32
  %73 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %io_port_base, align 4
  %add125 = add i32 %74, 141
  %and126 = and i32 %add125, 1048575
  %add127 = or i32 %and126, -18874368
  %75 = inttoptr i32 %add127 to ptr
  %76 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %75) #9, !srcloc !598
  %77 = call i16 @llvm.bswap.i16(i16 %76)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !755
  %conv131 = zext i16 %77 to i32
  %78 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %io_port_base, align 4
  %add134 = add i32 %79, 143
  %and135 = and i32 %add134, 1048575
  %add136 = or i32 %and135, -18874368
  %80 = inttoptr i32 %add136 to ptr
  %81 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %80) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !756
  %conv140 = zext i8 %81 to i32
  %82 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %io_port_base, align 4
  %add143 = add i32 %83, 144
  %and144 = and i32 %add143, 1048575
  %add145 = or i32 %and144, -18874368
  %84 = inttoptr i32 %add145 to ptr
  %85 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %84) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !757
  %conv149 = zext i8 %85 to i32
  %86 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %io_port_base, align 4
  %add152 = add i32 %87, 145
  %and153 = and i32 %add152, 1048575
  %add154 = or i32 %and153, -18874368
  %88 = inttoptr i32 %add154 to ptr
  %89 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %88) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !758
  %conv158 = zext i8 %89 to i32
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, i32 noundef %conv51, i32 noundef %conv60, i32 noundef %conv69, i32 noundef %conv78, i32 noundef %conv87, i32 noundef %conv96, i32 noundef %conv105, i32 noundef %68, i32 noundef %conv122, i32 noundef %conv131, i32 noundef %conv140, i32 noundef %conv149, i32 noundef %conv158) #12
  %90 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %io_port_base, align 4
  %add166 = add i32 %91, 160
  %and167 = and i32 %add166, 1048575
  %add168 = or i32 %and167, -18874368
  %92 = inttoptr i32 %add168 to ptr
  %93 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %92) #9, !srcloc !598
  %94 = call i16 @llvm.bswap.i16(i16 %93)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !759
  %conv172 = zext i16 %94 to i32
  %95 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %io_port_base, align 4
  %add175 = add i32 %96, 161
  %and176 = and i32 %add175, 1048575
  %add177 = or i32 %and176, -18874368
  %97 = inttoptr i32 %add177 to ptr
  %98 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %97) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !760
  %conv181 = zext i8 %98 to i32
  %99 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %io_port_base, align 4
  %add184 = add i32 %100, 162
  %and185 = and i32 %add184, 1048575
  %add186 = or i32 %and185, -18874368
  %101 = inttoptr i32 %add186 to ptr
  %102 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %101) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !761
  %conv190 = zext i8 %102 to i32
  %103 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %io_port_base, align 4
  %add193 = add i32 %104, 163
  %and194 = and i32 %add193, 1048575
  %add195 = or i32 %and194, -18874368
  %105 = inttoptr i32 %add195 to ptr
  %106 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %105) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !762
  %conv199 = zext i8 %106 to i32
  %107 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %io_port_base, align 4
  %add202 = add i32 %108, 164
  %and203 = and i32 %add202, 1048575
  %add204 = or i32 %and203, -18874368
  %109 = inttoptr i32 %add204 to ptr
  %110 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %109) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !763
  %conv208 = zext i8 %110 to i32
  %111 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %io_port_base, align 4
  %add211 = add i32 %112, 166
  %and212 = and i32 %add211, 1048575
  %add213 = or i32 %and212, -18874368
  %113 = inttoptr i32 %add213 to ptr
  %114 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %113) #9, !srcloc !598
  %115 = call i16 @llvm.bswap.i16(i16 %114)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !764
  %conv217 = zext i16 %115 to i32
  %116 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %io_port_base, align 4
  %add220 = add i32 %117, 168
  %and221 = and i32 %add220, 1048575
  %add222 = or i32 %and221, -18874368
  %118 = inttoptr i32 %add222 to ptr
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %118) #9, !srcloc !655
  %120 = call i32 @llvm.bswap.i32(i32 %119)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !765
  %121 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %io_port_base, align 4
  %add228 = add i32 %122, 172
  %and229 = and i32 %add228, 1048575
  %add230 = or i32 %and229, -18874368
  %123 = inttoptr i32 %add230 to ptr
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %123) #9, !srcloc !655
  %125 = call i32 @llvm.bswap.i32(i32 %124)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !766
  %126 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %io_port_base, align 4
  %add236 = add i32 %127, 180
  %and237 = and i32 %add236, 1048575
  %add238 = or i32 %and237, -18874368
  %128 = inttoptr i32 %add238 to ptr
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %128) #9, !srcloc !655
  %130 = call i32 @llvm.bswap.i32(i32 %129)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !767
  %131 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %io_port_base, align 4
  %add244 = add i32 %132, 176
  %and245 = and i32 %add244, 1048575
  %add246 = or i32 %and245, -18874368
  %133 = inttoptr i32 %add246 to ptr
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %133) #9, !srcloc !655
  %135 = call i32 @llvm.bswap.i32(i32 %134)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !768
  %call250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, i32 noundef %conv172, i32 noundef %conv181, i32 noundef %conv190, i32 noundef %conv199, i32 noundef %conv208, i32 noundef %conv217, i32 noundef %120, i32 noundef %125, i32 noundef %130, i32 noundef %135) #12
  %136 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %io_port_base, align 4
  %add257 = add i32 %137, 212
  %and258 = and i32 %add257, 1048575
  %add259 = or i32 %and258, -18874368
  %138 = inttoptr i32 %add259 to ptr
  %139 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %138) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !769
  %conv263 = zext i8 %139 to i32
  %140 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %io_port_base, align 4
  %add266 = add i32 %141, 213
  %and267 = and i32 %add266, 1048575
  %add268 = or i32 %and267, -18874368
  %142 = inttoptr i32 %add268 to ptr
  %143 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %142) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !770
  %conv272 = zext i8 %143 to i32
  %144 = ptrtoint ptr %io_port_base to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %io_port_base, align 4
  %add275 = add i32 %145, 219
  %and276 = and i32 %add275, 1048575
  %add277 = or i32 %and276, -18874368
  %146 = inttoptr i32 %add277 to ptr
  %147 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %146) #9, !srcloc !545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !771
  %conv281 = zext i8 %147 to i32
  %148 = ptrtoint ptr %pstat to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %pstat, align 2
  %conv282 = zext i16 %149 to i32
  %call283 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, i32 noundef %conv263, i32 noundef %conv272, i32 noundef %conv281, i32 noundef %conv282) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pstat) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trms1040_write_cmd(i32 noundef %io_port, i8 noundef zeroext %cmd, i8 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %io_port, 214
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %0 = inttoptr i32 %add4 to ptr
  %add.i = add i32 %io_port, 219
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %1 = inttoptr i32 %add1.i to ptr
  %add2.i = add i32 %io_port, 213
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %2 = inttoptr i32 %add4.i to ptr
  %3 = and i8 %cmd, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool.not, i8 1, i8 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !772
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %spec.select) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #9, !srcloc !547
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i = icmp sgt i8 %4, -1
  br i1 %tobool.not.i, label %while.cond.i.while.cond.i_crit_edge, label %trms1040_wait_30us.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

trms1040_wait_30us.exit:                          ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !773
  tail call void @arm_heavy_mb() #9
  %5 = or i8 %spec.select, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %5) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #9, !srcloc !547
  br label %while.cond.i86

while.cond.i86:                                   ; preds = %while.cond.i86.while.cond.i86_crit_edge, %trms1040_wait_30us.exit
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i85 = icmp sgt i8 %6, -1
  br i1 %tobool.not.i85, label %while.cond.i86.while.cond.i86_crit_edge, label %trms1040_wait_30us.exit87

while.cond.i86.while.cond.i86_crit_edge:          ; preds = %while.cond.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i86

trms1040_wait_30us.exit87:                        ; preds = %while.cond.i86
  %7 = and i8 %cmd, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.1 = icmp eq i8 %7, 0
  %spec.select.1 = select i1 %tobool.not.1, i8 1, i8 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !772
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %spec.select.1) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #9, !srcloc !547
  br label %while.cond.i.1

while.cond.i.1:                                   ; preds = %while.cond.i.1.while.cond.i.1_crit_edge, %trms1040_wait_30us.exit87
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i.1 = icmp sgt i8 %8, -1
  br i1 %tobool.not.i.1, label %while.cond.i.1.while.cond.i.1_crit_edge, label %trms1040_wait_30us.exit.1

while.cond.i.1.while.cond.i.1_crit_edge:          ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.1

trms1040_wait_30us.exit.1:                        ; preds = %while.cond.i.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !773
  tail call void @arm_heavy_mb() #9
  %9 = or i8 %spec.select.1, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %9) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #9, !srcloc !547
  br label %while.cond.i86.1

while.cond.i86.1:                                 ; preds = %while.cond.i86.1.while.cond.i86.1_crit_edge, %trms1040_wait_30us.exit.1
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i85.1 = icmp sgt i8 %10, -1
  br i1 %tobool.not.i85.1, label %while.cond.i86.1.while.cond.i86.1_crit_edge, label %trms1040_wait_30us.exit87.1

while.cond.i86.1.while.cond.i86.1_crit_edge:      ; preds = %while.cond.i86.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i86.1

trms1040_wait_30us.exit87.1:                      ; preds = %while.cond.i86.1
  %11 = and i8 %cmd, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.2 = icmp eq i8 %11, 0
  %spec.select.2 = select i1 %tobool.not.2, i8 1, i8 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !772
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %spec.select.2) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #9, !srcloc !547
  br label %while.cond.i.2

while.cond.i.2:                                   ; preds = %while.cond.i.2.while.cond.i.2_crit_edge, %trms1040_wait_30us.exit87.1
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i.2 = icmp sgt i8 %12, -1
  br i1 %tobool.not.i.2, label %while.cond.i.2.while.cond.i.2_crit_edge, label %trms1040_wait_30us.exit.2

while.cond.i.2.while.cond.i.2_crit_edge:          ; preds = %while.cond.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.2

trms1040_wait_30us.exit.2:                        ; preds = %while.cond.i.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !773
  tail call void @arm_heavy_mb() #9
  %13 = or i8 %spec.select.2, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %13) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #9, !srcloc !547
  br label %while.cond.i86.2

while.cond.i86.2:                                 ; preds = %while.cond.i86.2.while.cond.i86.2_crit_edge, %trms1040_wait_30us.exit.2
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i85.2 = icmp sgt i8 %14, -1
  br i1 %tobool.not.i85.2, label %while.cond.i86.2.while.cond.i86.2_crit_edge, label %while.cond.i86.2.for.body20_crit_edge

while.cond.i86.2.for.body20_crit_edge:            ; preds = %while.cond.i86.2
  br label %for.body20

while.cond.i86.2.while.cond.i86.2_crit_edge:      ; preds = %while.cond.i86.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i86.2

for.body20:                                       ; preds = %trms1040_wait_30us.exit105.for.body20_crit_edge, %while.cond.i86.2.for.body20_crit_edge
  %i.1118 = phi i32 [ %inc47, %trms1040_wait_30us.exit105.for.body20_crit_edge ], [ 0, %while.cond.i86.2.for.body20_crit_edge ]
  %addr.addr.0117 = phi i8 [ %shl49, %trms1040_wait_30us.exit105.for.body20_crit_edge ], [ %addr, %while.cond.i86.2.for.body20_crit_edge ]
  %15 = and i8 %addr.addr.0117, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool23.not = icmp eq i8 %15, 0
  %spec.select78 = select i1 %tobool23.not, i8 1, i8 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !774
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %spec.select78) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #9, !srcloc !547
  br label %while.cond.i95

while.cond.i95:                                   ; preds = %while.cond.i95.while.cond.i95_crit_edge, %for.body20
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i94 = icmp sgt i8 %16, -1
  br i1 %tobool.not.i94, label %while.cond.i95.while.cond.i95_crit_edge, label %trms1040_wait_30us.exit96

while.cond.i95.while.cond.i95_crit_edge:          ; preds = %while.cond.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i95

trms1040_wait_30us.exit96:                        ; preds = %while.cond.i95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !775
  tail call void @arm_heavy_mb() #9
  %17 = or i8 %spec.select78, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %17) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #9, !srcloc !547
  br label %while.cond.i104

while.cond.i104:                                  ; preds = %while.cond.i104.while.cond.i104_crit_edge, %trms1040_wait_30us.exit96
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i103 = icmp sgt i8 %18, -1
  br i1 %tobool.not.i103, label %while.cond.i104.while.cond.i104_crit_edge, label %trms1040_wait_30us.exit105

while.cond.i104.while.cond.i104_crit_edge:        ; preds = %while.cond.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i104

trms1040_wait_30us.exit105:                       ; preds = %while.cond.i104
  %inc47 = add nuw nsw i32 %i.1118, 1
  %shl49 = shl i8 %addr.addr.0117, 1
  %exitcond.not = icmp eq i32 %inc47, 7
  br i1 %exitcond.not, label %do.body52, label %trms1040_wait_30us.exit105.for.body20_crit_edge

trms1040_wait_30us.exit105.for.body20_crit_edge:  ; preds = %trms1040_wait_30us.exit105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20

do.body52:                                        ; preds = %trms1040_wait_30us.exit105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !776
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 1) #9, !srcloc !547
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #9, !srcloc !547
  br label %while.cond.i113

while.cond.i113:                                  ; preds = %while.cond.i113.while.cond.i113_crit_edge, %do.body52
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  %tobool.not.i112 = icmp sgt i8 %19, -1
  br i1 %tobool.not.i112, label %while.cond.i113.while.cond.i113_crit_edge, label %trms1040_wait_30us.exit114

while.cond.i113.while.cond.i113_crit_edge:        ; preds = %while.cond.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i113

trms1040_wait_30us.exit114:                       ; preds = %while.cond.i113
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @waiting_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -40
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  tail call fastcc void @waiting_process_next(ptr noundef %add.ptr)
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %host_lock10 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %host_lock10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_lock10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 255)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 255)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !45, !46, !48, !49, !51, !52, !53, !54, !55, !56, !57, !59, !61, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !84, !85, !86, !87, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !260, !262, !263, !264, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !282, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !301, !303, !304, !305, !307, !308, !309, !310, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !337, !339, !341, !342, !343, !344, !346, !347, !348, !350, !352, !354, !355, !356, !357, !359, !360, !361, !362, !364, !365, !366, !368, !369, !370, !371, !373, !374, !375, !376, !378, !379, !380, !381, !383, !384, !385, !387, !388, !389, !390, !392, !393, !394, !395, !397, !399, !401, !402, !403, !404, !406, !407, !408, !410, !411, !412, !413, !415, !416, !417, !419, !420, !421, !423, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !442, !444, !445, !446, !448, !450, !451, !452, !453, !455, !456, !457, !458, !460, !462, !463, !464, !465, !467, !468, !469, !471, !473, !474, !476, !477, !479, !480, !481, !482, !483, !485, !486, !487, !488, !489, !491, !492, !493, !494, !496, !497, !498, !500, !501, !502, !504, !505, !506, !508, !509, !510, !512, !513, !514, !516, !517, !518, !520, !521, !522, !524, !525, !527, !528, !529, !530, !532, !533, !534}
!llvm.module.flags = !{!535, !536, !537, !538, !539, !540, !541, !542}
!llvm.ident = !{!543}

!0 = !{ptr @__param_safe, !1, !"__param_safe", i1 false, i1 false}
!1 = !{!"../drivers/scsi/dc395x.c", i32 534, i32 1}
!2 = !{ptr @__UNIQUE_ID_safetype287, !1, !"__UNIQUE_ID_safetype287", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_safe288, !4, !"__UNIQUE_ID_safe288", i1 false, i1 false}
!4 = !{!"../drivers/scsi/dc395x.c", i32 535, i32 1}
!5 = !{ptr @__param_adapter_id, !6, !"__param_adapter_id", i1 false, i1 false}
!6 = !{!"../drivers/scsi/dc395x.c", i32 538, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_idtype289, !6, !"__UNIQUE_ID_adapter_idtype289", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_id290, !9, !"__UNIQUE_ID_adapter_id290", i1 false, i1 false}
!9 = !{!"../drivers/scsi/dc395x.c", i32 539, i32 1}
!10 = !{ptr @__param_max_speed, !11, !"__param_max_speed", i1 false, i1 false}
!11 = !{!"../drivers/scsi/dc395x.c", i32 541, i32 1}
!12 = !{ptr @__UNIQUE_ID_max_speedtype291, !11, !"__UNIQUE_ID_max_speedtype291", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_max_speed292, !14, !"__UNIQUE_ID_max_speed292", i1 false, i1 false}
!14 = !{!"../drivers/scsi/dc395x.c", i32 542, i32 1}
!15 = !{ptr @__param_dev_mode, !16, !"__param_dev_mode", i1 false, i1 false}
!16 = !{!"../drivers/scsi/dc395x.c", i32 544, i32 1}
!17 = !{ptr @__UNIQUE_ID_dev_modetype293, !16, !"__UNIQUE_ID_dev_modetype293", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_dev_mode294, !19, !"__UNIQUE_ID_dev_mode294", i1 false, i1 false}
!19 = !{!"../drivers/scsi/dc395x.c", i32 545, i32 1}
!20 = !{ptr @__param_adapter_mode, !21, !"__param_adapter_mode", i1 false, i1 false}
!21 = !{!"../drivers/scsi/dc395x.c", i32 547, i32 1}
!22 = !{ptr @__UNIQUE_ID_adapter_modetype295, !21, !"__UNIQUE_ID_adapter_modetype295", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_adapter_mode296, !24, !"__UNIQUE_ID_adapter_mode296", i1 false, i1 false}
!24 = !{!"../drivers/scsi/dc395x.c", i32 548, i32 1}
!25 = !{ptr @__param_tags, !26, !"__param_tags", i1 false, i1 false}
!26 = !{!"../drivers/scsi/dc395x.c", i32 550, i32 1}
!27 = !{ptr @__UNIQUE_ID_tagstype297, !26, !"__UNIQUE_ID_tagstype297", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_tags298, !29, !"__UNIQUE_ID_tags298", i1 false, i1 false}
!29 = !{!"../drivers/scsi/dc395x.c", i32 551, i32 1}
!30 = !{ptr @__param_reset_delay, !31, !"__param_reset_delay", i1 false, i1 false}
!31 = !{!"../drivers/scsi/dc395x.c", i32 553, i32 1}
!32 = !{ptr @__UNIQUE_ID_reset_delaytype299, !31, !"__UNIQUE_ID_reset_delaytype299", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_reset_delay300, !34, !"__UNIQUE_ID_reset_delay300", i1 false, i1 false}
!34 = !{!"../drivers/scsi/dc395x.c", i32 554, i32 1}
!35 = !{ptr @__initcall__kmod_dc395x__302_4683_dc395x_driver_init6, !36, !"__initcall__kmod_dc395x__302_4683_dc395x_driver_init6", i1 false, i1 false}
!36 = !{!"../drivers/scsi/dc395x.c", i32 4683, i32 1}
!37 = !{ptr @__exitcall_dc395x_driver_exit, !36, !"__exitcall_dc395x_driver_exit", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_author303, !39, !"__UNIQUE_ID_author303", i1 false, i1 false}
!39 = !{!"../drivers/scsi/dc395x.c", i32 4685, i32 1}
!40 = !{ptr @__UNIQUE_ID_description304, !41, !"__UNIQUE_ID_description304", i1 false, i1 false}
!41 = !{!"../drivers/scsi/dc395x.c", i32 4686, i32 1}
!42 = !{ptr @__UNIQUE_ID_file305, !43, !"__UNIQUE_ID_file305", i1 false, i1 false}
!43 = !{!"../drivers/scsi/dc395x.c", i32 4687, i32 1}
!44 = !{ptr @__UNIQUE_ID_license306, !43, !"__UNIQUE_ID_license306", i1 false, i1 false}
!45 = !{ptr @__param_str_safe, !1, !"__param_str_safe", i1 false, i1 false}
!46 = !{ptr @use_safe_settings, !47, !"use_safe_settings", i1 false, i1 false}
!47 = !{!"../drivers/scsi/dc395x.c", i32 533, i32 13}
!48 = !{ptr @__param_str_adapter_id, !6, !"__param_str_adapter_id", i1 false, i1 false}
!49 = !{ptr @cfg_data, !50, !"cfg_data", i1 false, i1 false}
!50 = !{!"../drivers/scsi/dc395x.c", i32 478, i32 29}
!51 = !{ptr @__param_str_max_speed, !11, !"__param_str_max_speed", i1 false, i1 false}
!52 = !{ptr @__param_str_dev_mode, !16, !"__param_str_dev_mode", i1 false, i1 false}
!53 = !{ptr @__param_str_adapter_mode, !21, !"__param_str_adapter_mode", i1 false, i1 false}
!54 = !{ptr @__param_str_tags, !26, !"__param_str_tags", i1 false, i1 false}
!55 = !{ptr @__param_str_reset_delay, !31, !"__param_str_reset_delay", i1 false, i1 false}
!56 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @dc395x_driver, !58, !"dc395x_driver", i1 false, i1 false}
!58 = !{!"../drivers/scsi/dc395x.c", i32 4677, i32 26}
!59 = !{ptr @dc395x_pci_table, !60, !"dc395x_pci_table", i1 false, i1 false}
!60 = !{!"../drivers/scsi/dc395x.c", i32 4665, i32 29}
!61 = !{ptr @.str.1, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/dc395x.c", i32 4597, i32 3}
!63 = !{ptr @.str.2, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.3, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @dc395x_init_one._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @dc395x_init_one._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.5, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/dc395x.c", i32 4609, i32 3}
!69 = !{ptr @dc395x_init_one._entry.4, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @dc395x_init_one._entry_ptr.6, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.8, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/dc395x.c", i32 4618, i32 3}
!73 = !{ptr @dc395x_init_one._entry.7, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @dc395x_init_one._entry_ptr.9, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.11, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/dc395x.c", i32 4627, i32 3}
!77 = !{ptr @dc395x_init_one._entry.10, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @dc395x_init_one._entry_ptr.12, !76, !"_entry_ptr", i1 false, i1 false}
!79 = distinct !{null, !80, !"banner_done", i1 false, i1 false}
!80 = !{!"../drivers/scsi/dc395x.c", i32 4562, i32 13}
!81 = !{ptr @.str.13, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/dc395x.c", i32 4565, i32 3}
!83 = !{ptr @.str.14, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @banner_display._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @banner_display._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.15, !82, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.16, !82, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.17, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/dc395x.c", i32 4542, i32 28}
!90 = !{ptr @dc395x_driver_template, !91, !"dc395x_driver_template", i1 false, i1 false}
!91 = !{!"../drivers/scsi/dc395x.c", i32 4538, i32 34}
!92 = !{ptr @.str.18, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/dc395x.c", i32 984, i32 3}
!94 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @dc395x_queue_command_lck._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @dc395x_queue_command_lck._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.21, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/dc395x.c", i32 993, i32 3}
!99 = !{ptr @dc395x_queue_command_lck._entry.20, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @dc395x_queue_command_lck._entry_ptr.22, !98, !"_entry_ptr", i1 false, i1 false}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!103 = !{ptr @.str.23, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.25, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/dc395x.c", i32 1365, i32 3}
!107 = !{ptr @.str.26, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @start_scsi._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @start_scsi._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.28, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/dc395x.c", i32 1445, i32 4}
!112 = !{ptr @start_scsi._entry.27, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @start_scsi._entry_ptr.29, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.30, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/dc395x.c", i32 1282, i32 3}
!116 = !{ptr @.str.31, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @build_wdtr._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @build_wdtr._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.32, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/dc395x.c", i32 1256, i32 3}
!121 = !{ptr @.str.33, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @build_sdtr._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @build_sdtr._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.34, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/dc395x.c", i32 1219, i32 2}
!126 = !{ptr @.str.35, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @dc395x_eh_abort._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @dc395x_eh_abort._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.37, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/dc395x.c", i32 1224, i32 3}
!131 = !{ptr @dc395x_eh_abort._entry.36, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @dc395x_eh_abort._entry_ptr.38, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.40, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/dc395x.c", i32 1235, i32 3}
!135 = !{ptr @dc395x_eh_abort._entry.39, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @dc395x_eh_abort._entry_ptr.41, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.43, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/dc395x.c", i32 1241, i32 3}
!139 = !{ptr @dc395x_eh_abort._entry.42, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @dc395x_eh_abort._entry_ptr.44, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.46, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/dc395x.c", i32 1244, i32 3}
!143 = !{ptr @dc395x_eh_abort._entry.45, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @dc395x_eh_abort._entry_ptr.47, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.48, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/dc395x.c", i32 1151, i32 2}
!147 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @__dc395x_eh_bus_reset._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @__dc395x_eh_bus_reset._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = distinct !{null, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/dc395x.c", i32 1179, i32 18}
!152 = !{ptr @clock_period, !153, !"clock_period", i1 false, i1 false}
!153 = !{!"../drivers/scsi/dc395x.c", i32 434, i32 11}
!154 = !{ptr @.str.51, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/dc395x.c", i32 3347, i32 2}
!156 = !{ptr @.str.52, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @doing_srb_done._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @doing_srb_done._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.54, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/dc395x.c", i32 3356, i32 4}
!161 = !{ptr @doing_srb_done._entry.53, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @doing_srb_done._entry_ptr.55, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.57, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/dc395x.c", i32 3372, i32 4}
!165 = !{ptr @doing_srb_done._entry.56, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @doing_srb_done._entry_ptr.58, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.60, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/dc395x.c", i32 3376, i32 4}
!169 = !{ptr @doing_srb_done._entry.59, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @doing_srb_done._entry_ptr.61, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.63, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/dc395x.c", i32 3385, i32 4}
!173 = !{ptr @doing_srb_done._entry.62, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @doing_srb_done._entry_ptr.64, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/dc395x.c", i32 3399, i32 4}
!177 = !{ptr @doing_srb_done._entry.65, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @doing_srb_done._entry_ptr.67, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/dc395x.c", i32 3404, i32 2}
!181 = !{ptr @doing_srb_done._entry.68, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @doing_srb_done._entry_ptr.70, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @current_sync_offset, !184, !"current_sync_offset", i1 false, i1 false}
!184 = !{!"../drivers/scsi/dc395x.c", i32 388, i32 12}
!185 = !{ptr @.str.71, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/dc395x.c", i32 4442, i32 14}
!187 = !{ptr @.str.72, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/dc395x.c", i32 4447, i32 16}
!189 = !{ptr @.str.73, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/dc395x.c", i32 4448, i32 16}
!191 = !{ptr @.str.74, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/dc395x.c", i32 4449, i32 35}
!193 = !{ptr @.str.75, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/dc395x.c", i32 4449, i32 44}
!195 = !{ptr @.str.76, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/dc395x.c", i32 4450, i32 16}
!197 = !{ptr @.str.77, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/dc395x.c", i32 4451, i32 16}
!199 = !{ptr @.str.78, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/dc395x.c", i32 4452, i32 16}
!201 = !{ptr @.str.79, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/dc395x.c", i32 4454, i32 16}
!203 = !{ptr @.str.80, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/dc395x.c", i32 4455, i32 16}
!205 = !{ptr @.str.81, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/dc395x.c", i32 4457, i32 16}
!207 = !{ptr @.str.82, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/dc395x.c", i32 4459, i32 16}
!209 = !{ptr @.str.83, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/dc395x.c", i32 4461, i32 16}
!211 = !{ptr @.str.84, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/dc395x.c", i32 4464, i32 16}
!213 = !{ptr @.str.85, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/dc395x.c", i32 4465, i32 16}
!215 = !{ptr @.str.86, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/dc395x.c", i32 4466, i32 16}
!217 = !{ptr @.str.87, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/dc395x.c", i32 4469, i32 4}
!219 = !{ptr @.str.88, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/dc395x.c", i32 4474, i32 17}
!221 = !{ptr @.str.89, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/dc395x.c", i32 4476, i32 3}
!223 = !{ptr @.str.90, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.91, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/dc395x.c", i32 4484, i32 18}
!226 = !{ptr @.str.92, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/dc395x.c", i32 4486, i32 18}
!228 = !{ptr @.str.93, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/dc395x.c", i32 4492, i32 18}
!230 = !{ptr @.str.94, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/dc395x.c", i32 4495, i32 16}
!232 = !{ptr @.str.95, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/dc395x.c", i32 4498, i32 17}
!234 = !{ptr @.str.96, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/dc395x.c", i32 4503, i32 15}
!236 = !{ptr @.str.97, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/dc395x.c", i32 4510, i32 18}
!238 = !{ptr @.str.98, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/dc395x.c", i32 4514, i32 18}
!240 = !{ptr @.str.99, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/dc395x.c", i32 4516, i32 18}
!242 = !{ptr @.str.100, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/dc395x.c", i32 4324, i32 3}
!244 = !{ptr @.str.101, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @adapter_init._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @adapter_init._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.103, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/dc395x.c", i32 4333, i32 3}
!249 = !{ptr @adapter_init._entry.102, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @adapter_init._entry_ptr.104, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.106, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/dc395x.c", i32 4350, i32 3}
!253 = !{ptr @adapter_init._entry.105, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @adapter_init._entry_ptr.107, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.108, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/dc395x.c", i32 1662, i32 3}
!257 = !{ptr @.str.109, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @dc395x_interrupt._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @dc395x_interrupt._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.111, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/dc395x.c", i32 1672, i32 3}
!262 = !{ptr @dc395x_interrupt._entry.110, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @dc395x_interrupt._entry_ptr.112, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.113, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/dc395x.c", i32 1555, i32 3}
!266 = !{ptr @.str.114, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @dc395x_handle_interrupt._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @dc395x_handle_interrupt._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.116, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/dc395x.c", i32 1575, i32 3}
!271 = !{ptr @dc395x_handle_interrupt._entry.115, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @dc395x_handle_interrupt._entry_ptr.117, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.119, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/dc395x.c", i32 1585, i32 4}
!275 = !{ptr @dc395x_handle_interrupt._entry.118, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @dc395x_handle_interrupt._entry_ptr.120, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.121, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/dc395x.c", i32 2872, i32 3}
!279 = !{ptr @.str.122, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @disconnect._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @disconnect._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = distinct !{null, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/dc395x.c", i32 2878, i32 19}
!284 = !{ptr @.str.125, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/dc395x.c", i32 2890, i32 3}
!286 = !{ptr @disconnect._entry.124, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @disconnect._entry_ptr.126, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.128, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/dc395x.c", i32 2898, i32 3}
!290 = !{ptr @disconnect._entry.127, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @disconnect._entry_ptr.129, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.131, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/dc395x.c", i32 2913, i32 5}
!294 = !{ptr @disconnect._entry.130, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @disconnect._entry_ptr.132, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.133, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/dc395x.c", i32 3242, i32 4}
!298 = !{ptr @.str.134, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @srb_done._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @srb_done._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.136, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/scsi/dc395x.c", i32 3334, i32 3}
!303 = !{ptr @srb_done._entry.135, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @srb_done._entry_ptr.137, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.138, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/scsi/dc395x.c", i32 3524, i32 3}
!307 = !{ptr @.str.139, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @request_sense._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @request_sense._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.140, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/dc395x.c", i32 2970, i32 18}
!312 = !{ptr @.str.141, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/dc395x.c", i32 2977, i32 4}
!314 = !{ptr @reselect._entry, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @reselect._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.143, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/dc395x.c", i32 3001, i32 3}
!318 = !{ptr @reselect._entry.142, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @reselect._entry_ptr.144, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.146, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/dc395x.c", i32 3007, i32 3}
!322 = !{ptr @reselect._entry.145, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @reselect._entry_ptr.147, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.149, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/dc395x.c", i32 3015, i32 3}
!326 = !{ptr @reselect._entry.148, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @reselect._entry_ptr.150, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.152, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/dc395x.c", i32 3029, i32 4}
!330 = !{ptr @reselect._entry.151, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @reselect._entry_ptr.153, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.154, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/dc395x.c", i32 3457, i32 2}
!334 = !{ptr @.str.155, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @scsi_reset_detect._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @scsi_reset_detect._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @dc395x_scsi_phase0, !338, !"dc395x_scsi_phase0", i1 false, i1 false}
!338 = !{!"../drivers/scsi/dc395x.c", i32 390, i32 14}
!339 = !{ptr @.str.156, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/scsi/dc395x.c", i32 1961, i32 4}
!341 = !{ptr @.str.157, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @data_out_phase0._entry, !340, !"_entry", i1 false, i1 false}
!343 = !{ptr @data_out_phase0._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.159, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/dc395x.c", i32 1994, i32 5}
!346 = !{ptr @data_out_phase0._entry.158, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @data_out_phase0._entry_ptr.160, !345, !"_entry_ptr", i1 false, i1 false}
!348 = distinct !{null, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/dc395x.c", i32 1859, i32 20}
!350 = distinct !{null, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/dc395x.c", i32 1866, i32 20}
!352 = !{ptr @.str.163, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/dc395x.c", i32 2048, i32 4}
!354 = !{ptr @.str.164, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @data_in_phase0._entry, !353, !"_entry", i1 false, i1 false}
!356 = !{ptr @data_in_phase0._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.165, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/scsi/dc395x.c", i32 2482, i32 3}
!359 = !{ptr @.str.166, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @msgin_qtag._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @msgin_qtag._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.168, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/scsi/dc395x.c", i32 2521, i32 2}
!364 = !{ptr @msgin_qtag._entry.167, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @msgin_qtag._entry_ptr.169, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.170, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/scsi/dc395x.c", i32 2540, i32 2}
!368 = !{ptr @.str.171, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @msgin_set_async._entry, !367, !"_entry", i1 false, i1 false}
!370 = !{ptr @msgin_set_async._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.172, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/scsi/dc395x.c", i32 2588, i32 3}
!373 = !{ptr @.str.173, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @msgin_set_sync._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @msgin_set_sync._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.175, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/scsi/dc395x.c", i32 2601, i32 2}
!378 = !{ptr @msgin_set_sync._entry.174, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @msgin_set_sync._entry_ptr.176, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.177, !377, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.179, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/scsi/dc395x.c", i32 2611, i32 3}
!383 = !{ptr @msgin_set_sync._entry.178, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @msgin_set_sync._entry_ptr.180, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.181, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/scsi/dc395x.c", i32 2663, i32 3}
!387 = !{ptr @.str.182, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @msgin_set_wide._entry, !386, !"_entry", i1 false, i1 false}
!389 = !{ptr @msgin_set_wide._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.183, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/scsi/dc395x.c", i32 2467, i32 2}
!392 = !{ptr @.str.184, !391, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @msgin_reject._entry, !391, !"_entry", i1 false, i1 false}
!394 = !{ptr @msgin_reject._entry_ptr, !391, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @dc395x_scsi_phase1, !396, !"dc395x_scsi_phase1", i1 false, i1 false}
!396 = !{!"../drivers/scsi/dc395x.c", i32 401, i32 14}
!397 = distinct !{null, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/scsi/dc395x.c", i32 2017, i32 18}
!399 = !{ptr @.str.186, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/scsi/dc395x.c", i32 2255, i32 3}
!401 = !{ptr @.str.187, !400, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @data_io_transfer._entry, !400, !"_entry", i1 false, i1 false}
!403 = !{ptr @data_io_transfer._entry_ptr, !400, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.189, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/scsi/dc395x.c", i32 2268, i32 4}
!406 = !{ptr @data_io_transfer._entry.188, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @data_io_transfer._entry_ptr.190, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.191, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/scsi/dc395x.c", i32 1051, i32 4}
!410 = !{ptr @.str.192, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @dump_register_info._entry, !409, !"_entry", i1 false, i1 false}
!412 = !{ptr @dump_register_info._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.194, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/scsi/dc395x.c", i32 1054, i32 4}
!415 = !{ptr @dump_register_info._entry.193, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @dump_register_info._entry_ptr.195, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.197, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/scsi/dc395x.c", i32 1059, i32 3}
!419 = !{ptr @dump_register_info._entry.196, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @dump_register_info._entry_ptr.198, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.200, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/scsi/dc395x.c", i32 1062, i32 3}
!423 = !{ptr @dump_register_info._entry.199, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @dump_register_info._entry_ptr.201, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.202, !422, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @.str.204, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/scsi/dc395x.c", i32 1066, i32 2}
!428 = !{ptr @dump_register_info._entry.203, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @dump_register_info._entry_ptr.205, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.207, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/scsi/dc395x.c", i32 1083, i32 2}
!432 = !{ptr @dump_register_info._entry.206, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @dump_register_info._entry_ptr.208, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.210, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/scsi/dc395x.c", i32 1096, i32 2}
!436 = !{ptr @dump_register_info._entry.209, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @dump_register_info._entry_ptr.211, !435, !"_entry_ptr", i1 false, i1 false}
!438 = distinct !{null, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/scsi/dc395x.c", i32 1744, i32 18}
!440 = !{ptr @.str.213, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/scsi/dc395x.c", i32 1701, i32 18}
!442 = !{ptr @.str.214, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/scsi/dc395x.c", i32 1704, i32 3}
!444 = !{ptr @msgout_phase1._entry, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @msgout_phase1._entry_ptr, !443, !"_entry_ptr", i1 false, i1 false}
!446 = distinct !{null, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/scsi/dc395x.c", i32 2819, i32 18}
!448 = !{ptr @.str.216, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/scsi/dc395x.c", i32 3999, i32 3}
!450 = !{ptr @.str.217, !449, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @check_eeprom._entry, !449, !"_entry", i1 false, i1 false}
!452 = !{ptr @check_eeprom._entry_ptr, !449, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.218, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/scsi/dc395x.c", i32 567, i32 3}
!455 = !{ptr @.str.219, !454, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @set_safe_settings._entry, !454, !"_entry", i1 false, i1 false}
!457 = !{ptr @set_safe_settings._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @eeprom_index_to_delay_map, !459, !"eeprom_index_to_delay_map", i1 false, i1 false}
!459 = !{!"../drivers/scsi/dc395x.c", i32 607, i32 13}
!460 = !{ptr @.str.220, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/scsi/dc395x.c", i32 4052, i32 2}
!462 = !{ptr @.str.221, !461, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @print_eeprom_settings._entry, !461, !"_entry", i1 false, i1 false}
!464 = !{ptr @print_eeprom_settings._entry_ptr, !461, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.223, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/scsi/dc395x.c", i32 4058, i32 2}
!467 = !{ptr @print_eeprom_settings._entry.222, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @print_eeprom_settings._entry_ptr.224, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @clock_speed, !470, !"clock_speed", i1 false, i1 false}
!470 = !{!"../drivers/scsi/dc395x.c", i32 435, i32 12}
!471 = !{ptr @adapter_init_params.__key, !472, !"__key", i1 false, i1 false}
!472 = !{!"../drivers/scsi/dc395x.c", i32 4184, i32 2}
!473 = !{ptr @.str.225, !472, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @adapter_init_params.__key.226, !475, !"__key", i1 false, i1 false}
!475 = !{!"../drivers/scsi/dc395x.c", i32 4185, i32 2}
!476 = !{ptr @.str.227, !475, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @.str.228, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/scsi/dc395x.c", i32 4129, i32 2}
!479 = !{ptr @.str.229, !478, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @adapter_print_config._entry, !478, !"_entry", i1 false, i1 false}
!481 = !{ptr @adapter_print_config._entry_ptr, !478, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.230, !478, !"<string literal>", i1 false, i1 false}
!483 = !{ptr @.str.232, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/scsi/dc395x.c", i32 4132, i32 3}
!485 = !{ptr @adapter_print_config._entry.231, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @adapter_print_config._entry_ptr.233, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.234, !484, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @.str.235, !484, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @.str.237, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/scsi/dc395x.c", i32 4134, i32 3}
!491 = !{ptr @adapter_print_config._entry.236, !490, !"_entry", i1 false, i1 false}
!492 = !{ptr @adapter_print_config._entry_ptr.238, !490, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.239, !490, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @.str.241, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/scsi/dc395x.c", i32 4136, i32 3}
!496 = !{ptr @adapter_print_config._entry.240, !495, !"_entry", i1 false, i1 false}
!497 = !{ptr @adapter_print_config._entry_ptr.242, !495, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.244, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/scsi/dc395x.c", i32 4139, i32 3}
!500 = !{ptr @adapter_print_config._entry.243, !499, !"_entry", i1 false, i1 false}
!501 = !{ptr @adapter_print_config._entry_ptr.245, !499, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.247, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/scsi/dc395x.c", i32 4141, i32 2}
!504 = !{ptr @adapter_print_config._entry.246, !503, !"_entry", i1 false, i1 false}
!505 = !{ptr @adapter_print_config._entry_ptr.248, !503, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @.str.250, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/scsi/dc395x.c", i32 4143, i32 3}
!508 = !{ptr @adapter_print_config._entry.249, !507, !"_entry", i1 false, i1 false}
!509 = !{ptr @adapter_print_config._entry_ptr.251, !507, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @.str.253, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/scsi/dc395x.c", i32 4146, i32 4}
!512 = !{ptr @adapter_print_config._entry.252, !511, !"_entry", i1 false, i1 false}
!513 = !{ptr @adapter_print_config._entry_ptr.254, !511, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.256, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/scsi/dc395x.c", i32 4148, i32 4}
!516 = !{ptr @adapter_print_config._entry.255, !515, !"_entry", i1 false, i1 false}
!517 = !{ptr @adapter_print_config._entry_ptr.257, !515, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.259, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/scsi/dc395x.c", i32 4150, i32 4}
!520 = !{ptr @adapter_print_config._entry.258, !519, !"_entry", i1 false, i1 false}
!521 = !{ptr @adapter_print_config._entry_ptr.260, !519, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @adapter_print_config._entry.261, !523, !"_entry", i1 false, i1 false}
!523 = !{!"../drivers/scsi/dc395x.c", i32 4151, i32 3}
!524 = !{ptr @adapter_print_config._entry_ptr.262, !523, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.263, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/scsi/dc395x.c", i32 4109, i32 3}
!527 = !{ptr @.str.264, !526, !"<string literal>", i1 false, i1 false}
!528 = !{ptr @adapter_sg_tables_alloc._entry, !526, !"_entry", i1 false, i1 false}
!529 = !{ptr @adapter_sg_tables_alloc._entry_ptr, !526, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @.str.265, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/scsi/dc395x.c", i32 4290, i32 3}
!532 = !{ptr @.str.266, !531, !"<string literal>", i1 false, i1 false}
!533 = !{ptr @adapter_init_chip._entry, !531, !"_entry", i1 false, i1 false}
!534 = !{ptr @adapter_init_chip._entry_ptr, !531, !"_entry_ptr", i1 false, i1 false}
!535 = !{i32 1, !"wchar_size", i32 2}
!536 = !{i32 1, !"min_enum_size", i32 4}
!537 = !{i32 8, !"branch-target-enforcement", i32 0}
!538 = !{i32 8, !"sign-return-address", i32 0}
!539 = !{i32 8, !"sign-return-address-all", i32 0}
!540 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!541 = !{i32 7, !"uwtable", i32 1}
!542 = !{i32 7, !"frame-pointer", i32 2}
!543 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!544 = !{i64 2155509193}
!545 = !{i64 6301541}
!546 = !{i64 2155509000}
!547 = !{i64 6301146}
!548 = !{i64 2155507349}
!549 = !{i64 2155499380}
!550 = !{i64 2155499797}
!551 = !{i64 2155507698}
!552 = !{i64 2155508115}
!553 = !{i64 2155508338}
!554 = !{i64 2155510050}
!555 = !{i64 2155509855}
!556 = !{i8 0, i8 2}
!557 = !{i64 2155505445}
!558 = !{i64 2155505252}
!559 = !{i64 2155505786}
!560 = !{i64 2155501833}
!561 = !{i64 2155502197}
!562 = !{i64 2155502546}
!563 = !{i64 2155502887}
!564 = !{i64 2155503236}
!565 = !{i64 2155503601}
!566 = !{i64 2155503950}
!567 = !{i64 2155504367}
!568 = !{i64 2155504590}
!569 = !{i64 2155506127}
!570 = !{i64 2155506984}
!571 = !{i64 2155506789}
!572 = !{i64 2155519339}
!573 = !{i64 2155526444}
!574 = !{i64 2155534704}
!575 = !{i64 2155535141}
!576 = !{i64 2155535625}
!577 = !{i64 6300723}
!578 = !{i64 2155536176}
!579 = !{i64 2155537240}
!580 = !{i64 2155539237}
!581 = !{i64 2155545430}
!582 = !{i64 2155545861}
!583 = !{i64 2155469986}
!584 = !{i64 2155470607}
!585 = !{i64 2155546378}
!586 = !{!"branch_weights", i32 1, i32 2000}
!587 = !{i64 2155214639, i64 2155215125, i64 2155214676, i64 2155214732, i64 2155214766, i64 2155214790, i64 2155214831, i64 2155214852, i64 2155214880, i64 2155214914}
!588 = !{!"branch_weights", i32 2000, i32 1}
!589 = !{i64 2155266167}
!590 = !{i64 2155266604}
!591 = !{i64 2155267052}
!592 = !{i64 2155267494}
!593 = !{i64 2155268512}
!594 = !{i64 2155260450}
!595 = !{i64 2155269024}
!596 = !{i64 2155548028}
!597 = !{i64 2155281644}
!598 = !{i64 6300923}
!599 = !{i64 2155282426}
!600 = !{i64 2155285532}
!601 = !{i64 2155286372}
!602 = !{i64 2155286829}
!603 = !{i64 2155287290}
!604 = !{i64 2155287751}
!605 = !{i64 2155288398}
!606 = !{i64 2155291489}
!607 = !{i64 2155291938}
!608 = !{i64 2155290919}
!609 = !{i64 2155292424}
!610 = !{i64 2155292897}
!611 = !{i64 2155293328}
!612 = !{i64 2155293759}
!613 = !{i64 2155294195}
!614 = !{i64 2155294626}
!615 = !{i64 2155295067}
!616 = !{i64 2155295576}
!617 = !{i64 2155296623}
!618 = !{i64 2155297029}
!619 = !{i64 2155297607}
!620 = !{i64 2155470935}
!621 = !{i64 2155471412}
!622 = !{i64 2155471849}
!623 = !{i64 2155472324}
!624 = !{i64 2155472761}
!625 = !{i64 2155473681}
!626 = !{i64 2155474016}
!627 = !{i64 2155475041}
!628 = !{i64 2155475397}
!629 = !{i64 2155476014}
!630 = !{i64 2155476313}
!631 = !{i64 2155476774}
!632 = !{i64 2155305633}
!633 = !{i64 2155306007}
!634 = !{i64 2155299501}
!635 = !{i64 2155404983}
!636 = !{i64 2155405609}
!637 = !{i64 2155411497}
!638 = !{i64 880120, i64 880181}
!639 = !{i64 882852}
!640 = !{i64 883137}
!641 = !{i64 2155412349}
!642 = !{i64 2155414539}
!643 = !{i64 2155418773}
!644 = !{i64 2155298345}
!645 = !{i64 2155423211}
!646 = !{i64 2155423668}
!647 = !{i64 2155424129}
!648 = !{i64 2155424590}
!649 = !{i64 2155425074}
!650 = !{i64 2155425625}
!651 = !{i64 2155478840}
!652 = !{i64 2155479282}
!653 = !{i64 2155323846}
!654 = !{i64 2155324395}
!655 = !{i64 6301761}
!656 = !{i64 2155325200}
!657 = !{i64 2155331057}
!658 = !{i64 2155331855}
!659 = !{i64 2155332229}
!660 = !{i64 2155332579}
!661 = !{i64 2155333710}
!662 = !{i64 2155335305}
!663 = !{i64 2155336201}
!664 = !{i64 2155337715}
!665 = !{i64 2155314601}
!666 = !{i64 2155365890}
!667 = !{i64 2155366264}
!668 = !{i64 2155366622}
!669 = !{i64 2155367173}
!670 = !{i64 2155309855}
!671 = !{i64 2155395164}
!672 = !{i64 2155376835}
!673 = !{i64 2155395542}
!674 = !{i64 2155382655}
!675 = !{i64 2155369138}
!676 = !{i64 2155396363}
!677 = !{i64 2155396982}
!678 = !{i64 2155397533}
!679 = !{i64 2155320518}
!680 = !{i64 2155320892}
!681 = !{i64 2155321266}
!682 = !{i64 2155321570}
!683 = !{i64 2155322082}
!684 = !{i64 2155322386}
!685 = !{i64 2155322898}
!686 = !{i64 2155323244}
!687 = !{i64 2155391211}
!688 = !{i64 2155389477}
!689 = !{i64 2155390210}
!690 = !{i64 2155393722}
!691 = !{i64 2155394504}
!692 = !{i64 2155379258}
!693 = !{i64 2155379719}
!694 = !{i64 2155380180}
!695 = !{i64 2155315210}
!696 = !{i64 2155315772}
!697 = !{i64 2155316214}
!698 = !{i64 2155316687}
!699 = !{i64 2155317118}
!700 = !{i64 2155317549}
!701 = !{i64 2155317985}
!702 = !{i64 2155318416}
!703 = !{i64 2155318907}
!704 = !{i64 2155319458}
!705 = !{i64 2155367680}
!706 = !{i64 2155368231}
!707 = !{i64 2155312176}
!708 = !{i64 2155312660}
!709 = !{i64 2155313211}
!710 = !{i64 2155313652}
!711 = !{i64 2155314101}
!712 = !{i64 2155398016}
!713 = !{i64 6301343}
!714 = !{i64 2155398620}
!715 = !{i64 2155399171}
!716 = !{i64 2155341929}
!717 = !{i64 2155344047}
!718 = !{i64 2155344521}
!719 = !{i64 2155345248}
!720 = !{i64 2155346076}
!721 = !{i64 2155346801}
!722 = !{i64 2155347461}
!723 = !{i64 2155348115}
!724 = !{i64 2155348740}
!725 = !{i64 2155349773}
!726 = !{i64 2155350910}
!727 = !{i64 2155351428}
!728 = !{i64 2155352053}
!729 = !{i64 2155352609}
!730 = !{i64 2155353056}
!731 = !{i64 2155355341}
!732 = !{i64 2155356571}
!733 = !{i64 2155358207}
!734 = !{i64 2155359842}
!735 = !{i64 2155360876}
!736 = !{i64 2155361393}
!737 = !{i64 2155361767}
!738 = !{i64 2155362064}
!739 = !{i64 2155362499}
!740 = !{i64 2155362930}
!741 = !{i64 2155364013}
!742 = !{i64 2155364310}
!743 = !{i64 2155364801}
!744 = !{i64 2155365362}
!745 = !{!"auto-init"}
!746 = !{i64 2155237219}
!747 = !{i64 2155237593}
!748 = !{i64 2155237967}
!749 = !{i64 2155238341}
!750 = !{i64 2155238715}
!751 = !{i64 2155239089}
!752 = !{i64 2155239463}
!753 = !{i64 2155240245}
!754 = !{i64 2155240619}
!755 = !{i64 2155241401}
!756 = !{i64 2155241775}
!757 = !{i64 2155242149}
!758 = !{i64 2155242523}
!759 = !{i64 2155251077}
!760 = !{i64 2155251451}
!761 = !{i64 2155251825}
!762 = !{i64 2155252199}
!763 = !{i64 2155252573}
!764 = !{i64 2155253355}
!765 = !{i64 2155254137}
!766 = !{i64 2155254919}
!767 = !{i64 2155255701}
!768 = !{i64 2155256483}
!769 = !{i64 2155259183}
!770 = !{i64 2155259557}
!771 = !{i64 2155259931}
!772 = !{i64 2155500038}
!773 = !{i64 2155500402}
!774 = !{i64 2155500761}
!775 = !{i64 2155501125}
!776 = !{i64 2155501474}
