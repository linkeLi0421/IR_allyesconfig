; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ttpci/budget.c_pt.bc'
source_filename = "../drivers/media/pci/ttpci/budget.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.saa7146_extension = type { [32 x i8], i32, ptr, %struct.pci_driver, ptr, ptr, ptr, ptr, i32, ptr }
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
%struct.saa7146_pci_extension_data = type { ptr, ptr }
%struct.budget_info = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ves1x93_config = type { i8, i32, i8 }
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
%struct.ves1820_config = type { i8, i32, i8 }
%struct.l64781_config = type { i8 }
%struct.tda8083_config = type { i8 }
%struct.tda1004x_config = type { i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, ptr }
%struct.s5h1420_config = type { i8, i8 }
%struct.tda10086_config = type { i8, i8, i8, i32 }
%struct.stv090x_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, i32, i8, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stv6110x_config = type { i8, i32, i8, ptr, ptr }
%struct.isl6423_config = type { i32, i32, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.saa7146_dev = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, ptr, i32, [32 x i8], ptr, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.saa7146_dma, %struct.wait_queue_head, i32, %struct.saa7146_dma, %struct.saa7146_dma }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.saa7146_dma = type { i32, ptr }
%struct.budget = type { %struct.dvb_device, %struct.dvb_net, ptr, %struct.i2c_adapter, ptr, ptr, %struct.saa7146_pgtable, %struct.tasklet_struct, %struct.tasklet_struct, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dmx_frontend, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.dvb_adapter, ptr, ptr, i32, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.saa7146_pgtable = type { i32, ptr, i32, i32, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.142, i32 }
%union.anon.142 = type { ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.124, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.124 = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.148], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.148 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.149 }>
%union.anon.149 = type { i64 }
%struct.stv6110x_devctl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@__param_str_diseqc_method = internal constant [21 x i8] c"budget.diseqc_method\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@diseqc_method = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_diseqc_method = internal constant %struct.kernel_param { ptr @__param_str_diseqc_method, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @diseqc_method } }, section "__param", align 4
@__UNIQUE_ID_diseqc_methodtype385 = internal constant [34 x i8] c"budget.parmtype=diseqc_method:int\00", section ".modinfo", align 1
@__UNIQUE_ID_diseqc_method386 = internal constant [131 x i8] c"budget.parm=diseqc_method:Select DiSEqC method for subsystem id 13c2:1003, 0: default, 1: more reliable (for newer revisions only)\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [18 x i8] c"budget.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype387 = internal constant [42 x i8] c"budget.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr388 = internal constant [43 x i8] c"budget.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@budget_extension = internal global { %struct.saa7146_extension, [36 x i8] } { %struct.saa7146_extension { [32 x i8] c"budget dvb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, ptr null, %struct.pci_driver zeroinitializer, ptr @pci_tbl, ptr null, ptr @budget_attach, ptr @budget_detach, i32 1024, ptr @ttpci_budget_irq10_handler }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_budget__389_878_budget_init6 = internal global ptr @budget_init, section ".initcall6.init", align 4
@__exitcall_budget_exit = internal global ptr @budget_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file390 = internal constant [43 x i8] c"budget.file=drivers/media/pci/ttpci/budget\00", section ".modinfo", align 1
@__UNIQUE_ID_license391 = internal constant [19 x i8] c"budget.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author392 = internal constant [68 x i8] c"budget.author=Ralph Metzler, Marcus Metzler, Michael Hunold, others\00", section ".modinfo", align 1
@__UNIQUE_ID_description393 = internal constant [114 x i8] c"budget.description=driver for the SAA7146 based so-called budget PCI DVB cards by Siemens, Technotrend, Hauppauge\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@pci_tbl = internal constant { [14 x %struct.pci_device_id], [96 x i8] } { [14 x %struct.pci_device_id] [%struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4099, i32 0, i32 0, i32 ptrtoint (ptr @ttbs to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4100, i32 0, i32 0, i32 ptrtoint (ptr @ttbc to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4101, i32 0, i32 0, i32 ptrtoint (ptr @ttbt to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4115, i32 0, i32 0, i32 ptrtoint (ptr @satel to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4118, i32 0, i32 0, i32 ptrtoint (ptr @ttbs to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4120, i32 0, i32 0, i32 ptrtoint (ptr @ttbs1401 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4124, i32 0, i32 0, i32 ptrtoint (ptr @tt1600 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 4401, i32 20320, i32 0, i32 0, i32 ptrtoint (ptr @fsacs1 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 4401, i32 20321, i32 0, i32 0, i32 ptrtoint (ptr @fsacs0 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 4401, i32 24416, i32 0, i32 0, i32 ptrtoint (ptr @fsact1 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 4401, i32 24417, i32 0, i32 0, i32 ptrtoint (ptr @fsact to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5316, i32 4128, i32 0, i32 0, i32 ptrtoint (ptr @omicom to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 4401, i32 20306, i32 0, i32 0, i32 ptrtoint (ptr @sylt to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@ttbs = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @ttbs_info }, [24 x i8] zeroinitializer }, align 32
@ttbc = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @ttbc_info }, [24 x i8] zeroinitializer }, align 32
@ttbt = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @ttbt_info }, [24 x i8] zeroinitializer }, align 32
@satel = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @satel_info }, [24 x i8] zeroinitializer }, align 32
@ttbs1401 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @ttbs1401_info }, [24 x i8] zeroinitializer }, align 32
@tt1600 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @tt1600_info }, [24 x i8] zeroinitializer }, align 32
@fsacs1 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @fsacs1_info }, [24 x i8] zeroinitializer }, align 32
@fsacs0 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @fsacs0_info }, [24 x i8] zeroinitializer }, align 32
@fsact1 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @fsact1_info }, [24 x i8] zeroinitializer }, align 32
@fsact = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @fsact_info }, [24 x i8] zeroinitializer }, align 32
@omicom = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @omicom_info }, [24 x i8] zeroinitializer }, align 32
@sylt = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @sylt_info }, [24 x i8] zeroinitializer }, align 32
@ttbs_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TT-Budget/WinTV-NOVA-S  PCI\00", [36 x i8] zeroinitializer }, align 32
@ttbc_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.1, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TT-Budget/WinTV-NOVA-C  PCI\00", [36 x i8] zeroinitializer }, align 32
@ttbt_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.2, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TT-Budget/WinTV-NOVA-T  PCI\00", [36 x i8] zeroinitializer }, align 32
@satel_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.3, i32 1 }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SATELCO Multimedia PCI\00", [41 x i8] zeroinitializer }, align 32
@ttbs1401_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.4, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TT-Budget-S-1401 PCI\00", [43 x i8] zeroinitializer }, align 32
@tt1600_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.5, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TT-Budget S2-1600 PCI\00", [42 x i8] zeroinitializer }, align 32
@fsacs1_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.6, i32 4 }, [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Fujitsu Siemens Activy Budget-S PCI (rev AL/alps frontend)\00", [37 x i8] zeroinitializer }, align 32
@fsacs0_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.7, i32 4 }, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Fujitsu Siemens Activy Budget-S PCI (rev GR/grundig frontend)\00", [34 x i8] zeroinitializer }, align 32
@fsact1_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.8, i32 4 }, [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Fujitsu Siemens Activy Budget-T PCI (rev AL/ALPS TDHD1-204A)\00", [35 x i8] zeroinitializer }, align 32
@fsact_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.9, i32 4 }, [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Fujitsu Siemens Activy Budget-T PCI (rev GR/Grundig frontend)\00", [34 x i8] zeroinitializer }, align 32
@omicom_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.10, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Omicom S2 PCI\00", [18 x i8] zeroinitializer }, align 32
@sylt_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.11, i32 1 }, [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Philips Semi Sylt PCI\00", [42 x i8] zeroinitializer }, align 32
@budget_debug = external dso_local local_unnamed_addr global i32, align 4
@budget_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017budget: %s(): dev:%p, info:%p, budget:%p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"budget_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/pci/ttpci/budget.c\00", [63 x i8] zeroinitializer }, align 32
@budget_attach._entry_ptr = internal global ptr @budget_attach._entry, section ".printk_index", align 4
@budget_attach._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.14, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"==> failed\0A\00", [20 x i8] zeroinitializer }, align 32
@budget_attach._entry_ptr.17 = internal global ptr @budget_attach._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ves1x93_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:ves1x93_attach\00", [42 x i8] zeroinitializer }, align 32
@alps_bsrv2_config = internal global { %struct.ves1x93_config, [20 x i8] } { %struct.ves1x93_config { i8 8, i32 90100000, i8 0 }, [20 x i8] zeroinitializer }, align 32
@frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.14, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol ves1x93_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"frontend_init\00", [18 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr = internal global ptr @frontend_init._entry, section ".printk_index", align 4
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0299_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0299_attach\00", [42 x i8] zeroinitializer }, align 32
@alps_bsru6_config = internal global { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @alps_bsru6_inittab, i32 88000000, i8 -104, i32 100, ptr @alps_bsru6_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.14, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0299_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.26 = internal global ptr @frontend_init._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ves1820_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:ves1820_attach\00", [42 x i8] zeroinitializer }, align 32
@alps_tdbe2_config = internal global { %struct.ves1820_config, [20 x i8] } { %struct.ves1820_config { i8 9, i32 57840000, i8 -64 }, [20 x i8] zeroinitializer }, align 32
@frontend_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.21, ptr @.str.14, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol ves1820_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.31 = internal global ptr @frontend_init._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l64781_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:l64781_attach\00", [43 x i8] zeroinitializer }, align 32
@grundig_29504_401_config = internal global { %struct.l64781_config, [31 x i8] } { %struct.l64781_config { i8 85 }, [31 x i8] zeroinitializer }, align 32
@frontend_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.14, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol l64781_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.36 = internal global ptr @frontend_init._entry.34, section ".printk_index", align 4
@frontend_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.14, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.38 = internal global ptr @frontend_init._entry.37, section ".printk_index", align 4
@frontend_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.21, ptr @.str.14, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016budget: tuner ALPS BSRU6 in Philips Semi. Sylt detected\0A\00", [37 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.41 = internal global ptr @frontend_init._entry.39, section ".printk_index", align 4
@alps_bsru6_config_activy = internal constant { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @alps_bsru6_inittab, i32 88000000, i8 -124, i32 100, ptr @alps_bsru6_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.14, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.43 = internal global ptr @frontend_init._entry.42, section ".printk_index", align 4
@frontend_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.21, ptr @.str.14, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016budget: tuner ALPS BSRU6 detected\0A\00", [59 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.46 = internal global ptr @frontend_init._entry.44, section ".printk_index", align 4
@alps_bsbe1_config_activy = internal constant { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @alps_bsbe1_inittab, i32 88000000, i8 -124, i32 100, ptr @alps_bsbe1_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.14, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.48 = internal global ptr @frontend_init._entry.47, section ".printk_index", align 4
@frontend_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.21, ptr @.str.14, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016budget: tuner ALPS BSBE1 detected\0A\00", [59 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.51 = internal global ptr @frontend_init._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda8083_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda8083_attach\00", [42 x i8] zeroinitializer }, align 32
@grundig_29504_451_config = internal global { %struct.tda8083_config, [31 x i8] } { %struct.tda8083_config { i8 104 }, [31 x i8] zeroinitializer }, align 32
@frontend_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.21, ptr @.str.14, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda8083_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.56 = internal global ptr @frontend_init._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10046_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10046_attach\00", [41 x i8] zeroinitializer }, align 32
@alps_tdhd1_204a_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @alps_tdhd1_204_request_firmware }, [32 x i8] zeroinitializer }, align 32
@frontend_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.21, ptr @.str.14, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10046_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.61 = internal global ptr @frontend_init._entry.59, section ".printk_index", align 4
@grundig_29504_401_config_activy = internal global { %struct.l64781_config, [31 x i8] } { %struct.l64781_config { i8 84 }, [31 x i8] zeroinitializer }, align 32
@frontend_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.14, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.63 = internal global ptr @frontend_init._entry.62, section ".printk_index", align 4
@tuner_address_grundig_29504_401_activy = internal global { i8, [31 x i8] } { i8 96, [31 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1420_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1420_attach\00", [42 x i8] zeroinitializer }, align 32
@s5h1420_config = internal global { %struct.s5h1420_config, [30 x i8] } { %struct.s5h1420_config { i8 83, i8 -96 }, [30 x i8] zeroinitializer }, align 32
@frontend_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.21, ptr @.str.14, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1420_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.68 = internal global ptr @frontend_init._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbp21_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lnbp21_attach\00", [43 x i8] zeroinitializer }, align 32
@frontend_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.21, ptr @.str.14, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lnbp21_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.73 = internal global ptr @frontend_init._entry.71, section ".printk_index", align 4
@frontend_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.21, ptr @.str.14, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: No LNBP21 found!\0A\00", [42 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.76 = internal global ptr @frontend_init._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10086_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10086_attach\00", [41 x i8] zeroinitializer }, align 32
@tda10086_config = internal global { %struct.tda10086_config, [24 x i8] } { %struct.tda10086_config { i8 14, i8 0, i8 1, i32 0 }, [24 x i8] zeroinitializer }, align 32
@frontend_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.21, ptr @.str.14, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10086_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.81 = internal global ptr @frontend_init._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda826x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda826x_attach\00", [42 x i8] zeroinitializer }, align 32
@frontend_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.21, ptr @.str.14, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda826x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.86 = internal global ptr @frontend_init._entry.84, section ".printk_index", align 4
@frontend_init._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.21, ptr @.str.14, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: No tda826x found!\0A\00", [41 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.89 = internal global ptr @frontend_init._entry.87, section ".printk_index", align 4
@frontend_init._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.21, ptr @.str.14, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.91 = internal global ptr @frontend_init._entry.90, section ".printk_index", align 4
@frontend_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.21, ptr @.str.14, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.93 = internal global ptr @frontend_init._entry.92, section ".printk_index", align 4
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv090x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv090x_attach\00", [42 x i8] zeroinitializer }, align 32
@tt1600_stv090x_config = internal global { %struct.stv090x_config, [48 x i8] } { %struct.stv090x_config { i32 0, i32 1, i32 2, i32 0, i32 13500000, i8 104, i8 4, i8 2, i32 0, i32 0, i8 0, i32 4, i8 0, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@frontend_init._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.21, ptr @.str.14, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv090x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.98 = internal global ptr @frontend_init._entry.96, section ".printk_index", align 4
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stv6110x_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:stv6110x_attach\00", [41 x i8] zeroinitializer }, align 32
@tt1600_stv6110x_config = internal global { %struct.stv6110x_config, [44 x i8] } { %struct.stv6110x_config { i8 96, i32 27000000, i8 2, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@frontend_init._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.21, ptr @.str.14, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol stv6110x_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.103 = internal global ptr @frontend_init._entry.101, section ".printk_index", align 4
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isl6423_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:isl6423_attach\00", [42 x i8] zeroinitializer }, align 32
@tt1600_isl6423_config = internal global { %struct.isl6423_config, [20 x i8] } { %struct.isl6423_config { i32 1, i32 1, i8 8, i8 1 }, [20 x i8] zeroinitializer }, align 32
@frontend_init._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.21, ptr @.str.14, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol isl6423_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.108 = internal global ptr @frontend_init._entry.106, section ".printk_index", align 4
@frontend_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.21, ptr @.str.14, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: No Intersil ISL6423 found!\0A\00", [62 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.111 = internal global ptr @frontend_init._entry.109, section ".printk_index", align 4
@frontend_init._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.21, ptr @.str.14, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: No STV6110(A) Silicon Tuner found!\0A\00", [54 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.114 = internal global ptr @frontend_init._entry.112, section ".printk_index", align 4
@frontend_init._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.21, ptr @.str.14, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.116 = internal global ptr @frontend_init._entry.115, section ".printk_index", align 4
@frontend_init._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.21, ptr @.str.14, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016budget: Omicom S2 detected\0A\00", [34 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.119 = internal global ptr @frontend_init._entry.117, section ".printk_index", align 4
@frontend_init._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.21, ptr @.str.14, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.121 = internal global ptr @frontend_init._entry.120, section ".printk_index", align 4
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbh24_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lnbh24_attach\00", [43 x i8] zeroinitializer }, align 32
@frontend_init._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.21, ptr @.str.14, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lnbh24_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.126 = internal global ptr @frontend_init._entry.124, section ".printk_index", align 4
@frontend_init._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.21, ptr @.str.14, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013No LNBH24 found!\0A\00", [44 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.129 = internal global ptr @frontend_init._entry.127, section ".printk_index", align 4
@frontend_init._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.21, ptr @.str.14, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.131 = internal global ptr @frontend_init._entry.130, section ".printk_index", align 4
@frontend_init._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.21, ptr @.str.14, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"budget: A frontend driver was not found for device [%04x:%04x] subsystem [%04x:%04x]\0A\00", [42 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.134 = internal global ptr @frontend_init._entry.132, section ".printk_index", align 4
@frontend_init._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.21, ptr @.str.14, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"budget: Frontend registration failed!\0A\00", [57 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.137 = internal global ptr @frontend_init._entry.135, section ".printk_index", align 4
@alps_bsbe1_inittab = internal global { [38 x i8], [58 x i8] } { [38 x i8] c"\01\15\020\03\00\04}\05\05\06\00\08@\09\00\0CQ\0D\82\0F\92\104\11\84\12\B9\15\C9(\003\FC4\93\FF\FF", [58 x i8] zeroinitializer }, align 32
@SendDiSEqCMsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.14, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017budget: %s(): budget: %p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SendDiSEqCMsg\00", [18 x i8] zeroinitializer }, align 32
@SendDiSEqCMsg._entry_ptr = internal global ptr @SendDiSEqCMsg._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@DiseqcSendByte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.140, ptr @.str.14, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DiseqcSendByte\00", [17 x i8] zeroinitializer }, align 32
@DiseqcSendByte._entry_ptr = internal global ptr @DiseqcSendByte._entry, section ".printk_index", align 4
@DiseqcSendBit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.141, ptr @.str.14, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DiseqcSendBit\00", [18 x i8] zeroinitializer }, align 32
@DiseqcSendBit._entry_ptr = internal global ptr @DiseqcSendBit._entry, section ".printk_index", align 4
@Set22K._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.142, ptr @.str.14, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Set22K\00", [25 x i8] zeroinitializer }, align 32
@Set22K._entry_ptr = internal global ptr @Set22K._entry, section ".printk_index", align 4
@alps_bsru6_inittab = internal global { [78 x i8], [50 x i8] } { [78 x i8] c"\01\15\020\03\00\04}\055\06@\07\00\08@\09\00\0CQ\0D\82\0E#\10?\11\84\12\B9\15\C9\16\00\17\00\18\00\19\00\1A\00\1FP \00!\00\22\00#\00(\00)\1E*\14+\0F,\09-\05.\011\1F2\193\FC4\93\0FR\FF\FF", [50 x i8] zeroinitializer }, align 32
@SetVoltage_Activy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.143, ptr @.str.14, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SetVoltage_Activy\00", [46 x i8] zeroinitializer }, align 32
@SetVoltage_Activy._entry_ptr = internal global ptr @SetVoltage_Activy._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 16, i64 4099, i64 4100, i64 4101, i64 4115, i64 4118, i64 4120, i64 4124, i64 4128, i64 20306, i64 20320, i64 20321, i64 24416, i64 24417]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.147 = private unnamed_addr constant [14 x i8] c"diseqc_method\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 39, i32 12 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"budget_extension\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 855, i32 33 }
@___asan_gen_.153 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 43, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant [8 x i8] c"pci_tbl\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 834, i32 35 }
@___asan_gen_.159 = private unnamed_addr constant [5 x i8] c"ttbs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [5 x i8] c"ttbc\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [5 x i8] c"ttbt\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [6 x i8] c"satel\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [9 x i8] c"ttbs1401\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"tt1600\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"fsacs1\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"fsacs0\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"fsact1\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [6 x i8] c"fsact\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"omicom\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [5 x i8] c"sylt\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [10 x i8] c"ttbs_info\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 821, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant [10 x i8] c"ttbc_info\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 822, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant [10 x i8] c"ttbt_info\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 823, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant [11 x i8] c"satel_info\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 824, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant [14 x i8] c"ttbs1401_info\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 825, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant [12 x i8] c"tt1600_info\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 826, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant [12 x i8] c"fsacs1_info\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 828, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant [12 x i8] c"fsacs0_info\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 827, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant [12 x i8] c"fsact1_info\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 830, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant [11 x i8] c"fsact_info\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 829, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant [12 x i8] c"omicom_info\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 831, i32 1 }
@___asan_gen_.261 = private unnamed_addr constant [10 x i8] c"sylt_info\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 832, i32 1 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 782, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 788, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [18 x i8] c"alps_bsrv2_config\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 227, i32 30 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 485, i32 26 }
@___asan_gen_.309 = private unnamed_addr constant [18 x i8] c"alps_bsru6_config\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 114, i32 30 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 495, i32 26 }
@___asan_gen_.324 = private unnamed_addr constant [18 x i8] c"alps_tdbe2_config\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 255, i32 30 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 510, i32 26 }
@___asan_gen_.339 = private unnamed_addr constant [25 x i8] c"grundig_29504_401_config\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 310, i32 29 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 519, i32 26 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 528, i32 26 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 530, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant [25 x i8] c"alps_bsru6_config_activy\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 386, i32 36 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 546, i32 27 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 548, i32 5 }
@___asan_gen_.369 = private unnamed_addr constant [25 x i8] c"alps_bsbe1_config_activy\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 396, i32 36 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 562, i32 27 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 564, i32 5 }
@___asan_gen_.387 = private unnamed_addr constant [25 x i8] c"grundig_29504_451_config\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 340, i32 30 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 576, i32 26 }
@___asan_gen_.402 = private unnamed_addr constant [23 x i8] c"alps_tdhd1_204a_config\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [39 x i8] c"../drivers/media/dvb-frontends/tdhd1.h\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 17, i32 31 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 585, i32 26 }
@___asan_gen_.411 = private unnamed_addr constant [32 x i8] c"grundig_29504_401_config_activy\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 314, i32 29 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 593, i32 26 }
@___asan_gen_.417 = private unnamed_addr constant [39 x i8] c"tuner_address_grundig_29504_401_activy\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 318, i32 11 }
@___asan_gen_.426 = private unnamed_addr constant [15 x i8] c"s5h1420_config\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 373, i32 30 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 604, i32 8 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 608, i32 8 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 610, i32 5 }
@___asan_gen_.459 = private unnamed_addr constant [16 x i8] c"tda10086_config\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 379, i32 31 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 627, i32 8 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 630, i32 8 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 632, i32 5 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 633, i32 8 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 635, i32 5 }
@___asan_gen_.498 = private unnamed_addr constant [22 x i8] c"tt1600_stv090x_config\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 438, i32 30 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 650, i32 27 }
@___asan_gen_.513 = private unnamed_addr constant [23 x i8] c"tt1600_stv6110x_config\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 464, i32 31 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 657, i32 11 }
@___asan_gen_.528 = private unnamed_addr constant [22 x i8] c"tt1600_isl6423_config\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 470, i32 30 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 681, i32 10 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 685, i32 7 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 689, i32 6 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 703, i32 27 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 709, i32 5 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 711, i32 11 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 735, i32 10 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 740, i32 7 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 745, i32 6 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 754, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 766, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant [19 x i8] c"alps_bsbe1_inittab\00", align 1
@___asan_gen_.595 = private unnamed_addr constant [39 x i8] c"../drivers/media/dvb-frontends/bsbe1.h\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 11, i32 11 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 87, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 71, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 59, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 48, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant [19 x i8] c"alps_bsru6_inittab\00", align 1
@___asan_gen_.625 = private unnamed_addr constant [39 x i8] c"../drivers/media/dvb-frontends/bsru6.h\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 11, i32 11 }
@___asan_gen_.627 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.631 = private constant [36 x i8] c"../drivers/media/pci/ttpci/budget.c\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 123, i32 2 }
@llvm.compiler.used = appending global [216 x ptr] [ptr @DiseqcSendBit._entry, ptr @DiseqcSendBit._entry_ptr, ptr @DiseqcSendByte._entry, ptr @DiseqcSendByte._entry_ptr, ptr @SendDiSEqCMsg._entry, ptr @SendDiSEqCMsg._entry_ptr, ptr @Set22K._entry, ptr @Set22K._entry_ptr, ptr @SetVoltage_Activy._entry, ptr @SetVoltage_Activy._entry_ptr, ptr @__UNIQUE_ID_adapter_nr388, ptr @__UNIQUE_ID_adapter_nrtype387, ptr @__UNIQUE_ID_author392, ptr @__UNIQUE_ID_description393, ptr @__UNIQUE_ID_diseqc_method386, ptr @__UNIQUE_ID_diseqc_methodtype385, ptr @__UNIQUE_ID_file390, ptr @__UNIQUE_ID_license391, ptr @__exitcall_budget_exit, ptr @__initcall__kmod_budget__389_878_budget_init6, ptr @__param_adapter_nr, ptr @__param_diseqc_method, ptr @budget_attach._entry, ptr @budget_attach._entry.15, ptr @budget_attach._entry_ptr, ptr @budget_attach._entry_ptr.17, ptr @budget_exit, ptr @frontend_init._entry, ptr @frontend_init._entry.101, ptr @frontend_init._entry.106, ptr @frontend_init._entry.109, ptr @frontend_init._entry.112, ptr @frontend_init._entry.115, ptr @frontend_init._entry.117, ptr @frontend_init._entry.120, ptr @frontend_init._entry.124, ptr @frontend_init._entry.127, ptr @frontend_init._entry.130, ptr @frontend_init._entry.132, ptr @frontend_init._entry.135, ptr @frontend_init._entry.24, ptr @frontend_init._entry.29, ptr @frontend_init._entry.34, ptr @frontend_init._entry.37, ptr @frontend_init._entry.39, ptr @frontend_init._entry.42, ptr @frontend_init._entry.44, ptr @frontend_init._entry.47, ptr @frontend_init._entry.49, ptr @frontend_init._entry.54, ptr @frontend_init._entry.59, ptr @frontend_init._entry.62, ptr @frontend_init._entry.66, ptr @frontend_init._entry.71, ptr @frontend_init._entry.74, ptr @frontend_init._entry.79, ptr @frontend_init._entry.84, ptr @frontend_init._entry.87, ptr @frontend_init._entry.90, ptr @frontend_init._entry.92, ptr @frontend_init._entry.96, ptr @frontend_init._entry_ptr, ptr @frontend_init._entry_ptr.103, ptr @frontend_init._entry_ptr.108, ptr @frontend_init._entry_ptr.111, ptr @frontend_init._entry_ptr.114, ptr @frontend_init._entry_ptr.116, ptr @frontend_init._entry_ptr.119, ptr @frontend_init._entry_ptr.121, ptr @frontend_init._entry_ptr.126, ptr @frontend_init._entry_ptr.129, ptr @frontend_init._entry_ptr.131, ptr @frontend_init._entry_ptr.134, ptr @frontend_init._entry_ptr.137, ptr @frontend_init._entry_ptr.26, ptr @frontend_init._entry_ptr.31, ptr @frontend_init._entry_ptr.36, ptr @frontend_init._entry_ptr.38, ptr @frontend_init._entry_ptr.41, ptr @frontend_init._entry_ptr.43, ptr @frontend_init._entry_ptr.46, ptr @frontend_init._entry_ptr.48, ptr @frontend_init._entry_ptr.51, ptr @frontend_init._entry_ptr.56, ptr @frontend_init._entry_ptr.61, ptr @frontend_init._entry_ptr.63, ptr @frontend_init._entry_ptr.68, ptr @frontend_init._entry_ptr.73, ptr @frontend_init._entry_ptr.76, ptr @frontend_init._entry_ptr.81, ptr @frontend_init._entry_ptr.86, ptr @frontend_init._entry_ptr.89, ptr @frontend_init._entry_ptr.91, ptr @frontend_init._entry_ptr.93, ptr @frontend_init._entry_ptr.98, ptr @diseqc_method, ptr @budget_extension, ptr @adapter_nr, ptr @pci_tbl, ptr @ttbs, ptr @ttbc, ptr @ttbt, ptr @satel, ptr @ttbs1401, ptr @tt1600, ptr @fsacs1, ptr @fsacs0, ptr @fsact1, ptr @fsact, ptr @omicom, ptr @sylt, ptr @ttbs_info, ptr @.str, ptr @ttbc_info, ptr @.str.1, ptr @ttbt_info, ptr @.str.2, ptr @satel_info, ptr @.str.3, ptr @ttbs1401_info, ptr @.str.4, ptr @tt1600_info, ptr @.str.5, ptr @fsacs1_info, ptr @.str.6, ptr @fsacs0_info, ptr @.str.7, ptr @fsact1_info, ptr @.str.8, ptr @fsact_info, ptr @.str.9, ptr @omicom_info, ptr @.str.10, ptr @sylt_info, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @alps_bsrv2_config, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @alps_bsru6_config, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @alps_tdbe2_config, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @grundig_29504_401_config, ptr @.str.35, ptr @.str.40, ptr @alps_bsru6_config_activy, ptr @.str.45, ptr @alps_bsbe1_config_activy, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @grundig_29504_451_config, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @alps_tdhd1_204a_config, ptr @.str.60, ptr @grundig_29504_401_config_activy, ptr @tuner_address_grundig_29504_401_activy, ptr @.str.64, ptr @.str.65, ptr @s5h1420_config, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @tda10086_config, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.94, ptr @.str.95, ptr @tt1600_stv090x_config, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @tt1600_stv6110x_config, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @tt1600_isl6423_config, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.118, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.128, ptr @.str.133, ptr @.str.136, ptr @alps_bsbe1_inittab, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @alps_bsru6_inittab, ptr @.str.143], section "llvm.metadata"
@0 = internal global [162 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diseqc_method to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_extension to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_tbl to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbs1401 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt1600 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsacs1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsacs0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsact1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsact to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omicom to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sylt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbs_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbc_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbt_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satel_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbs1401_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt1600_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsacs1_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsacs0_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsact1_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsact_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omicom_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sylt_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_attach._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsrv2_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsru6_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_tdbe2_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grundig_29504_401_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsru6_config_activy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsbe1_config_activy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grundig_29504_451_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_tdhd1_204a_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grundig_29504_401_config_activy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_address_grundig_29504_401_activy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt1600_stv090x_config to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt1600_stv6110x_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt1600_isl6423_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsbe1_inittab to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendDiSEqCMsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DiseqcSendByte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DiseqcSendBit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Set22K._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsru6_inittab to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetVoltage_Activy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @budget_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @saa7146_unregister_extension(ptr noundef nonnull @budget_extension) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_unregister_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @saa7146_register_extension(ptr noundef nonnull @budget_extension) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_attach(ptr noundef %dev, ptr noundef %info) #2 align 64 {
entry:
  %reg.addr.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %msg.i1082.i = alloca [2 x %struct.i2c_msg], align 4
  %b.i.i = alloca i8, align 1
  %pwm.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 3800) #9
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %1 = load i32, ptr @budget_debug, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef %info, ptr noundef nonnull %call7.i) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %ext_priv, align 4
  %call7 = tail call i32 @ttpci_budget_init(ptr noundef nonnull %call7.i, ptr noundef %dev, ptr noundef %info, ptr noundef null, ptr noundef nonnull @adapter_nr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

if.end15:                                         ; preds = %do.end6
  %priv = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 25, i32 5
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %pci.i = getelementptr inbounds %struct.saa7146_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci.i, align 4
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_device.i, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %if.end15.sw.epilog.i_crit_edge [
    i16 4099, label %if.end15.sw.bb.i_crit_edge
    i16 4115, label %if.end15.sw.bb.i_crit_edge30
    i16 4100, label %sw.bb77.i
    i16 4101, label %sw.bb114.i
    i16 20306, label %sw.bb152.i
    i16 20320, label %sw.bb196.i
    i16 20321, label %sw.bb306.i
    i16 24416, label %sw.bb348.i
    i16 24417, label %sw.bb387.i
    i16 4118, label %sw.bb425.i
    i16 4120, label %if.end15.sw.bb495.i_crit_edge
    i16 4124, label %if.end15.sw.bb602.i_crit_edge
    i16 4128, label %sw.bb721.i
  ]

if.end15.sw.bb602.i_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb602.i

if.end15.sw.bb495.i_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb495.i

if.end15.sw.bb.i_crit_edge30:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end15.sw.bb.i_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end15.sw.epilog.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end15.sw.bb.i_crit_edge, %if.end15.sw.bb.i_crit_edge30
  %call.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cond.end.i, label %sw.bb.i.if.then.i_crit_edge

sw.bb.i.if.then.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

cond.end.i:                                       ; preds = %sw.bb.i
  %call1.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #6
  %call2.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #6
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.end.i, label %cond.end.i.if.then.i_crit_edge

cond.end.i.if.then.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %cond.end.i.if.then.i_crit_edge, %sw.bb.i.if.then.i_crit_edge
  %cond1091.i = phi ptr [ %call2.i, %cond.end.i.if.then.i_crit_edge ], [ %call.i, %sw.bb.i.if.then.i_crit_edge ]
  %i2c_adap.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  %call4.i = tail call ptr %cond1091.i(ptr noundef nonnull @alps_bsrv2_config, ptr noundef %i2c_adap.i) #6
  %cmp.i = icmp eq ptr %call4.i, null
  br i1 %cmp.i, label %if.then6.i, label %if.then12.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #6
  br label %if.end20.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %if.end20.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %dvb_frontend.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %11 = ptrtoint ptr %dvb_frontend.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4.i, ptr %dvb_frontend.i, align 8
  %set_params.i = getelementptr inbounds %struct.dvb_frontend, ptr %call4.i, i32 0, i32 1, i32 32, i32 6
  %12 = ptrtoint ptr %set_params.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @alps_bsrv2_tuner_set_params, ptr %set_params.i, align 4
  %13 = load ptr, ptr %dvb_frontend.i, align 8
  %diseqc_send_master_cmd.i = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 1, i32 21
  %14 = ptrtoint ptr %diseqc_send_master_cmd.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @budget_diseqc_send_master_cmd, ptr %diseqc_send_master_cmd.i, align 4
  %15 = load ptr, ptr %dvb_frontend.i, align 8
  %diseqc_send_burst.i = getelementptr inbounds %struct.dvb_frontend, ptr %15, i32 0, i32 1, i32 23
  %16 = ptrtoint ptr %diseqc_send_burst.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @budget_diseqc_send_burst, ptr %diseqc_send_burst.i, align 4
  %17 = load ptr, ptr %dvb_frontend.i, align 8
  %set_tone.i = getelementptr inbounds %struct.dvb_frontend, ptr %17, i32 0, i32 1, i32 24
  %18 = ptrtoint ptr %set_tone.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @budget_set_tone, ptr %set_tone.i, align 4
  br label %sw.epilog.i

if.end20.i:                                       ; preds = %do.end.i, %if.then6.i
  %dvb_frontend1093.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %19 = ptrtoint ptr %dvb_frontend1093.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %dvb_frontend1093.i, align 8
  %call23.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.22) #6
  %tobool24.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool24.not.i, label %cond.end29.i, label %if.end20.i.if.then32.i_crit_edge

if.end20.i.if.then32.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i

cond.end29.i:                                     ; preds = %if.end20.i
  %call27.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.23) #6
  %call28.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.22) #6
  %tobool31.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool31.not.i, label %do.end42.i, label %cond.end29.i.if.then32.i_crit_edge

cond.end29.i.if.then32.i_crit_edge:               ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i

if.then32.i:                                      ; preds = %cond.end29.i.if.then32.i_crit_edge, %if.end20.i.if.then32.i_crit_edge
  %cond301098.i = phi ptr [ %call28.i, %cond.end29.i.if.then32.i_crit_edge ], [ %call23.i, %if.end20.i.if.then32.i_crit_edge ]
  %i2c_adap33.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  %call34.i = tail call ptr %cond301098.i(ptr noundef nonnull @alps_bsru6_config, ptr noundef %i2c_adap33.i) #6
  %cmp35.i = icmp eq ptr %call34.i, null
  br i1 %cmp35.i, label %if.then37.i, label %if.then50.i

if.then37.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.22) #6
  br label %if.end45.thread.i

do.end42.i:                                       ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %if.end45.thread.i

if.end45.thread.i:                                ; preds = %do.end42.i, %if.then37.i
  %20 = ptrtoint ptr %dvb_frontend1093.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %dvb_frontend1093.i, align 8
  br label %sw.epilog.i

if.then50.i:                                      ; preds = %if.then32.i
  %21 = ptrtoint ptr %dvb_frontend1093.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call34.i, ptr %dvb_frontend1093.i, align 8
  %set_params54.i = getelementptr inbounds %struct.dvb_frontend, ptr %call34.i, i32 0, i32 1, i32 32, i32 6
  %22 = ptrtoint ptr %set_params54.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @alps_bsru6_tuner_set_params, ptr %set_params54.i, align 4
  %23 = load ptr, ptr %dvb_frontend1093.i, align 8
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %i2c_adap33.i, ptr %tuner_priv.i, align 4
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 8
  %pci58.i = getelementptr inbounds %struct.saa7146_dev, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %pci58.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci58.i, align 4
  %subsystem_device59.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %subsystem_device59.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %subsystem_device59.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4099, i16 %30)
  %cmp61.i = icmp eq i16 %30, 4099
  br i1 %cmp61.i, label %land.lhs.true.i, label %if.then50.i.sw.epilog.i_crit_edge

if.then50.i.sw.epilog.i_crit_edge:                ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

land.lhs.true.i:                                  ; preds = %if.then50.i
  %31 = load i32, ptr @diseqc_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp63.i = icmp eq i32 %31, 0
  br i1 %cmp63.i, label %if.then65.i, label %land.lhs.true.i.sw.epilog.i_crit_edge

land.lhs.true.i.sw.epilog.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then65.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %dvb_frontend1093.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dvb_frontend1093.i, align 8
  %diseqc_send_master_cmd68.i = getelementptr inbounds %struct.dvb_frontend, ptr %33, i32 0, i32 1, i32 21
  %34 = ptrtoint ptr %diseqc_send_master_cmd68.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @budget_diseqc_send_master_cmd, ptr %diseqc_send_master_cmd68.i, align 4
  %35 = load ptr, ptr %dvb_frontend1093.i, align 8
  %diseqc_send_burst71.i = getelementptr inbounds %struct.dvb_frontend, ptr %35, i32 0, i32 1, i32 23
  %36 = ptrtoint ptr %diseqc_send_burst71.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @budget_diseqc_send_burst, ptr %diseqc_send_burst71.i, align 4
  %37 = load ptr, ptr %dvb_frontend1093.i, align 8
  %set_tone74.i = getelementptr inbounds %struct.dvb_frontend, ptr %37, i32 0, i32 1, i32 24
  %38 = ptrtoint ptr %set_tone74.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @budget_set_tone, ptr %set_tone74.i, align 4
  br label %sw.epilog.i

sw.bb77.i:                                        ; preds = %if.end15
  %call80.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.27) #6
  %tobool81.not.i = icmp eq ptr %call80.i, null
  br i1 %tobool81.not.i, label %cond.end86.i, label %sw.bb77.i.if.then89.i_crit_edge

sw.bb77.i.if.then89.i_crit_edge:                  ; preds = %sw.bb77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then89.i

cond.end86.i:                                     ; preds = %sw.bb77.i
  %call84.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.28) #6
  %call85.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.27) #6
  %tobool88.not.i = icmp eq ptr %call85.i, null
  br i1 %tobool88.not.i, label %do.end100.i, label %cond.end86.i.if.then89.i_crit_edge

cond.end86.i.if.then89.i_crit_edge:               ; preds = %cond.end86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then89.i

if.then89.i:                                      ; preds = %cond.end86.i.if.then89.i_crit_edge, %sw.bb77.i.if.then89.i_crit_edge
  %cond871103.i = phi ptr [ %call85.i, %cond.end86.i.if.then89.i_crit_edge ], [ %call80.i, %sw.bb77.i.if.then89.i_crit_edge ]
  %i2c_adap90.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i) #6
  %39 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %b.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwm.i.i) #6
  %40 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %pwm.i.i, align 1, !annotation !310
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %41 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %42 = call ptr @memset(ptr %41, i32 255, i32 16)
  %43 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 80, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %flags.i.i, align 2
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %41, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %b.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %47 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 80, ptr %arrayinit.element.i.i, align 4
  %flags2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %48 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %flags2.i.i, align 2
  %len3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %49 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %len3.i.i, align 4
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %50 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %pwm.i.i, ptr %buf4.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %i2c_adap90.i, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then89.i.if.then.i.i_crit_edge

if.then89.i.if.then.i.i_crit_edge:                ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.then89.i
  %51 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pwm.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %52)
  %cmp5.i.i = icmp eq i8 %52, -1
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.read_pwm.exit.i_crit_edge

lor.lhs.false.i.i.read_pwm.exit.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pwm.exit.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.then89.i.if.then.i.i_crit_edge
  %53 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 72, ptr %pwm.i.i, align 1
  br label %read_pwm.exit.i

read_pwm.exit.i:                                  ; preds = %if.then.i.i, %lor.lhs.false.i.i.read_pwm.exit.i_crit_edge
  %54 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pwm.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwm.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i) #6
  %call92.i = call ptr %cond871103.i(ptr noundef nonnull @alps_tdbe2_config, ptr noundef %i2c_adap90.i, i8 noundef zeroext %55) #6
  %cmp93.i = icmp eq ptr %call92.i, null
  br i1 %cmp93.i, label %if.then95.i, label %if.then108.i

if.then95.i:                                      ; preds = %read_pwm.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__symbol_put(ptr noundef nonnull @.str.27) #6
  br label %if.end103.thread.i

do.end100.i:                                      ; preds = %cond.end86.i
  call void @__sanitizer_cov_trace_pc() #8
  %call102.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  br label %if.end103.thread.i

if.end103.thread.i:                               ; preds = %do.end100.i, %if.then95.i
  %dvb_frontend1051105.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %56 = ptrtoint ptr %dvb_frontend1051105.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %dvb_frontend1051105.i, align 8
  br label %sw.epilog.i

if.then108.i:                                     ; preds = %read_pwm.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dvb_frontend105.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %57 = ptrtoint ptr %dvb_frontend105.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call92.i, ptr %dvb_frontend105.i, align 8
  %set_params112.i = getelementptr inbounds %struct.dvb_frontend, ptr %call92.i, i32 0, i32 1, i32 32, i32 6
  %58 = ptrtoint ptr %set_params112.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @alps_tdbe2_tuner_set_params, ptr %set_params112.i, align 4
  br label %sw.epilog.i

sw.bb114.i:                                       ; preds = %if.end15
  %call117.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #6
  %tobool118.not.i = icmp eq ptr %call117.i, null
  br i1 %tobool118.not.i, label %cond.end123.i, label %sw.bb114.i.if.then126.i_crit_edge

sw.bb114.i.if.then126.i_crit_edge:                ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then126.i

cond.end123.i:                                    ; preds = %sw.bb114.i
  %call121.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #6
  %call122.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #6
  %tobool125.not.i = icmp eq ptr %call122.i, null
  br i1 %tobool125.not.i, label %do.end136.i, label %cond.end123.i.if.then126.i_crit_edge

cond.end123.i.if.then126.i_crit_edge:             ; preds = %cond.end123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then126.i

if.then126.i:                                     ; preds = %cond.end123.i.if.then126.i_crit_edge, %sw.bb114.i.if.then126.i_crit_edge
  %cond1241109.i = phi ptr [ %call122.i, %cond.end123.i.if.then126.i_crit_edge ], [ %call117.i, %sw.bb114.i.if.then126.i_crit_edge ]
  %i2c_adap127.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  %call128.i = tail call ptr %cond1241109.i(ptr noundef nonnull @grundig_29504_401_config, ptr noundef %i2c_adap127.i) #6
  %cmp129.i = icmp eq ptr %call128.i, null
  br i1 %cmp129.i, label %if.then131.i, label %if.then144.i

if.then131.i:                                     ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.32) #6
  br label %if.end139.thread.i

do.end136.i:                                      ; preds = %cond.end123.i
  call void @__sanitizer_cov_trace_pc() #8
  %call138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %if.end139.thread.i

if.end139.thread.i:                               ; preds = %do.end136.i, %if.then131.i
  %dvb_frontend1411111.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %59 = ptrtoint ptr %dvb_frontend1411111.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %dvb_frontend1411111.i, align 8
  br label %sw.epilog.i

if.then144.i:                                     ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #8
  %dvb_frontend141.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %60 = ptrtoint ptr %dvb_frontend141.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call128.i, ptr %dvb_frontend141.i, align 8
  %set_params148.i = getelementptr inbounds %struct.dvb_frontend, ptr %call128.i, i32 0, i32 1, i32 32, i32 6
  %61 = ptrtoint ptr %set_params148.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @grundig_29504_401_tuner_set_params, ptr %set_params148.i, align 4
  %62 = load ptr, ptr %dvb_frontend141.i, align 8
  %tuner_priv150.i = getelementptr inbounds %struct.dvb_frontend, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %tuner_priv150.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %tuner_priv150.i, align 4
  br label %sw.epilog.i

sw.bb152.i:                                       ; preds = %if.end15
  %call155.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.22) #6
  %tobool156.not.i = icmp eq ptr %call155.i, null
  br i1 %tobool156.not.i, label %cond.end161.i, label %sw.bb152.i.if.then164.i_crit_edge

sw.bb152.i.if.then164.i_crit_edge:                ; preds = %sw.bb152.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then164.i

cond.end161.i:                                    ; preds = %sw.bb152.i
  %call159.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.23) #6
  %call160.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.22) #6
  %tobool163.not.i = icmp eq ptr %call160.i, null
  br i1 %tobool163.not.i, label %do.end174.i, label %cond.end161.i.if.then164.i_crit_edge

cond.end161.i.if.then164.i_crit_edge:             ; preds = %cond.end161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then164.i

if.then164.i:                                     ; preds = %cond.end161.i.if.then164.i_crit_edge, %sw.bb152.i.if.then164.i_crit_edge
  %cond1621115.i = phi ptr [ %call160.i, %cond.end161.i.if.then164.i_crit_edge ], [ %call155.i, %sw.bb152.i.if.then164.i_crit_edge ]
  %i2c_adap165.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  %call166.i = tail call ptr %cond1621115.i(ptr noundef nonnull @alps_bsru6_config, ptr noundef %i2c_adap165.i) #6
  %cmp167.i = icmp eq ptr %call166.i, null
  br i1 %cmp167.i, label %if.then169.i, label %do.end185.i

if.then169.i:                                     ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.22) #6
  br label %if.end177.thread.i

do.end174.i:                                      ; preds = %cond.end161.i
  call void @__sanitizer_cov_trace_pc() #8
  %call176.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %if.end177.thread.i

if.end177.thread.i:                               ; preds = %do.end174.i, %if.then169.i
  %dvb_frontend1791117.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %64 = ptrtoint ptr %dvb_frontend1791117.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %dvb_frontend1791117.i, align 8
  br label %sw.epilog.i

do.end185.i:                                      ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #8
  %dvb_frontend179.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %65 = ptrtoint ptr %dvb_frontend179.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call166.i, ptr %dvb_frontend179.i, align 8
  %call187.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #10
  %66 = ptrtoint ptr %dvb_frontend179.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dvb_frontend179.i, align 8
  %set_params191.i = getelementptr inbounds %struct.dvb_frontend, ptr %67, i32 0, i32 1, i32 32, i32 6
  %68 = ptrtoint ptr %set_params191.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @alps_bsru6_tuner_set_params, ptr %set_params191.i, align 4
  %69 = load ptr, ptr %dvb_frontend179.i, align 8
  %tuner_priv194.i = getelementptr inbounds %struct.dvb_frontend, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %tuner_priv194.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %i2c_adap165.i, ptr %tuner_priv194.i, align 4
  br label %sw.epilog.i

sw.bb196.i:                                       ; preds = %if.end15
  %i2c_adap197.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  %71 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 103, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #6
  %72 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %val.i.i, align 1, !annotation !310
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i1082.i) #6
  %73 = getelementptr inbounds i8, ptr %msg.i1082.i, i32 4
  %74 = call ptr @memset(ptr %73, i32 255, i32 16)
  %75 = ptrtoint ptr %msg.i1082.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 80, ptr %msg.i1082.i, align 4
  %flags.i1083.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1082.i, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i1083.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i1083.i, align 2
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %73, align 4
  %buf.i1085.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1082.i, i32 0, i32 3
  %78 = ptrtoint ptr %buf.i1085.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %reg.addr.i.i, ptr %buf.i1085.i, align 4
  %arrayinit.element.i1086.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1082.i, i32 1
  %79 = ptrtoint ptr %arrayinit.element.i1086.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 80, ptr %arrayinit.element.i1086.i, align 4
  %flags3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1082.i, i32 1, i32 1
  %80 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1, ptr %flags3.i.i, align 2
  %len4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1082.i, i32 1, i32 2
  %81 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 1, ptr %len4.i.i, align 4
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1082.i, i32 1, i32 3
  %82 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %val.i.i, ptr %buf5.i.i, align 4
  %call.i1087.i = call i32 @i2c_transfer(ptr noundef %i2c_adap197.i, ptr noundef nonnull %msg.i1082.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i1087.i)
  %cmp.not.i1088.i = icmp eq i32 %call.i1087.i, 2
  br i1 %cmp.not.i1088.i, label %i2c_readreg.exit.i, label %i2c_readreg.exit.thread.i

i2c_readreg.exit.thread.i:                        ; preds = %sw.bb196.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i1082.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  br label %sw.epilog.i

i2c_readreg.exit.i:                               ; preds = %sw.bb196.i
  %83 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i1082.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 54, i8 %84)
  %cmp203.i = icmp ult i8 %84, 54
  br i1 %cmp203.i, label %if.then205.i, label %if.else253.i

if.then205.i:                                     ; preds = %i2c_readreg.exit.i
  %call208.i = call ptr @__symbol_get(ptr noundef nonnull @.str.22) #6
  %tobool209.not.i = icmp eq ptr %call208.i, null
  br i1 %tobool209.not.i, label %cond.end214.i, label %if.then205.i.if.then217.i_crit_edge

if.then205.i.if.then217.i_crit_edge:              ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then217.i

cond.end214.i:                                    ; preds = %if.then205.i
  %call212.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.23) #6
  %call213.i = call ptr @__symbol_get(ptr noundef nonnull @.str.22) #6
  %tobool216.not.i = icmp eq ptr %call213.i, null
  br i1 %tobool216.not.i, label %do.end227.i, label %cond.end214.i.if.then217.i_crit_edge

cond.end214.i.if.then217.i_crit_edge:             ; preds = %cond.end214.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then217.i

if.then217.i:                                     ; preds = %cond.end214.i.if.then217.i_crit_edge, %if.then205.i.if.then217.i_crit_edge
  %cond2151123.i = phi ptr [ %call213.i, %cond.end214.i.if.then217.i_crit_edge ], [ %call208.i, %if.then205.i.if.then217.i_crit_edge ]
  %call219.i = call ptr %cond2151123.i(ptr noundef nonnull @alps_bsru6_config_activy, ptr noundef %i2c_adap197.i) #6
  %cmp220.i = icmp eq ptr %call219.i, null
  br i1 %cmp220.i, label %if.then222.i, label %do.end238.i

if.then222.i:                                     ; preds = %if.then217.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__symbol_put(ptr noundef nonnull @.str.22) #6
  br label %if.end230.thread.i

do.end227.i:                                      ; preds = %cond.end214.i
  call void @__sanitizer_cov_trace_pc() #8
  %call229.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %if.end230.thread.i

if.end230.thread.i:                               ; preds = %do.end227.i, %if.then222.i
  %dvb_frontend2321125.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %85 = ptrtoint ptr %dvb_frontend2321125.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %dvb_frontend2321125.i, align 8
  br label %sw.epilog.i

do.end238.i:                                      ; preds = %if.then217.i
  call void @__sanitizer_cov_trace_pc() #8
  %dvb_frontend232.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %86 = ptrtoint ptr %dvb_frontend232.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call219.i, ptr %dvb_frontend232.i, align 8
  %call240.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  %87 = ptrtoint ptr %dvb_frontend232.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dvb_frontend232.i, align 8
  %set_params244.i = getelementptr inbounds %struct.dvb_frontend, ptr %88, i32 0, i32 1, i32 32, i32 6
  %89 = ptrtoint ptr %set_params244.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @alps_bsru6_tuner_set_params, ptr %set_params244.i, align 4
  %90 = load ptr, ptr %dvb_frontend232.i, align 8
  %tuner_priv247.i = getelementptr inbounds %struct.dvb_frontend, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %tuner_priv247.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %i2c_adap197.i, ptr %tuner_priv247.i, align 4
  %92 = load ptr, ptr %dvb_frontend232.i, align 8
  %set_voltage.i = getelementptr inbounds %struct.dvb_frontend, ptr %92, i32 0, i32 1, i32 25
  %93 = ptrtoint ptr %set_voltage.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @siemens_budget_set_voltage, ptr %set_voltage.i, align 4
  %94 = load ptr, ptr %dvb_frontend232.i, align 8
  %dishnetwork_send_legacy_command.i = getelementptr inbounds %struct.dvb_frontend, ptr %94, i32 0, i32 1, i32 27
  %95 = ptrtoint ptr %dishnetwork_send_legacy_command.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %dishnetwork_send_legacy_command.i, align 4
  br label %sw.epilog.i

if.else253.i:                                     ; preds = %i2c_readreg.exit.i
  %96 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i, align 8
  call void @saa7146_setgpio(ptr noundef %97, i32 noundef 3, i32 noundef 64) #6
  call void @msleep(i32 noundef 50) #6
  %98 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i, align 8
  call void @saa7146_setgpio(ptr noundef %99, i32 noundef 3, i32 noundef 80) #6
  call void @msleep(i32 noundef 250) #6
  %call258.i = call ptr @__symbol_get(ptr noundef nonnull @.str.22) #6
  %tobool259.not.i = icmp eq ptr %call258.i, null
  br i1 %tobool259.not.i, label %cond.end264.i, label %if.else253.i.if.then267.i_crit_edge

if.else253.i.if.then267.i_crit_edge:              ; preds = %if.else253.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then267.i

cond.end264.i:                                    ; preds = %if.else253.i
  %call262.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.23) #6
  %call263.i = call ptr @__symbol_get(ptr noundef nonnull @.str.22) #6
  %tobool266.not.i = icmp eq ptr %call263.i, null
  br i1 %tobool266.not.i, label %do.end277.i, label %cond.end264.i.if.then267.i_crit_edge

cond.end264.i.if.then267.i_crit_edge:             ; preds = %cond.end264.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then267.i

if.then267.i:                                     ; preds = %cond.end264.i.if.then267.i_crit_edge, %if.else253.i.if.then267.i_crit_edge
  %cond2651129.i = phi ptr [ %call263.i, %cond.end264.i.if.then267.i_crit_edge ], [ %call258.i, %if.else253.i.if.then267.i_crit_edge ]
  %call269.i = call ptr %cond2651129.i(ptr noundef nonnull @alps_bsbe1_config_activy, ptr noundef %i2c_adap197.i) #6
  %cmp270.i = icmp eq ptr %call269.i, null
  br i1 %cmp270.i, label %if.then272.i, label %do.end288.i

if.then272.i:                                     ; preds = %if.then267.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__symbol_put(ptr noundef nonnull @.str.22) #6
  br label %if.end280.thread.i

do.end277.i:                                      ; preds = %cond.end264.i
  call void @__sanitizer_cov_trace_pc() #8
  %call279.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %if.end280.thread.i

if.end280.thread.i:                               ; preds = %do.end277.i, %if.then272.i
  %dvb_frontend2821131.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %100 = ptrtoint ptr %dvb_frontend2821131.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %dvb_frontend2821131.i, align 8
  br label %sw.epilog.i

do.end288.i:                                      ; preds = %if.then267.i
  call void @__sanitizer_cov_trace_pc() #8
  %dvb_frontend282.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %101 = ptrtoint ptr %dvb_frontend282.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call269.i, ptr %dvb_frontend282.i, align 8
  %call290.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #10
  %102 = ptrtoint ptr %dvb_frontend282.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dvb_frontend282.i, align 8
  %set_params294.i = getelementptr inbounds %struct.dvb_frontend, ptr %103, i32 0, i32 1, i32 32, i32 6
  %104 = ptrtoint ptr %set_params294.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @alps_bsbe1_tuner_set_params, ptr %set_params294.i, align 4
  %105 = load ptr, ptr %dvb_frontend282.i, align 8
  %tuner_priv297.i = getelementptr inbounds %struct.dvb_frontend, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %tuner_priv297.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %i2c_adap197.i, ptr %tuner_priv297.i, align 4
  %107 = load ptr, ptr %dvb_frontend282.i, align 8
  %set_voltage300.i = getelementptr inbounds %struct.dvb_frontend, ptr %107, i32 0, i32 1, i32 25
  %108 = ptrtoint ptr %set_voltage300.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @siemens_budget_set_voltage, ptr %set_voltage300.i, align 4
  %109 = load ptr, ptr %dvb_frontend282.i, align 8
  %dishnetwork_send_legacy_command303.i = getelementptr inbounds %struct.dvb_frontend, ptr %109, i32 0, i32 1, i32 27
  %110 = ptrtoint ptr %dishnetwork_send_legacy_command303.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %dishnetwork_send_legacy_command303.i, align 4
  br label %sw.epilog.i

sw.bb306.i:                                       ; preds = %if.end15
  %call309.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.52) #6
  %tobool310.not.i = icmp eq ptr %call309.i, null
  br i1 %tobool310.not.i, label %cond.end315.i, label %sw.bb306.i.if.then318.i_crit_edge

sw.bb306.i.if.then318.i_crit_edge:                ; preds = %sw.bb306.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then318.i

cond.end315.i:                                    ; preds = %sw.bb306.i
  %call313.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.53) #6
  %call314.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.52) #6
  %tobool317.not.i = icmp eq ptr %call314.i, null
  br i1 %tobool317.not.i, label %do.end328.i, label %cond.end315.i.if.then318.i_crit_edge

cond.end315.i.if.then318.i_crit_edge:             ; preds = %cond.end315.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then318.i

if.then318.i:                                     ; preds = %cond.end315.i.if.then318.i_crit_edge, %sw.bb306.i.if.then318.i_crit_edge
  %cond3161135.i = phi ptr [ %call314.i, %cond.end315.i.if.then318.i_crit_edge ], [ %call309.i, %sw.bb306.i.if.then318.i_crit_edge ]
  %i2c_adap319.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  %call320.i = tail call ptr %cond3161135.i(ptr noundef nonnull @grundig_29504_451_config, ptr noundef %i2c_adap319.i) #6
  %cmp321.i = icmp eq ptr %call320.i, null
  br i1 %cmp321.i, label %if.then323.i, label %if.then336.i

if.then323.i:                                     ; preds = %if.then318.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.52) #6
  br label %if.end331.thread.i

do.end328.i:                                      ; preds = %cond.end315.i
  call void @__sanitizer_cov_trace_pc() #8
  %call330.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #10
  br label %if.end331.thread.i

if.end331.thread.i:                               ; preds = %do.end328.i, %if.then323.i
  %dvb_frontend3331137.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %111 = ptrtoint ptr %dvb_frontend3331137.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %dvb_frontend3331137.i, align 8
  br label %sw.epilog.i

if.then336.i:                                     ; preds = %if.then318.i
  call void @__sanitizer_cov_trace_pc() #8
  %dvb_frontend333.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %112 = ptrtoint ptr %dvb_frontend333.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call320.i, ptr %dvb_frontend333.i, align 8
  %set_params340.i = getelementptr inbounds %struct.dvb_frontend, ptr %call320.i, i32 0, i32 1, i32 32, i32 6
  %113 = ptrtoint ptr %set_params340.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @grundig_29504_451_tuner_set_params, ptr %set_params340.i, align 4
  %114 = load ptr, ptr %dvb_frontend333.i, align 8
  %set_voltage343.i = getelementptr inbounds %struct.dvb_frontend, ptr %114, i32 0, i32 1, i32 25
  %115 = ptrtoint ptr %set_voltage343.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @siemens_budget_set_voltage, ptr %set_voltage343.i, align 4
  %116 = load ptr, ptr %dvb_frontend333.i, align 8
  %dishnetwork_send_legacy_command346.i = getelementptr inbounds %struct.dvb_frontend, ptr %116, i32 0, i32 1, i32 27
  %117 = ptrtoint ptr %dishnetwork_send_legacy_command346.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %dishnetwork_send_legacy_command346.i, align 4
  br label %sw.epilog.i

sw.bb348.i:                                       ; preds = %if.end15
  %call351.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.57) #6
  %tobool352.not.i = icmp eq ptr %call351.i, null
  br i1 %tobool352.not.i, label %cond.end357.i, label %sw.bb348.i.if.then360.i_crit_edge

sw.bb348.i.if.then360.i_crit_edge:                ; preds = %sw.bb348.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then360.i

cond.end357.i:                                    ; preds = %sw.bb348.i
  %call355.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.58) #6
  %call356.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.57) #6
  %tobool359.not.i = icmp eq ptr %call356.i, null
  br i1 %tobool359.not.i, label %do.end370.i, label %cond.end357.i.if.then360.i_crit_edge

cond.end357.i.if.then360.i_crit_edge:             ; preds = %cond.end357.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then360.i

if.then360.i:                                     ; preds = %cond.end357.i.if.then360.i_crit_edge, %sw.bb348.i.if.then360.i_crit_edge
  %cond3581141.i = phi ptr [ %call356.i, %cond.end357.i.if.then360.i_crit_edge ], [ %call351.i, %sw.bb348.i.if.then360.i_crit_edge ]
  %i2c_adap361.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  %call362.i = tail call ptr %cond3581141.i(ptr noundef nonnull @alps_tdhd1_204a_config, ptr noundef %i2c_adap361.i) #6
  %cmp363.i = icmp eq ptr %call362.i, null
  br i1 %cmp363.i, label %if.then365.i, label %if.then378.i

if.then365.i:                                     ; preds = %if.then360.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.57) #6
  br label %if.end373.thread.i

do.end370.i:                                      ; preds = %cond.end357.i
  call void @__sanitizer_cov_trace_pc() #8
  %call372.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #10
  br label %if.end373.thread.i

if.end373.thread.i:                               ; preds = %do.end370.i, %if.then365.i
  %dvb_frontend3751143.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %118 = ptrtoint ptr %dvb_frontend3751143.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %dvb_frontend3751143.i, align 8
  br label %sw.epilog.i

if.then378.i:                                     ; preds = %if.then360.i
  call void @__sanitizer_cov_trace_pc() #8
  %dvb_frontend375.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %119 = ptrtoint ptr %dvb_frontend375.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call362.i, ptr %dvb_frontend375.i, align 8
  %set_params382.i = getelementptr inbounds %struct.dvb_frontend, ptr %call362.i, i32 0, i32 1, i32 32, i32 6
  %120 = ptrtoint ptr %set_params382.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @alps_tdhd1_204a_tuner_set_params, ptr %set_params382.i, align 4
  %121 = load ptr, ptr %dvb_frontend375.i, align 8
  %tuner_priv385.i = getelementptr inbounds %struct.dvb_frontend, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %tuner_priv385.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %i2c_adap361.i, ptr %tuner_priv385.i, align 4
  br label %sw.epilog.i

sw.bb387.i:                                       ; preds = %if.end15
  %call390.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #6
  %tobool391.not.i = icmp eq ptr %call390.i, null
  br i1 %tobool391.not.i, label %cond.end396.i, label %sw.bb387.i.if.then399.i_crit_edge

sw.bb387.i.if.then399.i_crit_edge:                ; preds = %sw.bb387.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then399.i

cond.end396.i:                                    ; preds = %sw.bb387.i
  %call394.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #6
  %call395.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #6
  %tobool398.not.i = icmp eq ptr %call395.i, null
  br i1 %tobool398.not.i, label %do.end409.i, label %cond.end396.i.if.then399.i_crit_edge

cond.end396.i.if.then399.i_crit_edge:             ; preds = %cond.end396.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then399.i

if.then399.i:                                     ; preds = %cond.end396.i.if.then399.i_crit_edge, %sw.bb387.i.if.then399.i_crit_edge
  %cond3971147.i = phi ptr [ %call395.i, %cond.end396.i.if.then399.i_crit_edge ], [ %call390.i, %sw.bb387.i.if.then399.i_crit_edge ]
  %i2c_adap400.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  %call401.i = tail call ptr %cond3971147.i(ptr noundef nonnull @grundig_29504_401_config_activy, ptr noundef %i2c_adap400.i) #6
  %cmp402.i = icmp eq ptr %call401.i, null
  br i1 %cmp402.i, label %if.then404.i, label %if.then417.i

if.then404.i:                                     ; preds = %if.then399.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.32) #6
  br label %if.end412.thread.i

do.end409.i:                                      ; preds = %cond.end396.i
  call void @__sanitizer_cov_trace_pc() #8
  %call411.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %if.end412.thread.i

if.end412.thread.i:                               ; preds = %do.end409.i, %if.then404.i
  %dvb_frontend4141149.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %123 = ptrtoint ptr %dvb_frontend4141149.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %dvb_frontend4141149.i, align 8
  br label %sw.epilog.i

if.then417.i:                                     ; preds = %if.then399.i
  call void @__sanitizer_cov_trace_pc() #8
  %dvb_frontend414.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %124 = ptrtoint ptr %dvb_frontend414.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call401.i, ptr %dvb_frontend414.i, align 8
  %tuner_priv419.i = getelementptr inbounds %struct.dvb_frontend, ptr %call401.i, i32 0, i32 4
  %125 = ptrtoint ptr %tuner_priv419.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @tuner_address_grundig_29504_401_activy, ptr %tuner_priv419.i, align 4
  %126 = load ptr, ptr %dvb_frontend414.i, align 8
  %set_params423.i = getelementptr inbounds %struct.dvb_frontend, ptr %126, i32 0, i32 1, i32 32, i32 6
  %127 = ptrtoint ptr %set_params423.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @grundig_29504_401_tuner_set_params, ptr %set_params423.i, align 4
  br label %sw.epilog.i

sw.bb425.i:                                       ; preds = %if.end15
  %call428.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.64) #6
  %tobool429.not.i = icmp eq ptr %call428.i, null
  br i1 %tobool429.not.i, label %cond.end434.i, label %sw.bb425.i.if.then437.i_crit_edge

sw.bb425.i.if.then437.i_crit_edge:                ; preds = %sw.bb425.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then437.i

cond.end434.i:                                    ; preds = %sw.bb425.i
  %call432.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.65) #6
  %call433.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.64) #6
  %tobool436.not.i = icmp eq ptr %call433.i, null
  br i1 %tobool436.not.i, label %do.end447.i, label %cond.end434.i.if.then437.i_crit_edge

cond.end434.i.if.then437.i_crit_edge:             ; preds = %cond.end434.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then437.i

if.then437.i:                                     ; preds = %cond.end434.i.if.then437.i_crit_edge, %sw.bb425.i.if.then437.i_crit_edge
  %cond4351153.i = phi ptr [ %call433.i, %cond.end434.i.if.then437.i_crit_edge ], [ %call428.i, %sw.bb425.i.if.then437.i_crit_edge ]
  %i2c_adap438.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  %call439.i = tail call ptr %cond4351153.i(ptr noundef nonnull @s5h1420_config, ptr noundef %i2c_adap438.i) #6
  %cmp440.i = icmp eq ptr %call439.i, null
  br i1 %cmp440.i, label %if.then442.i, label %if.then453.i

if.then442.i:                                     ; preds = %if.then437.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.64) #6
  br label %sw.bb495.i

do.end447.i:                                      ; preds = %cond.end434.i
  call void @__sanitizer_cov_trace_pc() #8
  %call449.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #10
  br label %sw.bb495.i

if.then453.i:                                     ; preds = %if.then437.i
  %set_params456.i = getelementptr inbounds %struct.dvb_frontend, ptr %call439.i, i32 0, i32 1, i32 32, i32 6
  %128 = ptrtoint ptr %set_params456.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @s5h1420_tuner_set_params, ptr %set_params456.i, align 4
  %dvb_frontend457.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %129 = ptrtoint ptr %dvb_frontend457.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call439.i, ptr %dvb_frontend457.i, align 8
  %call460.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #6
  %tobool461.not.i = icmp eq ptr %call460.i, null
  br i1 %tobool461.not.i, label %cond.end466.i, label %if.then453.i.if.then469.i_crit_edge

if.then453.i.if.then469.i_crit_edge:              ; preds = %if.then453.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then469.i

cond.end466.i:                                    ; preds = %if.then453.i
  %call464.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.70) #6
  %call465.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #6
  %tobool468.not.i = icmp eq ptr %call465.i, null
  br i1 %tobool468.not.i, label %do.end479.i, label %cond.end466.i.if.then469.i_crit_edge

cond.end466.i.if.then469.i_crit_edge:             ; preds = %cond.end466.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then469.i

if.then469.i:                                     ; preds = %cond.end466.i.if.then469.i_crit_edge, %if.then453.i.if.then469.i_crit_edge
  %cond4671158.i = phi ptr [ %call465.i, %cond.end466.i.if.then469.i_crit_edge ], [ %call460.i, %if.then453.i.if.then469.i_crit_edge ]
  %call471.i = tail call ptr %cond4671158.i(ptr noundef nonnull %call439.i, ptr noundef %i2c_adap438.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %cmp472.i = icmp eq ptr %call471.i, null
  br i1 %cmp472.i, label %if.then474.i, label %if.then469.i.sw.epilog.i_crit_edge

if.then469.i.sw.epilog.i_crit_edge:               ; preds = %if.then469.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then474.i:                                     ; preds = %if.then469.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.69) #6
  br label %cleanup494.i

do.end479.i:                                      ; preds = %cond.end466.i
  call void @__sanitizer_cov_trace_pc() #8
  %call481.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #10
  br label %cleanup494.i

cleanup494.i:                                     ; preds = %do.end479.i, %if.then474.i
  %call491.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.21) #10
  br label %do.end889.i

sw.bb495.i:                                       ; preds = %do.end447.i, %if.then442.i, %if.end15.sw.bb495.i_crit_edge
  %130 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i, align 8
  tail call void @saa7146_setgpio(ptr noundef %131, i32 noundef 2, i32 noundef 64) #6
  tail call void @msleep(i32 noundef 1) #6
  %132 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i, align 8
  tail call void @saa7146_setgpio(ptr noundef %133, i32 noundef 2, i32 noundef 80) #6
  tail call void @msleep(i32 noundef 1) #6
  %call501.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.77) #6
  %tobool502.not.i = icmp eq ptr %call501.i, null
  br i1 %tobool502.not.i, label %cond.end507.i, label %sw.bb495.i.if.then510.i_crit_edge

sw.bb495.i.if.then510.i_crit_edge:                ; preds = %sw.bb495.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then510.i

cond.end507.i:                                    ; preds = %sw.bb495.i
  %call505.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.78) #6
  %call506.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.77) #6
  %tobool509.not.i = icmp eq ptr %call506.i, null
  br i1 %tobool509.not.i, label %do.end520.i, label %cond.end507.i.if.then510.i_crit_edge

cond.end507.i.if.then510.i_crit_edge:             ; preds = %cond.end507.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then510.i

if.then510.i:                                     ; preds = %cond.end507.i.if.then510.i_crit_edge, %sw.bb495.i.if.then510.i_crit_edge
  %cond5081166.i = phi ptr [ %call506.i, %cond.end507.i.if.then510.i_crit_edge ], [ %call501.i, %sw.bb495.i.if.then510.i_crit_edge ]
  %i2c_adap511.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  %call512.i = tail call ptr %cond5081166.i(ptr noundef nonnull @tda10086_config, ptr noundef %i2c_adap511.i) #6
  %cmp513.i = icmp eq ptr %call512.i, null
  br i1 %cmp513.i, label %if.then515.i, label %if.then526.i

if.then515.i:                                     ; preds = %if.then510.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.77) #6
  br label %sw.bb602.i

do.end520.i:                                      ; preds = %cond.end507.i
  call void @__sanitizer_cov_trace_pc() #8
  %call522.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #10
  br label %sw.bb602.i

if.then526.i:                                     ; preds = %if.then510.i
  %dvb_frontend527.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %134 = ptrtoint ptr %dvb_frontend527.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call512.i, ptr %dvb_frontend527.i, align 8
  %call530.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.82) #6
  %tobool531.not.i = icmp eq ptr %call530.i, null
  br i1 %tobool531.not.i, label %cond.end536.i, label %if.then526.i.if.then539.i_crit_edge

if.then526.i.if.then539.i_crit_edge:              ; preds = %if.then526.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then539.i

cond.end536.i:                                    ; preds = %if.then526.i
  %call534.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.83) #6
  %call535.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.82) #6
  %tobool538.not.i = icmp eq ptr %call535.i, null
  br i1 %tobool538.not.i, label %do.end549.i, label %cond.end536.i.if.then539.i_crit_edge

cond.end536.i.if.then539.i_crit_edge:             ; preds = %cond.end536.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then539.i

if.then539.i:                                     ; preds = %cond.end536.i.if.then539.i_crit_edge, %if.then526.i.if.then539.i_crit_edge
  %cond5371171.i = phi ptr [ %call535.i, %cond.end536.i.if.then539.i_crit_edge ], [ %call530.i, %if.then526.i.if.then539.i_crit_edge ]
  %call541.i = tail call ptr %cond5371171.i(ptr noundef nonnull %call512.i, i32 noundef 96, ptr noundef %i2c_adap511.i, i32 noundef 0) #6
  %cmp542.i = icmp eq ptr %call541.i, null
  br i1 %cmp542.i, label %if.then544.i, label %if.then539.i.if.end562.i_crit_edge

if.then539.i.if.end562.i_crit_edge:               ; preds = %if.then539.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end562.i

if.then544.i:                                     ; preds = %if.then539.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.82) #6
  br label %do.end559.i

do.end549.i:                                      ; preds = %cond.end536.i
  call void @__sanitizer_cov_trace_pc() #8
  %call551.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #10
  br label %do.end559.i

do.end559.i:                                      ; preds = %do.end549.i, %if.then544.i
  %call561.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.21) #10
  br label %if.end562.i

if.end562.i:                                      ; preds = %do.end559.i, %if.then539.i.if.end562.i_crit_edge
  %call565.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #6
  %tobool566.not.i = icmp eq ptr %call565.i, null
  br i1 %tobool566.not.i, label %cond.end571.i, label %if.end562.i.if.then574.i_crit_edge

if.end562.i.if.then574.i_crit_edge:               ; preds = %if.end562.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then574.i

cond.end571.i:                                    ; preds = %if.end562.i
  %call569.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.70) #6
  %call570.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #6
  %tobool573.not.i = icmp eq ptr %call570.i, null
  br i1 %tobool573.not.i, label %do.end584.i, label %cond.end571.i.if.then574.i_crit_edge

cond.end571.i.if.then574.i_crit_edge:             ; preds = %cond.end571.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then574.i

if.then574.i:                                     ; preds = %cond.end571.i.if.then574.i_crit_edge, %if.end562.i.if.then574.i_crit_edge
  %cond5721176.i = phi ptr [ %call570.i, %cond.end571.i.if.then574.i_crit_edge ], [ %call565.i, %if.end562.i.if.then574.i_crit_edge ]
  %call576.i = tail call ptr %cond5721176.i(ptr noundef nonnull %call512.i, ptr noundef %i2c_adap511.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %cmp577.i = icmp eq ptr %call576.i, null
  br i1 %cmp577.i, label %if.then579.i, label %if.then574.i.sw.epilog.i_crit_edge

if.then574.i.sw.epilog.i_crit_edge:               ; preds = %if.then574.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then579.i:                                     ; preds = %if.then574.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.69) #6
  br label %cleanup599.i

do.end584.i:                                      ; preds = %cond.end571.i
  call void @__sanitizer_cov_trace_pc() #8
  %call586.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #10
  br label %cleanup599.i

cleanup599.i:                                     ; preds = %do.end584.i, %if.then579.i
  %call596.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.21) #10
  br label %do.end889.i

sw.bb602.i:                                       ; preds = %do.end520.i, %if.then515.i, %if.end15.sw.bb602.i_crit_edge
  %135 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i, align 8
  tail call void @saa7146_setgpio(ptr noundef %136, i32 noundef 2, i32 noundef 64) #6
  tail call void @msleep(i32 noundef 50) #6
  %137 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i, align 8
  tail call void @saa7146_setgpio(ptr noundef %138, i32 noundef 2, i32 noundef 80) #6
  tail call void @msleep(i32 noundef 250) #6
  %call607.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.94) #6
  %tobool608.not.i = icmp eq ptr %call607.i, null
  br i1 %tobool608.not.i, label %cond.end613.i, label %sw.bb602.i.if.then616.i_crit_edge

sw.bb602.i.if.then616.i_crit_edge:                ; preds = %sw.bb602.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then616.i

cond.end613.i:                                    ; preds = %sw.bb602.i
  %call611.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.95) #6
  %call612.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.94) #6
  %tobool615.not.i = icmp eq ptr %call612.i, null
  br i1 %tobool615.not.i, label %do.end626.i, label %cond.end613.i.if.then616.i_crit_edge

cond.end613.i.if.then616.i_crit_edge:             ; preds = %cond.end613.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then616.i

if.then616.i:                                     ; preds = %cond.end613.i.if.then616.i_crit_edge, %sw.bb602.i.if.then616.i_crit_edge
  %cond6141184.i = phi ptr [ %call612.i, %cond.end613.i.if.then616.i_crit_edge ], [ %call607.i, %sw.bb602.i.if.then616.i_crit_edge ]
  %i2c_adap617.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  %call618.i = tail call ptr %cond6141184.i(ptr noundef nonnull @tt1600_stv090x_config, ptr noundef %i2c_adap617.i, i32 noundef 1) #6
  %cmp619.i = icmp eq ptr %call618.i, null
  br i1 %cmp619.i, label %if.then621.i, label %if.then634.i

if.then621.i:                                     ; preds = %if.then616.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.94) #6
  br label %if.end629.thread.i

do.end626.i:                                      ; preds = %cond.end613.i
  call void @__sanitizer_cov_trace_pc() #8
  %call628.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #10
  br label %if.end629.thread.i

if.end629.thread.i:                               ; preds = %do.end626.i, %if.then621.i
  %dvb_frontend6311186.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %139 = ptrtoint ptr %dvb_frontend6311186.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %dvb_frontend6311186.i, align 8
  br label %sw.epilog.i

if.then634.i:                                     ; preds = %if.then616.i
  %dvb_frontend631.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %140 = ptrtoint ptr %dvb_frontend631.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call618.i, ptr %dvb_frontend631.i, align 8
  %call637.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.99) #6
  %tobool638.not.i = icmp eq ptr %call637.i, null
  br i1 %tobool638.not.i, label %cond.end643.i, label %if.then634.i.if.then646.i_crit_edge

if.then634.i.if.then646.i_crit_edge:              ; preds = %if.then634.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then646.i

cond.end643.i:                                    ; preds = %if.then634.i
  %call641.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.100) #6
  %call642.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.99) #6
  %tobool645.not.i = icmp eq ptr %call642.i, null
  br i1 %tobool645.not.i, label %do.end657.i, label %cond.end643.i.if.then646.i_crit_edge

cond.end643.i.if.then646.i_crit_edge:             ; preds = %cond.end643.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then646.i

if.then646.i:                                     ; preds = %cond.end643.i.if.then646.i_crit_edge, %if.then634.i.if.then646.i_crit_edge
  %cond6441191.i = phi ptr [ %call642.i, %cond.end643.i.if.then646.i_crit_edge ], [ %call637.i, %if.then634.i.if.then646.i_crit_edge ]
  %141 = ptrtoint ptr %dvb_frontend631.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dvb_frontend631.i, align 8
  %call649.i = tail call ptr %cond6441191.i(ptr noundef %142, ptr noundef nonnull @tt1600_stv6110x_config, ptr noundef %i2c_adap617.i) #6
  %cmp650.i = icmp eq ptr %call649.i, null
  br i1 %cmp650.i, label %if.then652.i, label %if.then663.i

if.then652.i:                                     ; preds = %if.then646.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.99) #6
  br label %do.end713.i

do.end657.i:                                      ; preds = %cond.end643.i
  call void @__sanitizer_cov_trace_pc() #8
  %call659.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #10
  br label %do.end713.i

if.then663.i:                                     ; preds = %if.then646.i
  %143 = ptrtoint ptr %call649.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %call649.i, align 4
  store ptr %144, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 16), align 4
  %tuner_sleep.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call649.i, i32 0, i32 1
  %145 = ptrtoint ptr %tuner_sleep.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %tuner_sleep.i, align 4
  store ptr %146, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 17), align 4
  %tuner_set_mode.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call649.i, i32 0, i32 2
  %147 = ptrtoint ptr %tuner_set_mode.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tuner_set_mode.i, align 4
  store ptr %148, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 18), align 4
  %tuner_set_frequency.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call649.i, i32 0, i32 3
  %149 = ptrtoint ptr %tuner_set_frequency.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tuner_set_frequency.i, align 4
  store ptr %150, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 19), align 4
  %tuner_get_frequency.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call649.i, i32 0, i32 4
  %151 = ptrtoint ptr %tuner_get_frequency.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tuner_get_frequency.i, align 4
  store ptr %152, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 20), align 4
  %tuner_set_bandwidth.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call649.i, i32 0, i32 5
  %153 = ptrtoint ptr %tuner_set_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tuner_set_bandwidth.i, align 4
  store ptr %154, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 21), align 4
  %tuner_get_bandwidth.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call649.i, i32 0, i32 6
  %155 = ptrtoint ptr %tuner_get_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %tuner_get_bandwidth.i, align 4
  store ptr %156, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 22), align 4
  %tuner_set_bbgain.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call649.i, i32 0, i32 7
  %157 = ptrtoint ptr %tuner_set_bbgain.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %tuner_set_bbgain.i, align 4
  store ptr %158, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 23), align 4
  %tuner_get_bbgain.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call649.i, i32 0, i32 8
  %159 = ptrtoint ptr %tuner_get_bbgain.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tuner_get_bbgain.i, align 4
  store ptr %160, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 24), align 4
  %tuner_set_refclk.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call649.i, i32 0, i32 9
  %161 = ptrtoint ptr %tuner_set_refclk.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %tuner_set_refclk.i, align 4
  store ptr %162, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 25), align 4
  %tuner_get_status.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call649.i, i32 0, i32 10
  %163 = ptrtoint ptr %tuner_get_status.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %tuner_get_status.i, align 4
  store ptr %164, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 26), align 4
  %165 = ptrtoint ptr %dvb_frontend631.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dvb_frontend631.i, align 8
  %init.i = getelementptr inbounds %struct.dvb_frontend, ptr %166, i32 0, i32 1, i32 5
  %167 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %init.i, align 4
  %tobool666.not.i = icmp eq ptr %168, null
  br i1 %tobool666.not.i, label %if.then663.i.if.end673.i_crit_edge, label %if.then667.i

if.then663.i.if.end673.i_crit_edge:               ; preds = %if.then663.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end673.i

if.then667.i:                                     ; preds = %if.then663.i
  call void @__sanitizer_cov_trace_pc() #8
  %call672.i = tail call i32 %168(ptr noundef %166) #6
  br label %if.end673.i

if.end673.i:                                      ; preds = %if.then667.i, %if.then663.i.if.end673.i_crit_edge
  %call676.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.104) #6
  %tobool677.not.i = icmp eq ptr %call676.i, null
  br i1 %tobool677.not.i, label %cond.end682.i, label %if.end673.i.if.then685.i_crit_edge

if.end673.i.if.then685.i_crit_edge:               ; preds = %if.end673.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then685.i

cond.end682.i:                                    ; preds = %if.end673.i
  %call680.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.105) #6
  %call681.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.104) #6
  %tobool684.not.i = icmp eq ptr %call681.i, null
  br i1 %tobool684.not.i, label %do.end696.i, label %cond.end682.i.if.then685.i_crit_edge

cond.end682.i.if.then685.i_crit_edge:             ; preds = %cond.end682.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then685.i

if.then685.i:                                     ; preds = %cond.end682.i.if.then685.i_crit_edge, %if.end673.i.if.then685.i_crit_edge
  %cond6831197.i = phi ptr [ %call681.i, %cond.end682.i.if.then685.i_crit_edge ], [ %call676.i, %if.end673.i.if.then685.i_crit_edge ]
  %169 = ptrtoint ptr %dvb_frontend631.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dvb_frontend631.i, align 8
  %call688.i = tail call ptr %cond6831197.i(ptr noundef %170, ptr noundef %i2c_adap617.i, ptr noundef nonnull @tt1600_isl6423_config) #6
  %cmp689.i = icmp eq ptr %call688.i, null
  br i1 %cmp689.i, label %if.then691.i, label %if.then685.i.sw.epilog.i_crit_edge

if.then685.i.sw.epilog.i_crit_edge:               ; preds = %if.then685.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then691.i:                                     ; preds = %if.then685.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.104) #6
  br label %do.end706.i

do.end696.i:                                      ; preds = %cond.end682.i
  call void @__sanitizer_cov_trace_pc() #8
  %call698.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #10
  br label %do.end706.i

do.end706.i:                                      ; preds = %do.end696.i, %if.then691.i
  %call708.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.21) #10
  br label %do.end889.i

do.end713.i:                                      ; preds = %do.end657.i, %if.then652.i
  %call715.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.21) #10
  br label %do.end889.i

sw.bb721.i:                                       ; preds = %if.end15
  tail call void @saa7146_setgpio(ptr noundef %5, i32 noundef 2, i32 noundef 64) #6
  tail call void @msleep(i32 noundef 50) #6
  %171 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev.i, align 8
  tail call void @saa7146_setgpio(ptr noundef %172, i32 noundef 2, i32 noundef 80) #6
  tail call void @msleep(i32 noundef 250) #6
  %call727.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.94) #6
  %tobool728.not.i = icmp eq ptr %call727.i, null
  br i1 %tobool728.not.i, label %cond.end733.i, label %sw.bb721.i.if.then736.i_crit_edge

sw.bb721.i.if.then736.i_crit_edge:                ; preds = %sw.bb721.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then736.i

cond.end733.i:                                    ; preds = %sw.bb721.i
  %call731.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.95) #6
  %call732.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.94) #6
  %tobool735.not.i = icmp eq ptr %call732.i, null
  br i1 %tobool735.not.i, label %do.end746.i, label %cond.end733.i.if.then736.i_crit_edge

cond.end733.i.if.then736.i_crit_edge:             ; preds = %cond.end733.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then736.i

if.then736.i:                                     ; preds = %cond.end733.i.if.then736.i_crit_edge, %sw.bb721.i.if.then736.i_crit_edge
  %cond7341204.i = phi ptr [ %call732.i, %cond.end733.i.if.then736.i_crit_edge ], [ %call727.i, %sw.bb721.i.if.then736.i_crit_edge ]
  %i2c_adap737.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  %call738.i = tail call ptr %cond7341204.i(ptr noundef nonnull @tt1600_stv090x_config, ptr noundef %i2c_adap737.i, i32 noundef 1) #6
  %cmp739.i = icmp eq ptr %call738.i, null
  br i1 %cmp739.i, label %if.then741.i, label %do.end757.i

if.then741.i:                                     ; preds = %if.then736.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.94) #6
  br label %if.end749.thread.i

do.end746.i:                                      ; preds = %cond.end733.i
  call void @__sanitizer_cov_trace_pc() #8
  %call748.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #10
  br label %if.end749.thread.i

if.end749.thread.i:                               ; preds = %do.end746.i, %if.then741.i
  %dvb_frontend7511206.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %173 = ptrtoint ptr %dvb_frontend7511206.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %dvb_frontend7511206.i, align 8
  br label %sw.epilog.i

do.end757.i:                                      ; preds = %if.then736.i
  %dvb_frontend751.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %174 = ptrtoint ptr %dvb_frontend751.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call738.i, ptr %dvb_frontend751.i, align 8
  %call759.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #10
  %call762.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.99) #6
  %tobool763.not.i = icmp eq ptr %call762.i, null
  br i1 %tobool763.not.i, label %cond.end768.i, label %do.end757.i.if.then771.i_crit_edge

do.end757.i.if.then771.i_crit_edge:               ; preds = %do.end757.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then771.i

cond.end768.i:                                    ; preds = %do.end757.i
  %call766.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.100) #6
  %call767.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.99) #6
  %tobool770.not.i = icmp eq ptr %call767.i, null
  br i1 %tobool770.not.i, label %do.end782.i, label %cond.end768.i.if.then771.i_crit_edge

cond.end768.i.if.then771.i_crit_edge:             ; preds = %cond.end768.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then771.i

if.then771.i:                                     ; preds = %cond.end768.i.if.then771.i_crit_edge, %do.end757.i.if.then771.i_crit_edge
  %cond7691211.i = phi ptr [ %call767.i, %cond.end768.i.if.then771.i_crit_edge ], [ %call762.i, %do.end757.i.if.then771.i_crit_edge ]
  %175 = ptrtoint ptr %dvb_frontend751.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dvb_frontend751.i, align 8
  %call774.i = tail call ptr %cond7691211.i(ptr noundef %176, ptr noundef nonnull @tt1600_stv6110x_config, ptr noundef %i2c_adap737.i) #6
  %cmp775.i = icmp eq ptr %call774.i, null
  br i1 %cmp775.i, label %if.then777.i, label %if.then788.i

if.then777.i:                                     ; preds = %if.then771.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.99) #6
  br label %do.end850.i

do.end782.i:                                      ; preds = %cond.end768.i
  call void @__sanitizer_cov_trace_pc() #8
  %call784.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #10
  br label %do.end850.i

if.then788.i:                                     ; preds = %if.then771.i
  %177 = ptrtoint ptr %call774.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %call774.i, align 4
  store ptr %178, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 16), align 4
  %tuner_sleep790.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call774.i, i32 0, i32 1
  %179 = ptrtoint ptr %tuner_sleep790.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %tuner_sleep790.i, align 4
  store ptr %180, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 17), align 4
  %tuner_set_mode791.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call774.i, i32 0, i32 2
  %181 = ptrtoint ptr %tuner_set_mode791.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %tuner_set_mode791.i, align 4
  store ptr %182, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 18), align 4
  %tuner_set_frequency792.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call774.i, i32 0, i32 3
  %183 = ptrtoint ptr %tuner_set_frequency792.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %tuner_set_frequency792.i, align 4
  store ptr %184, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 19), align 4
  %tuner_get_frequency793.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call774.i, i32 0, i32 4
  %185 = ptrtoint ptr %tuner_get_frequency793.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %tuner_get_frequency793.i, align 4
  store ptr %186, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 20), align 4
  %tuner_set_bandwidth794.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call774.i, i32 0, i32 5
  %187 = ptrtoint ptr %tuner_set_bandwidth794.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %tuner_set_bandwidth794.i, align 4
  store ptr %188, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 21), align 4
  %tuner_get_bandwidth795.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call774.i, i32 0, i32 6
  %189 = ptrtoint ptr %tuner_get_bandwidth795.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %tuner_get_bandwidth795.i, align 4
  store ptr %190, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 22), align 4
  %tuner_set_bbgain796.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call774.i, i32 0, i32 7
  %191 = ptrtoint ptr %tuner_set_bbgain796.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %tuner_set_bbgain796.i, align 4
  store ptr %192, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 23), align 4
  %tuner_get_bbgain797.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call774.i, i32 0, i32 8
  %193 = ptrtoint ptr %tuner_get_bbgain797.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %tuner_get_bbgain797.i, align 4
  store ptr %194, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 24), align 4
  %tuner_set_refclk798.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call774.i, i32 0, i32 9
  %195 = ptrtoint ptr %tuner_set_refclk798.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %tuner_set_refclk798.i, align 4
  store ptr %196, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 25), align 4
  %tuner_get_status799.i = getelementptr inbounds %struct.stv6110x_devctl, ptr %call774.i, i32 0, i32 10
  %197 = ptrtoint ptr %tuner_get_status799.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %tuner_get_status799.i, align 4
  store ptr %198, ptr getelementptr inbounds (%struct.stv090x_config, ptr @tt1600_stv090x_config, i32 0, i32 26), align 4
  %199 = ptrtoint ptr %dvb_frontend751.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dvb_frontend751.i, align 8
  %init802.i = getelementptr inbounds %struct.dvb_frontend, ptr %200, i32 0, i32 1, i32 5
  %201 = ptrtoint ptr %init802.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %init802.i, align 4
  %tobool803.not.i = icmp eq ptr %202, null
  br i1 %tobool803.not.i, label %if.then788.i.if.end810.i_crit_edge, label %if.then804.i

if.then788.i.if.end810.i_crit_edge:               ; preds = %if.then788.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end810.i

if.then804.i:                                     ; preds = %if.then788.i
  call void @__sanitizer_cov_trace_pc() #8
  %call809.i = tail call i32 %202(ptr noundef %200) #6
  br label %if.end810.i

if.end810.i:                                      ; preds = %if.then804.i, %if.then788.i.if.end810.i_crit_edge
  %call813.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.122) #6
  %tobool814.not.i = icmp eq ptr %call813.i, null
  br i1 %tobool814.not.i, label %cond.end819.i, label %if.end810.i.if.then822.i_crit_edge

if.end810.i.if.then822.i_crit_edge:               ; preds = %if.end810.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then822.i

cond.end819.i:                                    ; preds = %if.end810.i
  %call817.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.123) #6
  %call818.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.122) #6
  %tobool821.not.i = icmp eq ptr %call818.i, null
  br i1 %tobool821.not.i, label %do.end833.i, label %cond.end819.i.if.then822.i_crit_edge

cond.end819.i.if.then822.i_crit_edge:             ; preds = %cond.end819.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then822.i

if.then822.i:                                     ; preds = %cond.end819.i.if.then822.i_crit_edge, %if.end810.i.if.then822.i_crit_edge
  %cond8201217.i = phi ptr [ %call818.i, %cond.end819.i.if.then822.i_crit_edge ], [ %call813.i, %if.end810.i.if.then822.i_crit_edge ]
  %203 = ptrtoint ptr %dvb_frontend751.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dvb_frontend751.i, align 8
  %call825.i = tail call ptr %cond8201217.i(ptr noundef %204, ptr noundef %i2c_adap737.i, i8 noundef zeroext -64, i8 noundef zeroext 32, i8 noundef zeroext 10) #6
  %cmp826.i = icmp eq ptr %call825.i, null
  br i1 %cmp826.i, label %if.then828.i, label %if.then822.i.sw.epilog.i_crit_edge

if.then822.i.sw.epilog.i_crit_edge:               ; preds = %if.then822.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then828.i:                                     ; preds = %if.then822.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.122) #6
  br label %do.end843.i

do.end833.i:                                      ; preds = %cond.end819.i
  call void @__sanitizer_cov_trace_pc() #8
  %call835.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125) #10
  br label %do.end843.i

do.end843.i:                                      ; preds = %do.end833.i, %if.then828.i
  %call845.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #10
  br label %do.end889.i

do.end850.i:                                      ; preds = %do.end782.i, %if.then777.i
  %call852.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.21) #10
  br label %do.end889.i

sw.epilog.i:                                      ; preds = %if.then822.i.sw.epilog.i_crit_edge, %if.end749.thread.i, %if.then685.i.sw.epilog.i_crit_edge, %if.end629.thread.i, %if.then574.i.sw.epilog.i_crit_edge, %if.then469.i.sw.epilog.i_crit_edge, %if.then417.i, %if.end412.thread.i, %if.then378.i, %if.end373.thread.i, %if.then336.i, %if.end331.thread.i, %do.end288.i, %if.end280.thread.i, %do.end238.i, %if.end230.thread.i, %i2c_readreg.exit.thread.i, %do.end185.i, %if.end177.thread.i, %if.then144.i, %if.end139.thread.i, %if.then108.i, %if.end103.thread.i, %if.then65.i, %land.lhs.true.i.sw.epilog.i_crit_edge, %if.then50.i.sw.epilog.i_crit_edge, %if.end45.thread.i, %if.then12.i, %if.end15.sw.epilog.i_crit_edge
  %dvb_frontend858.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %205 = ptrtoint ptr %dvb_frontend858.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dvb_frontend858.i, align 8
  %cmp859.i = icmp eq ptr %206, null
  br i1 %cmp859.i, label %do.end864.i, label %if.else880.i

do.end864.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %207 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev.i, align 8
  %pci867.i = getelementptr inbounds %struct.saa7146_dev, ptr %208, i32 0, i32 8
  %209 = ptrtoint ptr %pci867.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pci867.i, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %210, i32 0, i32 7
  %211 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %vendor.i, align 8
  %conv868.i = zext i16 %212 to i32
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %210, i32 0, i32 8
  %213 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %device.i, align 2
  %conv871.i = zext i16 %214 to i32
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %210, i32 0, i32 9
  %215 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %subsystem_vendor.i, align 4
  %conv874.i = zext i16 %216 to i32
  %subsystem_device877.i = getelementptr inbounds %struct.pci_dev, ptr %210, i32 0, i32 10
  %217 = ptrtoint ptr %subsystem_device877.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %subsystem_device877.i, align 2
  %conv878.i = zext i16 %218 to i32
  %call879.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %conv868.i, i32 noundef %conv871.i, i32 noundef %conv874.i, i32 noundef %conv878.i) #10
  br label %frontend_init.exit

if.else880.i:                                     ; preds = %sw.epilog.i
  %dvb_adapter.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 25
  %call882.i = call i32 @dvb_register_frontend(ptr noundef %dvb_adapter.i, ptr noundef nonnull %206) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call882.i)
  %tobool883.not.i = icmp eq i32 %call882.i, 0
  br i1 %tobool883.not.i, label %if.else880.i.frontend_init.exit_crit_edge, label %if.else880.i.do.end889.i_crit_edge

if.else880.i.do.end889.i_crit_edge:               ; preds = %if.else880.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end889.i

if.else880.i.frontend_init.exit_crit_edge:        ; preds = %if.else880.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %frontend_init.exit

do.end889.i:                                      ; preds = %if.else880.i.do.end889.i_crit_edge, %do.end850.i, %do.end843.i, %do.end713.i, %do.end706.i, %cleanup599.i, %cleanup494.i
  %call891.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #10
  %dvb_frontend892.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %219 = ptrtoint ptr %dvb_frontend892.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dvb_frontend892.i, align 8
  call void @dvb_frontend_detach(ptr noundef %220) #6
  %221 = ptrtoint ptr %dvb_frontend892.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr null, ptr %dvb_frontend892.i, align 8
  br label %frontend_init.exit

frontend_init.exit:                               ; preds = %do.end889.i, %if.else880.i.frontend_init.exit_crit_edge, %do.end864.i
  call void @ttpci_budget_init_hooks(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %frontend_init.exit, %do.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end12 ], [ 0, %frontend_init.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_detach(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_priv, align 4
  %dvb_frontend = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb_frontend, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %3) #6
  %4 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvb_frontend, align 8
  tail call void @dvb_frontend_detach(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @ttpci_budget_deinit(ptr noundef %1) #6
  tail call void @kfree(ptr noundef %1) #6
  %6 = ptrtoint ptr %ext_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ext_priv, align 4
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttpci_budget_irq10_handler(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_budget_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttpci_budget_init_hooks(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsrv2_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #6
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf1, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %14, 479500
  %div2 = udiv i32 %add, 125
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %14)
  %cmp = icmp ugt i32 %14, 2000000
  br i1 %cmp, label %entry.if.end23_crit_edge, label %if.else

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800000, i32 %14)
  %cmp5 = icmp ugt i32 %14, 1800000
  br i1 %cmp5, label %if.else.if.end23_crit_edge, label %if.else7

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000, i32 %14)
  %cmp9 = icmp ugt i32 %14, 1600000
  br i1 %cmp9, label %if.else7.if.end23_crit_edge, label %if.else11

if.else7.if.end23_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.else11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %14)
  %cmp13 = icmp ugt i32 %14, 1200000
  br i1 %cmp13, label %if.else11.if.end23_crit_edge, label %if.else15

if.else11.if.end23_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.else15:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1099999, i32 %14)
  %cmp17 = icmp ugt i32 %14, 1099999
  %. = select i1 %cmp17, i8 112, i8 -80
  br label %if.end23

if.end23:                                         ; preds = %if.else15, %if.else11.if.end23_crit_edge, %if.else7.if.end23_crit_edge, %if.else.if.end23_crit_edge, %entry.if.end23_crit_edge
  %pwr.0 = phi i8 [ -16, %entry.if.end23_crit_edge ], [ -80, %if.else.if.end23_crit_edge ], [ 112, %if.else7.if.end23_crit_edge ], [ 48, %if.else11.if.end23_crit_edge ], [ %., %if.else15 ]
  %shr = lshr i32 %div2, 8
  %15 = trunc i32 %shr to i8
  %conv = and i8 %15, 127
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %buf, align 1
  %conv25 = trunc i32 %div2 to i8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv25, ptr %4, align 1
  %and27 = lshr i32 %div2, 10
  %18 = trunc i32 %and27 to i8
  %19 = and i8 %18, 96
  %conv29 = or i8 %19, -107
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv29, ptr %5, align 1
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %pwr.0, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end23.if.end38_crit_edge, label %if.then35

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then35:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end23.if.end38_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 3
  %call39 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 1
  %.61 = select i1 %cmp40.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #6
  ret i32 %.61
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_diseqc_send_master_cmd(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msg_len, align 1
  %conv = zext i8 %5 to i32
  tail call fastcc void @SendDiSEqCMsg(ptr noundef %3, i32 noundef %conv, ptr noundef %cmd, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_diseqc_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %minicmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call fastcc void @SendDiSEqCMsg(ptr noundef %3, i32 noundef 0, ptr noundef null, i32 noundef %minicmd)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %tone, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %7 = load i32, ptr @budget_debug, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.Set22K.exit_crit_edge, label %do.end.i

sw.bb.Set22K.exit_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %Set22K.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.142, ptr noundef %3) #10
  br label %Set22K.exit

Set22K.exit:                                      ; preds = %do.end.i, %sw.bb.Set22K.exit_crit_edge
  tail call void @saa7146_setgpio(ptr noundef %6, i32 noundef 3, i32 noundef 80) #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %dev1.i3 = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %dev1.i3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %10 = load i32, ptr @budget_debug, align 4
  %and.i4 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i5, label %sw.bb1.Set22K.exit8_crit_edge, label %do.end.i7

sw.bb1.Set22K.exit8_crit_edge:                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %Set22K.exit8

do.end.i7:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.142, ptr noundef %3) #10
  br label %Set22K.exit8

Set22K.exit8:                                     ; preds = %do.end.i7, %sw.bb1.Set22K.exit8_crit_edge
  tail call void @saa7146_setgpio(ptr noundef %9, i32 noundef 3, i32 noundef 64) #6
  br label %cleanup

cleanup:                                          ; preds = %Set22K.exit8, %Set22K.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %Set22K.exit8 ], [ 0, %Set22K.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsru6_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %buf1, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_priv, align 4
  %8 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dtv_property_cache, align 4
  %10 = add i32 %9, -2150001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1200001, i32 %10)
  %11 = icmp ult i32 %10, -1200001
  br i1 %11, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %13 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %14 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %add = add nuw nsw i32 %9, 124
  %div5 = udiv i32 %add, 125
  %shr = lshr i32 %div5, 8
  %15 = trunc i32 %shr to i8
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %buf, align 1
  %conv7 = trunc i32 %div5 to i8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7, ptr %14, align 1
  %and9 = lshr i32 %div5, 10
  %18 = trunc i32 %and9 to i8
  %19 = and i8 %18, 96
  %conv12 = or i8 %19, -124
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv12, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1530000, i32 %9)
  %cmp16 = icmp ugt i32 %9, 1530000
  %spec.store.select = select i1 %cmp16, i8 -64, i8 -60
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.store.select, ptr %12, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end.if.end24_crit_edge, label %if.then21

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end.if.end24_crit_edge
  %call25 = call i32 @i2c_transfer(ptr noundef %7, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 1
  %. = select i1 %cmp26.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end24 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_tdbe2_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 98, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %buf, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %add1 = add i32 %14, 35968750
  %div2 = udiv i32 %add1, 62500
  %shr = lshr i32 %div2, 8
  %15 = trunc i32 %shr to i8
  %conv = and i8 %15, 127
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %data, align 1
  %conv4 = trunc i32 %div2 to i8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4, ptr %4, align 1
  %shr6 = lshr i32 %div2, 10
  %18 = trunc i32 %shr6 to i8
  %19 = and i8 %18, 96
  %conv8 = or i8 %19, -123
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 174000000, i32 %14)
  %cmp = icmp ult i32 %14, 174000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 470000000, i32 %14)
  %cmp13 = icmp ult i32 %14, 470000000
  %phi.cast = select i1 %cmp13, i8 -124, i8 -127
  %cond15 = select i1 %cmp, i8 -120, i8 %phi.cast
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %cond15, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 3
  %call20 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 1
  %. = select i1 %cmp21.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grundig_29504_401_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %4 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %6 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %9 = getelementptr inbounds i8, ptr %msg, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %buf, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %5, align 1
  %conv = zext i8 %15 to i16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i16 [ %conv, %if.then ], [ 97, %entry.if.end_crit_edge ]
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %storemerge, ptr %msg, align 4
  %17 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %18, 36125000
  %div3 = udiv i32 %add, 166666
  call void @__sanitizer_cov_trace_const_cmp4(i32 175000000, i32 %18)
  %cmp = icmp ult i32 %18, 175000000
  br i1 %cmp, label %if.end.if.end26_crit_edge, label %if.else7

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.else7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 390000000, i32 %18)
  %cmp9 = icmp ult i32 %18, 390000000
  br i1 %cmp9, label %if.else7.if.end26_crit_edge, label %if.else12

if.else7.if.end26_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.else12:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 470000000, i32 %18)
  %cmp14 = icmp ult i32 %18, 470000000
  br i1 %cmp14, label %if.else12.if.end26_crit_edge, label %if.else17

if.else12.if.end26_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.else17:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 750000000, i32 %18)
  %cmp19 = icmp ult i32 %18, 750000000
  %. = select i1 %cmp19, i8 64, i8 -64
  br label %if.end26

if.end26:                                         ; preds = %if.else17, %if.else12.if.end26_crit_edge, %if.else7.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %cpump.0 = phi i8 [ -128, %if.end.if.end26_crit_edge ], [ 64, %if.else7.if.end26_crit_edge ], [ -128, %if.else12.if.end26_crit_edge ], [ %., %if.else17 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 470000000, i32 %18)
  %cmp33 = icmp ult i32 %18, 470000000
  %.88 = select i1 %cmp33, i8 5, i8 3
  %band_select.0 = select i1 %cmp, i8 14, i8 %.88
  %shr = lshr i32 %div3, 8
  %conv39 = trunc i32 %shr to i8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv39, ptr %data, align 1
  %conv41 = trunc i32 %div3 to i8
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv41, ptr %6, align 1
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -120, ptr %7, align 1
  %or50 = or i8 %cpump.0, %band_select.0
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or50, ptr %8, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %23 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool53.not = icmp eq ptr %24, null
  br i1 %tobool53.not, label %if.end26.if.end57_crit_edge, label %if.then54

if.end26.if.end57_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then54:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %24(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end26.if.end57_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 3
  %call58 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call58)
  %cmp59.not = icmp eq i32 %call58, 1
  %.89 = select i1 %cmp59.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %.89
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siemens_budget_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev1.i = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %6 = load i32, ptr @budget_debug, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %do.end.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.143, ptr noundef %3) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %entry.do.end4.i_crit_edge
  %7 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %voltage, label %do.end4.i.SetVoltage_Activy.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb5.i
    i32 2, label %sw.bb6.i
  ]

do.end4.i.SetVoltage_Activy.exit_crit_edge:       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %SetVoltage_Activy.exit

sw.bb.i:                                          ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @saa7146_setgpio(ptr noundef %5, i32 noundef 1, i32 noundef 80) #6
  tail call void @saa7146_setgpio(ptr noundef %5, i32 noundef 2, i32 noundef 64) #6
  br label %SetVoltage_Activy.exit

sw.bb5.i:                                         ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @saa7146_setgpio(ptr noundef %5, i32 noundef 1, i32 noundef 80) #6
  tail call void @saa7146_setgpio(ptr noundef %5, i32 noundef 2, i32 noundef 80) #6
  br label %SetVoltage_Activy.exit

sw.bb6.i:                                         ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @saa7146_setgpio(ptr noundef %5, i32 noundef 1, i32 noundef 64) #6
  br label %SetVoltage_Activy.exit

SetVoltage_Activy.exit:                           ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb.i, %do.end4.i.SetVoltage_Activy.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end4.i.SetVoltage_Activy.exit_crit_edge ], [ 0, %sw.bb6.i ], [ 0, %sw.bb5.i ], [ 0, %sw.bb.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_setgpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsbe1_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %buf, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_priv, align 4
  %8 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dtv_property_cache, align 4
  %10 = add i32 %9, -2150001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1200001, i32 %10)
  %11 = icmp ult i32 %10, -1200001
  br i1 %11, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %13 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %14 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %div4 = udiv i32 %9, 1000
  %shr = lshr i32 %div4, 8
  %15 = trunc i32 %shr to i8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %data, align 1
  %conv6 = trunc i32 %div4 to i8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6, ptr %14, align 1
  %and8 = lshr i32 %div4, 10
  %18 = trunc i32 %and8 to i8
  %19 = and i8 %18, 96
  %conv11 = or i8 %19, -127
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv11, ptr %13, align 1
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -32, ptr %12, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then14

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  %call18 = call i32 @i2c_transfer(ptr noundef %7, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 1
  %cond = select i1 %cmp19.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end17 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grundig_29504_451_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %buf, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %div1 = udiv i32 %14, 125
  %shr = lshr i32 %div1, 8
  %15 = trunc i32 %shr to i8
  %conv = and i8 %15, 127
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %data, align 1
  %conv3 = trunc i32 %div1 to i8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3, ptr %4, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -114, ptr %5, align 1
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %20 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %21(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 3
  %call9 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 1
  %. = select i1 %cmp.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_tdhd1_204a_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %2 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %data, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %buf, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %14, 36166666
  %div1 = udiv i32 %add, 166666
  %shr = lshr i32 %div1, 8
  %conv = trunc i32 %shr to i8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %data, align 1
  %conv3 = trunc i32 %div1 to i8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3, ptr %2, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -123, ptr %3, align 1
  %18 = add i32 %14, -174000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 56000001, i32 %18)
  %19 = icmp ult i32 %18, 56000001
  br i1 %19, label %entry.if.end33_crit_edge, label %if.else

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.else:                                          ; preds = %entry
  %20 = add i32 %14, -470000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 353000001, i32 %20)
  %21 = icmp ult i32 %20, 353000001
  br i1 %21, label %if.else.if.end33_crit_edge, label %if.else21

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.else21:                                        ; preds = %if.else
  %22 = add i32 %14, -823000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 39000000, i32 %22)
  %23 = icmp ult i32 %22, 39000000
  br i1 %23, label %if.else21.if.end33_crit_edge, label %if.else21.cleanup_crit_edge

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else21.if.end33_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end33:                                         ; preds = %if.else21.if.end33_crit_edge, %if.else.if.end33_crit_edge, %entry.if.end33_crit_edge
  %.sink = phi i8 [ 2, %entry.if.end33_crit_edge ], [ 12, %if.else.if.end33_crit_edge ], [ -116, %if.else21.if.end33_crit_edge ]
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink, ptr %4, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %25 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %if.end33.if.end37_crit_edge, label %if.then34

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then34:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %26(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end33.if.end37_crit_edge
  %call38 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 1
  %. = select i1 %cmp39.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.else21.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else21.cleanup_crit_edge ], [ %., %if.end37 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %7 = getelementptr inbounds i8, ptr %data, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %9 = getelementptr inbounds i8, ptr %msg, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data, ptr %buf, align 4
  %15 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dtv_property_cache, align 4
  %div1 = udiv i32 %16, 1000
  %shr = lshr i32 %div1, 8
  %17 = trunc i32 %shr to i8
  %conv = and i8 %17, 127
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %data, align 1
  %conv3 = trunc i32 %div1 to i8
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv3, ptr %4, align 1
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -62, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1450000, i32 %16)
  %cmp = icmp ult i32 %16, 1450000
  br i1 %cmp, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1850000, i32 %16)
  %cmp8 = icmp ult i32 %16, 1850000
  br i1 %cmp8, label %if.else.if.end20_crit_edge, label %if.else12

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %16)
  %cmp13 = icmp ult i32 %16, 2000000
  %.42 = select i1 %cmp13, i8 -128, i8 -64
  br label %if.end20

if.end20:                                         ; preds = %if.else12, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %.sink = phi i8 [ 0, %entry.if.end20_crit_edge ], [ 64, %if.else.if.end20_crit_edge ], [ %.42, %if.else12 ]
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end20.if.end24_crit_edge, label %if.then21

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then21:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end20.if.end24_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 3
  %call25 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 1
  %. = select i1 %cmp26.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsbe1_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %srate)
  %cmp = icmp ult i32 %srate, 1500000
  br i1 %cmp, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 3000000
  br i1 %cmp1, label %if.else.if.end19_crit_edge, label %if.else3

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 7000000
  br i1 %cmp4, label %if.else3.if.end19_crit_edge, label %if.else6

if.else3.if.end19_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 14000000
  br i1 %cmp7, label %if.else6.if.end19_crit_edge, label %if.else9

if.else6.if.end19_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %srate)
  %cmp10 = icmp ult i32 %srate, 30000000
  br i1 %cmp10, label %if.else9.if.end19_crit_edge, label %if.else12

if.else9.if.end19_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp13 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp13, i8 -76, i8 0
  %spec.select40 = select i1 %cmp13, i8 81, i8 0
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.else9.if.end19_crit_edge, %if.else6.if.end19_crit_edge, %if.else3.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %aclk.0 = phi i8 [ -73, %entry.if.end19_crit_edge ], [ -73, %if.else.if.end19_crit_edge ], [ -73, %if.else3.if.end19_crit_edge ], [ -73, %if.else6.if.end19_crit_edge ], [ -74, %if.else9.if.end19_crit_edge ], [ %spec.select, %if.else12 ]
  %bclk.0 = phi i8 [ 71, %entry.if.end19_crit_edge ], [ 75, %if.else.if.end19_crit_edge ], [ 79, %if.else3.if.end19_crit_edge ], [ 83, %if.else6.if.end19_crit_edge ], [ 83, %if.else9.if.end19_crit_edge ], [ %spec.select40, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 19, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %aclk.0, ptr %0, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %stv0299_writereg.exit.thread, label %stv0299_writereg.exit

stv0299_writereg.exit.thread:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #6
  br label %stv0299_writereg.exit46

stv0299_writereg.exit:                            ; preds = %if.end19
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #6
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #6
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i41, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i41 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %buf.i41, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bclk.0, ptr %6, align 1
  %tobool.not.i43 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i43, label %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, label %if.then.i45

stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge: ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0299_writereg.exit46

if.then.i45:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i44 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i41, i32 noundef 2) #6
  br label %stv0299_writereg.exit46

stv0299_writereg.exit46:                          ; preds = %if.then.i45, %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #6
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #6
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i47, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i47 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 31, ptr %buf.i47, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %9, align 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %tobool.not.i49 = icmp eq ptr %13, null
  br i1 %tobool.not.i49, label %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge, label %if.then.i51

stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge: ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0299_writereg.exit52

if.then.i51:                                      ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #8
  %call.i50 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i47, i32 noundef 2) #6
  br label %stv0299_writereg.exit52

stv0299_writereg.exit52:                          ; preds = %if.then.i51, %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #6
  %shr22 = lshr i32 %ratio, 8
  %conv24 = trunc i32 %shr22 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #6
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %buf.i53, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv24, ptr %14, align 1
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %tobool.not.i55 = icmp eq ptr %18, null
  br i1 %tobool.not.i55, label %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge, label %if.then.i57

stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge: ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0299_writereg.exit58

if.then.i57:                                      ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #8
  %call.i56 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i53, i32 noundef 2) #6
  br label %stv0299_writereg.exit58

stv0299_writereg.exit58:                          ; preds = %if.then.i57, %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #6
  %19 = trunc i32 %ratio to i8
  %conv27 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #6
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i59, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 33, ptr %buf.i59, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv27, ptr %20, align 1
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %tobool.not.i61 = icmp eq ptr %24, null
  br i1 %tobool.not.i61, label %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge, label %if.then.i63

stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge: ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0299_writereg.exit64

if.then.i63:                                      ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #8
  %call.i62 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i59, i32 noundef 2) #6
  br label %stv0299_writereg.exit64

stv0299_writereg.exit64:                          ; preds = %if.then.i63, %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SendDiSEqCMsg(ptr noundef %budget, i32 noundef %len, ptr nocapture noundef readonly %msg, i32 noundef %burst) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.budget, ptr %budget, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %2 = load i32, ptr @budget_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, ptr noundef %budget) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  tail call void @saa7146_setgpio(ptr noundef %1, i32 noundef 3, i32 noundef 64) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp2 = icmp sgt i32 %len, 0
  br i1 %cmp2, label %do.end4.for.body_crit_edge, label %do.end4.while.cond7.preheader_crit_edge

do.end4.while.cond7.preheader_crit_edge:          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond7.preheader

do.end4.for.body_crit_edge:                       ; preds = %do.end4
  br label %for.body

while.cond7.preheader:                            ; preds = %for.body.while.cond7.preheader_crit_edge, %do.end4.while.cond7.preheader_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #6
  %35 = zext i32 %burst to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %burst, label %if.then16 [
    i32 -1, label %while.cond7.preheader.if.end24_crit_edge
    i32 0, label %if.else
  ]

while.cond7.preheader.if.end24_crit_edge:         ; preds = %while.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end4.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end4.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %msg, i32 %i.03
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %37 to i32
  tail call fastcc void @DiseqcSendByte(ptr noundef %budget, i32 noundef %conv)
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.while.cond7.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.while.cond7.preheader_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond7.preheader

if.then16:                                        ; preds = %while.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @DiseqcSendByte(ptr noundef %budget, i32 noundef 255)
  br label %if.end23

if.else:                                          ; preds = %while.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @saa7146_setgpio(ptr noundef %1, i32 noundef 3, i32 noundef 80) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 107374000) #6
  tail call void @saa7146_setgpio(ptr noundef %1, i32 noundef 3, i32 noundef 64) #6
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then16
  tail call void @msleep(i32 noundef 20) #6
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %while.cond7.preheader.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @DiseqcSendByte(ptr noundef %budget, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %0 = load i32, ptr @budget_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.140, ptr noundef %budget) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %dev1.i = getelementptr inbounds %struct.budget, ptr %budget, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end4.i.for.body_crit_edge, %do.end3
  %i.030 = phi i32 [ 7, %do.end3 ], [ %dec, %do.end4.i.for.body_crit_edge ]
  %par.029 = phi i32 [ 1, %do.end3 ], [ %xor, %do.end4.i.for.body_crit_edge ]
  %shr11 = lshr i32 %data, %i.030
  %and4 = and i32 %shr11, 1
  %xor = xor i32 %and4, %par.029
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %3 = load i32, ptr @budget_debug, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.do.end4.i_crit_edge, label %do.end.i

for.body.do.end4.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.141, ptr noundef %budget) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %for.body.do.end4.i_crit_edge
  tail call void @saa7146_setgpio(ptr noundef %2, i32 noundef 3, i32 noundef 80) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not.i = icmp eq i32 %and4, 0
  %cond.i = select i1 %tobool5.not.i, i32 1000, i32 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %4(i32 noundef %cond.i) #6
  tail call void @saa7146_setgpio(ptr noundef %2, i32 noundef 3, i32 noundef 64) #6
  %cond16.i = select i1 %tobool5.not.i, i32 500, i32 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %cond16.i) #6
  %dec = add nsw i32 %i.030, -1
  %cmp.not = icmp eq i32 %i.030, 0
  br i1 %cmp.not, label %for.end, label %do.end4.i.for.body_crit_edge

do.end4.i.for.body_crit_edge:                     ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %do.end4.i
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %8 = load i32, ptr @budget_debug, align 4
  %and.i13 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  br i1 %tobool.not.i14, label %for.end.do.end4.i19_crit_edge, label %do.end.i16

for.end.do.end4.i19_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i19

do.end.i16:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.141, ptr noundef %budget) #10
  br label %do.end4.i19

do.end4.i19:                                      ; preds = %do.end.i16, %for.end.do.end4.i19_crit_edge
  tail call void @saa7146_setgpio(ptr noundef %7, i32 noundef 3, i32 noundef 80) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool5.not.i17 = icmp eq i32 %xor, 0
  %cond.i18 = select i1 %tobool5.not.i17, i32 1000, i32 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %9(i32 noundef %cond.i18) #6
  tail call void @saa7146_setgpio(ptr noundef %7, i32 noundef 3, i32 noundef 64) #6
  %cond16.i23 = select i1 %tobool5.not.i17, i32 500, i32 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %cond16.i23) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsru6_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %srate)
  %cmp = icmp ult i32 %srate, 1500000
  br i1 %cmp, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 3000000
  br i1 %cmp1, label %if.else.if.end19_crit_edge, label %if.else3

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 7000000
  br i1 %cmp4, label %if.else3.if.end19_crit_edge, label %if.else6

if.else3.if.end19_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 14000000
  br i1 %cmp7, label %if.else6.if.end19_crit_edge, label %if.else9

if.else6.if.end19_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %srate)
  %cmp10 = icmp ult i32 %srate, 30000000
  br i1 %cmp10, label %if.else9.if.end19_crit_edge, label %if.else12

if.else9.if.end19_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp13 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp13, i8 -76, i8 0
  %spec.select40 = select i1 %cmp13, i8 81, i8 0
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.else9.if.end19_crit_edge, %if.else6.if.end19_crit_edge, %if.else3.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %aclk.0 = phi i8 [ -73, %entry.if.end19_crit_edge ], [ -73, %if.else.if.end19_crit_edge ], [ -73, %if.else3.if.end19_crit_edge ], [ -73, %if.else6.if.end19_crit_edge ], [ -74, %if.else9.if.end19_crit_edge ], [ %spec.select, %if.else12 ]
  %bclk.0 = phi i8 [ 71, %entry.if.end19_crit_edge ], [ 75, %if.else.if.end19_crit_edge ], [ 79, %if.else3.if.end19_crit_edge ], [ 83, %if.else6.if.end19_crit_edge ], [ 83, %if.else9.if.end19_crit_edge ], [ %spec.select40, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 19, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %aclk.0, ptr %0, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %stv0299_writereg.exit.thread, label %stv0299_writereg.exit

stv0299_writereg.exit.thread:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #6
  br label %stv0299_writereg.exit46

stv0299_writereg.exit:                            ; preds = %if.end19
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #6
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #6
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i41, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i41 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %buf.i41, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bclk.0, ptr %6, align 1
  %tobool.not.i43 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i43, label %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, label %if.then.i45

stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge: ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0299_writereg.exit46

if.then.i45:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i44 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i41, i32 noundef 2) #6
  br label %stv0299_writereg.exit46

stv0299_writereg.exit46:                          ; preds = %if.then.i45, %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #6
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #6
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i47, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i47 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 31, ptr %buf.i47, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %9, align 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %tobool.not.i49 = icmp eq ptr %13, null
  br i1 %tobool.not.i49, label %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge, label %if.then.i51

stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge: ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0299_writereg.exit52

if.then.i51:                                      ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #8
  %call.i50 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i47, i32 noundef 2) #6
  br label %stv0299_writereg.exit52

stv0299_writereg.exit52:                          ; preds = %if.then.i51, %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #6
  %shr22 = lshr i32 %ratio, 8
  %conv24 = trunc i32 %shr22 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #6
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %buf.i53, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv24, ptr %14, align 1
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %tobool.not.i55 = icmp eq ptr %18, null
  br i1 %tobool.not.i55, label %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge, label %if.then.i57

stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge: ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0299_writereg.exit58

if.then.i57:                                      ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #8
  %call.i56 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i53, i32 noundef 2) #6
  br label %stv0299_writereg.exit58

stv0299_writereg.exit58:                          ; preds = %if.then.i57, %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #6
  %19 = trunc i32 %ratio to i8
  %conv27 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #6
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i59, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 33, ptr %buf.i59, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv27, ptr %20, align 1
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %tobool.not.i61 = icmp eq ptr %24, null
  br i1 %tobool.not.i61, label %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge, label %if.then.i63

stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge: ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0299_writereg.exit64

if.then.i63:                                      ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #8
  %call.i62 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i59, i32 noundef 2) #6
  br label %stv0299_writereg.exit64

stv0299_writereg.exit64:                          ; preds = %if.then.i63, %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_tdhd1_204_request_firmware(ptr nocapture noundef readonly %fe, ptr noundef %fw, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef %name, ptr noundef %dev1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_budget_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_register_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 162)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 162)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !94, !95, !97, !98, !99, !100, !101, !103, !104, !105, !106, !107, !109, !110, !111, !112, !113, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !129, !130, !132, !133, !134, !136, !137, !138, !139, !140, !142, !143, !144, !145, !146, !148, !149, !151, !152, !153, !154, !155, !157, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !171, !173, !174, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !189, !190, !191, !192, !193, !195, !196, !197, !198, !199, !201, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !218, !219, !220, !222, !223, !225, !226, !227, !228, !229, !231, !232, !233, !235, !236, !238, !239, !240, !242, !243, !244, !246, !248, !250, !252, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !271, !273, !275, !277, !279, !280, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299}
!llvm.module.flags = !{!301, !302, !303, !304, !305, !306, !307, !308}
!llvm.ident = !{!309}

!0 = !{ptr @__param_diseqc_method, !1, !"__param_diseqc_method", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ttpci/budget.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_diseqc_methodtype385, !1, !"__UNIQUE_ID_diseqc_methodtype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_diseqc_method386, !4, !"__UNIQUE_ID_diseqc_method386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/ttpci/budget.c", i32 41, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/ttpci/budget.c", i32 43, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype387, !6, !"__UNIQUE_ID_adapter_nrtype387", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr388, !6, !"__UNIQUE_ID_adapter_nr388", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_budget__389_878_budget_init6, !10, !"__initcall__kmod_budget__389_878_budget_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/ttpci/budget.c", i32 878, i32 1}
!11 = !{ptr @__exitcall_budget_exit, !12, !"__exitcall_budget_exit", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/ttpci/budget.c", i32 879, i32 1}
!13 = !{ptr @__UNIQUE_ID_file390, !14, !"__UNIQUE_ID_file390", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/ttpci/budget.c", i32 881, i32 1}
!15 = !{ptr @__UNIQUE_ID_license391, !14, !"__UNIQUE_ID_license391", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author392, !17, !"__UNIQUE_ID_author392", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/ttpci/budget.c", i32 882, i32 1}
!18 = !{ptr @__UNIQUE_ID_description393, !19, !"__UNIQUE_ID_description393", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/ttpci/budget.c", i32 883, i32 1}
!20 = !{ptr @diseqc_method, !21, !"diseqc_method", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/ttpci/budget.c", i32 39, i32 12}
!22 = !{ptr @__param_str_diseqc_method, !1, !"__param_str_diseqc_method", i1 false, i1 false}
!23 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!24 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!25 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!26 = !{ptr @budget_extension, !27, !"budget_extension", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/ttpci/budget.c", i32 855, i32 33}
!28 = !{ptr @pci_tbl, !29, !"pci_tbl", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/ttpci/budget.c", i32 834, i32 35}
!30 = !{ptr @ttbs, !31, !"ttbs", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/ttpci/budget.c", i32 821, i32 1}
!32 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ttbs_info, !31, !"ttbs_info", i1 false, i1 false}
!34 = !{ptr @ttbc, !35, !"ttbc", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/ttpci/budget.c", i32 822, i32 1}
!36 = !{ptr @.str.1, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ttbc_info, !35, !"ttbc_info", i1 false, i1 false}
!38 = !{ptr @ttbt, !39, !"ttbt", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/ttpci/budget.c", i32 823, i32 1}
!40 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ttbt_info, !39, !"ttbt_info", i1 false, i1 false}
!42 = !{ptr @satel, !43, !"satel", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/ttpci/budget.c", i32 824, i32 1}
!44 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @satel_info, !43, !"satel_info", i1 false, i1 false}
!46 = !{ptr @ttbs1401, !47, !"ttbs1401", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/ttpci/budget.c", i32 825, i32 1}
!48 = !{ptr @.str.4, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ttbs1401_info, !47, !"ttbs1401_info", i1 false, i1 false}
!50 = !{ptr @tt1600, !51, !"tt1600", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/ttpci/budget.c", i32 826, i32 1}
!52 = !{ptr @.str.5, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @tt1600_info, !51, !"tt1600_info", i1 false, i1 false}
!54 = !{ptr @fsacs1, !55, !"fsacs1", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/ttpci/budget.c", i32 828, i32 1}
!56 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @fsacs1_info, !55, !"fsacs1_info", i1 false, i1 false}
!58 = !{ptr @fsacs0, !59, !"fsacs0", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/ttpci/budget.c", i32 827, i32 1}
!60 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @fsacs0_info, !59, !"fsacs0_info", i1 false, i1 false}
!62 = !{ptr @fsact1, !63, !"fsact1", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/ttpci/budget.c", i32 830, i32 1}
!64 = !{ptr @.str.8, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @fsact1_info, !63, !"fsact1_info", i1 false, i1 false}
!66 = !{ptr @fsact, !67, !"fsact", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/ttpci/budget.c", i32 829, i32 1}
!68 = !{ptr @.str.9, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @fsact_info, !67, !"fsact_info", i1 false, i1 false}
!70 = !{ptr @omicom, !71, !"omicom", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/ttpci/budget.c", i32 831, i32 1}
!72 = !{ptr @.str.10, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @omicom_info, !71, !"omicom_info", i1 false, i1 false}
!74 = !{ptr @sylt, !75, !"sylt", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/ttpci/budget.c", i32 832, i32 1}
!76 = !{ptr @.str.11, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sylt_info, !75, !"sylt_info", i1 false, i1 false}
!78 = !{ptr @.str.12, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/ttpci/budget.c", i32 782, i32 2}
!80 = !{ptr @.str.13, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.14, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @budget_attach._entry, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @budget_attach._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.16, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/ttpci/budget.c", i32 788, i32 3}
!86 = !{ptr @budget_attach._entry.15, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @budget_attach._entry_ptr.17, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.18, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/ttpci/budget.c", i32 485, i32 26}
!90 = !{ptr @.str.19, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.20, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @frontend_init._entry, !89, !"_entry", i1 false, i1 false}
!94 = !{ptr @frontend_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.22, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/ttpci/budget.c", i32 495, i32 26}
!97 = !{ptr @.str.23, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.25, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @frontend_init._entry.24, !96, !"_entry", i1 false, i1 false}
!100 = !{ptr @frontend_init._entry_ptr.26, !96, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/ttpci/budget.c", i32 510, i32 26}
!103 = !{ptr @.str.28, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @frontend_init._entry.29, !102, !"_entry", i1 false, i1 false}
!106 = !{ptr @frontend_init._entry_ptr.31, !102, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/ttpci/budget.c", i32 519, i32 26}
!109 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @frontend_init._entry.34, !108, !"_entry", i1 false, i1 false}
!112 = !{ptr @frontend_init._entry_ptr.36, !108, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @frontend_init._entry.37, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/ttpci/budget.c", i32 528, i32 26}
!115 = !{ptr @frontend_init._entry_ptr.38, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/ttpci/budget.c", i32 530, i32 4}
!118 = !{ptr @frontend_init._entry.39, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @frontend_init._entry_ptr.41, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @frontend_init._entry.42, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/ttpci/budget.c", i32 546, i32 27}
!122 = !{ptr @frontend_init._entry_ptr.43, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/ttpci/budget.c", i32 548, i32 5}
!125 = !{ptr @frontend_init._entry.44, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @frontend_init._entry_ptr.46, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @frontend_init._entry.47, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/ttpci/budget.c", i32 562, i32 27}
!129 = !{ptr @frontend_init._entry_ptr.48, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/ttpci/budget.c", i32 564, i32 5}
!132 = !{ptr @frontend_init._entry.49, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @frontend_init._entry_ptr.51, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/ttpci/budget.c", i32 576, i32 26}
!136 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @frontend_init._entry.54, !135, !"_entry", i1 false, i1 false}
!139 = !{ptr @frontend_init._entry_ptr.56, !135, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/ttpci/budget.c", i32 585, i32 26}
!142 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @frontend_init._entry.59, !141, !"_entry", i1 false, i1 false}
!145 = !{ptr @frontend_init._entry_ptr.61, !141, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @frontend_init._entry.62, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/ttpci/budget.c", i32 593, i32 26}
!148 = !{ptr @frontend_init._entry_ptr.63, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/ttpci/budget.c", i32 604, i32 8}
!151 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @frontend_init._entry.66, !150, !"_entry", i1 false, i1 false}
!154 = !{ptr @frontend_init._entry_ptr.68, !150, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/ttpci/budget.c", i32 608, i32 8}
!157 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @frontend_init._entry.71, !156, !"_entry", i1 false, i1 false}
!160 = !{ptr @frontend_init._entry_ptr.73, !156, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/ttpci/budget.c", i32 610, i32 5}
!163 = !{ptr @frontend_init._entry.74, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @frontend_init._entry_ptr.76, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/ttpci/budget.c", i32 627, i32 8}
!167 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @frontend_init._entry.79, !166, !"_entry", i1 false, i1 false}
!170 = !{ptr @frontend_init._entry_ptr.81, !166, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/pci/ttpci/budget.c", i32 630, i32 8}
!173 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @frontend_init._entry.84, !172, !"_entry", i1 false, i1 false}
!176 = !{ptr @frontend_init._entry_ptr.86, !172, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/pci/ttpci/budget.c", i32 632, i32 5}
!179 = !{ptr @frontend_init._entry.87, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @frontend_init._entry_ptr.89, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @frontend_init._entry.90, !182, !"_entry", i1 false, i1 false}
!182 = !{!"../drivers/media/pci/ttpci/budget.c", i32 633, i32 8}
!183 = !{ptr @frontend_init._entry_ptr.91, !182, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @frontend_init._entry.92, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/ttpci/budget.c", i32 635, i32 5}
!186 = !{ptr @frontend_init._entry_ptr.93, !185, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.94, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/pci/ttpci/budget.c", i32 650, i32 27}
!189 = !{ptr @.str.95, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.97, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @frontend_init._entry.96, !188, !"_entry", i1 false, i1 false}
!192 = !{ptr @frontend_init._entry_ptr.98, !188, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.99, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/pci/ttpci/budget.c", i32 657, i32 11}
!195 = !{ptr @.str.100, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.102, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @frontend_init._entry.101, !194, !"_entry", i1 false, i1 false}
!198 = !{ptr @frontend_init._entry_ptr.103, !194, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.104, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/pci/ttpci/budget.c", i32 681, i32 10}
!201 = !{ptr @.str.105, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.107, !200, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @frontend_init._entry.106, !200, !"_entry", i1 false, i1 false}
!204 = !{ptr @frontend_init._entry_ptr.108, !200, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.110, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/pci/ttpci/budget.c", i32 685, i32 7}
!207 = !{ptr @frontend_init._entry.109, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @frontend_init._entry_ptr.111, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.113, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/pci/ttpci/budget.c", i32 689, i32 6}
!211 = !{ptr @frontend_init._entry.112, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @frontend_init._entry_ptr.114, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @frontend_init._entry.115, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/media/pci/ttpci/budget.c", i32 703, i32 27}
!215 = !{ptr @frontend_init._entry_ptr.116, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.118, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/pci/ttpci/budget.c", i32 709, i32 5}
!218 = !{ptr @frontend_init._entry.117, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @frontend_init._entry_ptr.119, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @frontend_init._entry.120, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/media/pci/ttpci/budget.c", i32 711, i32 11}
!222 = !{ptr @frontend_init._entry_ptr.121, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.122, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/pci/ttpci/budget.c", i32 735, i32 10}
!225 = !{ptr @.str.123, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.125, !224, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @frontend_init._entry.124, !224, !"_entry", i1 false, i1 false}
!228 = !{ptr @frontend_init._entry_ptr.126, !224, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.128, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/pci/ttpci/budget.c", i32 740, i32 7}
!231 = !{ptr @frontend_init._entry.127, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @frontend_init._entry_ptr.129, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @frontend_init._entry.130, !234, !"_entry", i1 false, i1 false}
!234 = !{!"../drivers/media/pci/ttpci/budget.c", i32 745, i32 6}
!235 = !{ptr @frontend_init._entry_ptr.131, !234, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.133, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/pci/ttpci/budget.c", i32 754, i32 3}
!238 = !{ptr @frontend_init._entry.132, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @frontend_init._entry_ptr.134, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.136, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/pci/ttpci/budget.c", i32 766, i32 2}
!242 = !{ptr @frontend_init._entry.135, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @frontend_init._entry_ptr.137, !241, !"_entry_ptr", i1 false, i1 false}
!244 = distinct !{null, !245, !"alps_bsbe1_config", i1 false, i1 false}
!245 = !{!"../drivers/media/dvb-frontends/bsbe1.h", i32 79, i32 30}
!246 = !{ptr @alps_bsbe1_inittab, !247, !"alps_bsbe1_inittab", i1 false, i1 false}
!247 = !{!"../drivers/media/dvb-frontends/bsbe1.h", i32 11, i32 11}
!248 = !{ptr @alps_bsrv2_config, !249, !"alps_bsrv2_config", i1 false, i1 false}
!249 = !{!"../drivers/media/pci/ttpci/budget.c", i32 227, i32 30}
!250 = !{ptr @.str.138, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/pci/ttpci/budget.c", i32 87, i32 2}
!252 = !{ptr @.str.139, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @SendDiSEqCMsg._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @SendDiSEqCMsg._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.140, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/pci/ttpci/budget.c", i32 71, i32 2}
!257 = !{ptr @DiseqcSendByte._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @DiseqcSendByte._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.141, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/pci/ttpci/budget.c", i32 59, i32 2}
!261 = !{ptr @DiseqcSendBit._entry, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @DiseqcSendBit._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.142, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/pci/ttpci/budget.c", i32 48, i32 2}
!265 = !{ptr @Set22K._entry, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @Set22K._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @alps_bsru6_config, !268, !"alps_bsru6_config", i1 false, i1 false}
!268 = !{!"../drivers/media/dvb-frontends/bsru6.h", i32 114, i32 30}
!269 = !{ptr @alps_bsru6_inittab, !270, !"alps_bsru6_inittab", i1 false, i1 false}
!270 = !{!"../drivers/media/dvb-frontends/bsru6.h", i32 11, i32 11}
!271 = !{ptr @alps_tdbe2_config, !272, !"alps_tdbe2_config", i1 false, i1 false}
!272 = !{!"../drivers/media/pci/ttpci/budget.c", i32 255, i32 30}
!273 = !{ptr @grundig_29504_401_config, !274, !"grundig_29504_401_config", i1 false, i1 false}
!274 = !{!"../drivers/media/pci/ttpci/budget.c", i32 310, i32 29}
!275 = !{ptr @alps_bsru6_config_activy, !276, !"alps_bsru6_config_activy", i1 false, i1 false}
!276 = !{!"../drivers/media/pci/ttpci/budget.c", i32 386, i32 36}
!277 = !{ptr @.str.143, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/pci/ttpci/budget.c", i32 123, i32 2}
!279 = !{ptr @SetVoltage_Activy._entry, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @SetVoltage_Activy._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @alps_bsbe1_config_activy, !282, !"alps_bsbe1_config_activy", i1 false, i1 false}
!282 = !{!"../drivers/media/pci/ttpci/budget.c", i32 396, i32 36}
!283 = !{ptr @grundig_29504_451_config, !284, !"grundig_29504_451_config", i1 false, i1 false}
!284 = !{!"../drivers/media/pci/ttpci/budget.c", i32 340, i32 30}
!285 = !{ptr @alps_tdhd1_204a_config, !286, !"alps_tdhd1_204a_config", i1 false, i1 false}
!286 = !{!"../drivers/media/dvb-frontends/tdhd1.h", i32 17, i32 31}
!287 = !{ptr @grundig_29504_401_config_activy, !288, !"grundig_29504_401_config_activy", i1 false, i1 false}
!288 = !{!"../drivers/media/pci/ttpci/budget.c", i32 314, i32 29}
!289 = !{ptr @tuner_address_grundig_29504_401_activy, !290, !"tuner_address_grundig_29504_401_activy", i1 false, i1 false}
!290 = !{!"../drivers/media/pci/ttpci/budget.c", i32 318, i32 11}
!291 = !{ptr @s5h1420_config, !292, !"s5h1420_config", i1 false, i1 false}
!292 = !{!"../drivers/media/pci/ttpci/budget.c", i32 373, i32 30}
!293 = !{ptr @tda10086_config, !294, !"tda10086_config", i1 false, i1 false}
!294 = !{!"../drivers/media/pci/ttpci/budget.c", i32 379, i32 31}
!295 = !{ptr @tt1600_stv090x_config, !296, !"tt1600_stv090x_config", i1 false, i1 false}
!296 = !{!"../drivers/media/pci/ttpci/budget.c", i32 438, i32 30}
!297 = !{ptr @tt1600_stv6110x_config, !298, !"tt1600_stv6110x_config", i1 false, i1 false}
!298 = !{!"../drivers/media/pci/ttpci/budget.c", i32 464, i32 31}
!299 = !{ptr @tt1600_isl6423_config, !300, !"tt1600_isl6423_config", i1 false, i1 false}
!300 = !{!"../drivers/media/pci/ttpci/budget.c", i32 470, i32 30}
!301 = !{i32 1, !"wchar_size", i32 2}
!302 = !{i32 1, !"min_enum_size", i32 4}
!303 = !{i32 8, !"branch-target-enforcement", i32 0}
!304 = !{i32 8, !"sign-return-address", i32 0}
!305 = !{i32 8, !"sign-return-address-all", i32 0}
!306 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!307 = !{i32 7, !"uwtable", i32 1}
!308 = !{i32 7, !"frame-pointer", i32 2}
!309 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!310 = !{!"auto-init"}
