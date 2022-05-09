; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ttpci/budget-ci.c_pt.bc'
source_filename = "../drivers/media/pci/ttpci/budget-ci.c"
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
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
%struct.stv0297_config = type { i8, ptr, i8 }
%struct.tda1004x_config = type { i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, ptr }
%struct.tda10023_config = type { i8, i8, i32, i8, i8, i8, i8, i16 }
%struct.tda827x_config = type { ptr, ptr, i32, i32, ptr }
%struct.stv0288_config = type { i8, ptr, i32, ptr }
%struct.stb0899_config = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.stb6100_config = type { i8, i32 }
%struct.stb0899_s1_reg = type { i16, i8 }
%struct.stb0899_s2_reg = type { i16, i32, i32 }
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
%struct.budget_ci = type { %struct.budget, %struct.tasklet_struct, i32, i32, %struct.dvb_ca_en50221, %struct.budget_ci_ir, i8 }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.budget_ci_ir = type { ptr, %struct.tasklet_struct, [72 x i8], [32 x i8], i32, i32, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.124, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.124 = type { ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_rc5_device = internal constant [21 x i8] c"budget_ci.rc5_device\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rc5_device = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_rc5_device = internal constant %struct.kernel_param { ptr @__param_str_rc5_device, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @rc5_device } }, section "__param", align 4
@__UNIQUE_ID_rc5_devicetype385 = internal constant [34 x i8] c"budget_ci.parmtype=rc5_device:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rc5_device386 = internal constant [120 x i8] c"budget_ci.parm=rc5_device:only IR commands to given RC5 device (device = 0 - 31, any device = 255, default: autodetect)\00", section ".modinfo", align 1
@__param_str_ir_debug = internal constant [19 x i8] c"budget_ci.ir_debug\00", align 1
@ir_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ir_debug = internal constant %struct.kernel_param { ptr @__param_str_ir_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @ir_debug } }, section "__param", align 4
@__UNIQUE_ID_ir_debugtype387 = internal constant [32 x i8] c"budget_ci.parmtype=ir_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ir_debug388 = internal constant [69 x i8] c"budget_ci.parm=ir_debug:enable debugging information for IR decoding\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [21 x i8] c"budget_ci.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype389 = internal constant [45 x i8] c"budget_ci.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr390 = internal constant [46 x i8] c"budget_ci.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@budget_extension = internal global { %struct.saa7146_extension, [36 x i8] } { %struct.saa7146_extension { [32 x i8] c"budget_ci dvb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, ptr null, %struct.pci_driver zeroinitializer, ptr @pci_tbl, ptr null, ptr @budget_ci_attach, ptr @budget_ci_detach, i32 1096, ptr @budget_ci_irq }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_budget_ci__391_1569_budget_ci_init6 = internal global ptr @budget_ci_init, section ".initcall6.init", align 4
@__exitcall_budget_ci_exit = internal global ptr @budget_ci_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file392 = internal constant [49 x i8] c"budget_ci.file=drivers/media/pci/ttpci/budget-ci\00", section ".modinfo", align 1
@__UNIQUE_ID_license393 = internal constant [22 x i8] c"budget_ci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author394 = internal constant [75 x i8] c"budget_ci.author=Michael Hunold, Jack Thomasson, Andrew de Quincey, others\00", section ".modinfo", align 1
@__UNIQUE_ID_description395 = internal constant [139 x i8] c"budget_ci.description=driver for the SAA7146 based so-called budget PCI DVB cards w/ CI-module produced by Siemens, Technotrend, Hauppauge\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@pci_tbl = internal constant { [10 x %struct.pci_device_id], [64 x i8] } { [10 x %struct.pci_device_id] [%struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4108, i32 0, i32 0, i32 ptrtoint (ptr @ttbci to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4111, i32 0, i32 0, i32 ptrtoint (ptr @ttbci to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4112, i32 0, i32 0, i32 ptrtoint (ptr @ttbcci to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4113, i32 0, i32 0, i32 ptrtoint (ptr @ttbt2 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4114, i32 0, i32 0, i32 ptrtoint (ptr @ttbtci to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4119, i32 0, i32 0, i32 ptrtoint (ptr @ttbs2 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4122, i32 0, i32 0, i32 ptrtoint (ptr @ttc1501 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4121, i32 0, i32 0, i32 ptrtoint (ptr @tt3200 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 4123, i32 0, i32 0, i32 ptrtoint (ptr @ttbs1500b to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@ttbci = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @ttbci_info }, [24 x i8] zeroinitializer }, align 32
@ttbcci = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @ttbcci_info }, [24 x i8] zeroinitializer }, align 32
@ttbt2 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @ttbt2_info }, [24 x i8] zeroinitializer }, align 32
@ttbtci = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @ttbtci_info }, [24 x i8] zeroinitializer }, align 32
@ttbs2 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @ttbs2_info }, [24 x i8] zeroinitializer }, align 32
@ttc1501 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @ttc1501_info }, [24 x i8] zeroinitializer }, align 32
@tt3200 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @tt3200_info }, [24 x i8] zeroinitializer }, align 32
@ttbs1500b = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @ttbs1500b_info }, [24 x i8] zeroinitializer }, align 32
@ttbci_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str, i32 1 }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TT-Budget/WinTV-NOVA-CI PCI\00", [36 x i8] zeroinitializer }, align 32
@ttbcci_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.1, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TT-Budget-C-CI PCI\00", [45 x i8] zeroinitializer }, align 32
@ttbt2_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.2, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TT-Budget/WinTV-NOVA-T\09 PCI\00", [36 x i8] zeroinitializer }, align 32
@ttbtci_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.3, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TT-Budget-T-CI PCI\00", [45 x i8] zeroinitializer }, align 32
@ttbs2_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.4, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TT-Budget/S-1500 PCI\00", [43 x i8] zeroinitializer }, align 32
@ttc1501_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.5, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TT-Budget C-1501 PCI\00", [43 x i8] zeroinitializer }, align 32
@tt3200_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.6, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TT-Budget S2-3200 PCI\00", [42 x i8] zeroinitializer }, align 32
@ttbs1500b_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.7, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TT-Budget S-1500B PCI\00", [42 x i8] zeroinitializer }, align 32
@budget_debug = external dso_local local_unnamed_addr global i32, align 4
@budget_ci_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 1465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017budget_ci: %s(): budget_ci: %p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"budget_ci_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/pci/ttpci/budget-ci.c\00", [60 x i8] zeroinitializer }, align 32
@budget_ci_attach._entry_ptr = internal global ptr @budget_ci_attach._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@msp430_ir_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.10, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013budget_ci: IR interface initialisation failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msp430_ir_init\00", [17 x i8] zeroinitializer }, align 32
@msp430_ir_init._entry_ptr = internal global ptr @msp430_ir_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Budget-CI dvb ir receiver %s\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci-%s/ir0\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"budget_ci\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-tt-1500\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rc-budget-ci-old\00", [47 x i8] zeroinitializer }, align 32
@msp430_ir_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.10, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013budget_ci: could not init driver for IR device (code %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@msp430_ir_init._entry_ptr.21 = internal global ptr @msp430_ir_init._entry.19, section ".printk_index", align 4
@msp430_ir_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.10, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"budget_ci: received byte 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msp430_ir_interrupt\00", [44 x i8] zeroinitializer }, align 32
@msp430_ir_interrupt._entry_ptr = internal global ptr @msp430_ir_interrupt._entry, section ".printk_index", align 4
@ciintf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.10, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"budget_ci: CI interface detected, but initialisation failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ciintf_init\00", [20 x i8] zeroinitializer }, align 32
@ciintf_init._entry_ptr = internal global ptr @ciintf_init._entry, section ".printk_index", align 4
@ciintf_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.10, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"budget_ci: CI interface initialised\0A\00", [59 x i8] zeroinitializer }, align 32
@ciintf_init._entry_ptr.28 = internal global ptr @ciintf_init._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0299_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0299_attach\00", [42 x i8] zeroinitializer }, align 32
@alps_bsru6_config = internal global { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @alps_bsru6_inittab, i32 88000000, i8 -104, i32 100, ptr @alps_bsru6_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.10, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0299_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"frontend_init\00", [18 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr = internal global ptr @frontend_init._entry, section ".printk_index", align 4
@philips_su1278_tt_config = internal constant { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @philips_su1278_tt_inittab, i32 64000000, i8 88, i32 50, ptr @philips_su1278_tt_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.10, i32 1315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.34 = internal global ptr @frontend_init._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0297_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0297_attach\00", [42 x i8] zeroinitializer }, align 32
@dvbc_philips_tdm1316l_config = internal global { %struct.stv0297_config, [20 x i8] } { %struct.stv0297_config { i8 28, ptr @dvbc_philips_tdm1316l_inittab, i8 64 }, [20 x i8] zeroinitializer }, align 32
@frontend_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.10, i32 1325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0297_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.39 = internal global ptr @frontend_init._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10045_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10045_attach\00", [41 x i8] zeroinitializer }, align 32
@philips_tdm1316l_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @philips_tdm1316l_request_firmware }, [32 x i8] zeroinitializer }, align 32
@frontend_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.10, i32 1335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10045_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.44 = internal global ptr @frontend_init._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10046_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10046_attach\00", [41 x i8] zeroinitializer }, align 32
@philips_tdm1316l_config_invert = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @philips_tdm1316l_request_firmware }, [32 x i8] zeroinitializer }, align 32
@frontend_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.32, ptr @.str.10, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10046_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.49 = internal global ptr @frontend_init._entry.47, section ".printk_index", align 4
@alps_bsbe1_config = internal global { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @alps_bsbe1_inittab, i32 88000000, i8 -128, i32 100, ptr @alps_bsbe1_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.10, i32 1355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.51 = internal global ptr @frontend_init._entry.50, section ".printk_index", align 4
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbp21_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lnbp21_attach\00", [43 x i8] zeroinitializer }, align 32
@frontend_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.32, ptr @.str.10, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lnbp21_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.56 = internal global ptr @frontend_init._entry.54, section ".printk_index", align 4
@frontend_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.32, ptr @.str.10, i32 1362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: No LNBP21 found!\0A\00", [42 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.59 = internal global ptr @frontend_init._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10023_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10023_attach\00", [41 x i8] zeroinitializer }, align 32
@tda10023_config = internal global { %struct.tda10023_config, [16 x i8] } { %struct.tda10023_config { i8 12, i8 0, i32 16000000, i8 11, i8 3, i8 1, i8 0, i16 -23279 }, [16 x i8] zeroinitializer }, align 32
@frontend_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.32, ptr @.str.10, i32 1370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10023_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.64 = internal global ptr @frontend_init._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda827x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda827x_attach\00", [42 x i8] zeroinitializer }, align 32
@tda827x_config = internal global { %struct.tda827x_config, [44 x i8] } zeroinitializer, align 32
@frontend_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.32, ptr @.str.10, i32 1372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda827x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.69 = internal global ptr @frontend_init._entry.67, section ".printk_index", align 4
@frontend_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.32, ptr @.str.10, i32 1373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: No tda827x found!\0A\00", [39 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.72 = internal global ptr @frontend_init._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0288_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0288_attach\00", [42 x i8] zeroinitializer }, align 32
@stv0288_bsbe1_d01a_config = internal global { %struct.stv0288_config, [16 x i8] } { %struct.stv0288_config { i8 104, ptr @stv0288_bsbe1_d01a_inittab, i32 100, ptr null }, [16 x i8] zeroinitializer }, align 32
@frontend_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.32, ptr @.str.10, i32 1381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0288_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.77 = internal global ptr @frontend_init._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb6000_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stb6000_attach\00", [42 x i8] zeroinitializer }, align 32
@frontend_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.32, ptr @.str.10, i32 1383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stb6000_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.82 = internal global ptr @frontend_init._entry.80, section ".printk_index", align 4
@frontend_init._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.32, ptr @.str.10, i32 1384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.84 = internal global ptr @frontend_init._entry.83, section ".printk_index", align 4
@frontend_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.32, ptr @.str.10, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: No LNBP21 found!\0A\00", [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.87 = internal global ptr @frontend_init._entry.85, section ".printk_index", align 4
@frontend_init._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.32, ptr @.str.10, i32 1390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: No STB6000 found!\0A\00", [39 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.90 = internal global ptr @frontend_init._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb0899_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stb0899_attach\00", [42 x i8] zeroinitializer }, align 32
@tt3200_config = internal global { %struct.stb0899_config, [36 x i8] } { %struct.stb0899_config { ptr @tt3200_stb0899_s1_init_1, ptr @stb0899_s2_init_2, ptr @tt3200_stb0899_s1_init_3, ptr @stb0899_s2_init_4, ptr @stb0899_s1_init_5, ptr null, i32 -1, i32 27000000, i8 104, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 76500000, i32 99000000, i32 3, i32 32, i32 10, i32 20, i32 6, i32 1125, i32 758, i32 1350, i32 1664100, i32 28, i32 15, i32 30, i32 70, ptr @stb6100_set_frequency, ptr @stb6100_get_frequency, ptr @stb6100_set_bandwidth, ptr @stb6100_get_bandwidth, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.32, ptr @.str.10, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stb0899_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.95 = internal global ptr @frontend_init._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb6100_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stb6100_attach\00", [42 x i8] zeroinitializer }, align 32
@tt3200_stb6100_config = internal global { %struct.stb6100_config, [24 x i8] } { %struct.stb6100_config { i8 96, i32 27000000 }, [24 x i8] zeroinitializer }, align 32
@frontend_init._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.32, ptr @.str.10, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stb6100_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.100 = internal global ptr @frontend_init._entry.98, section ".printk_index", align 4
@frontend_init._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.32, ptr @.str.10, i32 1424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.102 = internal global ptr @frontend_init._entry.101, section ".printk_index", align 4
@frontend_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.32, ptr @.str.10, i32 1425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.104 = internal global ptr @frontend_init._entry.103, section ".printk_index", align 4
@frontend_init._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.32, ptr @.str.10, i32 1443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"budget-ci: A frontend driver was not found for device [%04x:%04x] subsystem [%04x:%04x]\0A\00", [39 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.107 = internal global ptr @frontend_init._entry.105, section ".printk_index", align 4
@frontend_init._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.32, ptr @.str.10, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"budget-ci: Frontend registration failed!\0A\00", [54 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.110 = internal global ptr @frontend_init._entry.108, section ".printk_index", align 4
@alps_bsru6_inittab = internal global { [78 x i8], [50 x i8] } { [78 x i8] c"\01\15\020\03\00\04}\055\06@\07\00\08@\09\00\0CQ\0D\82\0E#\10?\11\84\12\B9\15\C9\16\00\17\00\18\00\19\00\1A\00\1FP \00!\00\22\00#\00(\00)\1E*\14+\0F,\09-\05.\011\1F2\193\FC4\93\0FR\FF\FF", [50 x i8] zeroinitializer }, align 32
@philips_su1278_tt_inittab = internal global { [86 x i8], [42 x i8] } { [86 x i8] c"\01\0F\020\03\00\04[\05\85\06\02\07\00\08\02\09\00\0C\01\0D\81\0ED\0F\14\10<\11\84\12\DA\13\97\14\95\15\C9\16\19\17\8C\18Y\19\F8\1A\FE\1C\7F\1D\00\1E\00\1FP \00!\00\22\00#\00(\00)(*\14+\0F,\09-\091\1F2\193\FC4\93\FF\FF", [42 x i8] zeroinitializer }, align 32
@dvbc_philips_tdm1316l_inittab = internal global { [180 x i8], [44 x i8] } { [180 x i8] c"\80\01\80\00\81\01\81\00\00\09\01i\03\00\04\00\07\00\08\00 \00!@\22\00#\00$@%\880\FF1\002\FF3\004P5\7F6\007 8\00@\1CA\FFB)C D\FFE\00F\00I\04J\00K{R0U\AEVGW\E1X:Z\1E[4`\00c\00d\00e\00f\00g\00h\00i\00j\02k\00p\FFq\00r\00s\00t\0C\80\00\81\00\82\00\83\00\84\04\85\80\86$\87x\88\10\89\00\90\01\91\01\A0\04\A1\00\A2\00\B0\91\B1\0B\C0S\C1p\C2\12\D0\00\D1\00\D2\00\D3\00\D4\00\D5\00\DE\00\DF\00a8b\0AS\13Y\08\FF\FF", [44 x i8] zeroinitializer }, align 32
@philips_tdm1316l_tuner_init.td1316_init = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\0B\F5\85\AB", [28 x i8] zeroinitializer }, align 32
@philips_tdm1316l_tuner_init.disable_mc44BC374c = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\1Dt\A0h", [28 x i8] zeroinitializer }, align 32
@alps_bsbe1_inittab = internal global { [38 x i8], [58 x i8] } { [38 x i8] c"\01\15\020\03\00\04}\05\05\06\00\08@\09\00\0CQ\0D\82\0F\92\104\11\84\12\B9\15\C9(\003\FC4\93\FF\FF", [58 x i8] zeroinitializer }, align 32
@stv0288_bsbe1_d01a_inittab = internal global { [208 x i8], [48 x i8] } { [208 x i8] c"\01\15\02 \09\00\0A\04\0B\00\0C\00\0D\00\0E\D4\0F0\11\80\12\03\13H\14\84\15E\16\B7\17\9C\18\00\19\A6\1A\88\1B\8F\1C\F0 \0B!T\22\00#\00+\FF,\F70\001\1E2\143\0F4\095\0C6\057/8\169\BD:\03;\13<\11=0@cA\04B`C\00D\00E\00F\00G\00J\00P\10Q6R\09S\94TbU)VdW+XTY\86Z\00[\9B\\\08]\7F^\00_\FFp\00q\00r\00t\00u\00v\00\81\00\82?\83?\84\00\85\00\88\00\89\00\8A\00\8B\00\8C\00\90\00\91\00\92\00\93\00\94\1C\97\00\A0H\A1\00\B0\B8\B1:\B2\10\B3\82\B4\80\B5\82\B6\82\B7\82\B8 \B9\00\F0\00\F1\00\F2\C0\FF\FF", [48 x i8] zeroinitializer }, align 32
@tt3200_stb0899_s1_init_1 = internal constant { [83 x %struct.stb0899_s1_reg], [84 x i8] } { [83 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -4096, i8 -127 }, %struct.stb0899_s1_reg { i16 -3936, i8 50 }, %struct.stb0899_s1_reg { i16 -3935, i8 -128 }, %struct.stb0899_s1_reg { i16 -3932, i8 4 }, %struct.stb0899_s1_reg { i16 -3931, i8 0 }, %struct.stb0899_s1_reg { i16 -3930, i8 0 }, %struct.stb0899_s1_reg { i16 -3928, i8 32 }, %struct.stb0899_s1_reg { i16 -3927, i8 -116 }, %struct.stb0899_s1_reg { i16 -3926, i8 -102 }, %struct.stb0899_s1_reg { i16 -3839, i8 11 }, %struct.stb0899_s1_reg { i16 -3824, i8 17 }, %struct.stb0899_s1_reg { i16 -3823, i8 10 }, %struct.stb0899_s1_reg { i16 -3822, i8 5 }, %struct.stb0899_s1_reg { i16 -3821, i8 0 }, %struct.stb0899_s1_reg { i16 -3820, i8 0 }, %struct.stb0899_s1_reg { i16 -3812, i8 0 }, %struct.stb0899_s1_reg { i16 -3811, i8 0 }, %struct.stb0899_s1_reg { i16 -3808, i8 48 }, %struct.stb0899_s1_reg { i16 -3807, i8 0 }, %struct.stb0899_s1_reg { i16 -3806, i8 0 }, %struct.stb0899_s1_reg { i16 -3805, i8 0 }, %struct.stb0899_s1_reg { i16 -3804, i8 -13 }, %struct.stb0899_s1_reg { i16 -3803, i8 -4 }, %struct.stb0899_s1_reg { i16 -3802, i8 -1 }, %struct.stb0899_s1_reg { i16 -3801, i8 -1 }, %struct.stb0899_s1_reg { i16 -3800, i8 0 }, %struct.stb0899_s1_reg { i16 -3799, i8 -120 }, %struct.stb0899_s1_reg { i16 -3798, i8 72 }, %struct.stb0899_s1_reg { i16 -3783, i8 0 }, %struct.stb0899_s1_reg { i16 -3782, i8 32 }, %struct.stb0899_s1_reg { i16 -3781, i8 -55 }, %struct.stb0899_s1_reg { i16 -3780, i8 -112 }, %struct.stb0899_s1_reg { i16 -3779, i8 64 }, %struct.stb0899_s1_reg { i16 -3778, i8 0 }, %struct.stb0899_s1_reg { i16 -3776, i8 -126 }, %struct.stb0899_s1_reg { i16 -3775, i8 -126 }, %struct.stb0899_s1_reg { i16 -3774, i8 -126 }, %struct.stb0899_s1_reg { i16 -3773, i8 -126 }, %struct.stb0899_s1_reg { i16 -3772, i8 -126 }, %struct.stb0899_s1_reg { i16 -3771, i8 -126 }, %struct.stb0899_s1_reg { i16 -3770, i8 -126 }, %struct.stb0899_s1_reg { i16 -3769, i8 -126 }, %struct.stb0899_s1_reg { i16 -3768, i8 -126 }, %struct.stb0899_s1_reg { i16 -3767, i8 -126 }, %struct.stb0899_s1_reg { i16 -3766, i8 -126 }, %struct.stb0899_s1_reg { i16 -3765, i8 -126 }, %struct.stb0899_s1_reg { i16 -3764, i8 -126 }, %struct.stb0899_s1_reg { i16 -3763, i8 -126 }, %struct.stb0899_s1_reg { i16 -3762, i8 -126 }, %struct.stb0899_s1_reg { i16 -3761, i8 -126 }, %struct.stb0899_s1_reg { i16 -3760, i8 -126 }, %struct.stb0899_s1_reg { i16 -3759, i8 -126 }, %struct.stb0899_s1_reg { i16 -3758, i8 -126 }, %struct.stb0899_s1_reg { i16 -3757, i8 -126 }, %struct.stb0899_s1_reg { i16 -3756, i8 -126 }, %struct.stb0899_s1_reg { i16 -3755, i8 -72 }, %struct.stb0899_s1_reg { i16 -3754, i8 -70 }, %struct.stb0899_s1_reg { i16 -3753, i8 28 }, %struct.stb0899_s1_reg { i16 -3752, i8 -126 }, %struct.stb0899_s1_reg { i16 -3751, i8 -111 }, %struct.stb0899_s1_reg { i16 -3750, i8 -126 }, %struct.stb0899_s1_reg { i16 -3749, i8 126 }, %struct.stb0899_s1_reg { i16 -3748, i8 -126 }, %struct.stb0899_s1_reg { i16 -3747, i8 -126 }, %struct.stb0899_s1_reg { i16 -3746, i8 -126 }, %struct.stb0899_s1_reg { i16 -3745, i8 32 }, %struct.stb0899_s1_reg { i16 -3744, i8 -126 }, %struct.stb0899_s1_reg { i16 -3743, i8 -126 }, %struct.stb0899_s1_reg { i16 -3742, i8 -126 }, %struct.stb0899_s1_reg { i16 -3741, i8 -126 }, %struct.stb0899_s1_reg { i16 -3740, i8 -126 }, %struct.stb0899_s1_reg { i16 -3739, i8 -126 }, %struct.stb0899_s1_reg { i16 -3738, i8 -126 }, %struct.stb0899_s1_reg { i16 -3737, i8 -126 }, %struct.stb0899_s1_reg { i16 -3661, i8 21 }, %struct.stb0899_s1_reg { i16 -3658, i8 2 }, %struct.stb0899_s1_reg { i16 -3657, i8 0 }, %struct.stb0899_s1_reg { i16 -3656, i8 0 }, %struct.stb0899_s1_reg { i16 -3646, i8 32 }, %struct.stb0899_s1_reg { i16 -3645, i8 0 }, %struct.stb0899_s1_reg { i16 -3584, i8 0 }, %struct.stb0899_s1_reg { i16 -3583, i8 10 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [84 x i8] zeroinitializer }, align 32
@stb0899_s2_init_2 = internal constant { [177 x %struct.stb0899_s2_reg], [532 x i8] } { [177 x %struct.stb0899_s2_reg] [%struct.stb0899_s2_reg { i16 -3328, i32 0, i32 259 }, %struct.stb0899_s2_reg { i16 -3324, i32 0, i32 1053940310 }, %struct.stb0899_s2_reg { i16 -3320, i32 0, i32 16384 }, %struct.stb0899_s2_reg { i16 -3316, i32 0, i32 10974 }, %struct.stb0899_s2_reg { i16 -3312, i32 0, i32 444 }, %struct.stb0899_s2_reg { i16 -3308, i32 0, i32 512 }, %struct.stb0899_s2_reg { i16 -3300, i32 0, i32 15 }, %struct.stb0899_s2_reg { i16 -3296, i32 0, i32 66800160 }, %struct.stb0899_s2_reg { i16 -3292, i32 0, i32 2100375 }, %struct.stb0899_s2_reg { i16 -3288, i32 0, i32 22 }, %struct.stb0899_s2_reg { i16 -3284, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 0, i32 1053857718 }, %struct.stb0899_s2_reg { i16 -3268, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 0, i32 258792449 }, %struct.stb0899_s2_reg { i16 -3256, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3252, i32 0, i32 14739 }, %struct.stb0899_s2_reg { i16 -3248, i32 0, i32 867439 }, %struct.stb0899_s2_reg { i16 -3244, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3236, i32 0, i32 37282702 }, %struct.stb0899_s2_reg { i16 -3232, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3224, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3204, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 32, i32 1074200576 }, %struct.stb0899_s2_reg { i16 -3240, i32 32, i32 1 }, %struct.stb0899_s2_reg { i16 -3236, i32 32, i32 2 }, %struct.stb0899_s2_reg { i16 -3232, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 32, i32 65025 }, %struct.stb0899_s2_reg { i16 -3224, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 32, i32 1 }, %struct.stb0899_s2_reg { i16 -3212, i32 32, i32 20487 }, %struct.stb0899_s2_reg { i16 -3208, i32 32, i32 2 }, %struct.stb0899_s2_reg { i16 -3328, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3324, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3316, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3304, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3300, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3296, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3284, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 64, i32 65280 }, %struct.stb0899_s2_reg { i16 -3260, i32 64, i32 256 }, %struct.stb0899_s2_reg { i16 -3256, i32 64, i32 65025 }, %struct.stb0899_s2_reg { i16 -3252, i32 64, i32 1278 }, %struct.stb0899_s2_reg { i16 -3248, i32 64, i32 53223 }, %struct.stb0899_s2_reg { i16 -3244, i32 64, i32 48838 }, %struct.stb0899_s2_reg { i16 -3240, i32 64, i32 49855 }, %struct.stb0899_s2_reg { i16 -3236, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3232, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3228, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3224, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3220, i32 64, i32 49600 }, %struct.stb0899_s2_reg { i16 -3216, i32 64, i32 49344 }, %struct.stb0899_s2_reg { i16 -3212, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3208, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3204, i32 64, i32 49345 }, %struct.stb0899_s2_reg { i16 -3328, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3324, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3320, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3316, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3312, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3308, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3304, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3300, i32 96, i32 49344 }, %struct.stb0899_s2_reg { i16 -3296, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3292, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3288, i32 96, i32 49344 }, %struct.stb0899_s2_reg { i16 -3284, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3280, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3276, i32 96, i32 49598 }, %struct.stb0899_s2_reg { i16 -3272, i32 96, i32 49609 }, %struct.stb0899_s2_reg { i16 -3268, i32 96, i32 49370 }, %struct.stb0899_s2_reg { i16 -3264, i32 96, i32 49338 }, %struct.stb0899_s2_reg { i16 -3260, i32 96, i32 49604 }, %struct.stb0899_s2_reg { i16 -3256, i32 96, i32 49599 }, %struct.stb0899_s2_reg { i16 -3252, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3248, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3244, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3240, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3236, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3232, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3228, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3224, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3220, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3216, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3212, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3208, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3204, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3328, i32 1024, i32 1 }, %struct.stb0899_s2_reg { i16 -3324, i32 1024, i32 22100 }, %struct.stb0899_s2_reg { i16 -3316, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1024, i32 131097 }, %struct.stb0899_s2_reg { i16 -3308, i32 1024, i32 4928055 }, %struct.stb0899_s2_reg { i16 -3304, i32 1024, i32 253207 }, %struct.stb0899_s2_reg { i16 -3300, i32 1024, i32 32776 }, %struct.stb0899_s2_reg { i16 -3296, i32 1024, i32 2765062 }, %struct.stb0899_s2_reg { i16 -3292, i32 1024, i32 398346 }, %struct.stb0899_s2_reg { i16 -3288, i32 1024, i32 32768 }, %struct.stb0899_s2_reg { i16 -3284, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1024, i32 1137 }, %struct.stb0899_s2_reg { i16 -3252, i32 1024, i32 24839269 }, %struct.stb0899_s2_reg { i16 -3248, i32 1024, i32 2 }, %struct.stb0899_s2_reg { i16 -3244, i32 1024, i32 1664100 }, %struct.stb0899_s2_reg { i16 -3240, i32 1024, i32 1539 }, %struct.stb0899_s2_reg { i16 -3236, i32 1024, i32 33842790 }, %struct.stb0899_s2_reg { i16 -3232, i32 1024, i32 268723587 }, %struct.stb0899_s2_reg { i16 -3228, i32 1024, i32 66564 }, %struct.stb0899_s2_reg { i16 -3224, i32 1024, i32 174730 }, %struct.stb0899_s2_reg { i16 -3220, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3216, i32 1024, i32 1 }, %struct.stb0899_s2_reg { i16 -3212, i32 1024, i32 1280 }, %struct.stb0899_s2_reg { i16 -3208, i32 1024, i32 2662560 }, %struct.stb0899_s2_reg { i16 -3204, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 1088, i32 8391703 }, %struct.stb0899_s2_reg { i16 -3316, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 1088, i32 346114 }, %struct.stb0899_s2_reg { i16 -3296, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3284, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 1088, i32 1024 }, %struct.stb0899_s2_reg { i16 -3272, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3256, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3248, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3244, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3236, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3232, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3224, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3216, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3212, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3208, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3328, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3324, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3316, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3304, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3300, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3296, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3256, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3252, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3248, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3244, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -1, i32 -1, i32 -1 }], [532 x i8] zeroinitializer }, align 32
@tt3200_stb0899_s1_init_3 = internal constant { [130 x %struct.stb0899_s1_reg], [152 x i8] } { [130 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -3058, i8 0 }, %struct.stb0899_s1_reg { i16 -3056, i8 -55 }, %struct.stb0899_s1_reg { i16 -3054, i8 65 }, %struct.stb0899_s1_reg { i16 -3053, i8 16 }, %struct.stb0899_s1_reg { i16 -3049, i8 122 }, %struct.stb0899_s1_reg { i16 -3048, i8 78 }, %struct.stb0899_s1_reg { i16 -3047, i8 52 }, %struct.stb0899_s1_reg { i16 -3046, i8 -124 }, %struct.stb0899_s1_reg { i16 -3045, i8 -57 }, %struct.stb0899_s1_reg { i16 -3044, i8 -121 }, %struct.stb0899_s1_reg { i16 -3043, i8 -108 }, %struct.stb0899_s1_reg { i16 -3042, i8 65 }, %struct.stb0899_s1_reg { i16 -3041, i8 -35 }, %struct.stb0899_s1_reg { i16 -3040, i8 -55 }, %struct.stb0899_s1_reg { i16 -3035, i8 -76 }, %struct.stb0899_s1_reg { i16 -3034, i8 16 }, %struct.stb0899_s1_reg { i16 -3033, i8 48 }, %struct.stb0899_s1_reg { i16 -3032, i8 -5 }, %struct.stb0899_s1_reg { i16 -3031, i8 3 }, %struct.stb0899_s1_reg { i16 -3030, i8 59 }, %struct.stb0899_s1_reg { i16 -3029, i8 61 }, %struct.stb0899_s1_reg { i16 -3028, i8 -127 }, %struct.stb0899_s1_reg { i16 -3026, i8 -128 }, %struct.stb0899_s1_reg { i16 -3018, i8 4 }, %struct.stb0899_s1_reg { i16 -3017, i8 -11 }, %struct.stb0899_s1_reg { i16 -3016, i8 37 }, %struct.stb0899_s1_reg { i16 -3015, i8 -128 }, %struct.stb0899_s1_reg { i16 -3014, i8 0 }, %struct.stb0899_s1_reg { i16 -3013, i8 -54 }, %struct.stb0899_s1_reg { i16 -3010, i8 -15 }, %struct.stb0899_s1_reg { i16 -3009, i8 -13 }, %struct.stb0899_s1_reg { i16 -3008, i8 42 }, %struct.stb0899_s1_reg { i16 -3007, i8 5 }, %struct.stb0899_s1_reg { i16 -3004, i8 23 }, %struct.stb0899_s1_reg { i16 -3003, i8 -6 }, %struct.stb0899_s1_reg { i16 -3002, i8 47 }, %struct.stb0899_s1_reg { i16 -3001, i8 104 }, %struct.stb0899_s1_reg { i16 -3000, i8 64 }, %struct.stb0899_s1_reg { i16 -2996, i8 47 }, %struct.stb0899_s1_reg { i16 -2995, i8 104 }, %struct.stb0899_s1_reg { i16 -2994, i8 64 }, %struct.stb0899_s1_reg { i16 -2848, i8 -3 }, %struct.stb0899_s1_reg { i16 -2847, i8 4 }, %struct.stb0899_s1_reg { i16 -2846, i8 15 }, %struct.stb0899_s1_reg { i16 -2845, i8 -1 }, %struct.stb0899_s1_reg { i16 -2844, i8 -33 }, %struct.stb0899_s1_reg { i16 -2843, i8 -6 }, %struct.stb0899_s1_reg { i16 -2842, i8 55 }, %struct.stb0899_s1_reg { i16 -2841, i8 13 }, %struct.stb0899_s1_reg { i16 -2840, i8 -67 }, %struct.stb0899_s1_reg { i16 -2839, i8 -9 }, %struct.stb0899_s1_reg { i16 -2804, i8 0 }, %struct.stb0899_s1_reg { i16 -2803, i8 0 }, %struct.stb0899_s1_reg { i16 -2801, i8 -1 }, %struct.stb0899_s1_reg { i16 -2781, i8 42 }, %struct.stb0899_s1_reg { i16 -2780, i8 0 }, %struct.stb0899_s1_reg { i16 -2779, i8 0 }, %struct.stb0899_s1_reg { i16 -2778, i8 0 }, %struct.stb0899_s1_reg { i16 -2777, i8 0 }, %struct.stb0899_s1_reg { i16 -2776, i8 0 }, %struct.stb0899_s1_reg { i16 -2775, i8 0 }, %struct.stb0899_s1_reg { i16 -2768, i8 6 }, %struct.stb0899_s1_reg { i16 -2765, i8 1 }, %struct.stb0899_s1_reg { i16 -2764, i8 -16 }, %struct.stb0899_s1_reg { i16 -2763, i8 -96 }, %struct.stb0899_s1_reg { i16 -2762, i8 120 }, %struct.stb0899_s1_reg { i16 -2761, i8 78 }, %struct.stb0899_s1_reg { i16 -2760, i8 72 }, %struct.stb0899_s1_reg { i16 -2759, i8 56 }, %struct.stb0899_s1_reg { i16 -2756, i8 -1 }, %struct.stb0899_s1_reg { i16 -2755, i8 25 }, %struct.stb0899_s1_reg { i16 -2744, i8 -79 }, %struct.stb0899_s1_reg { i16 -2743, i8 66 }, %struct.stb0899_s1_reg { i16 -2742, i8 64 }, %struct.stb0899_s1_reg { i16 -2741, i8 18 }, %struct.stb0899_s1_reg { i16 -2740, i8 12 }, %struct.stb0899_s1_reg { i16 -2739, i8 0 }, %struct.stb0899_s1_reg { i16 -2738, i8 12 }, %struct.stb0899_s1_reg { i16 -2737, i8 77 }, %struct.stb0899_s1_reg { i16 -2736, i8 0 }, %struct.stb0899_s1_reg { i16 -2735, i8 2 }, %struct.stb0899_s1_reg { i16 -2734, i8 0 }, %struct.stb0899_s1_reg { i16 -2733, i8 0 }, %struct.stb0899_s1_reg { i16 -2726, i8 0 }, %struct.stb0899_s1_reg { i16 -2725, i8 0 }, %struct.stb0899_s1_reg { i16 -2724, i8 0 }, %struct.stb0899_s1_reg { i16 -2723, i8 -85 }, %struct.stb0899_s1_reg { i16 -2722, i8 0 }, %struct.stb0899_s1_reg { i16 -2721, i8 -52 }, %struct.stb0899_s1_reg { i16 -2720, i8 -52 }, %struct.stb0899_s1_reg { i16 -2719, i8 -128 }, %struct.stb0899_s1_reg { i16 -2700, i8 -74 }, %struct.stb0899_s1_reg { i16 -2699, i8 -106 }, %struct.stb0899_s1_reg { i16 -2698, i8 -119 }, %struct.stb0899_s1_reg { i16 -2693, i8 39 }, %struct.stb0899_s1_reg { i16 -2692, i8 3 }, %struct.stb0899_s1_reg { i16 -2685, i8 92 }, %struct.stb0899_s1_reg { i16 -2676, i8 31 }, %struct.stb0899_s1_reg { i16 -2560, i8 72 }, %struct.stb0899_s1_reg { i16 -2559, i8 0 }, %struct.stb0899_s1_reg { i16 -2558, i8 0 }, %struct.stb0899_s1_reg { i16 -2557, i8 0 }, %struct.stb0899_s1_reg { i16 -2556, i8 119 }, %struct.stb0899_s1_reg { i16 -2555, i8 0 }, %struct.stb0899_s1_reg { i16 -2554, i8 0 }, %struct.stb0899_s1_reg { i16 -2553, i8 0 }, %struct.stb0899_s1_reg { i16 -2552, i8 0 }, %struct.stb0899_s1_reg { i16 -2551, i8 0 }, %struct.stb0899_s1_reg { i16 -2550, i8 0 }, %struct.stb0899_s1_reg { i16 -2549, i8 0 }, %struct.stb0899_s1_reg { i16 -2548, i8 0 }, %struct.stb0899_s1_reg { i16 -2547, i8 0 }, %struct.stb0899_s1_reg { i16 -2546, i8 0 }, %struct.stb0899_s1_reg { i16 -2545, i8 0 }, %struct.stb0899_s1_reg { i16 -2544, i8 0 }, %struct.stb0899_s1_reg { i16 -2543, i8 0 }, %struct.stb0899_s1_reg { i16 -2542, i8 0 }, %struct.stb0899_s1_reg { i16 -2541, i8 0 }, %struct.stb0899_s1_reg { i16 -2540, i8 0 }, %struct.stb0899_s1_reg { i16 -2539, i8 0 }, %struct.stb0899_s1_reg { i16 -2538, i8 0 }, %struct.stb0899_s1_reg { i16 -2537, i8 0 }, %struct.stb0899_s1_reg { i16 -2536, i8 0 }, %struct.stb0899_s1_reg { i16 -2535, i8 16 }, %struct.stb0899_s1_reg { i16 -2534, i8 0 }, %struct.stb0899_s1_reg { i16 -2533, i8 0 }, %struct.stb0899_s1_reg { i16 -2532, i8 0 }, %struct.stb0899_s1_reg { i16 -2531, i8 0 }, %struct.stb0899_s1_reg { i16 -2530, i8 0 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [152 x i8] zeroinitializer }, align 32
@stb0899_s2_init_4 = internal constant { [21 x %struct.stb0899_s2_reg], [36 x i8] } { [21 x %struct.stb0899_s2_reg] [%struct.stb0899_s2_reg { i16 -1532, i32 0, i32 8 }, %struct.stb0899_s2_reg { i16 -1528, i32 0, i32 180 }, %struct.stb0899_s2_reg { i16 -1520, i32 0, i32 1205 }, %struct.stb0899_s2_reg { i16 -1516, i32 0, i32 2891 }, %struct.stb0899_s2_reg { i16 -1508, i32 0, i32 120 }, %struct.stb0899_s2_reg { i16 -1504, i32 0, i32 480 }, %struct.stb0899_s2_reg { i16 -1500, i32 0, i32 43200 }, %struct.stb0899_s2_reg { i16 -1496, i32 0, i32 12 }, %struct.stb0899_s2_reg { i16 -1536, i32 2048, i32 1 }, %struct.stb0899_s2_reg { i16 -1532, i32 2048, i32 13 }, %struct.stb0899_s2_reg { i16 -1528, i32 2048, i32 64 }, %struct.stb0899_s2_reg { i16 -1524, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1520, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1516, i32 2048, i32 8 }, %struct.stb0899_s2_reg { i16 -1512, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1508, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1504, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1500, i32 2048, i32 8 }, %struct.stb0899_s2_reg { i16 -1496, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1480, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1, i32 -1, i32 -1 }], [36 x i8] zeroinitializer }, align 32
@stb0899_s1_init_5 = internal constant { [38 x %struct.stb0899_s1_reg], [40 x i8] } { [38 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -240, i8 0 }, %struct.stb0899_s1_reg { i16 -239, i8 0 }, %struct.stb0899_s1_reg { i16 -238, i8 0 }, %struct.stb0899_s1_reg { i16 -237, i8 0 }, %struct.stb0899_s1_reg { i16 -236, i8 0 }, %struct.stb0899_s1_reg { i16 -235, i8 0 }, %struct.stb0899_s1_reg { i16 -234, i8 0 }, %struct.stb0899_s1_reg { i16 -233, i8 0 }, %struct.stb0899_s1_reg { i16 -228, i8 0 }, %struct.stb0899_s1_reg { i16 -227, i8 0 }, %struct.stb0899_s1_reg { i16 -226, i8 0 }, %struct.stb0899_s1_reg { i16 -220, i8 0 }, %struct.stb0899_s1_reg { i16 -219, i8 0 }, %struct.stb0899_s1_reg { i16 -216, i8 0 }, %struct.stb0899_s1_reg { i16 -192, i8 0 }, %struct.stb0899_s1_reg { i16 -191, i8 0 }, %struct.stb0899_s1_reg { i16 -190, i8 0 }, %struct.stb0899_s1_reg { i16 -184, i8 0 }, %struct.stb0899_s1_reg { i16 -183, i8 0 }, %struct.stb0899_s1_reg { i16 -182, i8 0 }, %struct.stb0899_s1_reg { i16 -181, i8 0 }, %struct.stb0899_s1_reg { i16 -180, i8 0 }, %struct.stb0899_s1_reg { i16 -179, i8 0 }, %struct.stb0899_s1_reg { i16 -176, i8 0 }, %struct.stb0899_s1_reg { i16 -175, i8 0 }, %struct.stb0899_s1_reg { i16 -174, i8 0 }, %struct.stb0899_s1_reg { i16 -173, i8 0 }, %struct.stb0899_s1_reg { i16 -172, i8 0 }, %struct.stb0899_s1_reg { i16 -171, i8 0 }, %struct.stb0899_s1_reg { i16 -170, i8 0 }, %struct.stb0899_s1_reg { i16 -168, i8 0 }, %struct.stb0899_s1_reg { i16 -167, i8 0 }, %struct.stb0899_s1_reg { i16 -166, i8 0 }, %struct.stb0899_s1_reg { i16 -164, i8 0 }, %struct.stb0899_s1_reg { i16 -163, i8 0 }, %struct.stb0899_s1_reg { i16 -173, i8 0 }, %struct.stb0899_s1_reg { i16 -4096, i8 -127 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.113, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Invalid parameter\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_set_frequency\00", [42 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/dvb-frontends/stb6100_cfg.h\00", [54 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr = internal global ptr @stb6100_set_frequency._entry, section ".printk_index", align 4
@stb6100_get_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.114, ptr @.str.113, i32 22, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_get_frequency\00", [42 x i8] zeroinitializer }, align 32
@stb6100_get_frequency._entry_ptr = internal global ptr @stb6100_get_frequency._entry, section ".printk_index", align 4
@stb6100_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.115, ptr @.str.113, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_set_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@stb6100_set_bandwidth._entry_ptr = internal global ptr @stb6100_set_bandwidth._entry, section ".printk_index", align 4
@stb6100_get_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.116, ptr @.str.113, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_get_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@stb6100_get_bandwidth._entry_ptr = internal global ptr @stb6100_get_bandwidth._entry, section ".printk_index", align 4
@budget_ci_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.10, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017budget_ci: %s(): dev: %p, budget_ci: %p\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"budget_ci_irq\00", [18 x i8] zeroinitializer }, align 32
@budget_ci_irq._entry_ptr = internal global ptr @budget_ci_irq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 16, i64 4108, i64 4111, i64 4112, i64 4113, i64 4114, i64 4119, i64 4121, i64 4122, i64 4123]
@__sancov_gen_cov_switch_values.119 = internal global [11 x i64] [i64 9, i64 16, i64 4108, i64 4111, i64 4112, i64 4113, i64 4114, i64 4119, i64 4121, i64 4122, i64 4123]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@___asan_gen_.121 = private unnamed_addr constant [11 x i8] c"rc5_device\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 71, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant [9 x i8] c"ir_debug\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 75, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"budget_extension\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1546, i32 33 }
@___asan_gen_.130 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 79, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant [8 x i8] c"pci_tbl\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1529, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"ttbci\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"ttbcci\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"ttbt2\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"ttbtci\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"ttbs2\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [8 x i8] c"ttc1501\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"tt3200\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [10 x i8] c"ttbs1500b\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [11 x i8] c"ttbci_info\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1521, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant [12 x i8] c"ttbcci_info\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1524, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant [11 x i8] c"ttbt2_info\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1522, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant [12 x i8] c"ttbtci_info\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1523, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant [11 x i8] c"ttbs2_info\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1520, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant [13 x i8] c"ttc1501_info\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1525, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant [12 x i8] c"tt3200_info\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1526, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant [15 x i8] c"ttbs1500b_info\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1527, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1465, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 167, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 172, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 174, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 176, i32 21 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 202, i32 19 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 214, i32 19 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 218, i32 19 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 226, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 126, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 489, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 509, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [18 x i8] c"alps_bsru6_config\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 114, i32 30 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1305, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant [25 x i8] c"philips_su1278_tt_config\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 684, i32 36 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1315, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant [29 x i8] c"dvbc_philips_tdm1316l_config\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1014, i32 30 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1325, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant [24 x i8] c"philips_tdm1316l_config\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 823, i32 31 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1335, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant [31 x i8] c"philips_tdm1316l_config_invert\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 834, i32 31 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1346, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant [18 x i8] c"alps_bsbe1_config\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 79, i32 30 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1355, i32 36 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1361, i32 8 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1362, i32 5 }
@___asan_gen_.376 = private unnamed_addr constant [16 x i8] c"tda10023_config\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1021, i32 31 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1370, i32 36 }
@___asan_gen_.391 = private unnamed_addr constant [15 x i8] c"tda827x_config\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1031, i32 30 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1372, i32 8 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1373, i32 5 }
@___asan_gen_.412 = private unnamed_addr constant [26 x i8] c"stv0288_bsbe1_d01a_config\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 123, i32 30 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1381, i32 36 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1383, i32 8 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1384, i32 10 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1385, i32 6 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1390, i32 5 }
@___asan_gen_.454 = private unnamed_addr constant [14 x i8] c"tt3200_config\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1256, i32 30 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1421, i32 36 }
@___asan_gen_.469 = private unnamed_addr constant [22 x i8] c"tt3200_stb6100_config\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1295, i32 30 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1423, i32 8 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1424, i32 10 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1425, i32 6 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1439, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1447, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant [19 x i8] c"alps_bsru6_inittab\00", align 1
@___asan_gen_.497 = private unnamed_addr constant [39 x i8] c"../drivers/media/dvb-frontends/bsru6.h\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 11, i32 11 }
@___asan_gen_.499 = private unnamed_addr constant [26 x i8] c"philips_su1278_tt_inittab\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 570, i32 11 }
@___asan_gen_.502 = private unnamed_addr constant [30 x i8] c"dvbc_philips_tdm1316l_inittab\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 921, i32 11 }
@___asan_gen_.505 = private unnamed_addr constant [12 x i8] c"td1316_init\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 702, i32 12 }
@___asan_gen_.508 = private unnamed_addr constant [19 x i8] c"disable_mc44BC374c\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 703, i32 12 }
@___asan_gen_.511 = private unnamed_addr constant [19 x i8] c"alps_bsbe1_inittab\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [39 x i8] c"../drivers/media/dvb-frontends/bsbe1.h\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 11, i32 11 }
@___asan_gen_.514 = private unnamed_addr constant [27 x i8] c"stv0288_bsbe1_d01a_inittab\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [44 x i8] c"../drivers/media/dvb-frontends/bsbe1-d01a.h\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 16, i32 11 }
@___asan_gen_.517 = private unnamed_addr constant [25 x i8] c"tt3200_stb0899_s1_init_1\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1036, i32 36 }
@___asan_gen_.520 = private unnamed_addr constant [18 x i8] c"stb0899_s2_init_2\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 13, i32 37 }
@___asan_gen_.523 = private unnamed_addr constant [25 x i8] c"tt3200_stb0899_s1_init_3\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1123, i32 36 }
@___asan_gen_.526 = private unnamed_addr constant [18 x i8] c"stb0899_s2_init_4\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 195, i32 36 }
@___asan_gen_.529 = private unnamed_addr constant [18 x i8] c"stb0899_s1_init_5\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [45 x i8] c"../drivers/media/dvb-frontends/stb0899_cfg.h\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 219, i32 36 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 44, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 22, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 82, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant [45 x i8] c"../drivers/media/dvb-frontends/stb6100_cfg.h\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 60, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.568 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.569 = private constant [39 x i8] c"../drivers/media/pci/ttpci/budget-ci.c\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 558, i32 2 }
@llvm.compiler.used = appending global [199 x ptr] [ptr @__UNIQUE_ID_adapter_nr390, ptr @__UNIQUE_ID_adapter_nrtype389, ptr @__UNIQUE_ID_author394, ptr @__UNIQUE_ID_description395, ptr @__UNIQUE_ID_file392, ptr @__UNIQUE_ID_ir_debug388, ptr @__UNIQUE_ID_ir_debugtype387, ptr @__UNIQUE_ID_license393, ptr @__UNIQUE_ID_rc5_device386, ptr @__UNIQUE_ID_rc5_devicetype385, ptr @__exitcall_budget_ci_exit, ptr @__initcall__kmod_budget_ci__391_1569_budget_ci_init6, ptr @__param_adapter_nr, ptr @__param_ir_debug, ptr @__param_rc5_device, ptr @budget_ci_attach._entry, ptr @budget_ci_attach._entry_ptr, ptr @budget_ci_exit, ptr @budget_ci_irq._entry, ptr @budget_ci_irq._entry_ptr, ptr @ciintf_init._entry, ptr @ciintf_init._entry.26, ptr @ciintf_init._entry_ptr, ptr @ciintf_init._entry_ptr.28, ptr @frontend_init._entry, ptr @frontend_init._entry.101, ptr @frontend_init._entry.103, ptr @frontend_init._entry.105, ptr @frontend_init._entry.108, ptr @frontend_init._entry.33, ptr @frontend_init._entry.37, ptr @frontend_init._entry.42, ptr @frontend_init._entry.47, ptr @frontend_init._entry.50, ptr @frontend_init._entry.54, ptr @frontend_init._entry.57, ptr @frontend_init._entry.62, ptr @frontend_init._entry.67, ptr @frontend_init._entry.70, ptr @frontend_init._entry.75, ptr @frontend_init._entry.80, ptr @frontend_init._entry.83, ptr @frontend_init._entry.85, ptr @frontend_init._entry.88, ptr @frontend_init._entry.93, ptr @frontend_init._entry.98, ptr @frontend_init._entry_ptr, ptr @frontend_init._entry_ptr.100, ptr @frontend_init._entry_ptr.102, ptr @frontend_init._entry_ptr.104, ptr @frontend_init._entry_ptr.107, ptr @frontend_init._entry_ptr.110, ptr @frontend_init._entry_ptr.34, ptr @frontend_init._entry_ptr.39, ptr @frontend_init._entry_ptr.44, ptr @frontend_init._entry_ptr.49, ptr @frontend_init._entry_ptr.51, ptr @frontend_init._entry_ptr.56, ptr @frontend_init._entry_ptr.59, ptr @frontend_init._entry_ptr.64, ptr @frontend_init._entry_ptr.69, ptr @frontend_init._entry_ptr.72, ptr @frontend_init._entry_ptr.77, ptr @frontend_init._entry_ptr.82, ptr @frontend_init._entry_ptr.84, ptr @frontend_init._entry_ptr.87, ptr @frontend_init._entry_ptr.90, ptr @frontend_init._entry_ptr.95, ptr @msp430_ir_init._entry, ptr @msp430_ir_init._entry.19, ptr @msp430_ir_init._entry_ptr, ptr @msp430_ir_init._entry_ptr.21, ptr @msp430_ir_interrupt._entry, ptr @msp430_ir_interrupt._entry_ptr, ptr @stb6100_get_bandwidth._entry, ptr @stb6100_get_bandwidth._entry_ptr, ptr @stb6100_get_frequency._entry, ptr @stb6100_get_frequency._entry_ptr, ptr @stb6100_set_bandwidth._entry, ptr @stb6100_set_bandwidth._entry_ptr, ptr @stb6100_set_frequency._entry, ptr @stb6100_set_frequency._entry_ptr, ptr @rc5_device, ptr @ir_debug, ptr @budget_extension, ptr @adapter_nr, ptr @pci_tbl, ptr @ttbci, ptr @ttbcci, ptr @ttbt2, ptr @ttbtci, ptr @ttbs2, ptr @ttc1501, ptr @tt3200, ptr @ttbs1500b, ptr @ttbci_info, ptr @.str, ptr @ttbcci_info, ptr @.str.1, ptr @ttbt2_info, ptr @.str.2, ptr @ttbtci_info, ptr @.str.3, ptr @ttbs2_info, ptr @.str.4, ptr @ttc1501_info, ptr @.str.5, ptr @tt3200_info, ptr @.str.6, ptr @ttbs1500b_info, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @alps_bsru6_config, ptr @.str.31, ptr @.str.32, ptr @philips_su1278_tt_config, ptr @.str.35, ptr @.str.36, ptr @dvbc_philips_tdm1316l_config, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @philips_tdm1316l_config, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @philips_tdm1316l_config_invert, ptr @.str.48, ptr @alps_bsbe1_config, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @tda10023_config, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @tda827x_config, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @stv0288_bsbe1_d01a_config, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @tt3200_config, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @tt3200_stb6100_config, ptr @.str.99, ptr @.str.106, ptr @.str.109, ptr @alps_bsru6_inittab, ptr @philips_su1278_tt_inittab, ptr @dvbc_philips_tdm1316l_inittab, ptr @philips_tdm1316l_tuner_init.td1316_init, ptr @philips_tdm1316l_tuner_init.disable_mc44BC374c, ptr @alps_bsbe1_inittab, ptr @stv0288_bsbe1_d01a_inittab, ptr @tt3200_stb0899_s1_init_1, ptr @stb0899_s2_init_2, ptr @tt3200_stb0899_s1_init_3, ptr @stb0899_s2_init_4, ptr @stb0899_s1_init_5, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], section "llvm.metadata"
@0 = internal global [150 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_extension to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_tbl to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbci to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbcci to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbt2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbtci to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbs2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc1501 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3200 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbs1500b to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbci_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbcci_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbt2_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbtci_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbs2_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc1501_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3200_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbs1500b_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_ci_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp430_ir_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp430_ir_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp430_ir_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ciintf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ciintf_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsru6_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_su1278_tt_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbc_philips_tdm1316l_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tdm1316l_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tdm1316l_config_invert to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsbe1_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10023_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_bsbe1_d01a_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3200_config to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3200_stb6100_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsru6_inittab to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_su1278_tt_inittab to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbc_philips_tdm1316l_inittab to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tdm1316l_tuner_init.td1316_init to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tdm1316l_tuner_init.disable_mc44BC374c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsbe1_inittab to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_bsbe1_d01a_inittab to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3200_stb0899_s1_init_1 to i32), i32 332, i32 416, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s2_init_2 to i32), i32 2124, i32 2656, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3200_stb0899_s1_init_3 to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s2_init_4 to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s1_init_5 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_ci_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @budget_ci_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @saa7146_unregister_extension(ptr noundef nonnull @budget_extension) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_unregister_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_ci_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @saa7146_register_extension(ptr noundef nonnull @budget_extension) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_ci_attach(ptr noundef %dev, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4032) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %1 = load i32, ptr @budget_debug, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull %call7.i.i) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %ext_priv, align 4
  %call8 = tail call i32 @ttpci_budget_init(ptr noundef nonnull %call7.i.i, ptr noundef %dev, ptr noundef %info, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end7.out2_crit_edge

do.end7.out2_crit_edge:                           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.end11:                                         ; preds = %do.end7
  %dev.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  %call.i = tail call ptr @rc_allocate_device(i32 noundef 0) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %out3

if.end.i:                                         ; preds = %if.end11
  %ir.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 5
  %name.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 5, i32 2
  %name3.i = getelementptr inbounds %struct.saa7146_dev, ptr %4, i32 0, i32 7
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 72, ptr noundef nonnull @.str.13, ptr noundef %name3.i) #9
  %phys.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 5, i32 3
  %pci.i = getelementptr inbounds %struct.saa7146_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.pci_name.exit.i_crit_edge

if.end.i.pci_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %10, %if.end.i.i.i ], [ %8, %if.end.i.pci_name.exit.i_crit_edge ]
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys.i, i32 noundef 32, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i.i.i) #9
  %driver_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %driver_name.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.15, ptr %driver_name.i, align 8
  %device_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %device_name.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %name.i, ptr %device_name.i, align 8
  %input_phys.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %input_phys.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %phys.i, ptr %input_phys.i, align 4
  %input_id.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %input_id.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %input_id.i, align 8
  %version.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %version.i, align 2
  %16 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci.i, align 4
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool18.not.i = icmp eq i16 %19, 0
  br i1 %tobool18.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %vendor.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %vendor.i, align 2
  %21 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci.i, align 4
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 10
  br label %if.end32.i

if.else.i:                                        ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %vendor26.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 7
  %23 = ptrtoint ptr %vendor26.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vendor26.i, align 8
  %vendor28.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %vendor28.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %vendor28.i, align 2
  %26 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else.i, %if.then19.i
  %.sink.in.i = phi ptr [ %device.i, %if.else.i ], [ %subsystem_device.i, %if.then19.i ]
  %28 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %.sink.i = load i16, ptr %.sink.in.i, align 2
  %29 = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 5, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %.sink.i, ptr %29, align 4
  %31 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci.i, align 4
  %dev34.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %parent.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev34.i, ptr %parent.i, align 8
  %34 = load i32, ptr @rc5_device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i = icmp slt i32 %34, 0
  %spec.select.i = select i1 %cmp.i, i32 255, i32 %34
  %35 = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 5, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select.i, ptr %35, align 8
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 8
  %pci44.i = getelementptr inbounds %struct.saa7146_dev, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %pci44.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci44.i, align 4
  %subsystem_device45.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %subsystem_device45.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %subsystem_device45.i, align 2
  %43 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i16 %42, label %sw.default.i [
    i16 4108, label %if.end32.i.sw.bb.i_crit_edge
    i16 4111, label %if.end32.i.sw.bb.i_crit_edge60
    i16 4113, label %if.end32.i.sw.bb.i_crit_edge61
    i16 4114, label %if.end32.i.sw.bb.i_crit_edge62
    i16 4112, label %if.end32.i.sw.bb53.i_crit_edge
    i16 4119, label %if.end32.i.sw.bb53.i_crit_edge63
    i16 4121, label %if.end32.i.sw.bb53.i_crit_edge64
    i16 4122, label %if.end32.i.sw.bb53.i_crit_edge65
    i16 4123, label %if.end32.i.sw.bb53.i_crit_edge66
  ]

if.end32.i.sw.bb53.i_crit_edge66:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53.i

if.end32.i.sw.bb53.i_crit_edge65:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53.i

if.end32.i.sw.bb53.i_crit_edge64:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53.i

if.end32.i.sw.bb53.i_crit_edge63:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53.i

if.end32.i.sw.bb53.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53.i

if.end32.i.sw.bb.i_crit_edge62:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end32.i.sw.bb.i_crit_edge61:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end32.i.sw.bb.i_crit_edge60:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end32.i.sw.bb.i_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end32.i.sw.bb.i_crit_edge, %if.end32.i.sw.bb.i_crit_edge60, %if.end32.i.sw.bb.i_crit_edge61, %if.end32.i.sw.bb.i_crit_edge62
  %map_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 7
  %44 = ptrtoint ptr %map_name.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.16, ptr %map_name.i, align 4
  %full_rc5.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 5, i32 7
  %45 = ptrtoint ptr %full_rc5.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %full_rc5.i, align 1
  br i1 %cmp.i, label %if.then49.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then49.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 31, ptr %35, align 8
  br label %sw.epilog.i

sw.bb53.i:                                        ; preds = %if.end32.i.sw.bb53.i_crit_edge, %if.end32.i.sw.bb53.i_crit_edge63, %if.end32.i.sw.bb53.i_crit_edge64, %if.end32.i.sw.bb53.i_crit_edge65, %if.end32.i.sw.bb53.i_crit_edge66
  %map_name54.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 7
  %47 = ptrtoint ptr %map_name54.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.17, ptr %map_name54.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %map_name55.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 7
  %48 = ptrtoint ptr %map_name55.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.18, ptr %map_name55.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb53.i, %if.then49.i, %sw.bb.i.sw.epilog.i_crit_edge
  %full_rc557.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 5, i32 7
  %49 = ptrtoint ptr %full_rc557.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %full_rc557.i, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool58.not.i = icmp eq i8 %50, 0
  br i1 %tobool58.not.i, label %if.then59.i, label %sw.epilog.i.if.end60.i_crit_edge

sw.epilog.i.if.end60.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i

if.then59.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %scancode_mask.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 22
  %51 = ptrtoint ptr %scancode_mask.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 255, ptr %scancode_mask.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then59.i, %sw.epilog.i.if.end60.i_crit_edge
  %call61.i = tail call i32 @rc_register_device(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end15, label %do.end66.i

do.end66.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call61.i) #13
  tail call void @rc_free_device(ptr noundef nonnull %call.i) #9
  br label %out3

if.end15:                                         ; preds = %if.end60.i
  %52 = ptrtoint ptr %ir.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %ir.i, align 4
  %msp430_irq_tasklet.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @tasklet_setup(ptr noundef %msp430_irq_tasklet.i, ptr noundef nonnull @msp430_ir_interrupt) #9
  %int_slock.i.i = getelementptr inbounds %struct.saa7146_dev, ptr %4, i32 0, i32 10
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !296
  tail call void @arm_heavy_mb() #9
  %mem.i.i = getelementptr inbounds %struct.saa7146_dev, ptr %4, i32 0, i32 5
  %53 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 220
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !298
  %56 = or i32 %55, 1073741824
  %57 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mem.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %58, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %56) #9, !srcloc !299
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i.i, i32 noundef %call2.i.i) #9
  tail call void @saa7146_setgpio(ptr noundef %4, i32 noundef 3, i32 noundef 16) #9
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 8
  %ca.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 4
  %61 = call ptr @memset(ptr %ca.i, i32 0, i32 52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !300
  tail call void @arm_heavy_mb() #9
  %mem.i = getelementptr inbounds %struct.saa7146_dev, ptr %60, i32 0, i32 5
  %62 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %63, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 524296) #9, !srcloc !299
  %call.i37 = tail call i32 @ttpci_budget_debiread(ptr noundef nonnull %call7.i.i, i32 noundef 4325376, i32 noundef 16384, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %and.i = and i32 %call.i37, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 160
  br i1 %cmp.not.i, label %if.end.i40, label %if.end15.do.body58.i_crit_edge

if.end15.do.body58.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body58.i

if.end.i40:                                       ; preds = %if.end15
  %call3.i = tail call i32 @ttpci_budget_debiread(ptr noundef nonnull %call7.i.i, i32 noundef 4325376, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %slot_status.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 2
  %and4.i = and i32 %call3.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i38 = icmp eq i32 %and4.i, 0
  %spec.select.i39 = select i1 %tobool.not.i38, i32 1, i32 2
  %64 = ptrtoint ptr %slot_status.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %spec.select.i39, ptr %slot_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 162, i32 %call.i37)
  %cmp8.i = icmp eq i32 %call.i37, 162
  %not.cmp8.i = xor i1 %cmp8.i, true
  %spec.select1.i = zext i1 %not.cmp8.i to i32
  %spec.select2.i = select i1 %cmp8.i, i32 0, i32 7
  %65 = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.select1.i, ptr %65, align 4
  %67 = ptrtoint ptr %ca.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %ca.i, align 8
  %read_attribute_mem.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %read_attribute_mem.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @ciintf_read_attribute_mem, ptr %read_attribute_mem.i, align 4
  %write_attribute_mem.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 4, i32 2
  %69 = ptrtoint ptr %write_attribute_mem.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @ciintf_write_attribute_mem, ptr %write_attribute_mem.i, align 8
  %read_cam_control.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 4, i32 3
  %70 = ptrtoint ptr %read_cam_control.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @ciintf_read_cam_control, ptr %read_cam_control.i, align 4
  %write_cam_control.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 4, i32 4
  %71 = ptrtoint ptr %write_cam_control.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @ciintf_write_cam_control, ptr %write_cam_control.i, align 8
  %slot_reset.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 4, i32 7
  %72 = ptrtoint ptr %slot_reset.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @ciintf_slot_reset, ptr %slot_reset.i, align 4
  %slot_shutdown.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 4, i32 8
  %73 = ptrtoint ptr %slot_shutdown.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @ciintf_slot_shutdown, ptr %slot_shutdown.i, align 8
  %slot_ts_enable.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 4, i32 9
  %74 = ptrtoint ptr %slot_ts_enable.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @ciintf_slot_ts_enable, ptr %slot_ts_enable.i, align 4
  %poll_slot_status.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 4, i32 10
  %75 = ptrtoint ptr %poll_slot_status.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @ciintf_poll_slot_status, ptr %poll_slot_status.i, align 8
  %data.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 4, i32 11
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %data.i, align 4
  %dvb_adapter.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 25
  %call24.i = tail call i32 @dvb_ca_en50221_init(ptr noundef %dvb_adapter.i, ptr noundef %ca.i, i32 noundef %spec.select2.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.not.i = icmp eq i32 %call24.i, 0
  br i1 %cmp25.not.i, label %if.end31.i, label %do.end29.i

do.end29.i:                                       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #11
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #13
  br label %do.body58.i

if.end31.i:                                       ; preds = %if.end.i40
  %77 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool33.not.i = icmp eq i32 %78, 0
  br i1 %tobool33.not.i, label %if.end31.i.if.end40.i_crit_edge, label %if.then34.i

if.end31.i.if.end40.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %ciintf_irq_tasklet.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 1
  tail call void @tasklet_setup(ptr noundef %ciintf_irq_tasklet.i, ptr noundef nonnull @ciintf_interrupt) #9
  %79 = ptrtoint ptr %slot_status.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %slot_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp36.not.i = icmp eq i32 %80, 1
  %..i = select i1 %cmp36.not.i, i32 16, i32 32
  tail call void @saa7146_setgpio(ptr noundef %60, i32 noundef 0, i32 noundef %..i) #9
  tail call fastcc void @SAA7146_IER_ENABLE(ptr noundef %60, i32 noundef 8) #9
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end40.i_crit_edge
  %call42.i = tail call i32 @ttpci_budget_debiwrite(ptr noundef nonnull %call7.i.i, i32 noundef 4325376, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #13
  %ci_present.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 13
  %81 = ptrtoint ptr %ci_present.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %ci_present.i, align 8
  %82 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool50.not.i = icmp eq i32 %83, 0
  br i1 %tobool50.not.i, label %if.end40.i.ciintf_init.exit_crit_edge, label %if.then51.i

if.end40.i.ciintf_init.exit_crit_edge:            ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ciintf_init.exit

if.then51.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %slot_status.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %slot_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp53.not.i = icmp ne i32 %85, 1
  %spec.store.select.i = zext i1 %cmp53.not.i to i32
  tail call void @dvb_ca_en50221_camchange_irq(ptr noundef %ca.i, i32 noundef 0, i32 noundef %spec.store.select.i) #9
  br label %ciintf_init.exit

do.body58.i:                                      ; preds = %do.end29.i, %if.end15.do.body58.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !301
  tail call void @arm_heavy_mb() #9
  %86 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mem.i, align 4
  %add.ptr62.i = getelementptr i8, ptr %87, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 8) #9, !srcloc !299
  br label %ciintf_init.exit

ciintf_init.exit:                                 ; preds = %do.body58.i, %if.then51.i, %if.end40.i.ciintf_init.exit_crit_edge
  %priv = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 25, i32 5
  %88 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call7.i.i, ptr %priv, align 8
  %89 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i, align 8
  %pci.i42 = getelementptr inbounds %struct.saa7146_dev, ptr %90, i32 0, i32 8
  %91 = ptrtoint ptr %pci.i42 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pci.i42, align 4
  %subsystem_device.i43 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 10
  %93 = ptrtoint ptr %subsystem_device.i43 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %subsystem_device.i43, align 2
  %95 = zext i16 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.119)
  switch i16 %94, label %ciintf_init.exit.sw.epilog.i52_crit_edge [
    i16 4108, label %sw.bb.i46
    i16 4111, label %sw.bb23.i
    i16 4112, label %sw.bb63.i
    i16 4113, label %sw.bb103.i
    i16 4114, label %sw.bb148.i
    i16 4119, label %sw.bb194.i
    i16 4122, label %sw.bb284.i
    i16 4123, label %sw.bb361.i
    i16 4121, label %sw.bb479.i
  ]

ciintf_init.exit.sw.epilog.i52_crit_edge:         ; preds = %ciintf_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i52

sw.bb.i46:                                        ; preds = %ciintf_init.exit
  %call.i44 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.29) #9
  %tobool.not.i45 = icmp eq ptr %call.i44, null
  br i1 %tobool.not.i45, label %cond.end.i, label %sw.bb.i46.if.then.i_crit_edge

sw.bb.i46.if.then.i_crit_edge:                    ; preds = %sw.bb.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

cond.end.i:                                       ; preds = %sw.bb.i46
  %call1.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.30) #9
  %call2.i47 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.29) #9
  %tobool3.not.i = icmp eq ptr %call2.i47, null
  br i1 %tobool3.not.i, label %do.end.i50, label %cond.end.i.if.then.i_crit_edge

cond.end.i.if.then.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %cond.end.i.if.then.i_crit_edge, %sw.bb.i46.if.then.i_crit_edge
  %cond751.i = phi ptr [ %call2.i47, %cond.end.i.if.then.i_crit_edge ], [ %call.i44, %sw.bb.i46.if.then.i_crit_edge ]
  %i2c_adap.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 3
  %call5.i48 = tail call ptr %cond751.i(ptr noundef nonnull @alps_bsru6_config, ptr noundef %i2c_adap.i) #9
  %cmp.i49 = icmp eq ptr %call5.i48, null
  br i1 %cmp.i49, label %if.then7.i, label %if.then15.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.29) #9
  br label %if.end9.thread.i

do.end.i50:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  br label %if.end9.thread.i

if.end9.thread.i:                                 ; preds = %do.end.i50, %if.then7.i
  %dvb_frontend753.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %96 = ptrtoint ptr %dvb_frontend753.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %dvb_frontend753.i, align 8
  br label %sw.epilog.i52

if.then15.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dvb_frontend.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %97 = ptrtoint ptr %dvb_frontend.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call5.i48, ptr %dvb_frontend.i, align 8
  %set_params.i = getelementptr inbounds %struct.dvb_frontend, ptr %call5.i48, i32 0, i32 1, i32 32, i32 6
  %98 = ptrtoint ptr %set_params.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @alps_bsru6_tuner_set_params, ptr %set_params.i, align 4
  %99 = load ptr, ptr %dvb_frontend.i, align 8
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %i2c_adap.i, ptr %tuner_priv.i, align 4
  br label %sw.epilog.i52

sw.bb23.i:                                        ; preds = %ciintf_init.exit
  %call26.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.29) #9
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %cond.end32.i, label %sw.bb23.i.if.then35.i_crit_edge

sw.bb23.i.if.then35.i_crit_edge:                  ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.i

cond.end32.i:                                     ; preds = %sw.bb23.i
  %call30.i51 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.30) #9
  %call31.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.29) #9
  %tobool34.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool34.not.i, label %do.end46.i, label %cond.end32.i.if.then35.i_crit_edge

cond.end32.i.if.then35.i_crit_edge:               ; preds = %cond.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.i

if.then35.i:                                      ; preds = %cond.end32.i.if.then35.i_crit_edge, %sw.bb23.i.if.then35.i_crit_edge
  %cond33757.i = phi ptr [ %call31.i, %cond.end32.i.if.then35.i_crit_edge ], [ %call26.i, %sw.bb23.i.if.then35.i_crit_edge ]
  %i2c_adap37.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 3
  %call38.i = tail call ptr %cond33757.i(ptr noundef nonnull @philips_su1278_tt_config, ptr noundef %i2c_adap37.i) #9
  %cmp39.i = icmp eq ptr %call38.i, null
  br i1 %cmp39.i, label %if.then41.i, label %if.then56.i

if.then41.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.29) #9
  br label %if.end49.thread.i

do.end46.i:                                       ; preds = %cond.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  br label %if.end49.thread.i

if.end49.thread.i:                                ; preds = %do.end46.i, %if.then41.i
  %dvb_frontend52759.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %101 = ptrtoint ptr %dvb_frontend52759.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %dvb_frontend52759.i, align 8
  br label %sw.epilog.i52

if.then56.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  %dvb_frontend52.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %102 = ptrtoint ptr %dvb_frontend52.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call38.i, ptr %dvb_frontend52.i, align 8
  %set_params61.i = getelementptr inbounds %struct.dvb_frontend, ptr %call38.i, i32 0, i32 1, i32 32, i32 6
  %103 = ptrtoint ptr %set_params61.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @philips_su1278_tt_tuner_set_params, ptr %set_params61.i, align 4
  br label %sw.epilog.i52

sw.bb63.i:                                        ; preds = %ciintf_init.exit
  %tuner_pll_address.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 6
  %104 = ptrtoint ptr %tuner_pll_address.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 97, ptr %tuner_pll_address.i, align 4
  %call66.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.35) #9
  %tobool67.not.i = icmp eq ptr %call66.i, null
  br i1 %tobool67.not.i, label %cond.end72.i, label %sw.bb63.i.if.then75.i_crit_edge

sw.bb63.i.if.then75.i_crit_edge:                  ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then75.i

cond.end72.i:                                     ; preds = %sw.bb63.i
  %call70.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.36) #9
  %call71.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.35) #9
  %tobool74.not.i = icmp eq ptr %call71.i, null
  br i1 %tobool74.not.i, label %do.end86.i, label %cond.end72.i.if.then75.i_crit_edge

cond.end72.i.if.then75.i_crit_edge:               ; preds = %cond.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then75.i

if.then75.i:                                      ; preds = %cond.end72.i.if.then75.i_crit_edge, %sw.bb63.i.if.then75.i_crit_edge
  %cond73763.i = phi ptr [ %call71.i, %cond.end72.i.if.then75.i_crit_edge ], [ %call66.i, %sw.bb63.i.if.then75.i_crit_edge ]
  %i2c_adap77.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 3
  %call78.i = tail call ptr %cond73763.i(ptr noundef nonnull @dvbc_philips_tdm1316l_config, ptr noundef %i2c_adap77.i) #9
  %cmp79.i = icmp eq ptr %call78.i, null
  br i1 %cmp79.i, label %if.then81.i, label %if.then96.i

if.then81.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.35) #9
  br label %if.end89.thread.i

do.end86.i:                                       ; preds = %cond.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  %call88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %if.end89.thread.i

if.end89.thread.i:                                ; preds = %do.end86.i, %if.then81.i
  %dvb_frontend92765.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %105 = ptrtoint ptr %dvb_frontend92765.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %dvb_frontend92765.i, align 8
  br label %sw.epilog.i52

if.then96.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #11
  %dvb_frontend92.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %106 = ptrtoint ptr %dvb_frontend92.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call78.i, ptr %dvb_frontend92.i, align 8
  %set_params101.i = getelementptr inbounds %struct.dvb_frontend, ptr %call78.i, i32 0, i32 1, i32 32, i32 6
  %107 = ptrtoint ptr %set_params101.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @dvbc_philips_tdm1316l_tuner_set_params, ptr %set_params101.i, align 4
  br label %sw.epilog.i52

sw.bb103.i:                                       ; preds = %ciintf_init.exit
  %tuner_pll_address104.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 6
  %108 = ptrtoint ptr %tuner_pll_address104.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 99, ptr %tuner_pll_address104.i, align 4
  %call107.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.40) #9
  %tobool108.not.i = icmp eq ptr %call107.i, null
  br i1 %tobool108.not.i, label %cond.end113.i, label %sw.bb103.i.if.then116.i_crit_edge

sw.bb103.i.if.then116.i_crit_edge:                ; preds = %sw.bb103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116.i

cond.end113.i:                                    ; preds = %sw.bb103.i
  %call111.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.41) #9
  %call112.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.40) #9
  %tobool115.not.i = icmp eq ptr %call112.i, null
  br i1 %tobool115.not.i, label %do.end127.i, label %cond.end113.i.if.then116.i_crit_edge

cond.end113.i.if.then116.i_crit_edge:             ; preds = %cond.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116.i

if.then116.i:                                     ; preds = %cond.end113.i.if.then116.i_crit_edge, %sw.bb103.i.if.then116.i_crit_edge
  %cond114769.i = phi ptr [ %call112.i, %cond.end113.i.if.then116.i_crit_edge ], [ %call107.i, %sw.bb103.i.if.then116.i_crit_edge ]
  %i2c_adap118.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 3
  %call119.i = tail call ptr %cond114769.i(ptr noundef nonnull @philips_tdm1316l_config, ptr noundef %i2c_adap118.i) #9
  %cmp120.i = icmp eq ptr %call119.i, null
  br i1 %cmp120.i, label %if.then122.i, label %if.then137.i

if.then122.i:                                     ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.40) #9
  br label %if.end130.thread.i

do.end127.i:                                      ; preds = %cond.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  %call129.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #13
  br label %if.end130.thread.i

if.end130.thread.i:                               ; preds = %do.end127.i, %if.then122.i
  %dvb_frontend133771.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %109 = ptrtoint ptr %dvb_frontend133771.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %dvb_frontend133771.i, align 8
  br label %sw.epilog.i52

if.then137.i:                                     ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  %dvb_frontend133.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %110 = ptrtoint ptr %dvb_frontend133.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call119.i, ptr %dvb_frontend133.i, align 8
  %init.i = getelementptr inbounds %struct.dvb_frontend, ptr %call119.i, i32 0, i32 1, i32 32, i32 2
  %111 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @philips_tdm1316l_tuner_init, ptr %init.i, align 4
  %112 = load ptr, ptr %dvb_frontend133.i, align 8
  %set_params146.i = getelementptr inbounds %struct.dvb_frontend, ptr %112, i32 0, i32 1, i32 32, i32 6
  %113 = ptrtoint ptr %set_params146.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @philips_tdm1316l_tuner_set_params, ptr %set_params146.i, align 4
  br label %sw.epilog.i52

sw.bb148.i:                                       ; preds = %ciintf_init.exit
  %tuner_pll_address149.i = getelementptr inbounds %struct.budget_ci, ptr %call7.i.i, i32 0, i32 6
  %114 = ptrtoint ptr %tuner_pll_address149.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 96, ptr %tuner_pll_address149.i, align 4
  %call152.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.45) #9
  %tobool153.not.i = icmp eq ptr %call152.i, null
  br i1 %tobool153.not.i, label %cond.end158.i, label %sw.bb148.i.if.then161.i_crit_edge

sw.bb148.i.if.then161.i_crit_edge:                ; preds = %sw.bb148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then161.i

cond.end158.i:                                    ; preds = %sw.bb148.i
  %call156.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.46) #9
  %call157.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.45) #9
  %tobool160.not.i = icmp eq ptr %call157.i, null
  br i1 %tobool160.not.i, label %do.end172.i, label %cond.end158.i.if.then161.i_crit_edge

cond.end158.i.if.then161.i_crit_edge:             ; preds = %cond.end158.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then161.i

if.then161.i:                                     ; preds = %cond.end158.i.if.then161.i_crit_edge, %sw.bb148.i.if.then161.i_crit_edge
  %cond159775.i = phi ptr [ %call157.i, %cond.end158.i.if.then161.i_crit_edge ], [ %call152.i, %sw.bb148.i.if.then161.i_crit_edge ]
  %i2c_adap163.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 3
  %call164.i = tail call ptr %cond159775.i(ptr noundef nonnull @philips_tdm1316l_config_invert, ptr noundef %i2c_adap163.i) #9
  %cmp165.i = icmp eq ptr %call164.i, null
  br i1 %cmp165.i, label %if.then167.i, label %if.then182.i

if.then167.i:                                     ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.45) #9
  br label %if.end175.thread.i

do.end172.i:                                      ; preds = %cond.end158.i
  call void @__sanitizer_cov_trace_pc() #11
  %call174.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #13
  br label %if.end175.thread.i

if.end175.thread.i:                               ; preds = %do.end172.i, %if.then167.i
  %dvb_frontend178777.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %115 = ptrtoint ptr %dvb_frontend178777.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %dvb_frontend178777.i, align 8
  br label %sw.epilog.i52

if.then182.i:                                     ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #11
  %dvb_frontend178.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %116 = ptrtoint ptr %dvb_frontend178.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call164.i, ptr %dvb_frontend178.i, align 8
  %init187.i = getelementptr inbounds %struct.dvb_frontend, ptr %call164.i, i32 0, i32 1, i32 32, i32 2
  %117 = ptrtoint ptr %init187.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @philips_tdm1316l_tuner_init, ptr %init187.i, align 4
  %118 = load ptr, ptr %dvb_frontend178.i, align 8
  %set_params192.i = getelementptr inbounds %struct.dvb_frontend, ptr %118, i32 0, i32 1, i32 32, i32 6
  %119 = ptrtoint ptr %set_params192.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @philips_tdm1316l_tuner_set_params, ptr %set_params192.i, align 4
  br label %sw.epilog.i52

sw.bb194.i:                                       ; preds = %ciintf_init.exit
  %call197.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.29) #9
  %tobool198.not.i = icmp eq ptr %call197.i, null
  br i1 %tobool198.not.i, label %cond.end203.i, label %sw.bb194.i.if.then206.i_crit_edge

sw.bb194.i.if.then206.i_crit_edge:                ; preds = %sw.bb194.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then206.i

cond.end203.i:                                    ; preds = %sw.bb194.i
  %call201.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.30) #9
  %call202.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.29) #9
  %tobool205.not.i = icmp eq ptr %call202.i, null
  br i1 %tobool205.not.i, label %do.end217.i, label %cond.end203.i.if.then206.i_crit_edge

cond.end203.i.if.then206.i_crit_edge:             ; preds = %cond.end203.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then206.i

if.then206.i:                                     ; preds = %cond.end203.i.if.then206.i_crit_edge, %sw.bb194.i.if.then206.i_crit_edge
  %cond204781.i = phi ptr [ %call202.i, %cond.end203.i.if.then206.i_crit_edge ], [ %call197.i, %sw.bb194.i.if.then206.i_crit_edge ]
  %i2c_adap208.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 3
  %call209.i = tail call ptr %cond204781.i(ptr noundef nonnull @alps_bsbe1_config, ptr noundef %i2c_adap208.i) #9
  %cmp210.i = icmp eq ptr %call209.i, null
  br i1 %cmp210.i, label %if.then212.i, label %if.then227.i

if.then212.i:                                     ; preds = %if.then206.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.29) #9
  br label %if.end220.thread.i

do.end217.i:                                      ; preds = %cond.end203.i
  call void @__sanitizer_cov_trace_pc() #11
  %call219.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  br label %if.end220.thread.i

if.end220.thread.i:                               ; preds = %do.end217.i, %if.then212.i
  %dvb_frontend223783.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %120 = ptrtoint ptr %dvb_frontend223783.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %dvb_frontend223783.i, align 8
  br label %sw.epilog.i52

if.then227.i:                                     ; preds = %if.then206.i
  %dvb_frontend223.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %121 = ptrtoint ptr %dvb_frontend223.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call209.i, ptr %dvb_frontend223.i, align 8
  %set_params232.i = getelementptr inbounds %struct.dvb_frontend, ptr %call209.i, i32 0, i32 1, i32 32, i32 6
  %122 = ptrtoint ptr %set_params232.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @alps_bsbe1_tuner_set_params, ptr %set_params232.i, align 4
  %123 = load ptr, ptr %dvb_frontend223.i, align 8
  %tuner_priv237.i = getelementptr inbounds %struct.dvb_frontend, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %tuner_priv237.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %i2c_adap208.i, ptr %tuner_priv237.i, align 4
  %125 = load ptr, ptr %dvb_frontend223.i, align 8
  %dishnetwork_send_legacy_command.i = getelementptr inbounds %struct.dvb_frontend, ptr %125, i32 0, i32 1, i32 27
  %126 = ptrtoint ptr %dishnetwork_send_legacy_command.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %dishnetwork_send_legacy_command.i, align 4
  %call243.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.52) #9
  %tobool244.not.i = icmp eq ptr %call243.i, null
  br i1 %tobool244.not.i, label %cond.end249.i, label %if.then227.i.if.then252.i_crit_edge

if.then227.i.if.then252.i_crit_edge:              ; preds = %if.then227.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then252.i

cond.end249.i:                                    ; preds = %if.then227.i
  %call247.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.53) #9
  %call248.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.52) #9
  %tobool251.not.i = icmp eq ptr %call248.i, null
  br i1 %tobool251.not.i, label %do.end265.i, label %cond.end249.i.if.then252.i_crit_edge

cond.end249.i.if.then252.i_crit_edge:             ; preds = %cond.end249.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then252.i

if.then252.i:                                     ; preds = %cond.end249.i.if.then252.i_crit_edge, %if.then227.i.if.then252.i_crit_edge
  %cond250788.i = phi ptr [ %call248.i, %cond.end249.i.if.then252.i_crit_edge ], [ %call243.i, %if.then227.i.if.then252.i_crit_edge ]
  %127 = ptrtoint ptr %dvb_frontend223.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dvb_frontend223.i, align 8
  %call257.i = tail call ptr %cond250788.i(ptr noundef %128, ptr noundef %i2c_adap208.i, i8 noundef zeroext 16, i8 noundef zeroext 0) #9
  %cmp258.i = icmp eq ptr %call257.i, null
  br i1 %cmp258.i, label %if.then260.i, label %if.then252.i.sw.epilog.i52_crit_edge

if.then252.i.sw.epilog.i52_crit_edge:             ; preds = %if.then252.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i52

if.then260.i:                                     ; preds = %if.then252.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.52) #9
  br label %do.end275.i

do.end265.i:                                      ; preds = %cond.end249.i
  call void @__sanitizer_cov_trace_pc() #11
  %call267.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #13
  br label %do.end275.i

do.end275.i:                                      ; preds = %do.end265.i, %if.then260.i
  %call277.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.32) #13
  %129 = ptrtoint ptr %dvb_frontend223.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dvb_frontend223.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %130) #9
  %131 = ptrtoint ptr %dvb_frontend223.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %dvb_frontend223.i, align 8
  br label %sw.epilog.i52

sw.bb284.i:                                       ; preds = %ciintf_init.exit
  %call287.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #9
  %tobool288.not.i = icmp eq ptr %call287.i, null
  br i1 %tobool288.not.i, label %cond.end293.i, label %sw.bb284.i.if.then296.i_crit_edge

sw.bb284.i.if.then296.i_crit_edge:                ; preds = %sw.bb284.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then296.i

cond.end293.i:                                    ; preds = %sw.bb284.i
  %call291.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.61) #9
  %call292.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #9
  %tobool295.not.i = icmp eq ptr %call292.i, null
  br i1 %tobool295.not.i, label %do.end307.i, label %cond.end293.i.if.then296.i_crit_edge

cond.end293.i.if.then296.i_crit_edge:             ; preds = %cond.end293.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then296.i

if.then296.i:                                     ; preds = %cond.end293.i.if.then296.i_crit_edge, %sw.bb284.i.if.then296.i_crit_edge
  %cond294795.i = phi ptr [ %call292.i, %cond.end293.i.if.then296.i_crit_edge ], [ %call287.i, %sw.bb284.i.if.then296.i_crit_edge ]
  %i2c_adap298.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 3
  %call299.i = tail call ptr %cond294795.i(ptr noundef nonnull @tda10023_config, ptr noundef %i2c_adap298.i, i8 noundef zeroext 72) #9
  %cmp300.i = icmp eq ptr %call299.i, null
  br i1 %cmp300.i, label %if.then302.i, label %if.then317.i

if.then302.i:                                     ; preds = %if.then296.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.60) #9
  br label %if.end310.thread.i

do.end307.i:                                      ; preds = %cond.end293.i
  call void @__sanitizer_cov_trace_pc() #11
  %call309.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #13
  br label %if.end310.thread.i

if.end310.thread.i:                               ; preds = %do.end307.i, %if.then302.i
  %dvb_frontend313797.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %132 = ptrtoint ptr %dvb_frontend313797.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %dvb_frontend313797.i, align 8
  br label %sw.epilog.i52

if.then317.i:                                     ; preds = %if.then296.i
  %dvb_frontend313.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %133 = ptrtoint ptr %dvb_frontend313.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call299.i, ptr %dvb_frontend313.i, align 8
  %call320.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.65) #9
  %tobool321.not.i = icmp eq ptr %call320.i, null
  br i1 %tobool321.not.i, label %cond.end326.i, label %if.then317.i.if.then329.i_crit_edge

if.then317.i.if.then329.i_crit_edge:              ; preds = %if.then317.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then329.i

cond.end326.i:                                    ; preds = %if.then317.i
  %call324.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.66) #9
  %call325.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.65) #9
  %tobool328.not.i = icmp eq ptr %call325.i, null
  br i1 %tobool328.not.i, label %do.end342.i, label %cond.end326.i.if.then329.i_crit_edge

cond.end326.i.if.then329.i_crit_edge:             ; preds = %cond.end326.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then329.i

if.then329.i:                                     ; preds = %cond.end326.i.if.then329.i_crit_edge, %if.then317.i.if.then329.i_crit_edge
  %cond327802.i = phi ptr [ %call325.i, %cond.end326.i.if.then329.i_crit_edge ], [ %call320.i, %if.then317.i.if.then329.i_crit_edge ]
  %134 = ptrtoint ptr %dvb_frontend313.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dvb_frontend313.i, align 8
  %call334.i = tail call ptr %cond327802.i(ptr noundef %135, i32 noundef 97, ptr noundef %i2c_adap298.i, ptr noundef nonnull @tda827x_config) #9
  %cmp335.i = icmp eq ptr %call334.i, null
  br i1 %cmp335.i, label %if.then337.i, label %if.then329.i.sw.epilog.i52_crit_edge

if.then329.i.sw.epilog.i52_crit_edge:             ; preds = %if.then329.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i52

if.then337.i:                                     ; preds = %if.then329.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.65) #9
  br label %do.end352.i

do.end342.i:                                      ; preds = %cond.end326.i
  call void @__sanitizer_cov_trace_pc() #11
  %call344.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #13
  br label %do.end352.i

do.end352.i:                                      ; preds = %do.end342.i, %if.then337.i
  %call354.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.32) #13
  %136 = ptrtoint ptr %dvb_frontend313.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dvb_frontend313.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %137) #9
  %138 = ptrtoint ptr %dvb_frontend313.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %dvb_frontend313.i, align 8
  br label %sw.epilog.i52

sw.bb361.i:                                       ; preds = %ciintf_init.exit
  %call364.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #9
  %tobool365.not.i = icmp eq ptr %call364.i, null
  br i1 %tobool365.not.i, label %cond.end370.i, label %sw.bb361.i.if.then373.i_crit_edge

sw.bb361.i.if.then373.i_crit_edge:                ; preds = %sw.bb361.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then373.i

cond.end370.i:                                    ; preds = %sw.bb361.i
  %call368.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.74) #9
  %call369.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #9
  %tobool372.not.i = icmp eq ptr %call369.i, null
  br i1 %tobool372.not.i, label %do.end384.i, label %cond.end370.i.if.then373.i_crit_edge

cond.end370.i.if.then373.i_crit_edge:             ; preds = %cond.end370.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then373.i

if.then373.i:                                     ; preds = %cond.end370.i.if.then373.i_crit_edge, %sw.bb361.i.if.then373.i_crit_edge
  %cond371809.i = phi ptr [ %call369.i, %cond.end370.i.if.then373.i_crit_edge ], [ %call364.i, %sw.bb361.i.if.then373.i_crit_edge ]
  %i2c_adap375.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 3
  %call376.i = tail call ptr %cond371809.i(ptr noundef nonnull @stv0288_bsbe1_d01a_config, ptr noundef %i2c_adap375.i) #9
  %cmp377.i = icmp eq ptr %call376.i, null
  br i1 %cmp377.i, label %if.then379.i, label %if.then394.i

if.then379.i:                                     ; preds = %if.then373.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.73) #9
  br label %if.end387.thread.i

do.end384.i:                                      ; preds = %cond.end370.i
  call void @__sanitizer_cov_trace_pc() #11
  %call386.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #13
  br label %if.end387.thread.i

if.end387.thread.i:                               ; preds = %do.end384.i, %if.then379.i
  %dvb_frontend390811.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %139 = ptrtoint ptr %dvb_frontend390811.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %dvb_frontend390811.i, align 8
  br label %sw.epilog.i52

if.then394.i:                                     ; preds = %if.then373.i
  %dvb_frontend390.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %140 = ptrtoint ptr %dvb_frontend390.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call376.i, ptr %dvb_frontend390.i, align 8
  %call397.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #9
  %tobool398.not.i = icmp eq ptr %call397.i, null
  br i1 %tobool398.not.i, label %cond.end403.i, label %if.then394.i.if.then406.i_crit_edge

if.then394.i.if.then406.i_crit_edge:              ; preds = %if.then394.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then406.i

cond.end403.i:                                    ; preds = %if.then394.i
  %call401.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #9
  %call402.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.78) #9
  %tobool405.not.i = icmp eq ptr %call402.i, null
  br i1 %tobool405.not.i, label %do.end419.i, label %cond.end403.i.if.then406.i_crit_edge

cond.end403.i.if.then406.i_crit_edge:             ; preds = %cond.end403.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then406.i

if.then406.i:                                     ; preds = %cond.end403.i.if.then406.i_crit_edge, %if.then394.i.if.then406.i_crit_edge
  %cond404817.i = phi ptr [ %call402.i, %cond.end403.i.if.then406.i_crit_edge ], [ %call397.i, %if.then394.i.if.then406.i_crit_edge ]
  %141 = ptrtoint ptr %dvb_frontend390.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dvb_frontend390.i, align 8
  %call411.i = tail call ptr %cond404817.i(ptr noundef %142, i32 noundef 99, ptr noundef %i2c_adap375.i) #9
  %cmp412.i = icmp eq ptr %call411.i, null
  br i1 %cmp412.i, label %if.then414.i, label %if.then425.i

if.then414.i:                                     ; preds = %if.then406.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.78) #9
  br label %do.end470.i

do.end419.i:                                      ; preds = %cond.end403.i
  call void @__sanitizer_cov_trace_pc() #11
  %call421.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #13
  br label %do.end470.i

if.then425.i:                                     ; preds = %if.then406.i
  %call428.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.52) #9
  %tobool429.not.i = icmp eq ptr %call428.i, null
  br i1 %tobool429.not.i, label %cond.end434.i, label %if.then425.i.if.then437.i_crit_edge

if.then425.i.if.then437.i_crit_edge:              ; preds = %if.then425.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then437.i

cond.end434.i:                                    ; preds = %if.then425.i
  %call432.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.53) #9
  %call433.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.52) #9
  %tobool436.not.i = icmp eq ptr %call433.i, null
  br i1 %tobool436.not.i, label %do.end450.i, label %cond.end434.i.if.then437.i_crit_edge

cond.end434.i.if.then437.i_crit_edge:             ; preds = %cond.end434.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then437.i

if.then437.i:                                     ; preds = %cond.end434.i.if.then437.i_crit_edge, %if.then425.i.if.then437.i_crit_edge
  %cond435824.i = phi ptr [ %call433.i, %cond.end434.i.if.then437.i_crit_edge ], [ %call428.i, %if.then425.i.if.then437.i_crit_edge ]
  %143 = ptrtoint ptr %dvb_frontend390.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dvb_frontend390.i, align 8
  %call442.i = tail call ptr %cond435824.i(ptr noundef %144, ptr noundef %i2c_adap375.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %cmp443.i = icmp eq ptr %call442.i, null
  br i1 %cmp443.i, label %if.then445.i, label %if.then437.i.sw.epilog.i52_crit_edge

if.then437.i.sw.epilog.i52_crit_edge:             ; preds = %if.then437.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i52

if.then445.i:                                     ; preds = %if.then437.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.52) #9
  br label %do.end459.i

do.end450.i:                                      ; preds = %cond.end434.i
  call void @__sanitizer_cov_trace_pc() #11
  %call452.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #13
  br label %do.end459.i

do.end459.i:                                      ; preds = %do.end450.i, %if.then445.i
  %call461.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.32) #13
  %145 = ptrtoint ptr %dvb_frontend390.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dvb_frontend390.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %146) #9
  %147 = ptrtoint ptr %dvb_frontend390.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %dvb_frontend390.i, align 8
  br label %sw.epilog.i52

do.end470.i:                                      ; preds = %do.end419.i, %if.then414.i
  %call472.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.32) #13
  %148 = ptrtoint ptr %dvb_frontend390.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dvb_frontend390.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %149) #9
  %150 = ptrtoint ptr %dvb_frontend390.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %dvb_frontend390.i, align 8
  br label %sw.epilog.i52

sw.bb479.i:                                       ; preds = %ciintf_init.exit
  tail call void @saa7146_setgpio(ptr noundef %90, i32 noundef 2, i32 noundef 64) #9
  tail call void @msleep(i32 noundef 50) #9
  %151 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev.i, align 8
  tail call void @saa7146_setgpio(ptr noundef %152, i32 noundef 2, i32 noundef 80) #9
  tail call void @msleep(i32 noundef 250) #9
  %call486.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.91) #9
  %tobool487.not.i = icmp eq ptr %call486.i, null
  br i1 %tobool487.not.i, label %cond.end492.i, label %sw.bb479.i.if.then495.i_crit_edge

sw.bb479.i.if.then495.i_crit_edge:                ; preds = %sw.bb479.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then495.i

cond.end492.i:                                    ; preds = %sw.bb479.i
  %call490.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.92) #9
  %call491.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.91) #9
  %tobool494.not.i = icmp eq ptr %call491.i, null
  br i1 %tobool494.not.i, label %do.end506.i, label %cond.end492.i.if.then495.i_crit_edge

cond.end492.i.if.then495.i_crit_edge:             ; preds = %cond.end492.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then495.i

if.then495.i:                                     ; preds = %cond.end492.i.if.then495.i_crit_edge, %sw.bb479.i.if.then495.i_crit_edge
  %cond493831.i = phi ptr [ %call491.i, %cond.end492.i.if.then495.i_crit_edge ], [ %call486.i, %sw.bb479.i.if.then495.i_crit_edge ]
  %i2c_adap497.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 3
  %call498.i = tail call ptr %cond493831.i(ptr noundef nonnull @tt3200_config, ptr noundef %i2c_adap497.i) #9
  %cmp499.i = icmp eq ptr %call498.i, null
  br i1 %cmp499.i, label %if.then501.i, label %if.then516.i

if.then501.i:                                     ; preds = %if.then495.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.91) #9
  br label %if.end509.thread.i

do.end506.i:                                      ; preds = %cond.end492.i
  call void @__sanitizer_cov_trace_pc() #11
  %call508.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #13
  br label %if.end509.thread.i

if.end509.thread.i:                               ; preds = %do.end506.i, %if.then501.i
  %dvb_frontend512833.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %153 = ptrtoint ptr %dvb_frontend512833.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %dvb_frontend512833.i, align 8
  br label %sw.epilog.i52

if.then516.i:                                     ; preds = %if.then495.i
  %dvb_frontend512.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %154 = ptrtoint ptr %dvb_frontend512.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call498.i, ptr %dvb_frontend512.i, align 8
  %call519.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.96) #9
  %tobool520.not.i = icmp eq ptr %call519.i, null
  br i1 %tobool520.not.i, label %cond.end525.i, label %if.then516.i.if.then528.i_crit_edge

if.then516.i.if.then528.i_crit_edge:              ; preds = %if.then516.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then528.i

cond.end525.i:                                    ; preds = %if.then516.i
  %call523.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.97) #9
  %call524.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.96) #9
  %tobool527.not.i = icmp eq ptr %call524.i, null
  br i1 %tobool527.not.i, label %do.end541.i, label %cond.end525.i.if.then528.i_crit_edge

cond.end525.i.if.then528.i_crit_edge:             ; preds = %cond.end525.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then528.i

if.then528.i:                                     ; preds = %cond.end525.i.if.then528.i_crit_edge, %if.then516.i.if.then528.i_crit_edge
  %cond526839.i = phi ptr [ %call524.i, %cond.end525.i.if.then528.i_crit_edge ], [ %call519.i, %if.then516.i.if.then528.i_crit_edge ]
  %155 = ptrtoint ptr %dvb_frontend512.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dvb_frontend512.i, align 8
  %call533.i = tail call ptr %cond526839.i(ptr noundef %156, ptr noundef nonnull @tt3200_stb6100_config, ptr noundef %i2c_adap497.i) #9
  %cmp534.i = icmp eq ptr %call533.i, null
  br i1 %cmp534.i, label %if.then536.i, label %if.then547.i

if.then536.i:                                     ; preds = %if.then528.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.96) #9
  br label %if.else589.i

do.end541.i:                                      ; preds = %cond.end525.i
  call void @__sanitizer_cov_trace_pc() #11
  %call543.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #13
  br label %if.else589.i

if.then547.i:                                     ; preds = %if.then528.i
  %call550.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.52) #9
  %tobool551.not.i = icmp eq ptr %call550.i, null
  br i1 %tobool551.not.i, label %cond.end556.i, label %if.then547.i.if.then559.i_crit_edge

if.then547.i.if.then559.i_crit_edge:              ; preds = %if.then547.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then559.i

cond.end556.i:                                    ; preds = %if.then547.i
  %call554.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.53) #9
  %call555.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.52) #9
  %tobool558.not.i = icmp eq ptr %call555.i, null
  br i1 %tobool558.not.i, label %do.end572.i, label %cond.end556.i.if.then559.i_crit_edge

cond.end556.i.if.then559.i_crit_edge:             ; preds = %cond.end556.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then559.i

if.then559.i:                                     ; preds = %cond.end556.i.if.then559.i_crit_edge, %if.then547.i.if.then559.i_crit_edge
  %cond557846.i = phi ptr [ %call555.i, %cond.end556.i.if.then559.i_crit_edge ], [ %call550.i, %if.then547.i.if.then559.i_crit_edge ]
  %157 = ptrtoint ptr %dvb_frontend512.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dvb_frontend512.i, align 8
  %call564.i = tail call ptr %cond557846.i(ptr noundef %158, ptr noundef %i2c_adap497.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %cmp565.i = icmp eq ptr %call564.i, null
  br i1 %cmp565.i, label %if.then567.i, label %if.then559.i.sw.epilog.i52_crit_edge

if.then559.i.sw.epilog.i52_crit_edge:             ; preds = %if.then559.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i52

if.then567.i:                                     ; preds = %if.then559.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.52) #9
  br label %do.end581.i

do.end572.i:                                      ; preds = %cond.end556.i
  call void @__sanitizer_cov_trace_pc() #11
  %call574.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #13
  br label %do.end581.i

do.end581.i:                                      ; preds = %do.end572.i, %if.then567.i
  %call583.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.32) #13
  %159 = ptrtoint ptr %dvb_frontend512.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dvb_frontend512.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %160) #9
  %161 = ptrtoint ptr %dvb_frontend512.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %dvb_frontend512.i, align 8
  br label %sw.epilog.i52

if.else589.i:                                     ; preds = %do.end541.i, %if.then536.i
  %162 = ptrtoint ptr %dvb_frontend512.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dvb_frontend512.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %163) #9
  %164 = ptrtoint ptr %dvb_frontend512.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %dvb_frontend512.i, align 8
  br label %sw.epilog.i52

sw.epilog.i52:                                    ; preds = %if.else589.i, %do.end581.i, %if.then559.i.sw.epilog.i52_crit_edge, %if.end509.thread.i, %do.end470.i, %do.end459.i, %if.then437.i.sw.epilog.i52_crit_edge, %if.end387.thread.i, %do.end352.i, %if.then329.i.sw.epilog.i52_crit_edge, %if.end310.thread.i, %do.end275.i, %if.then252.i.sw.epilog.i52_crit_edge, %if.end220.thread.i, %if.then182.i, %if.end175.thread.i, %if.then137.i, %if.end130.thread.i, %if.then96.i, %if.end89.thread.i, %if.then56.i, %if.end49.thread.i, %if.then15.i, %if.end9.thread.i, %ciintf_init.exit.sw.epilog.i52_crit_edge
  %dvb_frontend597.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %165 = ptrtoint ptr %dvb_frontend597.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dvb_frontend597.i, align 8
  %cmp598.i = icmp eq ptr %166, null
  br i1 %cmp598.i, label %do.end603.i, label %if.else623.i

do.end603.i:                                      ; preds = %sw.epilog.i52
  call void @__sanitizer_cov_trace_pc() #11
  %167 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev.i, align 8
  %pci607.i = getelementptr inbounds %struct.saa7146_dev, ptr %168, i32 0, i32 8
  %169 = ptrtoint ptr %pci607.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pci607.i, align 4
  %vendor.i53 = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 7
  %171 = ptrtoint ptr %vendor.i53 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %vendor.i53, align 8
  %conv608.i = zext i16 %172 to i32
  %device.i54 = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 8
  %173 = ptrtoint ptr %device.i54 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %device.i54, align 2
  %conv612.i = zext i16 %174 to i32
  %subsystem_vendor.i55 = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 9
  %175 = ptrtoint ptr %subsystem_vendor.i55 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %subsystem_vendor.i55, align 4
  %conv616.i = zext i16 %176 to i32
  %subsystem_device620.i = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 10
  %177 = ptrtoint ptr %subsystem_device620.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %subsystem_device620.i, align 2
  %conv621.i = zext i16 %178 to i32
  %call622.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %conv608.i, i32 noundef %conv612.i, i32 noundef %conv616.i, i32 noundef %conv621.i) #13
  br label %frontend_init.exit

if.else623.i:                                     ; preds = %sw.epilog.i52
  %dvb_adapter.i56 = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 25
  %call627.i = tail call i32 @dvb_register_frontend(ptr noundef %dvb_adapter.i56, ptr noundef nonnull %166) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call627.i)
  %tobool628.not.i = icmp eq i32 %call627.i, 0
  br i1 %tobool628.not.i, label %if.else623.i.frontend_init.exit_crit_edge, label %do.end632.i

if.else623.i.frontend_init.exit_crit_edge:        ; preds = %if.else623.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %frontend_init.exit

do.end632.i:                                      ; preds = %if.else623.i
  call void @__sanitizer_cov_trace_pc() #11
  %call634.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #13
  %179 = ptrtoint ptr %dvb_frontend597.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dvb_frontend597.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %180) #9
  %181 = ptrtoint ptr %dvb_frontend597.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %dvb_frontend597.i, align 8
  br label %frontend_init.exit

frontend_init.exit:                               ; preds = %do.end632.i, %if.else623.i.frontend_init.exit_crit_edge, %do.end603.i
  tail call void @ttpci_budget_init_hooks(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

out3:                                             ; preds = %do.end66.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %do.end.i ], [ %call61.i, %do.end66.i ]
  %call20 = tail call i32 @ttpci_budget_deinit(ptr noundef nonnull %call7.i.i) #9
  br label %out2

out2:                                             ; preds = %out3, %do.end7.out2_crit_edge
  %err.0 = phi i32 [ %call8, %do.end7.out2_crit_edge ], [ %retval.0.i.ph, %out3 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out2, %frontend_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %frontend_init.exit ], [ %err.0, %out2 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_ci_detach(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_priv, align 4
  %dev1 = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %ci_present = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %ci_present to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ci_present, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %ci_irq.i = getelementptr inbounds %struct.budget_ci, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ci_irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ci_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.ciintf_deinit.exit_crit_edge, label %if.then.i

if.then.ciintf_deinit.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %ciintf_deinit.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %int_slock.i.i = getelementptr inbounds %struct.saa7146_dev, ptr %3, i32 0, i32 10
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !302
  tail call void @arm_heavy_mb() #9
  %mem.i.i = getelementptr inbounds %struct.saa7146_dev, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 220
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !303
  %11 = and i32 %10, -134217729
  %12 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %13, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %11) #9, !srcloc !299
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i.i, i32 noundef %call2.i.i) #9
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 0, i32 noundef 0) #9
  %ciintf_irq_tasklet.i = getelementptr inbounds %struct.budget_ci, ptr %1, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %ciintf_irq_tasklet.i) #9
  br label %ciintf_deinit.exit

ciintf_deinit.exit:                               ; preds = %if.then.i, %if.then.ciintf_deinit.exit_crit_edge
  %call.i = tail call i32 @ttpci_budget_debiwrite(ptr noundef %1, i32 noundef 4325376, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 1) #9
  %call3.i = tail call i32 @ttpci_budget_debiwrite(ptr noundef %1, i32 noundef 4325376, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 1, i32 noundef 0) #9
  %ca.i = getelementptr inbounds %struct.budget_ci, ptr %1, i32 0, i32 4
  tail call void @dvb_ca_en50221_release(ptr noundef %ca.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !304
  tail call void @arm_heavy_mb() #9
  %mem.i = getelementptr inbounds %struct.saa7146_dev, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8) #9, !srcloc !299
  br label %if.end

if.end:                                           ; preds = %ciintf_deinit.exit, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 8
  %int_slock.i.i22 = getelementptr inbounds %struct.saa7146_dev, ptr %17, i32 0, i32 10
  %call2.i.i23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i.i22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !302
  tail call void @arm_heavy_mb() #9
  %mem.i.i24 = getelementptr inbounds %struct.saa7146_dev, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %mem.i.i24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem.i.i24, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %19, i32 220
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25) #9, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !303
  %21 = and i32 %20, -1073741825
  %22 = ptrtoint ptr %mem.i.i24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem.i.i24, align 4
  %add.ptr12.i.i26 = getelementptr i8, ptr %23, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i26, i32 %21) #9, !srcloc !299
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i.i22, i32 noundef %call2.i.i23) #9
  tail call void @saa7146_setgpio(ptr noundef %17, i32 noundef 3, i32 noundef 0) #9
  %ir.i = getelementptr inbounds %struct.budget_ci, ptr %1, i32 0, i32 5
  %msp430_irq_tasklet.i = getelementptr inbounds %struct.budget_ci, ptr %1, i32 0, i32 5, i32 1
  tail call void @tasklet_kill(ptr noundef %msp430_irq_tasklet.i) #9
  %24 = ptrtoint ptr %ir.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ir.i, align 4
  tail call void @rc_unregister_device(ptr noundef %25) #9
  %dvb_frontend = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 26
  %26 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dvb_frontend, align 8
  %tobool4.not = icmp eq ptr %27, null
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %27) #9
  %28 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dvb_frontend, align 8
  tail call void @dvb_frontend_detach(ptr noundef %29) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %call12 = tail call i32 @ttpci_budget_deinit(ptr noundef %1) #9
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 2, i32 noundef 0) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @budget_ci_irq(ptr noundef %dev, ptr noundef %isr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %2 = load i32, ptr @budget_debug, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, ptr noundef %dev, ptr noundef %1) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %isr, align 4
  %and4 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.end3.if.end7_crit_edge, label %if.then6

do.end3.if.end7_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %do.end3
  %state.i = getelementptr inbounds %struct.budget_ci, ptr %1, i32 0, i32 5, i32 1, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then6.if.end7_crit_edge

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %msp430_irq_tasklet = getelementptr inbounds %struct.budget_ci, ptr %1, i32 0, i32 5, i32 1
  tail call void @__tasklet_schedule(ptr noundef %msp430_irq_tasklet) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then6.if.end7_crit_edge, %do.end3.if.end7_crit_edge
  %5 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %isr, align 4
  %and8 = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ttpci_budget_irq10_handler(ptr noundef %dev, ptr noundef %isr) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %7 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %isr, align 4
  %and12 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %land.lhs.true

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end11
  %ci_present = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %ci_present to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ci_present, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true15

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true15:                                  ; preds = %land.lhs.true
  %ci_irq = getelementptr inbounds %struct.budget_ci, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %ci_irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ci_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %land.lhs.true15.if.end18_crit_edge, label %if.then17

land.lhs.true15.if.end18_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true15
  %state.i28 = getelementptr inbounds %struct.budget_ci, ptr %1, i32 0, i32 1, i32 1
  %call.i29 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool.not.i30 = icmp eq i32 %call.i29, 0
  br i1 %tobool.not.i30, label %if.then.i31, label %if.then17.if.end18_crit_edge

if.then17.if.end18_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then.i31:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %ciintf_irq_tasklet = getelementptr inbounds %struct.budget_ci, ptr %1, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %ciintf_irq_tasklet) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then.i31, %if.then17.if.end18_crit_edge, %land.lhs.true15.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_budget_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttpci_budget_init_hooks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_budget_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msp430_ir_interrupt(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %t, i32 -3888
  %ir4 = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %ir4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir4, align 4
  %call = tail call i32 @ttpci_budget_debiread(ptr noundef %add.ptr3, i32 noundef 917504, i32 noundef 16384, i32 noundef 2, i32 noundef 1, i32 noundef 0) #9
  %shr = ashr i32 %call, 8
  %2 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %shr) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %3 = and i32 %call, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool9.not = icmp eq i32 %3, 0
  %have_command16 = getelementptr i8, ptr %t, i32 136
  br i1 %tobool9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %have_command16 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %have_command16, align 4
  %and12 = and i32 %shr, 63
  %ir_key = getelementptr i8, ptr %t, i32 132
  %5 = ptrtoint ptr %ir_key to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and12, ptr %ir_key, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %6 = ptrtoint ptr %have_command16 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %have_command16, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool17.not = icmp eq i8 %7, 0
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %8 = ptrtoint ptr %have_command16 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %have_command16, align 4
  %rc5_device = getelementptr i8, ptr %t, i32 128
  %9 = ptrtoint ptr %rc5_device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rc5_device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %10)
  %cmp.not = icmp eq i32 %10, 255
  %and25 = and i32 %shr, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and25)
  %cmp26.not = icmp eq i32 %10, %and25
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp26.not
  br i1 %or.cond, label %if.end28, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %full_rc5 = getelementptr i8, ptr %t, i32 137
  %11 = ptrtoint ptr %full_rc5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %full_rc5, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool30.not = icmp eq i8 %12, 0
  br i1 %tobool30.not, label %if.end40, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i32 %10, 8
  %ir_key35 = getelementptr i8, ptr %t, i32 132
  %13 = ptrtoint ptr %ir_key35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ir_key35, align 4
  %or = or i32 %14, %shl
  %conv = zext i32 %or to i64
  %15 = lshr i32 %call, 13
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  tail call void @rc_keydown(ptr noundef %1, i32 noundef 2, i64 noundef %conv, i8 noundef zeroext %17) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %ir_key42 = getelementptr i8, ptr %t, i32 132
  %18 = ptrtoint ptr %ir_key42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ir_key42, align 4
  %conv43 = zext i32 %19 to i64
  %20 = lshr i32 %call, 13
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  tail call void @rc_keydown(ptr noundef %1, i32 noundef 0, i64 noundef %conv43, i8 noundef zeroext %22) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then31, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SAA7146_IER_ENABLE(ptr noundef %x, i32 noundef %y) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %int_slock = getelementptr inbounds %struct.saa7146_dev, ptr %x, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !296
  tail call void @arm_heavy_mb() #9
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %x, i32 0, i32 5
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 220
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !297
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !298
  %or = or i32 %3, %y
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem, align 4
  %add.ptr12 = getelementptr i8, ptr %6, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %4) #9, !srcloc !299
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_setgpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_budget_debiread(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_read_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %and = and i32 %address, 4095
  %or = or i32 %and, 12288
  %call = tail call i32 @ttpci_budget_debiread(ptr noundef %1, i32 noundef 37879808, i32 noundef %or, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_write_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %and = and i32 %address, 4095
  %or = or i32 %and, 12288
  %conv = zext i8 %value to i32
  %call = tail call i32 @ttpci_budget_debiwrite(ptr noundef %1, i32 noundef 37879808, i32 noundef %or, i32 noundef 1, i32 noundef %conv, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_read_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = and i8 %address, 3
  %and = zext i8 %2 to i32
  %or = or i32 %and, 4096
  %call = tail call i32 @ttpci_budget_debiread(ptr noundef %1, i32 noundef 37879808, i32 noundef %or, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_write_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = and i8 %address, 3
  %and = zext i8 %2 to i32
  %or = or i32 %and, 4096
  %conv1 = zext i8 %value to i32
  %call = tail call i32 @ttpci_budget_debiwrite(ptr noundef %1, i32 noundef 37879808, i32 noundef %or, i32 noundef 1, i32 noundef %conv1, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_slot_reset(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ci_irq = getelementptr inbounds %struct.budget_ci, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ci_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ci_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 0, i32 noundef 16) #9
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %slot_status = getelementptr inbounds %struct.budget_ci, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %slot_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %slot_status, align 8
  %call = tail call i32 @ttpci_budget_debiwrite(ptr noundef %1, i32 noundef 4325376, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 1) #9
  %call5 = tail call i32 @ttpci_budget_debiwrite(ptr noundef %1, i32 noundef 4325376, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 1, i32 noundef 80) #9
  tail call void @ttpci_budget_set_video_port(ptr noundef %3, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_slot_shutdown(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 1, i32 noundef 80) #9
  tail call void @ttpci_budget_set_video_port(ptr noundef %3, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_slot_ts_enable(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 1, i32 noundef 64) #9
  %call = tail call i32 @ttpci_budget_debiread(ptr noundef %1, i32 noundef 4325376, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %or = or i32 %call, 2
  %call3 = tail call i32 @ttpci_budget_debiwrite(ptr noundef %1, i32 noundef 4325376, i32 noundef 0, i32 noundef 1, i32 noundef %or, i32 noundef 1, i32 noundef 0) #9
  tail call void @ttpci_budget_set_video_port(ptr noundef %3, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_poll_slot_status(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %open) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ci_present = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ci_present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ci_present, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ttpci_budget_debiread(ptr noundef %1, i32 noundef 4325376, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %and = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %slot_status18 = getelementptr inbounds %struct.budget_ci, ptr %1, i32 0, i32 2
  br i1 %tobool2.not, label %if.end.if.end19.sink.split_crit_edge, label %if.then3

if.end.if.end19.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.sink.split

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %slot_status18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot_status18, align 8
  %and4 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then6

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %slot_status18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %slot_status18, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3.if.end8_crit_edge
  %7 = ptrtoint ptr %slot_status18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slot_status18, align 8
  %and10 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp ne i32 %and10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not.i = icmp eq i32 %slot, 0
  %or.cond = and i1 %cmp.not.i, %tobool11.not
  br i1 %or.cond, label %ciintf_read_attribute_mem.exit, label %if.end8.if.end19_crit_edge

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

ciintf_read_attribute_mem.exit:                   ; preds = %if.end8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @ttpci_budget_debiread(ptr noundef %10, i32 noundef 37879808, i32 noundef 12288, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 29
  br i1 %cmp, label %ciintf_read_attribute_mem.exit.if.end19.sink.split_crit_edge, label %ciintf_read_attribute_mem.exit.if.end19_crit_edge

ciintf_read_attribute_mem.exit.if.end19_crit_edge: ; preds = %ciintf_read_attribute_mem.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

ciintf_read_attribute_mem.exit.if.end19.sink.split_crit_edge: ; preds = %ciintf_read_attribute_mem.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %ciintf_read_attribute_mem.exit.if.end19.sink.split_crit_edge, %if.end.if.end19.sink.split_crit_edge
  %.sink = phi i32 [ 8, %ciintf_read_attribute_mem.exit.if.end19.sink.split_crit_edge ], [ 1, %if.end.if.end19.sink.split_crit_edge ]
  %11 = ptrtoint ptr %slot_status18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %slot_status18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %ciintf_read_attribute_mem.exit.if.end19_crit_edge, %if.end8.if.end19_crit_edge
  %slot_status20 = getelementptr inbounds %struct.budget_ci, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %slot_status20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slot_status20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp21.not = icmp eq i32 %13, 1
  br i1 %cmp21.not, label %if.end19.cleanup_crit_edge, label %if.then22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %and24 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %. = select i1 %tobool25.not, i32 1, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.then22 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ciintf_interrupt(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %t, i32 -3488
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %ci_present = getelementptr i8, ptr %t, i32 -392
  %2 = ptrtoint ptr %ci_present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ci_present, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %t, i32 -3800
  %call = tail call i32 @ttpci_budget_debiread(ptr noundef %add.ptr, i32 noundef 4325376, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %and = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else24, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @saa7146_setgpio(ptr noundef %1, i32 noundef 0, i32 noundef 32) #9
  %slot_status = getelementptr i8, ptr %t, i32 24
  %4 = ptrtoint ptr %slot_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot_status, align 8
  %and5 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %slot_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %slot_status, align 8
  %ca = getelementptr i8, ptr %t, i32 32
  tail call void @dvb_ca_en50221_camchange_irq(ptr noundef %ca, i32 noundef 0, i32 noundef 1) #9
  br label %cleanup

if.else:                                          ; preds = %if.then4
  %and10 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else15, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %slot_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %slot_status, align 8
  %ca14 = getelementptr i8, ptr %t, i32 32
  tail call void @dvb_ca_en50221_camready_irq(ptr noundef %ca14, i32 noundef 0) #9
  br label %cleanup

if.else15:                                        ; preds = %if.else
  %and17 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else15.cleanup_crit_edge, label %if.then19

if.else15.cleanup_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  %ca20 = getelementptr i8, ptr %t, i32 32
  tail call void @dvb_ca_en50221_frda_irq(ptr noundef %ca20, i32 noundef 0) #9
  br label %cleanup

if.else24:                                        ; preds = %if.end
  tail call void @saa7146_setgpio(ptr noundef %1, i32 noundef 0, i32 noundef 16) #9
  %slot_status25 = getelementptr i8, ptr %t, i32 24
  %8 = ptrtoint ptr %slot_status25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot_status25, align 8
  %and26 = and i32 %9, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else24.cleanup_crit_edge, label %if.then28

if.else24.cleanup_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %slot_status25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %slot_status25, align 8
  %ca30 = getelementptr i8, ptr %t, i32 32
  tail call void @dvb_ca_en50221_camchange_irq(ptr noundef %ca30, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.else24.cleanup_crit_edge, %if.then19, %if.else15.cleanup_crit_edge, %if.then12, %if.then7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_budget_debiwrite(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_camchange_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttpci_budget_set_video_port(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_camready_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_frda_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsru6_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end.if.end24_crit_edge
  %call25 = call i32 @i2c_transfer(ptr noundef %7, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 1
  %. = select i1 %cmp26.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end24 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_su1278_tt_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %5 = getelementptr inbounds i8, ptr %msg, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 96, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %buf1, align 4
  %11 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dtv_property_cache, align 4
  %13 = add i32 %12, -2150001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1200001, i32 %13)
  %14 = icmp ult i32 %13, -1200001
  br i1 %14, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %16 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %add = add nuw nsw i32 %12, 499
  %div5 = udiv i32 %add, 500
  %shr = lshr i32 %div5, 8
  %17 = trunc i32 %shr to i8
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %buf, align 1
  %conv7 = trunc i32 %div5 to i8
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv7, ptr %16, align 1
  %and9 = lshr i32 %div5, 10
  %20 = trunc i32 %and9 to i8
  %21 = and i8 %20, 96
  %conv12 = or i8 %21, -126
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv12, ptr %15, align 1
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %23 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %24)
  %cmp15 = icmp ult i32 %24, 4000000
  %spec.store.select = select i1 %cmp15, i8 33, i8 32
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.store.select, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250000, i32 %12)
  %cmp24 = icmp ult i32 %12, 1250000
  br i1 %cmp24, label %if.end.if.end60_crit_edge, label %if.else

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1550000, i32 %12)
  %cmp32 = icmp ult i32 %12, 1550000
  br i1 %cmp32, label %if.else.if.end60.sink.split_crit_edge, label %if.else39

if.else.if.end60.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.sink.split

if.else39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2050000, i32 %12)
  %cmp41 = icmp ult i32 %12, 2050000
  br i1 %cmp41, label %if.else39.if.end60.sink.split_crit_edge, label %if.else48

if.else39.if.end60.sink.split_crit_edge:          ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.sink.split

if.else48:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_const_cmp4(i32 2150000, i32 %12)
  %cmp50 = icmp ult i32 %12, 2150000
  br i1 %cmp50, label %if.else48.if.end60.sink.split_crit_edge, label %if.else48.if.end60_crit_edge

if.else48.if.end60_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.else48.if.end60.sink.split_crit_edge:          ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.sink.split

if.end60.sink.split:                              ; preds = %if.else48.if.end60.sink.split_crit_edge, %if.else39.if.end60.sink.split_crit_edge, %if.else.if.end60.sink.split_crit_edge
  %.sink89 = phi i8 [ 64, %if.else.if.end60.sink.split_crit_edge ], [ -128, %if.else39.if.end60.sink.split_crit_edge ], [ -64, %if.else48.if.end60.sink.split_crit_edge ]
  %26 = or i8 %spec.store.select, %.sink89
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %4, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %if.else48.if.end60_crit_edge, %if.end.if.end60_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %28 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %if.end60.if.end64_crit_edge, label %if.then61

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then61:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 %29(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end60.if.end64_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 3
  %call65 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call65)
  %cmp66.not = icmp eq i32 %call65, 1
  %. = select i1 %cmp66.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end64 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbc_philips_tdm1316l_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %tuner_buf = alloca [5 x i8], align 1
  %tuner_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %tuner_buf) #9
  %4 = getelementptr inbounds [5 x i8], ptr %tuner_buf, i32 0, i32 1
  %5 = getelementptr inbounds [5 x i8], ptr %tuner_buf, i32 0, i32 2
  %6 = getelementptr inbounds [5 x i8], ptr %tuner_buf, i32 0, i32 3
  %7 = getelementptr inbounds [5 x i8], ptr %tuner_buf, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tuner_msg) #9
  %8 = getelementptr inbounds i8, ptr %tuner_msg, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  %tuner_pll_address = getelementptr inbounds %struct.budget_ci, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %tuner_pll_address to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tuner_pll_address, align 4
  %conv = zext i8 %11 to i16
  %12 = ptrtoint ptr %tuner_msg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %tuner_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 5, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 3
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tuner_buf, ptr %buf, align 4
  %16 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %17, 36125000
  call void @__sanitizer_cov_trace_const_cmp4(i32 87000000, i32 %add)
  %cmp = icmp slt i32 %add, 87000000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 130000000, i32 %add)
  %cmp2 = icmp ult i32 %add, 130000000
  br i1 %cmp2, label %if.else.if.end46_crit_edge, label %if.else5

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000000, i32 %add)
  %cmp6 = icmp ult i32 %add, 160000000
  br i1 %cmp6, label %if.else5.if.end46_crit_edge, label %if.else9

if.else5.if.end46_crit_edge:                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.else9:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %add)
  %cmp10 = icmp ult i32 %add, 200000000
  br i1 %cmp10, label %if.else9.if.end46_crit_edge, label %if.else13

if.else9.if.end46_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.else13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 290000000, i32 %add)
  %cmp14 = icmp ult i32 %add, 290000000
  br i1 %cmp14, label %if.else13.if.end46_crit_edge, label %if.else17

if.else13.if.end46_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.else17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 420000000, i32 %add)
  %cmp18 = icmp ult i32 %add, 420000000
  br i1 %cmp18, label %if.else17.if.end46_crit_edge, label %if.else21

if.else17.if.end46_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.else21:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp4(i32 480000000, i32 %add)
  %cmp22 = icmp ult i32 %add, 480000000
  br i1 %cmp22, label %if.else21.if.end46_crit_edge, label %if.else25

if.else21.if.end46_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.else25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp4(i32 620000000, i32 %add)
  %cmp26 = icmp ult i32 %add, 620000000
  br i1 %cmp26, label %if.else25.if.end46_crit_edge, label %if.else29

if.else25.if.end46_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.else29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_const_cmp4(i32 830000000, i32 %add)
  %cmp30 = icmp ult i32 %add, 830000000
  br i1 %cmp30, label %if.else29.if.end46_crit_edge, label %if.else33

if.else29.if.end46_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.else33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_const_cmp4(i32 895000000, i32 %add)
  %cmp34 = icmp ult i32 %add, 895000000
  br i1 %cmp34, label %if.else33.if.end46_crit_edge, label %if.else33.cleanup_crit_edge

if.else33.cleanup_crit_edge:                      ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else33.if.end46_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.end46:                                         ; preds = %if.else33.if.end46_crit_edge, %if.else29.if.end46_crit_edge, %if.else25.if.end46_crit_edge, %if.else21.if.end46_crit_edge, %if.else17.if.end46_crit_edge, %if.else13.if.end46_crit_edge, %if.else9.if.end46_crit_edge, %if.else5.if.end46_crit_edge, %if.else.if.end46_crit_edge
  %band.0 = phi i8 [ 1, %if.else.if.end46_crit_edge ], [ 1, %if.else5.if.end46_crit_edge ], [ 1, %if.else9.if.end46_crit_edge ], [ 2, %if.else13.if.end46_crit_edge ], [ 2, %if.else17.if.end46_crit_edge ], [ 2, %if.else21.if.end46_crit_edge ], [ 4, %if.else25.if.end46_crit_edge ], [ 4, %if.else29.if.end46_crit_edge ], [ 4, %if.else33.if.end46_crit_edge ]
  %cp.0 = phi i8 [ 104, %if.else.if.end46_crit_edge ], [ -88, %if.else5.if.end46_crit_edge ], [ -56, %if.else9.if.end46_crit_edge ], [ 104, %if.else13.if.end46_crit_edge ], [ -88, %if.else17.if.end46_crit_edge ], [ -56, %if.else21.if.end46_crit_edge ], [ 104, %if.else25.if.end46_crit_edge ], [ -88, %if.else29.if.end46_crit_edge ], [ -24, %if.else33.if.end46_crit_edge ]
  %add49 = add nuw nsw i32 %17, 36156250
  %div = udiv i32 %add49, 62500
  %18 = lshr i32 %div, 8
  %conv50 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %tuner_buf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv50, ptr %tuner_buf, align 1
  %conv51 = trunc i32 %div to i8
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv51, ptr %4, align 1
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -56, ptr %5, align 1
  %or58 = or i8 %cp.0, %band.0
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or58, ptr %6, align 1
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -128, ptr %7, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %24 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %if.end46.if.end65_crit_edge, label %if.then62

if.end46.if.end65_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then62:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 %25(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end46.if.end65_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 3
  %call66 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call66)
  %cmp67.not = icmp eq i32 %call66, 1
  br i1 %cmp67.not, label %if.end70, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end70:                                         ; preds = %if.end65
  call void @msleep(i32 noundef 50) #9
  %26 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool73.not = icmp eq ptr %27, null
  br i1 %tobool73.not, label %if.end70.if.end78_crit_edge, label %if.then74

if.end70.if.end78_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %call77 = call i32 %27(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.end70.if.end78_crit_edge
  %call81 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call81)
  %cmp82.not = icmp eq i32 %call81, 1
  br i1 %cmp82.not, label %if.end85, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  call void @msleep(i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.end78.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.else33.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end85 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else33.cleanup_crit_edge ], [ -5, %if.end65.cleanup_crit_edge ], [ -5, %if.end78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tuner_msg) #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %tuner_buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tdm1316l_tuner_init(ptr noundef %fe) #2 align 64 {
entry:
  %tuner_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tuner_msg) #9
  %4 = getelementptr inbounds i8, ptr %tuner_msg, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %tuner_pll_address = getelementptr inbounds %struct.budget_ci, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %tuner_pll_address to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tuner_pll_address, align 4
  %conv = zext i8 %7 to i16
  %8 = ptrtoint ptr %tuner_msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %tuner_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @philips_tdm1316l_tuner_init.td1316_init, ptr %buf, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %12 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %13(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 3
  %call3 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 1
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @msleep(i32 noundef 1) #9
  %14 = ptrtoint ptr %tuner_msg to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 101, ptr %tuner_msg, align 4
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @philips_tdm1316l_tuner_init.disable_mc44BC374c, ptr %buf, align 4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 4, ptr %len, align 4
  %17 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %if.end6.if.end17_crit_edge, label %if.then13

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = call i32 %18(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end6.if.end17_crit_edge
  %call20 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 1
  br i1 %cmp21.not, label %if.end17.cleanup_crit_edge, label %if.then23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %if.end17
  %19 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool26.not = icmp eq ptr %20, null
  br i1 %tobool26.not, label %if.then23.if.end31_crit_edge, label %if.then27

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = call i32 %20(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.then23.if.end31_crit_edge
  %call34 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end.cleanup_crit_edge ], [ 0, %if.end31 ], [ 0, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tuner_msg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tdm1316l_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf.i138 = alloca [2 x i8], align 1
  %buf.i132 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  %tuner_buf = alloca [4 x i8], align 4
  %tuner_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_buf) #9
  %4 = getelementptr inbounds [4 x i8], ptr %tuner_buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %tuner_buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %tuner_buf, i32 0, i32 3
  %7 = ptrtoint ptr %tuner_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %tuner_buf, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tuner_msg) #9
  %8 = getelementptr inbounds i8, ptr %tuner_msg, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  %tuner_pll_address = getelementptr inbounds %struct.budget_ci, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %tuner_pll_address to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tuner_pll_address, align 4
  %conv = zext i8 %11 to i16
  %12 = ptrtoint ptr %tuner_msg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %tuner_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 3
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tuner_buf, ptr %buf, align 4
  %16 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %17, 36130000
  call void @__sanitizer_cov_trace_const_cmp4(i32 87000000, i32 %add)
  %cmp = icmp slt i32 %add, 87000000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 130000000, i32 %add)
  %cmp2 = icmp ult i32 %add, 130000000
  br i1 %cmp2, label %if.else.if.end70_crit_edge, label %if.else5

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000000, i32 %add)
  %cmp6 = icmp ult i32 %add, 160000000
  br i1 %cmp6, label %if.else5.if.end70_crit_edge, label %if.else9

if.else5.if.end70_crit_edge:                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.else9:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %add)
  %cmp10 = icmp ult i32 %add, 200000000
  br i1 %cmp10, label %if.else51, label %if.else13

if.else13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 290000000, i32 %add)
  %cmp14 = icmp ult i32 %add, 290000000
  br i1 %cmp14, label %if.else13.if.end70_crit_edge, label %if.else17

if.else13.if.end70_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.else17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 420000000, i32 %add)
  %cmp18 = icmp ult i32 %add, 420000000
  br i1 %cmp18, label %if.else17.if.end70_crit_edge, label %if.else21

if.else17.if.end70_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.else21:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp4(i32 480000000, i32 %add)
  %cmp22 = icmp ult i32 %add, 480000000
  br i1 %cmp22, label %if.else21.if.end70_crit_edge, label %if.else25

if.else21.if.end70_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.else25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp4(i32 620000000, i32 %add)
  %cmp26 = icmp ult i32 %add, 620000000
  br i1 %cmp26, label %if.else56, label %if.else29

if.else29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_const_cmp4(i32 830000000, i32 %add)
  %cmp30 = icmp ult i32 %add, 830000000
  br i1 %cmp30, label %if.else29.if.else61_crit_edge, label %if.else33

if.else29.if.else61_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else61

if.else33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_const_cmp4(i32 895000000, i32 %add)
  %cmp34 = icmp ult i32 %add, 895000000
  br i1 %cmp34, label %if.else33.if.else61_crit_edge, label %if.else33.cleanup_crit_edge

if.else33.cleanup_crit_edge:                      ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else33.if.else61_crit_edge:                    ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else61

if.else51:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 159000000, i32 %17)
  %cmp53 = icmp ult i32 %17, 159000000
  %spec.select = select i1 %cmp53, i8 1, i8 2
  br label %if.end70

if.else56:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_const_cmp4(i32 444000000, i32 %17)
  %cmp58 = icmp ult i32 %17, 444000000
  br i1 %cmp58, label %if.else56.if.end70_crit_edge, label %if.else56.if.else61_crit_edge

if.else56.if.else61_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else61

if.else56.if.end70_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.else61:                                        ; preds = %if.else56.if.else61_crit_edge, %if.else33.if.else61_crit_edge, %if.else29.if.else61_crit_edge
  %cp.0.ph163 = phi i8 [ 96, %if.else56.if.else61_crit_edge ], [ -96, %if.else29.if.else61_crit_edge ], [ -32, %if.else33.if.else61_crit_edge ]
  br label %if.end70

if.end70:                                         ; preds = %if.else61, %if.else56.if.end70_crit_edge, %if.else51, %if.else21.if.end70_crit_edge, %if.else17.if.end70_crit_edge, %if.else13.if.end70_crit_edge, %if.else5.if.end70_crit_edge, %if.else.if.end70_crit_edge
  %cp.0147 = phi i8 [ 96, %if.else56.if.end70_crit_edge ], [ %cp.0.ph163, %if.else61 ], [ -96, %if.else5.if.end70_crit_edge ], [ 96, %if.else.if.end70_crit_edge ], [ 96, %if.else13.if.end70_crit_edge ], [ -96, %if.else17.if.end70_crit_edge ], [ -64, %if.else21.if.end70_crit_edge ], [ -64, %if.else51 ]
  %band.0 = phi i8 [ 2, %if.else56.if.end70_crit_edge ], [ 4, %if.else61 ], [ 1, %if.else5.if.end70_crit_edge ], [ 1, %if.else.if.end70_crit_edge ], [ 2, %if.else13.if.end70_crit_edge ], [ 2, %if.else17.if.end70_crit_edge ], [ 2, %if.else21.if.end70_crit_edge ], [ %spec.select, %if.else51 ]
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %18 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bandwidth_hz, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %19, label %if.end70.cleanup_crit_edge [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb71
    i32 8000000, label %sw.bb73
  ]

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %21 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 12, ptr %buf.i, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 20, ptr %21, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %24 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %sw.bb.tda1004x_writereg.exit_crit_edge, label %if.then.i

sw.bb.tda1004x_writereg.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %tda1004x_writereg.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 %25(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #9
  br label %tda1004x_writereg.exit

tda1004x_writereg.exit:                           ; preds = %if.then.i, %sw.bb.tda1004x_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i132) #9
  %26 = getelementptr inbounds [2 x i8], ptr %buf.i132, i32 0, i32 1
  %27 = ptrtoint ptr %buf.i132 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 12, ptr %buf.i132, align 1
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -128, ptr %26, align 1
  %write.i133 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %29 = ptrtoint ptr %write.i133 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write.i133, align 4
  %tobool.not.i134 = icmp eq ptr %30, null
  br i1 %tobool.not.i134, label %sw.bb71.tda1004x_writereg.exit137_crit_edge, label %if.then.i136

sw.bb71.tda1004x_writereg.exit137_crit_edge:      ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #11
  br label %tda1004x_writereg.exit137

if.then.i136:                                     ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #11
  %call.i135 = call i32 %30(ptr noundef %fe, ptr noundef nonnull %buf.i132, i32 noundef 2) #9
  br label %tda1004x_writereg.exit137

tda1004x_writereg.exit137:                        ; preds = %if.then.i136, %sw.bb71.tda1004x_writereg.exit137_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i132) #9
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i138) #9
  %31 = getelementptr inbounds [2 x i8], ptr %buf.i138, i32 0, i32 1
  %32 = ptrtoint ptr %buf.i138 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 12, ptr %buf.i138, align 1
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 20, ptr %31, align 1
  %write.i139 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %34 = ptrtoint ptr %write.i139 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write.i139, align 4
  %tobool.not.i140 = icmp eq ptr %35, null
  br i1 %tobool.not.i140, label %sw.bb73.tda1004x_writereg.exit143_crit_edge, label %if.then.i142

sw.bb73.tda1004x_writereg.exit143_crit_edge:      ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #11
  br label %tda1004x_writereg.exit143

if.then.i142:                                     ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #11
  %call.i141 = call i32 %35(ptr noundef %fe, ptr noundef nonnull %buf.i138, i32 noundef 2) #9
  br label %tda1004x_writereg.exit143

tda1004x_writereg.exit143:                        ; preds = %if.then.i142, %sw.bb73.tda1004x_writereg.exit143_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i138) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %tda1004x_writereg.exit143, %tda1004x_writereg.exit137, %tda1004x_writereg.exit
  %filter.0 = phi i8 [ 8, %tda1004x_writereg.exit143 ], [ 0, %tda1004x_writereg.exit137 ], [ 0, %tda1004x_writereg.exit ]
  %36 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %37, 1000
  %mul = mul nuw nsw i32 %div, 6
  %add76 = add nuw nsw i32 %mul, 217280
  %div77 = udiv i32 %add76, 1000
  %38 = lshr i32 %div77, 8
  %conv78 = trunc i32 %38 to i8
  %39 = ptrtoint ptr %tuner_buf to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv78, ptr %tuner_buf, align 4
  %conv79 = trunc i32 %div77 to i8
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv79, ptr %4, align 1
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -54, ptr %5, align 2
  %or = or i8 %band.0, %cp.0147
  %or86 = or i8 %or, %filter.0
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %or86, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %43 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %44, null
  br i1 %tobool.not, label %sw.epilog.if.end93_crit_edge, label %if.then89

sw.epilog.if.end93_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then89:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call92 = call i32 %44(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %sw.epilog.if.end93_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 3
  %call94 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call94)
  %cmp95.not = icmp eq i32 %call94, 1
  br i1 %cmp95.not, label %if.end98, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end98:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  call void @msleep(i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.end93.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.else33.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end98 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else33.cleanup_crit_edge ], [ -22, %if.end70.cleanup_crit_edge ], [ -5, %if.end93.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tuner_msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsbe1_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  %call18 = call i32 @i2c_transfer(ptr noundef %7, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 1
  %cond = select i1 %cmp19.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end17 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsru6_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %srate)
  %cmp = icmp ult i32 %srate, 1500000
  br i1 %cmp, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 3000000
  br i1 %cmp1, label %if.else.if.end19_crit_edge, label %if.else3

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 7000000
  br i1 %cmp4, label %if.else3.if.end19_crit_edge, label %if.else6

if.else3.if.end19_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 14000000
  br i1 %cmp7, label %if.else6.if.end19_crit_edge, label %if.else9

if.else6.if.end19_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %srate)
  %cmp10 = icmp ult i32 %srate, 30000000
  br i1 %cmp10, label %if.else9.if.end19_crit_edge, label %if.else12

if.else9.if.end19_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp13 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp13, i8 -76, i8 0
  %spec.select40 = select i1 %cmp13, i8 81, i8 0
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.else9.if.end19_crit_edge, %if.else6.if.end19_crit_edge, %if.else3.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %aclk.0 = phi i8 [ -73, %entry.if.end19_crit_edge ], [ -73, %if.else.if.end19_crit_edge ], [ -73, %if.else3.if.end19_crit_edge ], [ -73, %if.else6.if.end19_crit_edge ], [ -74, %if.else9.if.end19_crit_edge ], [ %spec.select, %if.else12 ]
  %bclk.0 = phi i8 [ 71, %entry.if.end19_crit_edge ], [ 75, %if.else.if.end19_crit_edge ], [ 79, %if.else3.if.end19_crit_edge ], [ 83, %if.else6.if.end19_crit_edge ], [ 83, %if.else9.if.end19_crit_edge ], [ %spec.select40, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #9
  br label %stv0299_writereg.exit46

stv0299_writereg.exit:                            ; preds = %if.end19
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #9
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit46

if.then.i45:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i44 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i41, i32 noundef 2) #9
  br label %stv0299_writereg.exit46

stv0299_writereg.exit46:                          ; preds = %if.then.i45, %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #9
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit52

if.then.i51:                                      ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #11
  %call.i50 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i47, i32 noundef 2) #9
  br label %stv0299_writereg.exit52

stv0299_writereg.exit52:                          ; preds = %if.then.i51, %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #9
  %shr22 = lshr i32 %ratio, 8
  %conv24 = trunc i32 %shr22 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit58

if.then.i57:                                      ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #11
  %call.i56 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i53, i32 noundef 2) #9
  br label %stv0299_writereg.exit58

stv0299_writereg.exit58:                          ; preds = %if.then.i57, %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #9
  %19 = trunc i32 %ratio to i8
  %conv27 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit64

if.then.i63:                                      ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #11
  %call.i62 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i59, i32 noundef 2) #9
  br label %stv0299_writereg.exit64

stv0299_writereg.exit64:                          ; preds = %if.then.i63, %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_su1278_tt_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i170 = alloca [2 x i8], align 1
  %buf.i164 = alloca [2 x i8], align 1
  %buf.i158 = alloca [2 x i8], align 1
  %buf.i152 = alloca [2 x i8], align 1
  %buf.i146 = alloca [2 x i8], align 1
  %buf.i140 = alloca [2 x i8], align 1
  %buf.i134 = alloca [2 x i8], align 1
  %buf.i128 = alloca [2 x i8], align 1
  %buf.i122 = alloca [2 x i8], align 1
  %buf.i116 = alloca [2 x i8], align 1
  %buf.i110 = alloca [2 x i8], align 1
  %buf.i104 = alloca [2 x i8], align 1
  %buf.i98 = alloca [2 x i8], align 1
  %buf.i92 = alloca [2 x i8], align 1
  %buf.i86 = alloca [2 x i8], align 1
  %buf.i80 = alloca [2 x i8], align 1
  %buf.i74 = alloca [2 x i8], align 1
  %buf.i68 = alloca [2 x i8], align 1
  %buf.i62 = alloca [2 x i8], align 1
  %buf.i56 = alloca [2 x i8], align 1
  %buf.i50 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 14, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 68, ptr %0, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.stv0299_writereg.exit_crit_edge, label %if.then.i

entry.stv0299_writereg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #9
  br label %stv0299_writereg.exit

stv0299_writereg.exit:                            ; preds = %if.then.i, %entry.stv0299_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999999, i32 %srate)
  %cmp = icmp ugt i32 %srate, 9999999
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %stv0299_writereg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i50) #9
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i50, i32 0, i32 1
  %6 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 19, ptr %buf.i50, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -105, ptr %5, align 1
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %tobool.not.i52 = icmp eq ptr %9, null
  br i1 %tobool.not.i52, label %stv0299_writereg.exit55.thread, label %stv0299_writereg.exit55

stv0299_writereg.exit55.thread:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i50) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i56) #9
  br label %stv0299_writereg.exit61

stv0299_writereg.exit55:                          ; preds = %if.then
  %call.i53 = call i32 %9(ptr noundef %fe, ptr noundef nonnull %buf.i50, i32 noundef 2) #9
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i50) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i56) #9
  %11 = getelementptr inbounds [2 x i8], ptr %buf.i56, i32 0, i32 1
  %12 = ptrtoint ptr %buf.i56 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 20, ptr %buf.i56, align 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -107, ptr %11, align 1
  %tobool.not.i58 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i58, label %stv0299_writereg.exit55.stv0299_writereg.exit61_crit_edge, label %if.then.i60

stv0299_writereg.exit55.stv0299_writereg.exit61_crit_edge: ; preds = %stv0299_writereg.exit55
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit61

if.then.i60:                                      ; preds = %stv0299_writereg.exit55
  call void @__sanitizer_cov_trace_pc() #11
  %call.i59 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i56, i32 noundef 2) #9
  br label %stv0299_writereg.exit61

stv0299_writereg.exit61:                          ; preds = %if.then.i60, %stv0299_writereg.exit55.stv0299_writereg.exit61_crit_edge, %stv0299_writereg.exit55.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i56) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i62) #9
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i62, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i62 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 21, ptr %buf.i62, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -55, ptr %14, align 1
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %tobool.not.i64 = icmp eq ptr %18, null
  br i1 %tobool.not.i64, label %stv0299_writereg.exit67.thread, label %stv0299_writereg.exit67

stv0299_writereg.exit67.thread:                   ; preds = %stv0299_writereg.exit61
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i62) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i68) #9
  br label %stv0299_writereg.exit73

stv0299_writereg.exit67:                          ; preds = %stv0299_writereg.exit61
  %call.i65 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i62, i32 noundef 2) #9
  %19 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr177 = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i62) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i68) #9
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i68, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i68 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 23, ptr %buf.i68, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -116, ptr %20, align 1
  %tobool.not.i70 = icmp eq ptr %.pr177, null
  br i1 %tobool.not.i70, label %stv0299_writereg.exit67.stv0299_writereg.exit73_crit_edge, label %if.then.i72

stv0299_writereg.exit67.stv0299_writereg.exit73_crit_edge: ; preds = %stv0299_writereg.exit67
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit73

if.then.i72:                                      ; preds = %stv0299_writereg.exit67
  call void @__sanitizer_cov_trace_pc() #11
  %call.i71 = call i32 %.pr177(ptr noundef %fe, ptr noundef nonnull %buf.i68, i32 noundef 2) #9
  br label %stv0299_writereg.exit73

stv0299_writereg.exit73:                          ; preds = %if.then.i72, %stv0299_writereg.exit67.stv0299_writereg.exit73_crit_edge, %stv0299_writereg.exit67.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i68) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i74) #9
  %23 = getelementptr inbounds [2 x i8], ptr %buf.i74, i32 0, i32 1
  %24 = ptrtoint ptr %buf.i74 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 26, ptr %buf.i74, align 1
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -2, ptr %23, align 1
  %26 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i, align 4
  %tobool.not.i76 = icmp eq ptr %27, null
  br i1 %tobool.not.i76, label %stv0299_writereg.exit79.thread, label %stv0299_writereg.exit79

stv0299_writereg.exit79.thread:                   ; preds = %stv0299_writereg.exit73
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i74) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i80) #9
  br label %stv0299_writereg.exit85

stv0299_writereg.exit79:                          ; preds = %stv0299_writereg.exit73
  %call.i77 = call i32 %27(ptr noundef %fe, ptr noundef nonnull %buf.i74, i32 noundef 2) #9
  %28 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr179 = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i74) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i80) #9
  %29 = getelementptr inbounds [2 x i8], ptr %buf.i80, i32 0, i32 1
  %30 = ptrtoint ptr %buf.i80 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 28, ptr %buf.i80, align 1
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 127, ptr %29, align 1
  %tobool.not.i82 = icmp eq ptr %.pr179, null
  br i1 %tobool.not.i82, label %stv0299_writereg.exit79.stv0299_writereg.exit85_crit_edge, label %if.then.i84

stv0299_writereg.exit79.stv0299_writereg.exit85_crit_edge: ; preds = %stv0299_writereg.exit79
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit85

if.then.i84:                                      ; preds = %stv0299_writereg.exit79
  call void @__sanitizer_cov_trace_pc() #11
  %call.i83 = call i32 %.pr179(ptr noundef %fe, ptr noundef nonnull %buf.i80, i32 noundef 2) #9
  br label %stv0299_writereg.exit85

stv0299_writereg.exit85:                          ; preds = %if.then.i84, %stv0299_writereg.exit79.stv0299_writereg.exit85_crit_edge, %stv0299_writereg.exit79.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i80) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i86) #9
  %32 = getelementptr inbounds [2 x i8], ptr %buf.i86, i32 0, i32 1
  %33 = ptrtoint ptr %buf.i86 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 45, ptr %buf.i86, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 9, ptr %32, align 1
  %35 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i, align 4
  %tobool.not.i88 = icmp eq ptr %36, null
  br i1 %tobool.not.i88, label %stv0299_writereg.exit85.stv0299_writereg.exit91_crit_edge, label %if.then.i90

stv0299_writereg.exit85.stv0299_writereg.exit91_crit_edge: ; preds = %stv0299_writereg.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit91

if.then.i90:                                      ; preds = %stv0299_writereg.exit85
  call void @__sanitizer_cov_trace_pc() #11
  %call.i89 = call i32 %36(ptr noundef %fe, ptr noundef nonnull %buf.i86, i32 noundef 2) #9
  br label %stv0299_writereg.exit91

stv0299_writereg.exit91:                          ; preds = %if.then.i90, %stv0299_writereg.exit85.stv0299_writereg.exit91_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i86) #9
  br label %if.end

if.else:                                          ; preds = %stv0299_writereg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i92) #9
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i92, i32 0, i32 1
  %38 = ptrtoint ptr %buf.i92 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 19, ptr %buf.i92, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -103, ptr %37, align 1
  %40 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i, align 4
  %tobool.not.i94 = icmp eq ptr %41, null
  br i1 %tobool.not.i94, label %stv0299_writereg.exit97.thread, label %stv0299_writereg.exit97

stv0299_writereg.exit97.thread:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i92) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i98) #9
  br label %stv0299_writereg.exit103

stv0299_writereg.exit97:                          ; preds = %if.else
  %call.i95 = call i32 %41(ptr noundef %fe, ptr noundef nonnull %buf.i92, i32 noundef 2) #9
  %42 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr181 = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i92) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i98) #9
  %43 = getelementptr inbounds [2 x i8], ptr %buf.i98, i32 0, i32 1
  %44 = ptrtoint ptr %buf.i98 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 20, ptr %buf.i98, align 1
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -115, ptr %43, align 1
  %tobool.not.i100 = icmp eq ptr %.pr181, null
  br i1 %tobool.not.i100, label %stv0299_writereg.exit97.stv0299_writereg.exit103_crit_edge, label %if.then.i102

stv0299_writereg.exit97.stv0299_writereg.exit103_crit_edge: ; preds = %stv0299_writereg.exit97
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit103

if.then.i102:                                     ; preds = %stv0299_writereg.exit97
  call void @__sanitizer_cov_trace_pc() #11
  %call.i101 = call i32 %.pr181(ptr noundef %fe, ptr noundef nonnull %buf.i98, i32 noundef 2) #9
  br label %stv0299_writereg.exit103

stv0299_writereg.exit103:                         ; preds = %if.then.i102, %stv0299_writereg.exit97.stv0299_writereg.exit103_crit_edge, %stv0299_writereg.exit97.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i98) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i104) #9
  %46 = getelementptr inbounds [2 x i8], ptr %buf.i104, i32 0, i32 1
  %47 = ptrtoint ptr %buf.i104 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 21, ptr %buf.i104, align 1
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -50, ptr %46, align 1
  %49 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write.i, align 4
  %tobool.not.i106 = icmp eq ptr %50, null
  br i1 %tobool.not.i106, label %stv0299_writereg.exit109.thread, label %stv0299_writereg.exit109

stv0299_writereg.exit109.thread:                  ; preds = %stv0299_writereg.exit103
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i104) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i110) #9
  br label %stv0299_writereg.exit115

stv0299_writereg.exit109:                         ; preds = %stv0299_writereg.exit103
  %call.i107 = call i32 %50(ptr noundef %fe, ptr noundef nonnull %buf.i104, i32 noundef 2) #9
  %51 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr183 = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i104) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i110) #9
  %52 = getelementptr inbounds [2 x i8], ptr %buf.i110, i32 0, i32 1
  %53 = ptrtoint ptr %buf.i110 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 23, ptr %buf.i110, align 1
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 67, ptr %52, align 1
  %tobool.not.i112 = icmp eq ptr %.pr183, null
  br i1 %tobool.not.i112, label %stv0299_writereg.exit109.stv0299_writereg.exit115_crit_edge, label %if.then.i114

stv0299_writereg.exit109.stv0299_writereg.exit115_crit_edge: ; preds = %stv0299_writereg.exit109
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit115

if.then.i114:                                     ; preds = %stv0299_writereg.exit109
  call void @__sanitizer_cov_trace_pc() #11
  %call.i113 = call i32 %.pr183(ptr noundef %fe, ptr noundef nonnull %buf.i110, i32 noundef 2) #9
  br label %stv0299_writereg.exit115

stv0299_writereg.exit115:                         ; preds = %if.then.i114, %stv0299_writereg.exit109.stv0299_writereg.exit115_crit_edge, %stv0299_writereg.exit109.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i110) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i116) #9
  %55 = getelementptr inbounds [2 x i8], ptr %buf.i116, i32 0, i32 1
  %56 = ptrtoint ptr %buf.i116 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 26, ptr %buf.i116, align 1
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 29, ptr %55, align 1
  %58 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write.i, align 4
  %tobool.not.i118 = icmp eq ptr %59, null
  br i1 %tobool.not.i118, label %stv0299_writereg.exit121.thread, label %stv0299_writereg.exit121

stv0299_writereg.exit121.thread:                  ; preds = %stv0299_writereg.exit115
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i116) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i122) #9
  br label %stv0299_writereg.exit127

stv0299_writereg.exit121:                         ; preds = %stv0299_writereg.exit115
  %call.i119 = call i32 %59(ptr noundef %fe, ptr noundef nonnull %buf.i116, i32 noundef 2) #9
  %60 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr185 = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i116) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i122) #9
  %61 = getelementptr inbounds [2 x i8], ptr %buf.i122, i32 0, i32 1
  %62 = ptrtoint ptr %buf.i122 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 28, ptr %buf.i122, align 1
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 18, ptr %61, align 1
  %tobool.not.i124 = icmp eq ptr %.pr185, null
  br i1 %tobool.not.i124, label %stv0299_writereg.exit121.stv0299_writereg.exit127_crit_edge, label %if.then.i126

stv0299_writereg.exit121.stv0299_writereg.exit127_crit_edge: ; preds = %stv0299_writereg.exit121
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit127

if.then.i126:                                     ; preds = %stv0299_writereg.exit121
  call void @__sanitizer_cov_trace_pc() #11
  %call.i125 = call i32 %.pr185(ptr noundef %fe, ptr noundef nonnull %buf.i122, i32 noundef 2) #9
  br label %stv0299_writereg.exit127

stv0299_writereg.exit127:                         ; preds = %if.then.i126, %stv0299_writereg.exit121.stv0299_writereg.exit127_crit_edge, %stv0299_writereg.exit121.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i122) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i128) #9
  %64 = getelementptr inbounds [2 x i8], ptr %buf.i128, i32 0, i32 1
  %65 = ptrtoint ptr %buf.i128 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 45, ptr %buf.i128, align 1
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 5, ptr %64, align 1
  %67 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write.i, align 4
  %tobool.not.i130 = icmp eq ptr %68, null
  br i1 %tobool.not.i130, label %stv0299_writereg.exit127.stv0299_writereg.exit133_crit_edge, label %if.then.i132

stv0299_writereg.exit127.stv0299_writereg.exit133_crit_edge: ; preds = %stv0299_writereg.exit127
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit133

if.then.i132:                                     ; preds = %stv0299_writereg.exit127
  call void @__sanitizer_cov_trace_pc() #11
  %call.i131 = call i32 %68(ptr noundef %fe, ptr noundef nonnull %buf.i128, i32 noundef 2) #9
  br label %stv0299_writereg.exit133

stv0299_writereg.exit133:                         ; preds = %if.then.i132, %stv0299_writereg.exit127.stv0299_writereg.exit133_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i128) #9
  br label %if.end

if.end:                                           ; preds = %stv0299_writereg.exit133, %stv0299_writereg.exit91
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i134) #9
  %69 = getelementptr inbounds [2 x i8], ptr %buf.i134, i32 0, i32 1
  %70 = ptrtoint ptr %buf.i134 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 14, ptr %buf.i134, align 1
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 35, ptr %69, align 1
  %72 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write.i, align 4
  %tobool.not.i136 = icmp eq ptr %73, null
  br i1 %tobool.not.i136, label %stv0299_writereg.exit139.thread, label %stv0299_writereg.exit139

stv0299_writereg.exit139.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i134) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i140) #9
  br label %stv0299_writereg.exit145

stv0299_writereg.exit139:                         ; preds = %if.end
  %call.i137 = call i32 %73(ptr noundef %fe, ptr noundef nonnull %buf.i134, i32 noundef 2) #9
  %74 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr187 = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i134) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i140) #9
  %75 = getelementptr inbounds [2 x i8], ptr %buf.i140, i32 0, i32 1
  %76 = ptrtoint ptr %buf.i140 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 15, ptr %buf.i140, align 1
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -108, ptr %75, align 1
  %tobool.not.i142 = icmp eq ptr %.pr187, null
  br i1 %tobool.not.i142, label %stv0299_writereg.exit139.stv0299_writereg.exit145_crit_edge, label %if.then.i144

stv0299_writereg.exit139.stv0299_writereg.exit145_crit_edge: ; preds = %stv0299_writereg.exit139
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit145

if.then.i144:                                     ; preds = %stv0299_writereg.exit139
  call void @__sanitizer_cov_trace_pc() #11
  %call.i143 = call i32 %.pr187(ptr noundef %fe, ptr noundef nonnull %buf.i140, i32 noundef 2) #9
  br label %stv0299_writereg.exit145

stv0299_writereg.exit145:                         ; preds = %if.then.i144, %stv0299_writereg.exit139.stv0299_writereg.exit145_crit_edge, %stv0299_writereg.exit139.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i140) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i146) #9
  %78 = getelementptr inbounds [2 x i8], ptr %buf.i146, i32 0, i32 1
  %79 = ptrtoint ptr %buf.i146 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 16, ptr %buf.i146, align 1
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 57, ptr %78, align 1
  %81 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write.i, align 4
  %tobool.not.i148 = icmp eq ptr %82, null
  br i1 %tobool.not.i148, label %stv0299_writereg.exit151.thread, label %stv0299_writereg.exit151

stv0299_writereg.exit151.thread:                  ; preds = %stv0299_writereg.exit145
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i146) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i152) #9
  br label %stv0299_writereg.exit157

stv0299_writereg.exit151:                         ; preds = %stv0299_writereg.exit145
  %call.i149 = call i32 %82(ptr noundef %fe, ptr noundef nonnull %buf.i146, i32 noundef 2) #9
  %83 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr189 = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i146) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i152) #9
  %84 = getelementptr inbounds [2 x i8], ptr %buf.i152, i32 0, i32 1
  %85 = ptrtoint ptr %buf.i152 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 21, ptr %buf.i152, align 1
  %86 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -55, ptr %84, align 1
  %tobool.not.i154 = icmp eq ptr %.pr189, null
  br i1 %tobool.not.i154, label %stv0299_writereg.exit151.stv0299_writereg.exit157_crit_edge, label %if.then.i156

stv0299_writereg.exit151.stv0299_writereg.exit157_crit_edge: ; preds = %stv0299_writereg.exit151
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit157

if.then.i156:                                     ; preds = %stv0299_writereg.exit151
  call void @__sanitizer_cov_trace_pc() #11
  %call.i155 = call i32 %.pr189(ptr noundef %fe, ptr noundef nonnull %buf.i152, i32 noundef 2) #9
  br label %stv0299_writereg.exit157

stv0299_writereg.exit157:                         ; preds = %if.then.i156, %stv0299_writereg.exit151.stv0299_writereg.exit157_crit_edge, %stv0299_writereg.exit151.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i152) #9
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i158) #9
  %87 = getelementptr inbounds [2 x i8], ptr %buf.i158, i32 0, i32 1
  %88 = ptrtoint ptr %buf.i158 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 31, ptr %buf.i158, align 1
  %89 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv, ptr %87, align 1
  %90 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write.i, align 4
  %tobool.not.i160 = icmp eq ptr %91, null
  br i1 %tobool.not.i160, label %stv0299_writereg.exit157.stv0299_writereg.exit163_crit_edge, label %if.then.i162

stv0299_writereg.exit157.stv0299_writereg.exit163_crit_edge: ; preds = %stv0299_writereg.exit157
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit163

if.then.i162:                                     ; preds = %stv0299_writereg.exit157
  call void @__sanitizer_cov_trace_pc() #11
  %call.i161 = call i32 %91(ptr noundef %fe, ptr noundef nonnull %buf.i158, i32 noundef 2) #9
  br label %stv0299_writereg.exit163

stv0299_writereg.exit163:                         ; preds = %if.then.i162, %stv0299_writereg.exit157.stv0299_writereg.exit163_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i158) #9
  %shr20 = lshr i32 %ratio, 8
  %conv22 = trunc i32 %shr20 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i164) #9
  %92 = getelementptr inbounds [2 x i8], ptr %buf.i164, i32 0, i32 1
  %93 = ptrtoint ptr %buf.i164 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 32, ptr %buf.i164, align 1
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv22, ptr %92, align 1
  %95 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write.i, align 4
  %tobool.not.i166 = icmp eq ptr %96, null
  br i1 %tobool.not.i166, label %stv0299_writereg.exit163.stv0299_writereg.exit169_crit_edge, label %if.then.i168

stv0299_writereg.exit163.stv0299_writereg.exit169_crit_edge: ; preds = %stv0299_writereg.exit163
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit169

if.then.i168:                                     ; preds = %stv0299_writereg.exit163
  call void @__sanitizer_cov_trace_pc() #11
  %call.i167 = call i32 %96(ptr noundef %fe, ptr noundef nonnull %buf.i164, i32 noundef 2) #9
  br label %stv0299_writereg.exit169

stv0299_writereg.exit169:                         ; preds = %if.then.i168, %stv0299_writereg.exit163.stv0299_writereg.exit169_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i164) #9
  %97 = trunc i32 %ratio to i8
  %conv25 = and i8 %97, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i170) #9
  %98 = getelementptr inbounds [2 x i8], ptr %buf.i170, i32 0, i32 1
  %99 = ptrtoint ptr %buf.i170 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 33, ptr %buf.i170, align 1
  %100 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv25, ptr %98, align 1
  %101 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write.i, align 4
  %tobool.not.i172 = icmp eq ptr %102, null
  br i1 %tobool.not.i172, label %stv0299_writereg.exit169.stv0299_writereg.exit175_crit_edge, label %if.then.i174

stv0299_writereg.exit169.stv0299_writereg.exit175_crit_edge: ; preds = %stv0299_writereg.exit169
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit175

if.then.i174:                                     ; preds = %stv0299_writereg.exit169
  call void @__sanitizer_cov_trace_pc() #11
  %call.i173 = call i32 %102(ptr noundef %fe, ptr noundef nonnull %buf.i170, i32 noundef 2) #9
  br label %stv0299_writereg.exit175

stv0299_writereg.exit175:                         ; preds = %if.then.i174, %stv0299_writereg.exit169.stv0299_writereg.exit175_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i170) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tdm1316l_request_firmware(ptr nocapture noundef readonly %fe, ptr noundef %fw, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef %name, ptr noundef %dev1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsbe1_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %srate)
  %cmp = icmp ult i32 %srate, 1500000
  br i1 %cmp, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 3000000
  br i1 %cmp1, label %if.else.if.end19_crit_edge, label %if.else3

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 7000000
  br i1 %cmp4, label %if.else3.if.end19_crit_edge, label %if.else6

if.else3.if.end19_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 14000000
  br i1 %cmp7, label %if.else6.if.end19_crit_edge, label %if.else9

if.else6.if.end19_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %srate)
  %cmp10 = icmp ult i32 %srate, 30000000
  br i1 %cmp10, label %if.else9.if.end19_crit_edge, label %if.else12

if.else9.if.end19_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp13 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp13, i8 -76, i8 0
  %spec.select40 = select i1 %cmp13, i8 81, i8 0
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.else9.if.end19_crit_edge, %if.else6.if.end19_crit_edge, %if.else3.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %aclk.0 = phi i8 [ -73, %entry.if.end19_crit_edge ], [ -73, %if.else.if.end19_crit_edge ], [ -73, %if.else3.if.end19_crit_edge ], [ -73, %if.else6.if.end19_crit_edge ], [ -74, %if.else9.if.end19_crit_edge ], [ %spec.select, %if.else12 ]
  %bclk.0 = phi i8 [ 71, %entry.if.end19_crit_edge ], [ 75, %if.else.if.end19_crit_edge ], [ 79, %if.else3.if.end19_crit_edge ], [ 83, %if.else6.if.end19_crit_edge ], [ 83, %if.else9.if.end19_crit_edge ], [ %spec.select40, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #9
  br label %stv0299_writereg.exit46

stv0299_writereg.exit:                            ; preds = %if.end19
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #9
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit46

if.then.i45:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i44 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i41, i32 noundef 2) #9
  br label %stv0299_writereg.exit46

stv0299_writereg.exit46:                          ; preds = %if.then.i45, %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #9
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit52

if.then.i51:                                      ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #11
  %call.i50 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i47, i32 noundef 2) #9
  br label %stv0299_writereg.exit52

stv0299_writereg.exit52:                          ; preds = %if.then.i51, %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #9
  %shr22 = lshr i32 %ratio, 8
  %conv24 = trunc i32 %shr22 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit58

if.then.i57:                                      ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #11
  %call.i56 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i53, i32 noundef 2) #9
  br label %stv0299_writereg.exit58

stv0299_writereg.exit58:                          ; preds = %if.then.i57, %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #9
  %19 = trunc i32 %ratio to i8
  %conv27 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit64

if.then.i63:                                      ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #11
  %call.i62 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i59, i32 noundef 2) #9
  br label %stv0299_writereg.exit64

stv0299_writereg.exit64:                          ; preds = %if.then.i63, %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_frequency(ptr noundef %fe, i32 noundef %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bandwidth_hz, align 4
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %frequency, ptr %dtv_property_cache, align 4
  store i32 0, ptr %bandwidth_hz, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %3 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %4(ptr noundef %fe) #9
  %5 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_frequency(ptr noundef %fe, ptr noundef %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %0 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_frequency, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %fe, ptr noundef %frequency) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.114) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_bandwidth(ptr noundef %fe, i32 noundef %bandwidth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %0 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bandwidth, ptr %bandwidth_hz, align 4
  store i32 0, ptr %dtv_property_cache, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %3 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %4(ptr noundef %fe) #9
  %5 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.115) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_bandwidth(ptr noundef %fe, ptr noundef %bandwidth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_bandwidth = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 10
  %0 = ptrtoint ptr %get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_bandwidth, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %fe, ptr noundef %bandwidth) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.116) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttpci_budget_irq10_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_register_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !16, !18, !20, !21, !23, !25, !27, !28, !30, !31, !32, !33, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !117, !118, !120, !121, !123, !124, !125, !126, !127, !129, !130, !131, !132, !133, !135, !136, !137, !138, !139, !141, !142, !144, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !174, !176, !177, !178, !179, !180, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !196, !197, !199, !200, !201, !202, !203, !205, !206, !208, !209, !211, !212, !213, !215, !216, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !264, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !283, !284, !285}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !{ptr @__param_rc5_device, !1, !"__param_rc5_device", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 72, i32 1}
!2 = !{ptr @__UNIQUE_ID_rc5_devicetype385, !1, !"__UNIQUE_ID_rc5_devicetype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_rc5_device386, !4, !"__UNIQUE_ID_rc5_device386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 73, i32 1}
!5 = !{ptr @__param_ir_debug, !6, !"__param_ir_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 76, i32 1}
!7 = !{ptr @__UNIQUE_ID_ir_debugtype387, !6, !"__UNIQUE_ID_ir_debugtype387", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_ir_debug388, !9, !"__UNIQUE_ID_ir_debug388", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 77, i32 1}
!10 = !{ptr @__param_adapter_nr, !11, !"__param_adapter_nr", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 79, i32 1}
!12 = !{ptr @__UNIQUE_ID_adapter_nrtype389, !11, !"__UNIQUE_ID_adapter_nrtype389", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_adapter_nr390, !11, !"__UNIQUE_ID_adapter_nr390", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_budget_ci__391_1569_budget_ci_init6, !15, !"__initcall__kmod_budget_ci__391_1569_budget_ci_init6", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1569, i32 1}
!16 = !{ptr @__exitcall_budget_ci_exit, !17, !"__exitcall_budget_ci_exit", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1570, i32 1}
!18 = !{ptr @__UNIQUE_ID_file392, !19, !"__UNIQUE_ID_file392", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1572, i32 1}
!20 = !{ptr @__UNIQUE_ID_license393, !19, !"__UNIQUE_ID_license393", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_author394, !22, !"__UNIQUE_ID_author394", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1573, i32 1}
!23 = !{ptr @__UNIQUE_ID_description395, !24, !"__UNIQUE_ID_description395", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1574, i32 1}
!25 = !{ptr @ir_debug, !26, !"ir_debug", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 75, i32 12}
!27 = !{ptr @__param_str_rc5_device, !1, !"__param_str_rc5_device", i1 false, i1 false}
!28 = !{ptr @rc5_device, !29, !"rc5_device", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 71, i32 12}
!30 = !{ptr @__param_str_ir_debug, !6, !"__param_str_ir_debug", i1 false, i1 false}
!31 = !{ptr @__param_str_adapter_nr, !11, !"__param_str_adapter_nr", i1 false, i1 false}
!32 = !{ptr @__param_arr_adapter_nr, !11, !"__param_arr_adapter_nr", i1 false, i1 false}
!33 = !{ptr @adapter_nr, !11, !"adapter_nr", i1 false, i1 false}
!34 = !{ptr @budget_extension, !35, !"budget_extension", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1546, i32 33}
!36 = !{ptr @pci_tbl, !37, !"pci_tbl", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1529, i32 35}
!38 = !{ptr @ttbci, !39, !"ttbci", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1521, i32 1}
!40 = !{ptr @.str, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ttbci_info, !39, !"ttbci_info", i1 false, i1 false}
!42 = !{ptr @ttbcci, !43, !"ttbcci", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1524, i32 1}
!44 = !{ptr @.str.1, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ttbcci_info, !43, !"ttbcci_info", i1 false, i1 false}
!46 = !{ptr @ttbt2, !47, !"ttbt2", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1522, i32 1}
!48 = !{ptr @.str.2, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ttbt2_info, !47, !"ttbt2_info", i1 false, i1 false}
!50 = !{ptr @ttbtci, !51, !"ttbtci", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1523, i32 1}
!52 = !{ptr @.str.3, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ttbtci_info, !51, !"ttbtci_info", i1 false, i1 false}
!54 = !{ptr @ttbs2, !55, !"ttbs2", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1520, i32 1}
!56 = !{ptr @.str.4, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ttbs2_info, !55, !"ttbs2_info", i1 false, i1 false}
!58 = !{ptr @ttc1501, !59, !"ttc1501", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1525, i32 1}
!60 = !{ptr @.str.5, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ttc1501_info, !59, !"ttc1501_info", i1 false, i1 false}
!62 = !{ptr @tt3200, !63, !"tt3200", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1526, i32 1}
!64 = !{ptr @.str.6, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @tt3200_info, !63, !"tt3200_info", i1 false, i1 false}
!66 = !{ptr @ttbs1500b, !67, !"ttbs1500b", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1527, i32 1}
!68 = !{ptr @.str.7, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ttbs1500b_info, !67, !"ttbs1500b_info", i1 false, i1 false}
!70 = !{ptr @.str.8, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1465, i32 2}
!72 = !{ptr @.str.9, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.10, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @budget_ci_attach._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @budget_ci_attach._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.11, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 167, i32 3}
!78 = !{ptr @.str.12, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @msp430_ir_init._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @msp430_ir_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.13, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 172, i32 4}
!83 = !{ptr @.str.14, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 174, i32 4}
!85 = !{ptr @.str.15, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 176, i32 21}
!87 = !{ptr @.str.16, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 202, i32 19}
!89 = !{ptr @.str.17, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 214, i32 19}
!91 = !{ptr @.str.18, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 218, i32 19}
!93 = !{ptr @.str.20, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 226, i32 3}
!95 = !{ptr @msp430_ir_init._entry.19, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @msp430_ir_init._entry_ptr.21, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.22, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 126, i32 3}
!99 = !{ptr @.str.23, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @msp430_ir_interrupt._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @msp430_ir_interrupt._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.24, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 489, i32 3}
!104 = !{ptr @.str.25, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ciintf_init._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @ciintf_init._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.27, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 509, i32 2}
!109 = !{ptr @ciintf_init._entry.26, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ciintf_init._entry_ptr.28, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.29, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1305, i32 4}
!113 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.31, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.32, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @frontend_init._entry, !112, !"_entry", i1 false, i1 false}
!117 = !{ptr @frontend_init._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @frontend_init._entry.33, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1315, i32 4}
!120 = !{ptr @frontend_init._entry_ptr.34, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.35, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1325, i32 4}
!123 = !{ptr @.str.36, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @frontend_init._entry.37, !122, !"_entry", i1 false, i1 false}
!126 = !{ptr @frontend_init._entry_ptr.39, !122, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1335, i32 4}
!129 = !{ptr @.str.41, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @frontend_init._entry.42, !128, !"_entry", i1 false, i1 false}
!132 = !{ptr @frontend_init._entry_ptr.44, !128, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.45, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1346, i32 4}
!135 = !{ptr @.str.46, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @frontend_init._entry.47, !134, !"_entry", i1 false, i1 false}
!138 = !{ptr @frontend_init._entry_ptr.49, !134, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @frontend_init._entry.50, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1355, i32 36}
!141 = !{ptr @frontend_init._entry_ptr.51, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.52, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1361, i32 8}
!144 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.55, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @frontend_init._entry.54, !143, !"_entry", i1 false, i1 false}
!147 = !{ptr @frontend_init._entry_ptr.56, !143, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.58, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1362, i32 5}
!150 = !{ptr @frontend_init._entry.57, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @frontend_init._entry_ptr.59, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.60, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1370, i32 36}
!154 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @frontend_init._entry.62, !153, !"_entry", i1 false, i1 false}
!157 = !{ptr @frontend_init._entry_ptr.64, !153, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1372, i32 8}
!160 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @frontend_init._entry.67, !159, !"_entry", i1 false, i1 false}
!163 = !{ptr @frontend_init._entry_ptr.69, !159, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1373, i32 5}
!166 = !{ptr @frontend_init._entry.70, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @frontend_init._entry_ptr.72, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1381, i32 36}
!170 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @frontend_init._entry.75, !169, !"_entry", i1 false, i1 false}
!173 = !{ptr @frontend_init._entry_ptr.77, !169, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1383, i32 8}
!176 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @frontend_init._entry.80, !175, !"_entry", i1 false, i1 false}
!179 = !{ptr @frontend_init._entry_ptr.82, !175, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @frontend_init._entry.83, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1384, i32 10}
!182 = !{ptr @frontend_init._entry_ptr.84, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1385, i32 6}
!185 = !{ptr @frontend_init._entry.85, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @frontend_init._entry_ptr.87, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1390, i32 5}
!189 = !{ptr @frontend_init._entry.88, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @frontend_init._entry_ptr.90, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1421, i32 36}
!193 = !{ptr @.str.92, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.94, !192, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @frontend_init._entry.93, !192, !"_entry", i1 false, i1 false}
!196 = !{ptr @frontend_init._entry_ptr.95, !192, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.96, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1423, i32 8}
!199 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.99, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @frontend_init._entry.98, !198, !"_entry", i1 false, i1 false}
!202 = !{ptr @frontend_init._entry_ptr.100, !198, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @frontend_init._entry.101, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1424, i32 10}
!205 = !{ptr @frontend_init._entry_ptr.102, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @frontend_init._entry.103, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1425, i32 6}
!208 = !{ptr @frontend_init._entry_ptr.104, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.106, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1439, i32 3}
!211 = !{ptr @frontend_init._entry.105, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @frontend_init._entry_ptr.107, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.109, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1447, i32 4}
!215 = !{ptr @frontend_init._entry.108, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @frontend_init._entry_ptr.110, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @alps_bsru6_config, !218, !"alps_bsru6_config", i1 false, i1 false}
!218 = !{!"../drivers/media/dvb-frontends/bsru6.h", i32 114, i32 30}
!219 = !{ptr @alps_bsru6_inittab, !220, !"alps_bsru6_inittab", i1 false, i1 false}
!220 = !{!"../drivers/media/dvb-frontends/bsru6.h", i32 11, i32 11}
!221 = !{ptr @philips_su1278_tt_config, !222, !"philips_su1278_tt_config", i1 false, i1 false}
!222 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 684, i32 36}
!223 = !{ptr @philips_su1278_tt_inittab, !224, !"philips_su1278_tt_inittab", i1 false, i1 false}
!224 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 570, i32 11}
!225 = !{ptr @dvbc_philips_tdm1316l_config, !226, !"dvbc_philips_tdm1316l_config", i1 false, i1 false}
!226 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1014, i32 30}
!227 = !{ptr @dvbc_philips_tdm1316l_inittab, !228, !"dvbc_philips_tdm1316l_inittab", i1 false, i1 false}
!228 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 921, i32 11}
!229 = !{ptr @philips_tdm1316l_config, !230, !"philips_tdm1316l_config", i1 false, i1 false}
!230 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 823, i32 31}
!231 = !{ptr @philips_tdm1316l_tuner_init.td1316_init, !232, !"td1316_init", i1 false, i1 false}
!232 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 702, i32 12}
!233 = !{ptr @philips_tdm1316l_tuner_init.disable_mc44BC374c, !234, !"disable_mc44BC374c", i1 false, i1 false}
!234 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 703, i32 12}
!235 = !{ptr @philips_tdm1316l_config_invert, !236, !"philips_tdm1316l_config_invert", i1 false, i1 false}
!236 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 834, i32 31}
!237 = !{ptr @alps_bsbe1_config, !238, !"alps_bsbe1_config", i1 false, i1 false}
!238 = !{!"../drivers/media/dvb-frontends/bsbe1.h", i32 79, i32 30}
!239 = !{ptr @alps_bsbe1_inittab, !240, !"alps_bsbe1_inittab", i1 false, i1 false}
!240 = !{!"../drivers/media/dvb-frontends/bsbe1.h", i32 11, i32 11}
!241 = !{ptr @tda10023_config, !242, !"tda10023_config", i1 false, i1 false}
!242 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1021, i32 31}
!243 = !{ptr @tda827x_config, !244, !"tda827x_config", i1 false, i1 false}
!244 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1031, i32 30}
!245 = !{ptr @stv0288_bsbe1_d01a_config, !246, !"stv0288_bsbe1_d01a_config", i1 false, i1 false}
!246 = !{!"../drivers/media/dvb-frontends/bsbe1-d01a.h", i32 123, i32 30}
!247 = !{ptr @stv0288_bsbe1_d01a_inittab, !248, !"stv0288_bsbe1_d01a_inittab", i1 false, i1 false}
!248 = !{!"../drivers/media/dvb-frontends/bsbe1-d01a.h", i32 16, i32 11}
!249 = !{ptr @tt3200_config, !250, !"tt3200_config", i1 false, i1 false}
!250 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1256, i32 30}
!251 = !{ptr @tt3200_stb0899_s1_init_1, !252, !"tt3200_stb0899_s1_init_1", i1 false, i1 false}
!252 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1036, i32 36}
!253 = !{ptr @stb0899_s2_init_2, !254, !"stb0899_s2_init_2", i1 false, i1 false}
!254 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 13, i32 37}
!255 = !{ptr @tt3200_stb0899_s1_init_3, !256, !"tt3200_stb0899_s1_init_3", i1 false, i1 false}
!256 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1123, i32 36}
!257 = !{ptr @stb0899_s2_init_4, !258, !"stb0899_s2_init_4", i1 false, i1 false}
!258 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 195, i32 36}
!259 = !{ptr @stb0899_s1_init_5, !260, !"stb0899_s1_init_5", i1 false, i1 false}
!260 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 219, i32 36}
!261 = !{ptr @.str.111, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 44, i32 4}
!263 = !{ptr @.str.112, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.113, !262, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @stb6100_set_frequency._entry, !262, !"_entry", i1 false, i1 false}
!266 = !{ptr @stb6100_set_frequency._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.114, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 22, i32 4}
!269 = !{ptr @stb6100_get_frequency._entry, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @stb6100_get_frequency._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.115, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 82, i32 4}
!273 = !{ptr @stb6100_set_bandwidth._entry, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @stb6100_set_bandwidth._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.116, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 60, i32 4}
!277 = !{ptr @stb6100_get_bandwidth._entry, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @stb6100_get_bandwidth._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @tt3200_stb6100_config, !280, !"tt3200_stb6100_config", i1 false, i1 false}
!280 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 1295, i32 30}
!281 = !{ptr @.str.117, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/pci/ttpci/budget-ci.c", i32 558, i32 2}
!283 = !{ptr @.str.118, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @budget_ci_irq._entry, !282, !"_entry", i1 false, i1 false}
!285 = !{ptr @budget_ci_irq._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!286 = !{i32 1, !"wchar_size", i32 2}
!287 = !{i32 1, !"min_enum_size", i32 4}
!288 = !{i32 8, !"branch-target-enforcement", i32 0}
!289 = !{i32 8, !"sign-return-address", i32 0}
!290 = !{i32 8, !"sign-return-address-all", i32 0}
!291 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!292 = !{i32 7, !"uwtable", i32 1}
!293 = !{i32 7, !"frame-pointer", i32 2}
!294 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!295 = !{i8 0, i8 2}
!296 = !{i64 2158570774}
!297 = !{i64 5064076}
!298 = !{i64 2158571686}
!299 = !{i64 5063658}
!300 = !{i64 2158756462}
!301 = !{i64 2158760110}
!302 = !{i64 2158568037}
!303 = !{i64 2158568951}
!304 = !{i64 2158760680}
