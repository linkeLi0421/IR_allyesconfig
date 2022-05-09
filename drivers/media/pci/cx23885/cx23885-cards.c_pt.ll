; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/cx23885-cards.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/cx23885-cards.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.cx23885_board = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, [8 x %struct.cx23885_input], i32, i32 }
%struct.cx23885_input = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cx23885_subid = type { i16, i16, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_subdev_io_pin_config = type { i32, i8, i8, i8, i8 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netup_card_info = type { [2 x %struct.netup_port_info], i8 }
%struct.netup_port_info = type { [6 x i8] }
%struct.cx23885_dev = type { %struct.atomic_t, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, i8, i8, i32, i32, ptr, ptr, i32, %struct.spinlock, i32, i32, [3 x %struct.cx23885_i2c], i32, %struct.mutex, %struct.mutex, i32, [32 x i8], %struct.cx23885_tsport, %struct.cx23885_tsport, ptr, i32, i32, i32, i32, i64, i32, i8, i32, i32, i8, ptr, %struct.work_struct, ptr, %struct.work_struct, i32, %struct.work_struct, i32, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, i32, i32, i32, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.spinlock, i32, %struct.cx2341x_handler, ptr, %struct.vb2_queue, %struct.cx23885_tvnorm, ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx23885_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cx23885_tsport = type { ptr, i32, i32, %struct.vb2_dvb_frontends, %struct.cx23885_dmaqueue, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.dvb_frontend, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.142], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.142 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.143 }>
%union.anon.143 = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.cx23885_dmaqueue = type { %struct.list_head, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.145, %struct.anon.146, %struct.anon.147, %struct.anon.148, %struct.anon.149, %struct.anon.150, %struct.anon.151, %struct.anon.152 }
%struct.anon.145 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.148 = type { ptr, ptr }
%struct.anon.149 = type { ptr, ptr, ptr }
%struct.anon.150 = type { ptr, ptr }
%struct.anon.151 = type { ptr, ptr }
%struct.anon.152 = type { ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx23885_tvnorm = type { ptr, i64, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.141, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.141 = type { ptr }
%struct.v4l2_subdev_ir_parameters = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.127 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ir_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.altera_config = type { ptr, ptr, ptr }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }

@__param_str_netup_card_rev = internal constant [23 x i8] c"cx23885.netup_card_rev\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@netup_card_rev = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_netup_card_rev = internal constant %struct.kernel_param { ptr @__param_str_netup_card_rev, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @netup_card_rev } }, section "__param", align 4
@__UNIQUE_ID_netup_card_revtype385 = internal constant [36 x i8] c"cx23885.parmtype=netup_card_rev:int\00", section ".modinfo", align 1
@__UNIQUE_ID_netup_card_rev386 = internal constant [64 x i8] c"cx23885.parm=netup_card_rev:NetUP Dual DVB-T/C CI card revision\00", section ".modinfo", align 1
@__param_str_enable_885_ir = internal constant [22 x i8] c"cx23885.enable_885_ir\00", align 1
@enable_885_ir = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_enable_885_ir = internal constant %struct.kernel_param { ptr @__param_str_enable_885_ir, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @enable_885_ir } }, section "__param", align 4
@__UNIQUE_ID_enable_885_irtype387 = internal constant [35 x i8] c"cx23885.parmtype=enable_885_ir:int\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_885_ir388 = internal constant [335 x i8] c"cx23885.parm=enable_885_ir:Enable integrated IR controller for supported\0A\09\09    CX2388[57] boards that are wired for it:\0A\09\09\09HVR-1250 (reported safe)\0A\09\09\09TerraTec Cinergy T PCIe Dual (not well tested, appears to be safe)\0A\09\09\09TeVii S470 (reported unsafe)\0A\09\09    This can cause an interrupt storm with some cards.\0A\09\09    Default: 0 [Disabled]\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"UNKNOWN/GENERIC\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Hauppauge WinTV-HVR1800lp\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR1800\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR1250\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DViCO FusionHDTV5 Express\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hauppauge WinTV-HVR1500Q\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR1500\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR1200\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR1700\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR1400\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DViCO FusionHDTV7 Dual Express\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DViCO FusionHDTV DVB-T Dual Express\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Leadtek Winfast PxDVR3200 H\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Compro VideoMate E650F\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TurboSight TBS 6920\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TeVii S470\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DVBWorld DVB-S2 2005\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NetUP Dual DVB-S2 CI\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR1270\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR1275\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR1255\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR1210\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mygica X8506 DMB-TH\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Magic-Pro ProHDTV Extreme 2\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR1850\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Compro VideoMate E800\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR1290\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mygica X8558 PRO DMB-TH\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LEADTEK WinFast PxTV1200\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GoTView X5 3D Hybrid\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NetUP Dual DVB-T/C-CI RF\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Leadtek Winfast PxDVR3200 H XC4000\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MPX-885\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mygica X8502/X8507 ISDB-T\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TerraTec Cinergy T PCIe Dual\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TeVii S471\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Prof Revolution DVB-S2 8000\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Hauppauge WinTV-HVR4400/HVR5500\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AVerTV Hybrid Express Slim HC81R\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TurboSight TBS 6981\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TurboSight TBS 6980\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Leadtek Winfast PxPVR2200\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Hauppauge ImpactVCB-e\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DViCO FusionHDTV DVB-T Dual Express2\00", [59 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DVBSky T9580\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DVBSky T980C\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DVBSky S950C\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Technotrend TT-budget CT2-4500 CI\00", [62 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DVBSky S950\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DVBSky S952\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DVBSky T982\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR5525\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Hauppauge WinTV Starburst\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ViewCast 260e\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ViewCast 460e\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hauppauge WinTV-QuadHD-DVB\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Hauppauge WinTV-QuadHD-ATSC\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Hauppauge WinTV-HVR-1265(161111)\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hauppauge WinTV-Starburst2\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Hauppauge WinTV-QuadHD-DVB(885)\00", [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Hauppauge WinTV-QuadHD-ATSC(885)\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AVerMedia CE310B\00", [47 x i8] zeroinitializer }, align 32
@cx23885_boards = dso_local global { [63 x %struct.cx23885_board], [4340 x i8] } { [63 x %struct.cx23885_board] [%struct.cx23885_board { ptr @.str, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 3, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 4, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 0, i32 0, i32 65280, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 10, i32 0, i32 0, i32 65281, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 1, i32 1, i32 0, i32 65282, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 2, i32 0, i32 65282, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.2, i32 2, i32 3, i32 1, i32 0, i32 0, i32 54, i32 0, i8 66, i8 0, i32 1, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 -2147483631, i32 8, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 1, i32 -2147483643, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 -2147483385, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.3, i32 2, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 1, i32 -2147483643, i32 7, i32 65282, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 -2147483385, i32 7, i32 65282, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 1 }, %struct.cx23885_board { ptr @.str.4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.5, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.6, i32 2, i32 0, i32 1, i32 0, i32 0, i32 71, i32 0, i8 97, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 -2147483631, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 1, i32 -2147483643, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 -2147483385, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.7, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.9, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.10, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.11, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.12, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.13, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.14, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.15, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.16, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.17, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 1, i32 0 }, %struct.cx23885_board { ptr @.str.18, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.19, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.20, i32 2, i32 0, i32 1, i32 0, i32 0, i32 4, i32 0, i8 66, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 -2147482607, i32 8, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 1, i32 -2147483643, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 -2147483385, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 1 }, %struct.cx23885_board { ptr @.str.21, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.22, i32 2, i32 1, i32 0, i32 0, i32 0, i32 76, i32 0, i8 97, i8 0, i32 1, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 1, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 1072, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 6, i32 -2147483104, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.23, i32 2, i32 1, i32 0, i32 0, i32 0, i32 76, i32 0, i8 97, i8 0, i32 1, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 1, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 1072, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 6, i32 -2147483104, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.24, i32 2, i32 3, i32 1, i32 0, i32 0, i32 4, i32 0, i8 66, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 -2147482607, i32 8, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 1, i32 -2147483643, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 -2147483385, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 1 }, %struct.cx23885_board { ptr @.str.25, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.26, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.27, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.28, i32 2, i32 0, i32 0, i32 0, i32 0, i32 71, i32 0, i8 97, i8 0, i32 1, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 -2147483503, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 1072, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 6, i32 -2147483034, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.29, i32 2, i32 1, i32 0, i32 0, i32 0, i32 76, i32 0, i8 100, i8 0, i32 1, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 -2147483631, i32 0, i32 2, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 1072, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.30, i32 2, i32 1, i32 1, i32 2, i32 2, i32 76, i32 0, i8 100, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 2, i32 0 }, %struct.cx23885_board { ptr @.str.31, i32 2, i32 0, i32 1, i32 0, i32 0, i32 87, i32 -1, i8 97, i8 -1, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 -2147483503, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 1072, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 6, i32 -2147483034, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.32, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 1, i32 1, i32 6, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 2, i32 2, i32 6, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 3, i32 3, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 4, i32 4, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.33, i32 2, i32 1, i32 0, i32 0, i32 0, i32 76, i32 0, i8 97, i8 0, i32 1, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 2, i32 8, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 1, i32 8, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 1072, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 6, i32 -2147483104, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.34, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.35, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.20, i32 2, i32 0, i32 1, i32 0, i32 0, i32 4, i32 0, i8 66, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 -2147482607, i32 8, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 -2147483385, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 1 }, %struct.cx23885_board { ptr @.str.36, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.37, i32 2, i32 1, i32 1, i32 0, i32 0, i32 83, i32 0, i8 96, i8 0, i32 1, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.38, i32 2, i32 0, i32 0, i32 0, i32 0, i32 71, i32 0, i8 97, i8 0, i32 1, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 -2147483439, i32 8, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 -2147483337, i32 6, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 6, i32 -2147483408, i32 6, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.39, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.40, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.41, i32 2, i32 0, i32 0, i32 0, i32 0, i32 71, i32 0, i8 97, i8 0, i32 1, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 -2147483631, i32 8, i32 7356480, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 1, i32 1, i32 7, i32 7356480, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 1072, i32 7, i32 7356480, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 6, i32 -2147483034, i32 7, i32 7356480, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.42, i32 2, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 1, i32 -2147483643, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 -2147483385, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.43, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.44, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.45, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.46, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.47, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.48, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.49, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.50, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.51, i32 2, i32 1, i32 1, i32 0, i32 0, i32 4, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 -2147482607, i32 8, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 1, i32 -2147483643, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 -2147483385, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 1 }, %struct.cx23885_board { ptr @.str.52, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.53, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 1, i32 -2147483643, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 -2147483388, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 6, i32 -2147483100, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 1 }, %struct.cx23885_board { ptr @.str.54, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 1, i32 -2147483645, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 -2147483387, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 6, i32 -2147483115, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 2, i32 -2147483643, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 1 }, %struct.cx23885_board { ptr @.str.55, i32 2, i32 1, i32 1, i32 0, i32 0, i32 4, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 -2147482607, i32 8, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 1 }, %struct.cx23885_board { ptr @.str.56, i32 2, i32 1, i32 1, i32 0, i32 0, i32 4, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 -2147482607, i32 8, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.57, i32 2, i32 0, i32 1, i32 0, i32 0, i32 4, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 7, i32 -2147482607, i32 8, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 -2147483387, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.58, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.59, i32 0, i32 1, i32 1, i32 0, i32 0, i32 4, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.60, i32 0, i32 1, i32 1, i32 0, i32 0, i32 4, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] zeroinitializer, i32 0, i32 0 }, %struct.cx23885_board { ptr @.str.61, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, [8 x %struct.cx23885_input] [%struct.cx23885_input { i32 1, i32 -2147483472, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input { i32 5, i32 -2147483337, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer, %struct.cx23885_input zeroinitializer], i32 0, i32 1 }], [4340 x i8] zeroinitializer }, align 32
@cx23885_bcount = dso_local constant { i32, [28 x i8] } { i32 63, [28 x i8] zeroinitializer }, align 32
@cx23885_subids = dso_local global { [80 x %struct.cx23885_subid], [160 x i8] } { [80 x %struct.cx23885_subid] [%struct.cx23885_subid { i16 112, i16 13312, i32 0 }, %struct.cx23885_subid { i16 112, i16 30208, i32 1 }, %struct.cx23885_subid { i16 112, i16 30720, i32 2 }, %struct.cx23885_subid { i16 112, i16 30721, i32 2 }, %struct.cx23885_subid { i16 112, i16 30729, i32 2 }, %struct.cx23885_subid { i16 112, i16 30993, i32 3 }, %struct.cx23885_subid { i16 6316, i16 -11008, i32 4 }, %struct.cx23885_subid { i16 112, i16 30608, i32 5 }, %struct.cx23885_subid { i16 112, i16 30615, i32 5 }, %struct.cx23885_subid { i16 112, i16 30480, i32 6 }, %struct.cx23885_subid { i16 112, i16 30487, i32 6 }, %struct.cx23885_subid { i16 112, i16 29137, i32 7 }, %struct.cx23885_subid { i16 112, i16 29139, i32 7 }, %struct.cx23885_subid { i16 112, i16 -32511, i32 8 }, %struct.cx23885_subid { i16 112, i16 -32752, i32 9 }, %struct.cx23885_subid { i16 6316, i16 -10728, i32 10 }, %struct.cx23885_subid { i16 6316, i16 -9352, i32 11 }, %struct.cx23885_subid { i16 4221, i16 26241, i32 12 }, %struct.cx23885_subid { i16 4221, i16 28449, i32 42 }, %struct.cx23885_subid { i16 4221, i16 28473, i32 31 }, %struct.cx23885_subid { i16 6235, i16 -6144, i32 13 }, %struct.cx23885_subid { i16 26912, i16 -30584, i32 14 }, %struct.cx23885_subid { i16 27008, i16 -30584, i32 41 }, %struct.cx23885_subid { i16 27009, i16 -30584, i32 40 }, %struct.cx23885_subid { i16 -11152, i16 -28638, i32 15 }, %struct.cx23885_subid { i16 1, i16 8197, i32 16 }, %struct.cx23885_subid { i16 6997, i16 10796, i32 17 }, %struct.cx23885_subid { i16 112, i16 8721, i32 18 }, %struct.cx23885_subid { i16 112, i16 8725, i32 19 }, %struct.cx23885_subid { i16 112, i16 8733, i32 19 }, %struct.cx23885_subid { i16 112, i16 8785, i32 20 }, %struct.cx23885_subid { i16 112, i16 8793, i32 36 }, %struct.cx23885_subid { i16 112, i16 8849, i32 21 }, %struct.cx23885_subid { i16 112, i16 8853, i32 21 }, %struct.cx23885_subid { i16 112, i16 8857, i32 21 }, %struct.cx23885_subid { i16 112, i16 8861, i32 21 }, %struct.cx23885_subid { i16 112, i16 8944, i32 21 }, %struct.cx23885_subid { i16 112, i16 8945, i32 20 }, %struct.cx23885_subid { i16 112, i16 8946, i32 19 }, %struct.cx23885_subid { i16 112, i16 8947, i32 21 }, %struct.cx23885_subid { i16 112, i16 8948, i32 21 }, %struct.cx23885_subid { i16 112, i16 8949, i32 21 }, %struct.cx23885_subid { i16 5361, i16 -31151, i32 22 }, %struct.cx23885_subid { i16 5361, i16 -31145, i32 23 }, %struct.cx23885_subid { i16 112, i16 -31423, i32 24 }, %struct.cx23885_subid { i16 6232, i16 -6144, i32 25 }, %struct.cx23885_subid { i16 112, i16 -31407, i32 26 }, %struct.cx23885_subid { i16 5361, i16 -31368, i32 27 }, %struct.cx23885_subid { i16 4221, i16 28450, i32 28 }, %struct.cx23885_subid { i16 22100, i16 9104, i32 29 }, %struct.cx23885_subid { i16 6997, i16 -7452, i32 30 }, %struct.cx23885_subid { i16 5361, i16 -31486, i32 33 }, %struct.cx23885_subid { i16 5435, i16 4478, i32 34 }, %struct.cx23885_subid { i16 -11151, i16 -28638, i32 35 }, %struct.cx23885_subid { i16 -32768, i16 12340, i32 37 }, %struct.cx23885_subid { i16 112, i16 -16120, i32 38 }, %struct.cx23885_subid { i16 112, i16 -16072, i32 38 }, %struct.cx23885_subid { i16 112, i16 -16086, i32 53 }, %struct.cx23885_subid { i16 112, i16 -15880, i32 38 }, %struct.cx23885_subid { i16 5217, i16 -9927, i32 39 }, %struct.cx23885_subid { i16 112, i16 28979, i32 43 }, %struct.cx23885_subid { i16 112, i16 28983, i32 43 }, %struct.cx23885_subid { i16 6316, i16 -9320, i32 44 }, %struct.cx23885_subid { i16 16980, i16 -27264, i32 45 }, %struct.cx23885_subid { i16 16980, i16 -26612, i32 46 }, %struct.cx23885_subid { i16 16980, i16 -27380, i32 47 }, %struct.cx23885_subid { i16 5058, i16 12307, i32 48 }, %struct.cx23885_subid { i16 16980, i16 2384, i32 49 }, %struct.cx23885_subid { i16 16980, i16 2386, i32 50 }, %struct.cx23885_subid { i16 16980, i16 2434, i32 51 }, %struct.cx23885_subid { i16 112, i16 -4040, i32 52 }, %struct.cx23885_subid { i16 5494, i16 608, i32 54 }, %struct.cx23885_subid { i16 5494, i16 1120, i32 55 }, %struct.cx23885_subid { i16 112, i16 27176, i32 56 }, %struct.cx23885_subid { i16 112, i16 27432, i32 56 }, %struct.cx23885_subid { i16 112, i16 27160, i32 57 }, %struct.cx23885_subid { i16 112, i16 27416, i32 57 }, %struct.cx23885_subid { i16 112, i16 10776, i32 58 }, %struct.cx23885_subid { i16 112, i16 -4054, i32 59 }, %struct.cx23885_subid { i16 5217, i16 12544, i32 62 }], [160 x i8] zeroinitializer }, align 32
@cx23885_idcount = dso_local constant { i32, [28 x i8] } { i32 80, [28 x i8] zeroinitializer }, align 32
@cx23885_card_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.64, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [224 x i8], [32 x i8] } { [224 x i8] c"\016cx23885: %s: Board has no valid PCIe Subsystem ID and can't\0A%s: be autodetected. Pass card=<n> insmod option\0A%s: to workaround that. Redirect complaints to the\0A%s: vendor of the TV card.  Best regards,\0A%s:         -- tux\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx23885_card_list\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/cx23885/cx23885-cards.c\00", [54 x i8] zeroinitializer }, align 32
@cx23885_card_list._entry_ptr = internal global ptr @cx23885_card_list._entry, section ".printk_index", align 4
@cx23885_card_list._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.63, ptr @.str.64, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [197 x i8], [59 x i8] } { [197 x i8] c"\016cx23885: %s: Your board isn't known (yet) to the driver.\0A%s: Try to pick one of the existing card configs via\0A%s: card=<n> insmod option.  Updating to the latest\0A%s: version might help as well.\0A\00", [59 x i8] zeroinitializer }, align 32
@cx23885_card_list._entry_ptr.67 = internal global ptr @cx23885_card_list._entry.65, section ".printk_index", align 4
@cx23885_card_list._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.63, ptr @.str.64, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016cx23885: %s: Here is a list of valid choices for the card=<n> insmod option:\0A\00", [48 x i8] zeroinitializer }, align 32
@cx23885_card_list._entry_ptr.70 = internal global ptr @cx23885_card_list._entry.68, section ".printk_index", align 4
@cx23885_card_list._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.63, ptr @.str.64, i32 1217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016cx23885: %s:    card=%d -> %s\0A\00", [63 x i8] zeroinitializer }, align 32
@cx23885_card_list._entry_ptr.73 = internal global ptr @cx23885_card_list._entry.71, section ".printk_index", align 4
@cx23885_tuner_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.64, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013cx23885: %s(): Unknown command 0x%x.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx23885_tuner_callback\00", [41 x i8] zeroinitializer }, align 32
@cx23885_tuner_callback._entry_ptr = internal global ptr @cx23885_tuner_callback._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cx23885_ir_init.ir_rxtx_pin_cfg = internal global { [2 x %struct.v4l2_subdev_io_pin_config], [16 x i8] } { [2 x %struct.v4l2_subdev_io_pin_config] [%struct.v4l2_subdev_io_pin_config { i32 4, i8 0, i8 0, i8 0, i8 0 }, %struct.v4l2_subdev_io_pin_config { i32 2, i8 1, i8 2, i8 0, i8 0 }], [16 x i8] zeroinitializer }, align 32
@cx23885_ir_init.ir_rx_pin_cfg = internal global { [1 x %struct.v4l2_subdev_io_pin_config], [24 x i8] } { [1 x %struct.v4l2_subdev_io_pin_config] [%struct.v4l2_subdev_io_pin_config { i32 4, i8 0, i8 0, i8 0, i8 0 }], [24 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ir-kbd-i2c\00", [21 x i8] zeroinitializer }, align 32
@cx23885_card_setup.eeprom = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx25840\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cs3308\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-netup-altera-01.fw\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"configure\00", [22 x i8] zeroinitializer }, align 32
@cx23885_card_setup.cinfo = internal global { %struct.netup_card_info, [19 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-netup-altera-04.fw\00", [41 x i8] zeroinitializer }, align 32
@cx23885_card_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.64, i32 2480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cx23885: NetUP card rev=0x%x fw_filename=%s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx23885_card_setup\00", [45 x i8] zeroinitializer }, align 32
@cx23885_card_setup._entry_ptr = internal global ptr @cx23885_card_setup._entry, section ".printk_index", align 4
@cx23885_card_setup._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.64, i32 2485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"\013cx23885: did not find the firmware file '%s'. You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware.\00", [41 x i8] zeroinitializer }, align 32
@cx23885_card_setup._entry_ptr.86 = internal global ptr @cx23885_card_setup._entry.84, section ".printk_index", align 4
@hauppauge_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.64, i32 1415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014cx23885: %s: warning: unknown hauppauge model #%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hauppauge_eeprom\00", [47 x i8] zeroinitializer }, align 32
@hauppauge_eeprom._entry_ptr = internal global ptr @hauppauge_eeprom._entry, section ".printk_index", align 4
@hauppauge_eeprom._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.64, i32 1420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cx23885: %s: hauppauge eeprom: model=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@hauppauge_eeprom._entry_ptr.91 = internal global ptr @hauppauge_eeprom._entry.89, section ".printk_index", align 4
@viewcast_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.64, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016cx23885: %s() eeprom records are undefined, no serial number\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"viewcast_eeprom\00", [16 x i8] zeroinitializer }, align 32
@viewcast_eeprom._entry_ptr = internal global ptr @viewcast_eeprom._entry, section ".printk_index", align 4
@viewcast_eeprom._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.64, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016cx23885: %s: card '%s' sn# MM%d\0A\00", [61 x i8] zeroinitializer }, align 32
@viewcast_eeprom._entry_ptr.96 = internal global ptr @viewcast_eeprom._entry.94, section ".printk_index", align 4
@tbs_card_init.buf = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\E0\06f3e\01\17\06\DE", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.97 = internal global [17 x i64] [i64 15, i64 32, i64 5, i64 6, i64 9, i64 10, i64 11, i64 12, i64 13, i64 25, i64 28, i64 29, i64 30, i64 31, i64 39, i64 42, i64 44]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.99 = internal global [53 x i64] [i64 51, i64 32, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 33, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61]
@__sancov_gen_cov_switch_values.100 = internal global [20 x i64] [i64 18, i64 32, i64 3, i64 11, i64 15, i64 18, i64 24, i64 26, i64 33, i64 34, i64 40, i64 41, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51]
@__sancov_gen_cov_switch_values.101 = internal global [18 x i64] [i64 16, i64 32, i64 3, i64 15, i64 18, i64 24, i64 26, i64 33, i64 34, i64 40, i64 41, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51]
@__sancov_gen_cov_switch_values.102 = internal global [18 x i64] [i64 16, i64 32, i64 3, i64 15, i64 18, i64 24, i64 26, i64 33, i64 34, i64 40, i64 41, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51]
@__sancov_gen_cov_switch_values.103 = internal global [29 x i64] [i64 27, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 18, i64 19, i64 20, i64 21, i64 24, i64 26, i64 36, i64 38, i64 43, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61]
@__sancov_gen_cov_switch_values.104 = internal global [39 x i64] [i64 37, i64 32, i64 2, i64 4, i64 10, i64 11, i64 14, i64 15, i64 16, i64 17, i64 22, i64 23, i64 24, i64 27, i64 30, i64 33, i64 34, i64 35, i64 37, i64 38, i64 39, i64 40, i64 41, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61]
@__sancov_gen_cov_switch_values.105 = internal global [45 x i64] [i64 43, i64 32, i64 1, i64 2, i64 3, i64 6, i64 8, i64 12, i64 13, i64 15, i64 17, i64 18, i64 20, i64 22, i64 23, i64 24, i64 25, i64 26, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 36, i64 39, i64 40, i64 41, i64 42, i64 43, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 54, i64 55, i64 56, i64 57, i64 58, i64 62]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 54, i64 55]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 30]
@__sancov_gen_cov_switch_values.108 = internal global [57 x i64] [i64 55, i64 32, i64 22001, i64 22009, i64 22011, i64 22019, i64 22021, i64 22029, i64 22101, i64 22109, i64 22111, i64 22119, i64 22121, i64 22129, i64 71009, i64 71100, i64 71359, i64 71439, i64 71449, i64 71939, i64 71949, i64 71959, i64 71979, i64 71999, i64 76601, i64 77001, i64 77011, i64 77041, i64 77051, i64 78011, i64 78501, i64 78521, i64 78531, i64 78631, i64 79001, i64 79101, i64 79501, i64 79561, i64 79571, i64 79671, i64 80019, i64 81509, i64 81519, i64 85021, i64 85721, i64 121019, i64 121029, i64 150329, i64 161111, i64 165100, i64 165101, i64 165200, i64 165201, i64 166100, i64 166101, i64 166200, i64 166201]
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"netup_card_rev\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 26, i32 21 }
@___asan_gen_.112 = private unnamed_addr constant [14 x i8] c"enable_885_ir\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 30, i32 21 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 46, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 64, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 85, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 117, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 153, i32 12 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 157, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 161, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 188, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 192, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 196, i32 12 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 200, i32 12 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 205, i32 12 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 210, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 275, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 279, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 293, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 297, i32 12 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 302, i32 12 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 307, i32 12 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 311, i32 12 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 315, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 367, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 371, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 401, i32 12 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 431, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 461, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 465, i32 12 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 469, i32 12 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 474, i32 21 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 500, i32 12 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 522, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 247, i32 12 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 536, i32 12 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 561, i32 12 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 595, i32 12 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 600, i32 12 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 604, i32 12 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 608, i32 12 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 621, i32 12 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 288, i32 12 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 283, i32 12 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 214, i32 12 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 655, i32 12 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 650, i32 12 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 671, i32 12 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 676, i32 12 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 680, i32 12 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 684, i32 12 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 688, i32 12 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 692, i32 12 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 697, i32 12 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 702, i32 12 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 617, i32 12 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 728, i32 12 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 751, i32 12 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 778, i32 19 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 800, i32 19 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 821, i32 12 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 841, i32 12 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 794, i32 19 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 815, i32 19 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 845, i32 12 }
@___asan_gen_.301 = private unnamed_addr constant [15 x i8] c"cx23885_boards\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 44, i32 22 }
@___asan_gen_.304 = private unnamed_addr constant [15 x i8] c"cx23885_bcount\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 864, i32 20 }
@___asan_gen_.307 = private unnamed_addr constant [15 x i8] c"cx23885_subids\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 869, i32 22 }
@___asan_gen_.310 = private unnamed_addr constant [16 x i8] c"cx23885_idcount\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1192, i32 20 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1200, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1207, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1213, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1216, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1462, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant [16 x i8] c"ir_rxtx_pin_cfg\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1935, i32 42 }
@___asan_gen_.355 = private unnamed_addr constant [14 x i8] c"ir_rx_pin_cfg\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1952, i32 42 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 2042, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 2137, i32 12 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 2418, i32 5 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 2434, i32 5 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 2456, i32 26 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 2457, i32 18 }
@___asan_gen_.376 = private unnamed_addr constant [6 x i8] c"cinfo\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 2458, i32 33 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 2473, i32 15 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 2479, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 2484, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1414, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1419, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1226, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1236, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.428 = private constant [45 x i8] c"../drivers/media/pci/cx23885/cx23885-cards.c\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1429, i32 18 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_enable_885_ir388, ptr @__UNIQUE_ID_enable_885_irtype387, ptr @__UNIQUE_ID_netup_card_rev386, ptr @__UNIQUE_ID_netup_card_revtype385, ptr @__param_enable_885_ir, ptr @__param_netup_card_rev, ptr @cx23885_card_list._entry, ptr @cx23885_card_list._entry.65, ptr @cx23885_card_list._entry.68, ptr @cx23885_card_list._entry.71, ptr @cx23885_card_list._entry_ptr, ptr @cx23885_card_list._entry_ptr.67, ptr @cx23885_card_list._entry_ptr.70, ptr @cx23885_card_list._entry_ptr.73, ptr @cx23885_card_setup._entry, ptr @cx23885_card_setup._entry.84, ptr @cx23885_card_setup._entry_ptr, ptr @cx23885_card_setup._entry_ptr.86, ptr @cx23885_tuner_callback._entry, ptr @cx23885_tuner_callback._entry_ptr, ptr @hauppauge_eeprom._entry, ptr @hauppauge_eeprom._entry.89, ptr @hauppauge_eeprom._entry_ptr, ptr @hauppauge_eeprom._entry_ptr.91, ptr @viewcast_eeprom._entry, ptr @viewcast_eeprom._entry.94, ptr @viewcast_eeprom._entry_ptr, ptr @viewcast_eeprom._entry_ptr.96, ptr @netup_card_rev, ptr @enable_885_ir, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @cx23885_boards, ptr @cx23885_bcount, ptr @cx23885_subids, ptr @cx23885_idcount, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @cx23885_ir_init.ir_rxtx_pin_cfg, ptr @cx23885_ir_init.ir_rx_pin_cfg, ptr @.str.76, ptr @cx23885_card_setup.eeprom, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @cx23885_card_setup.cinfo, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @tbs_card_init.buf], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_card_rev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_885_ir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_boards to i32), i32 17388, i32 21728, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_bcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_subids to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_idcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_card_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_card_list._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 197, i32 256, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_card_list._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_card_list._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tuner_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_ir_init.ir_rxtx_pin_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_ir_init.ir_rx_pin_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_card_setup.eeprom to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_card_setup.cinfo to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_card_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_card_setup._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_eeprom._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viewcast_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viewcast_eeprom._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbs_card_init.buf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_card_list(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.do.end16_crit_edge

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

land.lhs.true:                                    ; preds = %entry
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp4 = icmp eq i16 %5, 0
  br i1 %cmp4, label %do.end, label %land.lhs.true.do.end16_crit_edge

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name, ptr noundef %name, ptr noundef %name, ptr noundef %name, ptr noundef %name) #8
  br label %do.end29

do.end16:                                         ; preds = %land.lhs.true.do.end16_crit_edge, %entry.do.end16_crit_edge
  %name18 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name18, ptr noundef %name18, ptr noundef %name18, ptr noundef %name18) #8
  br label %do.end29

do.end29:                                         ; preds = %do.end16, %do.end
  %name31 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name31) #8
  br label %do.end38

do.end38:                                         ; preds = %do.end38.do.end38_crit_edge, %do.end29
  %i.059 = phi i32 [ 0, %do.end29 ], [ %inc, %do.end38.do.end38_crit_edge ]
  %arrayidx = getelementptr [63 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %i.059
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name31, i32 noundef %i.059, ptr noundef %7) #8
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, 63
  br i1 %exitcond.not, label %for.end, label %do.end38.do.end38_crit_edge

do.end38.do.end38_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

for.end:                                          ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_tuner_callback(ptr nocapture noundef readonly %priv, i32 noundef %component, i32 noundef %command, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %command, label %do.end [
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %entry.cleanup_crit_edge69
    i32 0, label %if.end5
  ]

entry.cleanup_crit_edge69:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef %command) #8
  br label %cleanup

if.end5:                                          ; preds = %entry
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %board, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %4, label %if.end5.cleanup_crit_edge [
    i32 9, label %if.end5.do.body20_crit_edge
    i32 6, label %if.end5.do.body20_crit_edge70
    i32 5, label %if.end5.do.body20_crit_edge71
    i32 12, label %if.end5.do.body20_crit_edge72
    i32 42, label %if.end5.do.body20_crit_edge73
    i32 31, label %if.end5.do.body20_crit_edge74
    i32 13, label %if.end5.do.body20_crit_edge75
    i32 25, label %if.end5.do.body20_crit_edge76
    i32 28, label %if.end5.do.body20_crit_edge77
    i32 10, label %if.end5.sw.bb6_crit_edge
    i32 11, label %if.end5.sw.bb6_crit_edge78
    i32 44, label %if.end5.sw.bb6_crit_edge79
    i32 29, label %sw.bb14
    i32 30, label %sw.bb15
    i32 39, label %if.end5.do.body20_crit_edge80
  ]

if.end5.do.body20_crit_edge80:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

if.end5.sw.bb6_crit_edge79:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6

if.end5.sw.bb6_crit_edge78:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6

if.end5.sw.bb6_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6

if.end5.do.body20_crit_edge77:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

if.end5.do.body20_crit_edge76:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

if.end5.do.body20_crit_edge75:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

if.end5.do.body20_crit_edge74:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

if.end5.do.body20_crit_edge73:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

if.end5.do.body20_crit_edge72:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

if.end5.do.body20_crit_edge71:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

if.end5.do.body20_crit_edge70:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

if.end5.do.body20_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb6:                                           ; preds = %if.end5.sw.bb6_crit_edge, %if.end5.sw.bb6_crit_edge78, %if.end5.sw.bb6_crit_edge79
  %nr = getelementptr inbounds %struct.cx23885_tsport, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %7, label %sw.bb6.cleanup_crit_edge [
    i32 1, label %sw.bb6.do.body20_crit_edge
    i32 2, label %if.then11
  ]

sw.bb6.do.body20_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

sw.bb14:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

sw.bb15:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %nr16 = getelementptr inbounds %struct.cx23885_tsport, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %nr16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr16, align 4
  %call17 = tail call i32 @altera_ci_tuner_reset(ptr noundef %1, i32 noundef %10) #5
  br label %cleanup

do.body20:                                        ; preds = %sw.bb14, %if.then11, %sw.bb6.do.body20_crit_edge, %if.end5.do.body20_crit_edge, %if.end5.do.body20_crit_edge70, %if.end5.do.body20_crit_edge71, %if.end5.do.body20_crit_edge72, %if.end5.do.body20_crit_edge73, %if.end5.do.body20_crit_edge74, %if.end5.do.body20_crit_edge75, %if.end5.do.body20_crit_edge76, %if.end5.do.body20_crit_edge77, %if.end5.do.body20_crit_edge80
  %bitmask.0.ph = phi i32 [ %7, %sw.bb6.do.body20_crit_edge ], [ 2, %sw.bb14 ], [ 4, %if.then11 ], [ 4, %if.end5.do.body20_crit_edge ], [ 4, %if.end5.do.body20_crit_edge70 ], [ 4, %if.end5.do.body20_crit_edge71 ], [ 4, %if.end5.do.body20_crit_edge72 ], [ 4, %if.end5.do.body20_crit_edge73 ], [ 4, %if.end5.do.body20_crit_edge74 ], [ 4, %if.end5.do.body20_crit_edge75 ], [ 4, %if.end5.do.body20_crit_edge76 ], [ 4, %if.end5.do.body20_crit_edge77 ], [ 4, %if.end5.do.body20_crit_edge80 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !229
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %12, i32 278532
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !230
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  %neg = xor i32 %bitmask.0.ph, -1
  %and = and i32 %14, %neg
  %15 = tail call i32 @llvm.bswap.i32(i32 %and)
  %16 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio, align 4
  %add.ptr28 = getelementptr i32, ptr %17, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %15) #5, !srcloc !232
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body20
  %__ms.068 = phi i32 [ 200, %do.body20 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.068, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #5
  %tobool29.not = icmp eq i32 %dec, 0
  br i1 %tobool29.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio, align 4
  %add.ptr36 = getelementptr i32, ptr %20, i32 278532
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #5, !srcloc !230
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  %or43 = or i32 %22, %bitmask.0.ph
  %23 = tail call i32 @llvm.bswap.i32(i32 %or43)
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr45 = getelementptr i32, ptr %25, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %23) #5, !srcloc !232
  br label %cleanup

cleanup:                                          ; preds = %while.end, %sw.bb15, %sw.bb6.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge69
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge69 ], [ 0, %while.end ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %sw.bb15 ], [ 0, %sw.bb6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_ci_tuner_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_gpio_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %board, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 3, label %do.body
    i32 6, label %do.body5
    i32 5, label %do.body45
    i32 2, label %sw.bb58
    i32 7, label %do.body60
    i32 8, label %do.body100
    i32 9, label %do.body140
    i32 10, label %do.body180
    i32 11, label %entry.do.body220_crit_edge
    i32 44, label %entry.do.body220_crit_edge861
    i32 12, label %entry.do.body260_crit_edge
    i32 42, label %entry.do.body260_crit_edge862
    i32 31, label %entry.do.body260_crit_edge863
    i32 13, label %entry.do.body260_crit_edge864
    i32 25, label %entry.do.body260_crit_edge865
    i32 28, label %entry.do.body260_crit_edge866
    i32 14, label %entry.do.body300_crit_edge
    i32 41, label %entry.do.body300_crit_edge867
    i32 40, label %entry.do.body300_crit_edge868
    i32 37, label %entry.do.body300_crit_edge869
    i32 17, label %do.body348
    i32 18, label %entry.sw.bb403_crit_edge
    i32 19, label %entry.sw.bb403_crit_edge870
    i32 20, label %entry.sw.bb403_crit_edge871
    i32 36, label %entry.sw.bb403_crit_edge872
    i32 21, label %entry.sw.bb403_crit_edge873
    i32 22, label %entry.sw.bb404_crit_edge
    i32 23, label %entry.sw.bb404_crit_edge874
    i32 33, label %entry.sw.bb404_crit_edge875
    i32 27, label %sw.bb405
    i32 24, label %entry.sw.bb406_crit_edge
    i32 26, label %entry.sw.bb406_crit_edge876
    i32 29, label %do.body408
    i32 30, label %do.body422
    i32 38, label %entry.sw.bb477_crit_edge
    i32 53, label %entry.sw.bb477_crit_edge877
    i32 39, label %do.body479
    i32 45, label %entry.do.body636_crit_edge
    i32 50, label %entry.do.body636_crit_edge878
    i32 51, label %entry.do.body636_crit_edge879
    i32 46, label %entry.do.body641_crit_edge
    i32 47, label %entry.do.body641_crit_edge880
    i32 48, label %entry.do.body641_crit_edge881
    i32 49, label %sw.bb709
    i32 52, label %entry.sw.bb710_crit_edge
    i32 59, label %entry.sw.bb710_crit_edge882
    i32 61, label %entry.sw.bb712_crit_edge
    i32 57, label %entry.sw.bb712_crit_edge883
    i32 58, label %entry.sw.bb712_crit_edge884
    i32 56, label %entry.sw.bb712_crit_edge885
    i32 60, label %entry.sw.bb712_crit_edge886
  ]

entry.sw.bb712_crit_edge886:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb712

entry.sw.bb712_crit_edge885:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb712

entry.sw.bb712_crit_edge884:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb712

entry.sw.bb712_crit_edge883:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb712

entry.sw.bb712_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb712

entry.sw.bb710_crit_edge882:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb710

entry.sw.bb710_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb710

entry.do.body641_crit_edge881:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body641

entry.do.body641_crit_edge880:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body641

entry.do.body641_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body641

entry.do.body636_crit_edge879:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body636

entry.do.body636_crit_edge878:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body636

entry.do.body636_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body636

entry.sw.bb477_crit_edge877:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb477

entry.sw.bb477_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb477

entry.sw.bb406_crit_edge876:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb406

entry.sw.bb406_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb406

entry.sw.bb404_crit_edge875:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb404

entry.sw.bb404_crit_edge874:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb404

entry.sw.bb404_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb404

entry.sw.bb403_crit_edge873:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb403

entry.sw.bb403_crit_edge872:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb403

entry.sw.bb403_crit_edge871:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb403

entry.sw.bb403_crit_edge870:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb403

entry.sw.bb403_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb403

entry.do.body300_crit_edge869:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body300

entry.do.body300_crit_edge868:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body300

entry.do.body300_crit_edge867:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body300

entry.do.body300_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body300

entry.do.body260_crit_edge866:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body260

entry.do.body260_crit_edge865:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body260

entry.do.body260_crit_edge864:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body260

entry.do.body260_crit_edge863:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body260

entry.do.body260_crit_edge862:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body260

entry.do.body260_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body260

entry.do.body220_crit_edge861:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body220

entry.do.body220_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body220

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %4, i32 278532
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !236
  %6 = or i32 %5, 16777472
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr3 = getelementptr i32, ptr %8, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %6) #5, !srcloc !232
  br label %sw.epilog

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !237
  tail call void @arm_heavy_mb() #5
  %lmmio9 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %9 = ptrtoint ptr %lmmio9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio9, align 4
  %add.ptr10 = getelementptr i32, ptr %10, i32 278532
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !238
  %12 = or i32 %11, 1280
  %13 = ptrtoint ptr %lmmio9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio9, align 4
  %add.ptr17 = getelementptr i32, ptr %14, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %12) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !239
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %lmmio9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio9, align 4
  %add.ptr23 = getelementptr i32, ptr %16, i32 278532
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !240
  %18 = and i32 %17, -83886081
  %19 = ptrtoint ptr %lmmio9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio9, align 4
  %add.ptr30 = getelementptr i32, ptr %20, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %18) #5, !srcloc !232
  tail call void @msleep(i32 noundef 5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %lmmio9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio9, align 4
  %add.ptr36 = getelementptr i32, ptr %22, i32 278532
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !242
  %24 = or i32 %23, 83887360
  %25 = ptrtoint ptr %lmmio9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio9, align 4
  %add.ptr43 = getelementptr i32, ptr %26, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %24) #5, !srcloc !232
  br label %sw.epilog

do.body45:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  tail call void @arm_heavy_mb() #5
  %lmmio49 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %27 = ptrtoint ptr %lmmio49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lmmio49, align 4
  %add.ptr50 = getelementptr i32, ptr %28, i32 278532
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !244
  %30 = or i32 %29, 83887360
  %31 = ptrtoint ptr %lmmio49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lmmio49, align 4
  %add.ptr57 = getelementptr i32, ptr %32, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %30) #5, !srcloc !232
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mc417_gpio_enable(ptr noundef %dev, i32 noundef 49152, i32 noundef 1) #5
  tail call void @mc417_gpio_clear(ptr noundef %dev, i32 noundef 49152) #5
  tail call void @msleep(i32 noundef 100) #5
  tail call void @mc417_gpio_set(ptr noundef %dev, i32 noundef 49152) #5
  tail call void @msleep(i32 noundef 100) #5
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 4, i32 noundef 1) #5
  tail call void @cx23885_gpio_set(ptr noundef %dev, i32 noundef 4) #5
  tail call void @msleep(i32 noundef 20) #5
  tail call void @cx23885_gpio_clear(ptr noundef %dev, i32 noundef 4) #5
  tail call void @msleep(i32 noundef 20) #5
  tail call void @cx23885_gpio_set(ptr noundef %dev, i32 noundef 4) #5
  tail call void @msleep(i32 noundef 20) #5
  br label %sw.epilog

do.body60:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !245
  tail call void @arm_heavy_mb() #5
  %lmmio64 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %33 = ptrtoint ptr %lmmio64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio64, align 4
  %add.ptr65 = getelementptr i32, ptr %34, i32 278532
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !246
  %36 = or i32 %35, 1280
  %37 = ptrtoint ptr %lmmio64 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lmmio64, align 4
  %add.ptr72 = getelementptr i32, ptr %38, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %36) #5, !srcloc !232
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !247
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %lmmio64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio64, align 4
  %add.ptr78 = getelementptr i32, ptr %40, i32 278532
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !248
  %42 = and i32 %41, -83886081
  %43 = ptrtoint ptr %lmmio64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lmmio64, align 4
  %add.ptr85 = getelementptr i32, ptr %44, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %42) #5, !srcloc !232
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %lmmio64 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lmmio64, align 4
  %add.ptr91 = getelementptr i32, ptr %46, i32 278532
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !250
  %48 = or i32 %47, 83887360
  %49 = ptrtoint ptr %lmmio64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lmmio64, align 4
  %add.ptr98 = getelementptr i32, ptr %50, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %48) #5, !srcloc !232
  br label %sw.epilog

do.body100:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !251
  tail call void @arm_heavy_mb() #5
  %lmmio104 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %51 = ptrtoint ptr %lmmio104 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lmmio104, align 4
  %add.ptr105 = getelementptr i32, ptr %52, i32 278532
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !252
  %54 = or i32 %53, 1280
  %55 = ptrtoint ptr %lmmio104 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lmmio104, align 4
  %add.ptr112 = getelementptr i32, ptr %56, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 %54) #5, !srcloc !232
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !253
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %lmmio104 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lmmio104, align 4
  %add.ptr118 = getelementptr i32, ptr %58, i32 278532
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !254
  %60 = and i32 %59, -83886081
  %61 = ptrtoint ptr %lmmio104 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lmmio104, align 4
  %add.ptr125 = getelementptr i32, ptr %62, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 %60) #5, !srcloc !232
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !255
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %lmmio104 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lmmio104, align 4
  %add.ptr131 = getelementptr i32, ptr %64, i32 278532
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !256
  %66 = or i32 %65, 83887360
  %67 = ptrtoint ptr %lmmio104 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lmmio104, align 4
  %add.ptr138 = getelementptr i32, ptr %68, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 %66) #5, !srcloc !232
  br label %sw.epilog

do.body140:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !257
  tail call void @arm_heavy_mb() #5
  %lmmio144 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %69 = ptrtoint ptr %lmmio144 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lmmio144, align 4
  %add.ptr145 = getelementptr i32, ptr %70, i32 278532
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !258
  %72 = or i32 %71, 1280
  %73 = ptrtoint ptr %lmmio144 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lmmio144, align 4
  %add.ptr152 = getelementptr i32, ptr %74, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 %72) #5, !srcloc !232
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !259
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %lmmio144 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lmmio144, align 4
  %add.ptr158 = getelementptr i32, ptr %76, i32 278532
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr158) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !260
  %78 = and i32 %77, -83886081
  %79 = ptrtoint ptr %lmmio144 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lmmio144, align 4
  %add.ptr165 = getelementptr i32, ptr %80, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165, i32 %78) #5, !srcloc !232
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !261
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %lmmio144 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lmmio144, align 4
  %add.ptr171 = getelementptr i32, ptr %82, i32 278532
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr171) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %84 = or i32 %83, 83887360
  %85 = ptrtoint ptr %lmmio144 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lmmio144, align 4
  %add.ptr178 = getelementptr i32, ptr %86, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 %84) #5, !srcloc !232
  br label %sw.epilog

do.body180:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !263
  tail call void @arm_heavy_mb() #5
  %lmmio184 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %87 = ptrtoint ptr %lmmio184 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lmmio184, align 4
  %add.ptr185 = getelementptr i32, ptr %88, i32 278532
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr185) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !264
  %90 = or i32 %89, 3840
  %91 = ptrtoint ptr %lmmio184 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lmmio184, align 4
  %add.ptr192 = getelementptr i32, ptr %92, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 %90) #5, !srcloc !232
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !265
  tail call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %lmmio184 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lmmio184, align 4
  %add.ptr198 = getelementptr i32, ptr %94, i32 278532
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr198) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !266
  %96 = and i32 %95, -251658241
  %97 = ptrtoint ptr %lmmio184 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %lmmio184, align 4
  %add.ptr205 = getelementptr i32, ptr %98, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr205, i32 %96) #5, !srcloc !232
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !267
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %lmmio184 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lmmio184, align 4
  %add.ptr211 = getelementptr i32, ptr %100, i32 278532
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr211) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !268
  %102 = or i32 %101, 251662080
  %103 = ptrtoint ptr %lmmio184 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %lmmio184, align 4
  %add.ptr218 = getelementptr i32, ptr %104, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr218, i32 %102) #5, !srcloc !232
  br label %sw.epilog

do.body220:                                       ; preds = %entry.do.body220_crit_edge, %entry.do.body220_crit_edge861
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !269
  tail call void @arm_heavy_mb() #5
  %lmmio224 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %105 = ptrtoint ptr %lmmio224 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %lmmio224, align 4
  %add.ptr225 = getelementptr i32, ptr %106, i32 278532
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr225) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !270
  %108 = or i32 %107, 3840
  %109 = ptrtoint ptr %lmmio224 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %lmmio224, align 4
  %add.ptr232 = getelementptr i32, ptr %110, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr232, i32 %108) #5, !srcloc !232
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !271
  tail call void @arm_heavy_mb() #5
  %111 = ptrtoint ptr %lmmio224 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %lmmio224, align 4
  %add.ptr238 = getelementptr i32, ptr %112, i32 278532
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr238) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !272
  %114 = and i32 %113, -251658241
  %115 = ptrtoint ptr %lmmio224 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %lmmio224, align 4
  %add.ptr245 = getelementptr i32, ptr %116, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr245, i32 %114) #5, !srcloc !232
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !273
  tail call void @arm_heavy_mb() #5
  %117 = ptrtoint ptr %lmmio224 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %lmmio224, align 4
  %add.ptr251 = getelementptr i32, ptr %118, i32 278532
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr251) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !274
  %120 = or i32 %119, 251662080
  %121 = ptrtoint ptr %lmmio224 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %lmmio224, align 4
  %add.ptr258 = getelementptr i32, ptr %122, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr258, i32 %120) #5, !srcloc !232
  br label %sw.epilog

do.body260:                                       ; preds = %entry.do.body260_crit_edge, %entry.do.body260_crit_edge862, %entry.do.body260_crit_edge863, %entry.do.body260_crit_edge864, %entry.do.body260_crit_edge865, %entry.do.body260_crit_edge866
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !275
  tail call void @arm_heavy_mb() #5
  %lmmio264 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %123 = ptrtoint ptr %lmmio264 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %lmmio264, align 4
  %add.ptr265 = getelementptr i32, ptr %124, i32 278532
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr265) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !276
  %126 = or i32 %125, 1024
  %127 = ptrtoint ptr %lmmio264 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %lmmio264, align 4
  %add.ptr272 = getelementptr i32, ptr %128, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr272, i32 %126) #5, !srcloc !232
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !277
  tail call void @arm_heavy_mb() #5
  %129 = ptrtoint ptr %lmmio264 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %lmmio264, align 4
  %add.ptr278 = getelementptr i32, ptr %130, i32 278532
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr278) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !278
  %132 = and i32 %131, -67108865
  %133 = ptrtoint ptr %lmmio264 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %lmmio264, align 4
  %add.ptr285 = getelementptr i32, ptr %134, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr285, i32 %132) #5, !srcloc !232
  tail call void @msleep(i32 noundef 20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !279
  tail call void @arm_heavy_mb() #5
  %135 = ptrtoint ptr %lmmio264 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %lmmio264, align 4
  %add.ptr291 = getelementptr i32, ptr %136, i32 278532
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr291) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !280
  %138 = or i32 %137, 67109888
  %139 = ptrtoint ptr %lmmio264 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %lmmio264, align 4
  %add.ptr298 = getelementptr i32, ptr %140, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298, i32 %138) #5, !srcloc !232
  br label %sw.epilog

do.body300:                                       ; preds = %entry.do.body300_crit_edge, %entry.do.body300_crit_edge867, %entry.do.body300_crit_edge868, %entry.do.body300_crit_edge869
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !281
  tail call void @arm_heavy_mb() #5
  %lmmio302 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %141 = ptrtoint ptr %lmmio302 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %lmmio302, align 4
  %add.ptr303 = getelementptr i32, ptr %142, i32 278538
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr303, i32 905969664) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !282
  tail call void @arm_heavy_mb() #5
  %143 = ptrtoint ptr %lmmio302 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %lmmio302, align 4
  %add.ptr307 = getelementptr i32, ptr %144, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr307, i32 1048576) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !283
  tail call void @arm_heavy_mb() #5
  %145 = ptrtoint ptr %lmmio302 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %lmmio302, align 4
  %add.ptr313 = getelementptr i32, ptr %146, i32 278536
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr313) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !284
  %148 = or i32 %147, 33554432
  %149 = ptrtoint ptr %lmmio302 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %lmmio302, align 4
  %add.ptr320 = getelementptr i32, ptr %150, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr320, i32 %148) #5, !srcloc !232
  tail call void @msleep(i32 noundef 200) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !285
  tail call void @arm_heavy_mb() #5
  %151 = ptrtoint ptr %lmmio302 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %lmmio302, align 4
  %add.ptr326 = getelementptr i32, ptr %152, i32 278536
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr326) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !286
  %154 = and i32 %153, -524289
  %155 = ptrtoint ptr %lmmio302 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %lmmio302, align 4
  %add.ptr333 = getelementptr i32, ptr %156, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr333, i32 %154) #5, !srcloc !232
  tail call void @msleep(i32 noundef 200) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !287
  tail call void @arm_heavy_mb() #5
  %157 = ptrtoint ptr %lmmio302 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %lmmio302, align 4
  %add.ptr339 = getelementptr i32, ptr %158, i32 278536
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr339) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !288
  %160 = or i32 %159, 524288
  %161 = ptrtoint ptr %lmmio302 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %lmmio302, align 4
  %add.ptr346 = getelementptr i32, ptr %162, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr346, i32 %160) #5, !srcloc !232
  tail call void @msleep(i32 noundef 200) #5
  br label %sw.epilog

do.body348:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !289
  tail call void @arm_heavy_mb() #5
  %lmmio352 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %163 = ptrtoint ptr %lmmio352 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %lmmio352, align 4
  %add.ptr353 = getelementptr i32, ptr %164, i32 278532
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr353) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !290
  %166 = or i32 %165, 1024
  %167 = ptrtoint ptr %lmmio352 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %lmmio352, align 4
  %add.ptr360 = getelementptr i32, ptr %168, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr360, i32 %166) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !291
  tail call void @arm_heavy_mb() #5
  %169 = ptrtoint ptr %lmmio352 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %lmmio352, align 4
  %add.ptr366 = getelementptr i32, ptr %170, i32 278532
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr366) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !292
  %172 = and i32 %171, -67109633
  %173 = ptrtoint ptr %lmmio352 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %lmmio352, align 4
  %add.ptr373 = getelementptr i32, ptr %174, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr373, i32 %172) #5, !srcloc !232
  tail call void @msleep(i32 noundef 100) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !293
  tail call void @arm_heavy_mb() #5
  %175 = ptrtoint ptr %lmmio352 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %lmmio352, align 4
  %add.ptr379 = getelementptr i32, ptr %176, i32 278532
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr379) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !294
  %178 = or i32 %177, 67109888
  %179 = ptrtoint ptr %lmmio352 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %lmmio352, align 4
  %add.ptr386 = getelementptr i32, ptr %180, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr386, i32 %178) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !295
  tail call void @arm_heavy_mb() #5
  %181 = ptrtoint ptr %lmmio352 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %lmmio352, align 4
  %add.ptr390 = getelementptr i32, ptr %182, i32 278538
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr390, i32 922746880) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !296
  tail call void @arm_heavy_mb() #5
  %183 = ptrtoint ptr %lmmio352 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %lmmio352, align 4
  %add.ptr394 = getelementptr i32, ptr %184, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr394, i32 1048576) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !297
  tail call void @arm_heavy_mb() #5
  %185 = ptrtoint ptr %lmmio352 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %lmmio352, align 4
  %add.ptr398 = getelementptr i32, ptr %186, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr398, i32 12779520) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !298
  tail call void @arm_heavy_mb() #5
  %187 = ptrtoint ptr %lmmio352 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %lmmio352, align 4
  %add.ptr402 = getelementptr i32, ptr %188, i32 278533
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr402, i32 0) #5, !srcloc !232
  br label %sw.epilog

sw.bb403:                                         ; preds = %entry.sw.bb403_crit_edge, %entry.sw.bb403_crit_edge870, %entry.sw.bb403_crit_edge871, %entry.sw.bb403_crit_edge872, %entry.sw.bb403_crit_edge873
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 608, i32 noundef 1) #5
  tail call void @cx23885_gpio_set(ptr noundef %dev, i32 noundef 608) #5
  tail call void @cx23885_gpio_clear(ptr noundef %dev, i32 noundef 512) #5
  tail call void @msleep(i32 noundef 20) #5
  tail call void @cx23885_gpio_set(ptr noundef %dev, i32 noundef 512) #5
  br label %sw.epilog

sw.bb404:                                         ; preds = %entry.sw.bb404_crit_edge, %entry.sw.bb404_crit_edge874, %entry.sw.bb404_crit_edge875
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 7, i32 noundef 1) #5
  tail call void @cx23885_gpio_clear(ptr noundef %dev, i32 noundef 6) #5
  tail call void @msleep(i32 noundef 100) #5
  tail call void @cx23885_gpio_set(ptr noundef %dev, i32 noundef 7) #5
  tail call void @msleep(i32 noundef 100) #5
  br label %sw.epilog

sw.bb405:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 3, i32 noundef 1) #5
  tail call void @cx23885_gpio_clear(ptr noundef %dev, i32 noundef 3) #5
  tail call void @msleep(i32 noundef 100) #5
  tail call void @cx23885_gpio_set(ptr noundef %dev, i32 noundef 3) #5
  tail call void @msleep(i32 noundef 100) #5
  br label %sw.epilog

sw.bb406:                                         ; preds = %entry.sw.bb406_crit_edge, %entry.sw.bb406_crit_edge876
  tail call void @mc417_gpio_enable(ptr noundef %dev, i32 noundef 24576, i32 noundef 1) #5
  tail call void @mc417_gpio_clear(ptr noundef %dev, i32 noundef 24576) #5
  tail call void @msleep(i32 noundef 100) #5
  tail call void @mc417_gpio_set(ptr noundef %dev, i32 noundef 16384) #5
  tail call void @msleep(i32 noundef 100) #5
  br label %sw.epilog

do.body408:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !299
  tail call void @arm_heavy_mb() #5
  %lmmio412 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %189 = ptrtoint ptr %lmmio412 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %lmmio412, align 4
  %add.ptr413 = getelementptr i32, ptr %190, i32 278532
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr413) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !300
  %192 = or i32 %191, 16777472
  %193 = ptrtoint ptr %lmmio412 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %lmmio412, align 4
  %add.ptr420 = getelementptr i32, ptr %194, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr420, i32 %192) #5, !srcloc !232
  br label %sw.epilog

do.body422:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !301
  tail call void @arm_heavy_mb() #5
  %lmmio426 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %195 = ptrtoint ptr %lmmio426 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %lmmio426, align 4
  %add.ptr427 = getelementptr i32, ptr %196, i32 278532
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr427) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !302
  %198 = or i32 %197, 1536
  %199 = ptrtoint ptr %lmmio426 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %lmmio426, align 4
  %add.ptr434 = getelementptr i32, ptr %200, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr434, i32 %198) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !303
  tail call void @arm_heavy_mb() #5
  %201 = ptrtoint ptr %lmmio426 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %lmmio426, align 4
  %add.ptr440 = getelementptr i32, ptr %202, i32 278532
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr440) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !304
  %204 = and i32 %203, -100663553
  %205 = ptrtoint ptr %lmmio426 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %lmmio426, align 4
  %add.ptr447 = getelementptr i32, ptr %206, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr447, i32 %204) #5, !srcloc !232
  tail call void @msleep(i32 noundef 100) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !305
  tail call void @arm_heavy_mb() #5
  %207 = ptrtoint ptr %lmmio426 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %lmmio426, align 4
  %add.ptr453 = getelementptr i32, ptr %208, i32 278532
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr453) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !306
  %210 = or i32 %209, 67108864
  %211 = ptrtoint ptr %lmmio426 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %lmmio426, align 4
  %add.ptr460 = getelementptr i32, ptr %212, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr460, i32 %210) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !307
  tail call void @arm_heavy_mb() #5
  %213 = ptrtoint ptr %lmmio426 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %lmmio426, align 4
  %add.ptr464 = getelementptr i32, ptr %214, i32 278538
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr464, i32 922746880) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !308
  tail call void @arm_heavy_mb() #5
  %215 = ptrtoint ptr %lmmio426 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %lmmio426, align 4
  %add.ptr468 = getelementptr i32, ptr %216, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr468, i32 5242880) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !309
  tail call void @arm_heavy_mb() #5
  %217 = ptrtoint ptr %lmmio426 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %lmmio426, align 4
  %add.ptr472 = getelementptr i32, ptr %218, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr472, i32 851968) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !310
  tail call void @arm_heavy_mb() #5
  %219 = ptrtoint ptr %lmmio426 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %lmmio426, align 4
  %add.ptr476 = getelementptr i32, ptr %220, i32 278533
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr476, i32 0) #5, !srcloc !232
  br label %sw.epilog

sw.bb477:                                         ; preds = %entry.sw.bb477_crit_edge, %entry.sw.bb477_crit_edge877
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 768, i32 noundef 1) #5
  tail call void @cx23885_gpio_clear(ptr noundef %dev, i32 noundef 768) #5
  tail call void @msleep(i32 noundef 100) #5
  tail call void @cx23885_gpio_set(ptr noundef %dev, i32 noundef 768) #5
  tail call void @msleep(i32 noundef 100) #5
  br label %sw.epilog

do.body479:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !311
  tail call void @arm_heavy_mb() #5
  %lmmio483 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %221 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %lmmio483, align 4
  %add.ptr484 = getelementptr i32, ptr %222, i32 278538
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr484) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !312
  %224 = and i32 %223, -16777217
  %225 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %lmmio483, align 4
  %add.ptr491 = getelementptr i32, ptr %226, i32 278538
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr491, i32 %224) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !313
  tail call void @arm_heavy_mb() #5
  %227 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %lmmio483, align 4
  %add.ptr497 = getelementptr i32, ptr %228, i32 278532
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr497) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !314
  %230 = or i32 %229, 1792
  %231 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %lmmio483, align 4
  %add.ptr504 = getelementptr i32, ptr %232, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr504, i32 %230) #5, !srcloc !232
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !315
  tail call void @arm_heavy_mb() #5
  %233 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %lmmio483, align 4
  %add.ptr510 = getelementptr i32, ptr %234, i32 278532
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr510) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !316
  %236 = or i32 %235, 16777472
  %237 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %lmmio483, align 4
  %add.ptr517 = getelementptr i32, ptr %238, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr517, i32 %236) #5, !srcloc !232
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !317
  tail call void @arm_heavy_mb() #5
  %239 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %lmmio483, align 4
  %add.ptr523 = getelementptr i32, ptr %240, i32 278532
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr523) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !318
  %242 = and i32 %241, -16777473
  %243 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %lmmio483, align 4
  %add.ptr530 = getelementptr i32, ptr %244, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr530, i32 %242) #5, !srcloc !232
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !319
  tail call void @arm_heavy_mb() #5
  %245 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %lmmio483, align 4
  %add.ptr536 = getelementptr i32, ptr %246, i32 278532
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr536) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !320
  %248 = or i32 %247, 16777472
  %249 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %lmmio483, align 4
  %add.ptr543 = getelementptr i32, ptr %250, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr543, i32 %248) #5, !srcloc !232
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !321
  tail call void @arm_heavy_mb() #5
  %251 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %lmmio483, align 4
  %add.ptr549 = getelementptr i32, ptr %252, i32 278532
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr549) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !322
  %254 = and i32 %253, -50332417
  %255 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %lmmio483, align 4
  %add.ptr556 = getelementptr i32, ptr %256, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr556, i32 %254) #5, !srcloc !232
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !323
  tail call void @arm_heavy_mb() #5
  %257 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %lmmio483, align 4
  %add.ptr562 = getelementptr i32, ptr %258, i32 278532
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr562) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !324
  %260 = or i32 %259, 33554944
  %261 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %lmmio483, align 4
  %add.ptr569 = getelementptr i32, ptr %262, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr569, i32 %260) #5, !srcloc !232
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !325
  tail call void @arm_heavy_mb() #5
  %263 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %lmmio483, align 4
  %add.ptr575 = getelementptr i32, ptr %264, i32 278532
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr575) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !326
  %266 = or i32 %265, 16777472
  %267 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %lmmio483, align 4
  %add.ptr582 = getelementptr i32, ptr %268, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr582, i32 %266) #5, !srcloc !232
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !327
  tail call void @arm_heavy_mb() #5
  %269 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %lmmio483, align 4
  %add.ptr588 = getelementptr i32, ptr %270, i32 278532
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr588) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !328
  %272 = and i32 %271, -33554945
  %273 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %lmmio483, align 4
  %add.ptr595 = getelementptr i32, ptr %274, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr595, i32 %272) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !329
  tail call void @arm_heavy_mb() #5
  %275 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %lmmio483, align 4
  %add.ptr601 = getelementptr i32, ptr %276, i32 278532
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr601) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !330
  %278 = or i32 %277, 67109888
  %279 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %lmmio483, align 4
  %add.ptr608 = getelementptr i32, ptr %280, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr608, i32 %278) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !331
  tail call void @arm_heavy_mb() #5
  %281 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %lmmio483, align 4
  %add.ptr614 = getelementptr i32, ptr %282, i32 278532
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr614) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !332
  %284 = and i32 %283, -67109889
  %285 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %lmmio483, align 4
  %add.ptr621 = getelementptr i32, ptr %286, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr621, i32 %284) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !333
  tail call void @arm_heavy_mb() #5
  %287 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %lmmio483, align 4
  %add.ptr627 = getelementptr i32, ptr %288, i32 278532
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr627) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !334
  %290 = or i32 %289, 67109888
  %291 = ptrtoint ptr %lmmio483 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %lmmio483, align 4
  %add.ptr634 = getelementptr i32, ptr %292, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr634, i32 %290) #5, !srcloc !232
  tail call void @msleep(i32 noundef 60) #5
  br label %sw.epilog

do.body636:                                       ; preds = %entry.do.body636_crit_edge, %entry.do.body636_crit_edge878, %entry.do.body636_crit_edge879
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !335
  tail call void @arm_heavy_mb() #5
  %lmmio638 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %293 = ptrtoint ptr %lmmio638 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %lmmio638, align 4
  %add.ptr639 = getelementptr i32, ptr %294, i32 278538
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr639, i32 922746880) #5, !srcloc !232
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 2052, i32 noundef 1) #5
  tail call void @cx23885_gpio_clear(ptr noundef %dev, i32 noundef 2052) #5
  tail call void @msleep(i32 noundef 100) #5
  tail call void @cx23885_gpio_set(ptr noundef %dev, i32 noundef 2052) #5
  br label %sw.epilog

do.body641:                                       ; preds = %entry.do.body641_crit_edge, %entry.do.body641_crit_edge880, %entry.do.body641_crit_edge881
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !336
  tail call void @arm_heavy_mb() #5
  %lmmio645 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %295 = ptrtoint ptr %lmmio645 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %lmmio645, align 4
  %add.ptr646 = getelementptr i32, ptr %296, i32 278532
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr646) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !337
  %298 = or i32 %297, 33555968
  %299 = ptrtoint ptr %lmmio645 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %lmmio645, align 4
  %add.ptr653 = getelementptr i32, ptr %300, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr653, i32 %298) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !338
  tail call void @arm_heavy_mb() #5
  %301 = ptrtoint ptr %lmmio645 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %lmmio645, align 4
  %add.ptr659 = getelementptr i32, ptr %302, i32 278532
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr659) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !339
  %304 = and i32 %303, -67109121
  %305 = ptrtoint ptr %lmmio645 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %lmmio645, align 4
  %add.ptr666 = getelementptr i32, ptr %306, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr666, i32 %304) #5, !srcloc !232
  tail call void @msleep(i32 noundef 100) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !340
  tail call void @arm_heavy_mb() #5
  %307 = ptrtoint ptr %lmmio645 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %lmmio645, align 4
  %add.ptr672 = getelementptr i32, ptr %308, i32 278532
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr672) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !341
  %310 = or i32 %309, 67110400
  %311 = ptrtoint ptr %lmmio645 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %lmmio645, align 4
  %add.ptr679 = getelementptr i32, ptr %312, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr679, i32 %310) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !342
  tail call void @arm_heavy_mb() #5
  %313 = ptrtoint ptr %lmmio645 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %lmmio645, align 4
  %add.ptr685 = getelementptr i32, ptr %314, i32 278532
  %315 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr685) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !343
  %316 = and i32 %315, -33554689
  %317 = ptrtoint ptr %lmmio645 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %lmmio645, align 4
  %add.ptr692 = getelementptr i32, ptr %318, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr692, i32 %316) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !344
  tail call void @arm_heavy_mb() #5
  %319 = ptrtoint ptr %lmmio645 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %lmmio645, align 4
  %add.ptr696 = getelementptr i32, ptr %320, i32 278538
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr696, i32 922746880) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !345
  tail call void @arm_heavy_mb() #5
  %321 = ptrtoint ptr %lmmio645 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %lmmio645, align 4
  %add.ptr700 = getelementptr i32, ptr %322, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr700, i32 1048576) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !346
  tail call void @arm_heavy_mb() #5
  %323 = ptrtoint ptr %lmmio645 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %lmmio645, align 4
  %add.ptr704 = getelementptr i32, ptr %324, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr704, i32 12779520) #5, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !347
  tail call void @arm_heavy_mb() #5
  %325 = ptrtoint ptr %lmmio645 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %lmmio645, align 4
  %add.ptr708 = getelementptr i32, ptr %326, i32 278533
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr708, i32 0) #5, !srcloc !232
  br label %sw.epilog

sw.bb709:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 4, i32 noundef 1) #5
  tail call void @cx23885_gpio_clear(ptr noundef %dev, i32 noundef 4) #5
  tail call void @msleep(i32 noundef 100) #5
  tail call void @cx23885_gpio_set(ptr noundef %dev, i32 noundef 4) #5
  br label %sw.epilog

sw.bb710:                                         ; preds = %entry.sw.bb710_crit_edge, %entry.sw.bb710_crit_edge882
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 768, i32 noundef 1) #5
  tail call void @cx23885_gpio_clear(ptr noundef %dev, i32 noundef 768) #5
  tail call void @msleep(i32 noundef 100) #5
  tail call void @cx23885_gpio_set(ptr noundef %dev, i32 noundef 768) #5
  tail call void @msleep(i32 noundef 100) #5
  br label %sw.epilog

sw.bb712:                                         ; preds = %entry.sw.bb712_crit_edge, %entry.sw.bb712_crit_edge883, %entry.sw.bb712_crit_edge884, %entry.sw.bb712_crit_edge885, %entry.sw.bb712_crit_edge886
  tail call void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef 768, i32 noundef 1) #5
  tail call void @cx23885_gpio_clear(ptr noundef %dev, i32 noundef 768) #5
  tail call void @msleep(i32 noundef 100) #5
  tail call void @cx23885_gpio_set(ptr noundef %dev, i32 noundef 768) #5
  tail call void @msleep(i32 noundef 100) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb712, %sw.bb710, %sw.bb709, %do.body641, %do.body636, %do.body479, %sw.bb477, %do.body422, %do.body408, %sw.bb406, %sw.bb405, %sw.bb404, %sw.bb403, %do.body348, %do.body300, %do.body260, %do.body220, %do.body180, %do.body140, %do.body100, %do.body60, %sw.bb58, %do.body45, %do.body5, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mc417_gpio_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mc417_gpio_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mc417_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_gpio_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_gpio_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_ir_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.v4l2_subdev_ir_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %params) #5
  %0 = call ptr @memset(ptr %params, i32 255, i32 44)
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %1 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %board, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %2, label %entry.sw.epilog_crit_edge [
    i32 44, label %entry.sw.bb242_crit_edge
    i32 11, label %entry.sw.bb242_crit_edge331
    i32 3, label %sw.bb200
    i32 51, label %entry.sw.bb159_crit_edge
    i32 50, label %entry.sw.bb159_crit_edge332
    i32 49, label %entry.sw.bb159_crit_edge333
    i32 48, label %entry.sw.bb159_crit_edge334
    i32 47, label %entry.sw.bb159_crit_edge335
    i32 46, label %entry.sw.bb159_crit_edge336
    i32 45, label %entry.sw.bb159_crit_edge337
    i32 40, label %entry.sw.bb159_crit_edge338
    i32 18, label %sw.bb1
    i32 24, label %entry.sw.bb26_crit_edge
    i32 26, label %entry.sw.bb26_crit_edge339
    i32 34, label %entry.sw.bb159_crit_edge340
    i32 15, label %entry.sw.bb159_crit_edge341
    i32 33, label %entry.sw.bb159_crit_edge342
    i32 41, label %entry.sw.bb159_crit_edge343
  ]

entry.sw.bb159_crit_edge343:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb159

entry.sw.bb159_crit_edge342:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb159

entry.sw.bb159_crit_edge341:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb159

entry.sw.bb159_crit_edge340:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb159

entry.sw.bb26_crit_edge339:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

entry.sw.bb26_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

entry.sw.bb159_crit_edge338:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb159

entry.sw.bb159_crit_edge337:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb159

entry.sw.bb159_crit_edge336:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb159

entry.sw.bb159_crit_edge335:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb159

entry.sw.bb159_crit_edge334:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb159

entry.sw.bb159_crit_edge333:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb159

entry.sw.bb159_crit_edge332:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb159

entry.sw.bb159_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb159

entry.sw.bb242_crit_edge331:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb242

entry.sw.bb242_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb242

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call = tail call i32 @cx23888_ir_probe(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb1
  %call2 = tail call ptr @cx23885_find_hw(ptr noundef %dev, i32 noundef 1) #5
  %sd_ir = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 35
  %4 = ptrtoint ptr %sd_ir to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %sd_ir, align 4
  %sd_cx25840 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 33
  %5 = ptrtoint ptr %sd_cx25840 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd_cx25840, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.end.sw.epilog_crit_edge, label %if.else

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.else.sw.epilog_crit_edge, label %land.lhs.true

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.else
  %s_io_pin_config = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %s_io_pin_config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_io_pin_config, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.else10

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %13 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.else10.if.else18_crit_edge, label %land.lhs.true12

if.else10.if.else18_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else18

land.lhs.true12:                                  ; preds = %if.else10
  %s_io_pin_config13 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %s_io_pin_config13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_io_pin_config13, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %land.lhs.true12.if.else18_crit_edge, label %if.then15

land.lhs.true12.if.else18_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else18

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 %15(ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull @cx23885_ir_init.ir_rx_pin_cfg) #5
  br label %sw.epilog

if.else18:                                        ; preds = %land.lhs.true12.if.else18_crit_edge, %if.else10.if.else18_crit_edge
  %call22 = tail call i32 %12(ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull @cx23885_ir_init.ir_rx_pin_cfg) #5
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry.sw.bb26_crit_edge, %entry.sw.bb26_crit_edge339
  %call27 = tail call i32 @cx23888_ir_probe(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %sw.bb26.sw.epilog_crit_edge

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end30:                                         ; preds = %sw.bb26
  %call31 = tail call ptr @cx23885_find_hw(ptr noundef %dev, i32 noundef 1) #5
  %sd_ir32 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 35
  %16 = ptrtoint ptr %sd_ir32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call31, ptr %sd_ir32, align 4
  %sd_cx2584034 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 33
  %17 = ptrtoint ptr %sd_cx2584034 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_cx2584034, align 4
  %tobool36.not = icmp eq ptr %18, null
  br i1 %tobool36.not, label %if.end30.if.end63_crit_edge, label %if.else38

if.end30.if.end63_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.else38:                                        ; preds = %if.end30
  %ops39 = getelementptr inbounds %struct.v4l2_subdev, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %ops39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops39, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool41.not = icmp eq ptr %22, null
  br i1 %tobool41.not, label %if.else38.if.end63thread-pre-split_crit_edge, label %land.lhs.true42

if.else38.if.end63thread-pre-split_crit_edge:     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63thread-pre-split

land.lhs.true42:                                  ; preds = %if.else38
  %s_io_pin_config45 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %s_io_pin_config45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_io_pin_config45, align 4
  %tobool46.not = icmp eq ptr %24, null
  br i1 %tobool46.not, label %land.lhs.true42.if.end63thread-pre-split_crit_edge, label %if.else48

land.lhs.true42.if.end63thread-pre-split_crit_edge: ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63thread-pre-split

if.else48:                                        ; preds = %land.lhs.true42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %25 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool49.not = icmp eq ptr %25, null
  br i1 %tobool49.not, label %if.else48.if.else56_crit_edge, label %land.lhs.true50

if.else48.if.else56_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else56

land.lhs.true50:                                  ; preds = %if.else48
  %s_io_pin_config51 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %s_io_pin_config51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_io_pin_config51, align 4
  %tobool52.not = icmp eq ptr %27, null
  br i1 %tobool52.not, label %land.lhs.true50.if.else56_crit_edge, label %land.lhs.true50.if.end63thread-pre-split.sink.split_crit_edge

land.lhs.true50.if.end63thread-pre-split.sink.split_crit_edge: ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63thread-pre-split.sink.split

land.lhs.true50.if.else56_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else56

if.else56:                                        ; preds = %land.lhs.true50.if.else56_crit_edge, %if.else48.if.else56_crit_edge
  br label %if.end63thread-pre-split.sink.split

if.end63thread-pre-split.sink.split:              ; preds = %if.else56, %land.lhs.true50.if.end63thread-pre-split.sink.split_crit_edge
  %.sink = phi ptr [ %24, %if.else56 ], [ %27, %land.lhs.true50.if.end63thread-pre-split.sink.split_crit_edge ]
  %call55 = tail call i32 %.sink(ptr noundef nonnull %18, i32 noundef 2, ptr noundef nonnull @cx23885_ir_init.ir_rxtx_pin_cfg) #5
  br label %if.end63thread-pre-split

if.end63thread-pre-split:                         ; preds = %if.end63thread-pre-split.sink.split, %land.lhs.true42.if.end63thread-pre-split_crit_edge, %if.else38.if.end63thread-pre-split_crit_edge
  %28 = ptrtoint ptr %sd_ir32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load ptr, ptr %sd_ir32, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end63thread-pre-split, %if.end30.if.end63_crit_edge
  %29 = phi ptr [ %.pr, %if.end63thread-pre-split ], [ %call31, %if.end30.if.end63_crit_edge ]
  %tobool68.not = icmp eq ptr %29, null
  br i1 %tobool68.not, label %if.end63.if.end93_crit_edge, label %if.else70

if.end63.if.end93_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

if.else70:                                        ; preds = %if.end63
  %ops71 = getelementptr inbounds %struct.v4l2_subdev, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %ops71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops71, align 4
  %ir = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ir, align 4
  %tobool72.not = icmp eq ptr %33, null
  br i1 %tobool72.not, label %if.else70.if.end93_crit_edge, label %land.lhs.true73

if.else70.if.end93_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

land.lhs.true73:                                  ; preds = %if.else70
  %tx_g_parameters = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %tx_g_parameters to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_g_parameters, align 4
  %tobool76.not = icmp eq ptr %35, null
  br i1 %tobool76.not, label %land.lhs.true73.if.end93_crit_edge, label %if.else78

land.lhs.true73.if.end93_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

if.else78:                                        ; preds = %land.lhs.true73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool79.not = icmp eq ptr %36, null
  br i1 %tobool79.not, label %if.else78.if.else86_crit_edge, label %land.lhs.true80

if.else78.if.else86_crit_edge:                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else86

land.lhs.true80:                                  ; preds = %if.else78
  %tx_g_parameters81 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %tx_g_parameters81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_g_parameters81, align 4
  %tobool82.not = icmp eq ptr %38, null
  br i1 %tobool82.not, label %land.lhs.true80.if.else86_crit_edge, label %land.lhs.true80.if.end93.sink.split_crit_edge

land.lhs.true80.if.end93.sink.split_crit_edge:    ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93.sink.split

land.lhs.true80.if.else86_crit_edge:              ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else86

if.else86:                                        ; preds = %land.lhs.true80.if.else86_crit_edge, %if.else78.if.else86_crit_edge
  br label %if.end93.sink.split

if.end93.sink.split:                              ; preds = %if.else86, %land.lhs.true80.if.end93.sink.split_crit_edge
  %.sink329 = phi ptr [ %35, %if.else86 ], [ %38, %land.lhs.true80.if.end93.sink.split_crit_edge ]
  %call90 = call i32 %.sink329(ptr noundef nonnull %29, ptr noundef nonnull %params) #5
  br label %if.end93

if.end93:                                         ; preds = %if.end93.sink.split, %land.lhs.true73.if.end93_crit_edge, %if.else70.if.end93_crit_edge, %if.end63.if.end93_crit_edge
  %enable = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params, i32 0, i32 2
  %39 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %enable, align 4
  %shutdown = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params, i32 0, i32 4
  %40 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %shutdown, align 2
  %invert_level = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params, i32 0, i32 9
  %41 = ptrtoint ptr %invert_level to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %invert_level, align 4
  %42 = ptrtoint ptr %sd_ir32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sd_ir32, align 4
  %tobool98.not = icmp eq ptr %43, null
  br i1 %tobool98.not, label %if.end124.thread, label %if.else100

if.end124.thread:                                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %shutdown, align 2
  br label %sw.epilog

if.else100:                                       ; preds = %if.end93
  %ops101 = getelementptr inbounds %struct.v4l2_subdev, ptr %43, i32 0, i32 6
  %45 = ptrtoint ptr %ops101 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops101, align 4
  %ir102 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %ir102 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ir102, align 4
  %tobool103.not = icmp eq ptr %48, null
  br i1 %tobool103.not, label %if.else100.if.end124_crit_edge, label %land.lhs.true104

if.else100.if.end124_crit_edge:                   ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

land.lhs.true104:                                 ; preds = %if.else100
  %tx_s_parameters = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %tx_s_parameters to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_s_parameters, align 4
  %tobool107.not = icmp eq ptr %50, null
  br i1 %tobool107.not, label %land.lhs.true104.if.end124_crit_edge, label %if.else109

land.lhs.true104.if.end124_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

if.else109:                                       ; preds = %land.lhs.true104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool110.not = icmp eq ptr %51, null
  br i1 %tobool110.not, label %if.else109.if.else117_crit_edge, label %land.lhs.true111

if.else109.if.else117_crit_edge:                  ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else117

land.lhs.true111:                                 ; preds = %if.else109
  %tx_s_parameters112 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %tx_s_parameters112 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_s_parameters112, align 4
  %tobool113.not = icmp eq ptr %53, null
  br i1 %tobool113.not, label %land.lhs.true111.if.else117_crit_edge, label %land.lhs.true111.if.end124.sink.split_crit_edge

land.lhs.true111.if.end124.sink.split_crit_edge:  ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124.sink.split

land.lhs.true111.if.else117_crit_edge:            ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else117

if.else117:                                       ; preds = %land.lhs.true111.if.else117_crit_edge, %if.else109.if.else117_crit_edge
  br label %if.end124.sink.split

if.end124.sink.split:                             ; preds = %if.else117, %land.lhs.true111.if.end124.sink.split_crit_edge
  %.sink330 = phi ptr [ %50, %if.else117 ], [ %53, %land.lhs.true111.if.end124.sink.split_crit_edge ]
  %call121 = call i32 %.sink330(ptr noundef nonnull %43, ptr noundef nonnull %params) #5
  br label %if.end124

if.end124:                                        ; preds = %if.end124.sink.split, %land.lhs.true104.if.end124_crit_edge, %if.else100.if.end124_crit_edge
  %54 = ptrtoint ptr %sd_ir32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr327 = load ptr, ptr %sd_ir32, align 4
  %55 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %shutdown, align 2
  %tobool130.not = icmp eq ptr %.pr327, null
  br i1 %tobool130.not, label %if.end124.sw.epilog_crit_edge, label %if.else132

if.end124.sw.epilog_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else132:                                       ; preds = %if.end124
  %ops133 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr327, i32 0, i32 6
  %56 = ptrtoint ptr %ops133 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops133, align 4
  %ir134 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %ir134 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ir134, align 4
  %tobool135.not = icmp eq ptr %59, null
  br i1 %tobool135.not, label %if.else132.sw.epilog_crit_edge, label %land.lhs.true136

if.else132.sw.epilog_crit_edge:                   ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true136:                                 ; preds = %if.else132
  %tx_s_parameters139 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %tx_s_parameters139 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_s_parameters139, align 4
  %tobool140.not = icmp eq ptr %61, null
  br i1 %tobool140.not, label %land.lhs.true136.sw.epilog_crit_edge, label %if.else142

land.lhs.true136.sw.epilog_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else142:                                       ; preds = %land.lhs.true136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool143.not = icmp eq ptr %62, null
  br i1 %tobool143.not, label %if.else142.if.else150_crit_edge, label %land.lhs.true144

if.else142.if.else150_crit_edge:                  ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else150

land.lhs.true144:                                 ; preds = %if.else142
  %tx_s_parameters145 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %tx_s_parameters145 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_s_parameters145, align 4
  %tobool146.not = icmp eq ptr %64, null
  br i1 %tobool146.not, label %land.lhs.true144.if.else150_crit_edge, label %if.then147

land.lhs.true144.if.else150_crit_edge:            ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else150

if.then147:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #7
  %call149 = call i32 %64(ptr noundef nonnull %.pr327, ptr noundef nonnull %params) #5
  br label %sw.epilog

if.else150:                                       ; preds = %land.lhs.true144.if.else150_crit_edge, %if.else142.if.else150_crit_edge
  %call154 = call i32 %61(ptr noundef nonnull %.pr327, ptr noundef nonnull %params) #5
  br label %sw.epilog

sw.bb159:                                         ; preds = %entry.sw.bb159_crit_edge, %entry.sw.bb159_crit_edge332, %entry.sw.bb159_crit_edge333, %entry.sw.bb159_crit_edge334, %entry.sw.bb159_crit_edge335, %entry.sw.bb159_crit_edge336, %entry.sw.bb159_crit_edge337, %entry.sw.bb159_crit_edge338, %entry.sw.bb159_crit_edge340, %entry.sw.bb159_crit_edge341, %entry.sw.bb159_crit_edge342, %entry.sw.bb159_crit_edge343
  %65 = load i32, ptr @enable_885_ir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool160.not = icmp eq i32 %65, 0
  br i1 %tobool160.not, label %sw.bb159.sw.epilog_crit_edge, label %if.end162

sw.bb159.sw.epilog_crit_edge:                     ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end162:                                        ; preds = %sw.bb159
  %call163 = tail call ptr @cx23885_find_hw(ptr noundef %dev, i32 noundef 2) #5
  %sd_ir164 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 35
  %66 = ptrtoint ptr %sd_ir164 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call163, ptr %sd_ir164, align 4
  %cmp = icmp eq ptr %call163, null
  br i1 %cmp, label %if.end162.sw.epilog_crit_edge, label %if.end167

if.end162.sw.epilog_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end167:                                        ; preds = %if.end162
  %sd_cx25840169 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 33
  %67 = ptrtoint ptr %sd_cx25840169 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sd_cx25840169, align 4
  %tobool171.not = icmp eq ptr %68, null
  br i1 %tobool171.not, label %if.end167.sw.epilog_crit_edge, label %if.else173

if.end167.sw.epilog_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else173:                                       ; preds = %if.end167
  %ops174 = getelementptr inbounds %struct.v4l2_subdev, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %ops174 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops174, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %tobool176.not = icmp eq ptr %72, null
  br i1 %tobool176.not, label %if.else173.sw.epilog_crit_edge, label %land.lhs.true177

if.else173.sw.epilog_crit_edge:                   ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true177:                                 ; preds = %if.else173
  %s_io_pin_config180 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %s_io_pin_config180 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_io_pin_config180, align 4
  %tobool181.not = icmp eq ptr %74, null
  br i1 %tobool181.not, label %land.lhs.true177.sw.epilog_crit_edge, label %if.else183

land.lhs.true177.sw.epilog_crit_edge:             ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else183:                                       ; preds = %land.lhs.true177
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %75 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool184.not = icmp eq ptr %75, null
  br i1 %tobool184.not, label %if.else183.if.else191_crit_edge, label %land.lhs.true185

if.else183.if.else191_crit_edge:                  ; preds = %if.else183
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else191

land.lhs.true185:                                 ; preds = %if.else183
  %s_io_pin_config186 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %s_io_pin_config186 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_io_pin_config186, align 4
  %tobool187.not = icmp eq ptr %77, null
  br i1 %tobool187.not, label %land.lhs.true185.if.else191_crit_edge, label %if.then188

land.lhs.true185.if.else191_crit_edge:            ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else191

if.then188:                                       ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #7
  %call190 = tail call i32 %77(ptr noundef nonnull %68, i32 noundef 1, ptr noundef nonnull @cx23885_ir_init.ir_rx_pin_cfg) #5
  br label %sw.epilog

if.else191:                                       ; preds = %land.lhs.true185.if.else191_crit_edge, %if.else183.if.else191_crit_edge
  %call195 = tail call i32 %74(ptr noundef nonnull %68, i32 noundef 1, ptr noundef nonnull @cx23885_ir_init.ir_rx_pin_cfg) #5
  br label %sw.epilog

sw.bb200:                                         ; preds = %entry
  %78 = load i32, ptr @enable_885_ir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool201.not = icmp eq i32 %78, 0
  br i1 %tobool201.not, label %sw.bb200.sw.epilog_crit_edge, label %if.end203

sw.bb200.sw.epilog_crit_edge:                     ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end203:                                        ; preds = %sw.bb200
  %call204 = tail call ptr @cx23885_find_hw(ptr noundef %dev, i32 noundef 2) #5
  %sd_ir205 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 35
  %79 = ptrtoint ptr %sd_ir205 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call204, ptr %sd_ir205, align 4
  %cmp207 = icmp eq ptr %call204, null
  br i1 %cmp207, label %if.end203.sw.epilog_crit_edge, label %if.end209

if.end203.sw.epilog_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end209:                                        ; preds = %if.end203
  %sd_cx25840211 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 33
  %80 = ptrtoint ptr %sd_cx25840211 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sd_cx25840211, align 4
  %tobool213.not = icmp eq ptr %81, null
  br i1 %tobool213.not, label %if.end209.sw.epilog_crit_edge, label %if.else215

if.end209.sw.epilog_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else215:                                       ; preds = %if.end209
  %ops216 = getelementptr inbounds %struct.v4l2_subdev, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %ops216 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops216, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %tobool218.not = icmp eq ptr %85, null
  br i1 %tobool218.not, label %if.else215.sw.epilog_crit_edge, label %land.lhs.true219

if.else215.sw.epilog_crit_edge:                   ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true219:                                 ; preds = %if.else215
  %s_io_pin_config222 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %s_io_pin_config222 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_io_pin_config222, align 4
  %tobool223.not = icmp eq ptr %87, null
  br i1 %tobool223.not, label %land.lhs.true219.sw.epilog_crit_edge, label %if.else225

land.lhs.true219.sw.epilog_crit_edge:             ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else225:                                       ; preds = %land.lhs.true219
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %88 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool226.not = icmp eq ptr %88, null
  br i1 %tobool226.not, label %if.else225.if.else233_crit_edge, label %land.lhs.true227

if.else225.if.else233_crit_edge:                  ; preds = %if.else225
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else233

land.lhs.true227:                                 ; preds = %if.else225
  %s_io_pin_config228 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %s_io_pin_config228 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %s_io_pin_config228, align 4
  %tobool229.not = icmp eq ptr %90, null
  br i1 %tobool229.not, label %land.lhs.true227.if.else233_crit_edge, label %if.then230

land.lhs.true227.if.else233_crit_edge:            ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else233

if.then230:                                       ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #7
  %call232 = tail call i32 %90(ptr noundef nonnull %81, i32 noundef 2, ptr noundef nonnull @cx23885_ir_init.ir_rxtx_pin_cfg) #5
  br label %sw.epilog

if.else233:                                       ; preds = %land.lhs.true227.if.else233_crit_edge, %if.else225.if.else233_crit_edge
  %call237 = tail call i32 %87(ptr noundef nonnull %81, i32 noundef 2, ptr noundef nonnull @cx23885_ir_init.ir_rxtx_pin_cfg) #5
  br label %sw.epilog

sw.bb242:                                         ; preds = %entry.sw.bb242_crit_edge, %entry.sw.bb242_crit_edge331
  %call243 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.76) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb242, %if.else233, %if.then230, %land.lhs.true219.sw.epilog_crit_edge, %if.else215.sw.epilog_crit_edge, %if.end209.sw.epilog_crit_edge, %if.end203.sw.epilog_crit_edge, %sw.bb200.sw.epilog_crit_edge, %if.else191, %if.then188, %land.lhs.true177.sw.epilog_crit_edge, %if.else173.sw.epilog_crit_edge, %if.end167.sw.epilog_crit_edge, %if.end162.sw.epilog_crit_edge, %sw.bb159.sw.epilog_crit_edge, %if.else150, %if.then147, %land.lhs.true136.sw.epilog_crit_edge, %if.else132.sw.epilog_crit_edge, %if.end124.sw.epilog_crit_edge, %if.end124.thread, %sw.bb26.sw.epilog_crit_edge, %if.else18, %if.then15, %land.lhs.true.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call27, %sw.bb26.sw.epilog_crit_edge ], [ %call, %sw.bb1.sw.epilog_crit_edge ], [ 0, %sw.bb159.sw.epilog_crit_edge ], [ 0, %sw.bb200.sw.epilog_crit_edge ], [ 0, %sw.bb242 ], [ 0, %if.else.sw.epilog_crit_edge ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ 0, %if.end.sw.epilog_crit_edge ], [ 0, %if.else18 ], [ 0, %if.then15 ], [ 0, %if.else132.sw.epilog_crit_edge ], [ 0, %land.lhs.true136.sw.epilog_crit_edge ], [ 0, %if.end124.sw.epilog_crit_edge ], [ 0, %if.else150 ], [ 0, %if.then147 ], [ -19, %if.end162.sw.epilog_crit_edge ], [ 0, %if.else173.sw.epilog_crit_edge ], [ 0, %land.lhs.true177.sw.epilog_crit_edge ], [ 0, %if.end167.sw.epilog_crit_edge ], [ 0, %if.else191 ], [ 0, %if.then188 ], [ -19, %if.end203.sw.epilog_crit_edge ], [ 0, %if.else215.sw.epilog_crit_edge ], [ 0, %land.lhs.true219.sw.epilog_crit_edge ], [ 0, %if.end209.sw.epilog_crit_edge ], [ 0, %if.else233 ], [ 0, %if.then230 ], [ 0, %if.end124.thread ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %params) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23888_ir_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx23885_find_hw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_ir_fini(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %board, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 18, label %entry.sw.bb_crit_edge
    i32 24, label %entry.sw.bb_crit_edge8
    i32 26, label %entry.sw.bb_crit_edge9
    i32 34, label %entry.sw.bb1_crit_edge
    i32 15, label %entry.sw.bb1_crit_edge10
    i32 3, label %entry.sw.bb1_crit_edge11
    i32 33, label %entry.sw.bb1_crit_edge12
    i32 41, label %entry.sw.bb1_crit_edge13
    i32 40, label %entry.sw.bb1_crit_edge14
    i32 45, label %entry.sw.bb1_crit_edge15
    i32 46, label %entry.sw.bb1_crit_edge16
    i32 47, label %entry.sw.bb1_crit_edge17
    i32 48, label %entry.sw.bb1_crit_edge18
    i32 49, label %entry.sw.bb1_crit_edge19
    i32 50, label %entry.sw.bb1_crit_edge20
    i32 51, label %entry.sw.bb1_crit_edge21
  ]

entry.sw.bb1_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9
  tail call void @cx23885_irq_remove(ptr noundef %dev, i32 noundef 268435456) #5
  %call = tail call i32 @cx23888_ir_remove(ptr noundef %dev) #5
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge10, %entry.sw.bb1_crit_edge11, %entry.sw.bb1_crit_edge12, %entry.sw.bb1_crit_edge13, %entry.sw.bb1_crit_edge14, %entry.sw.bb1_crit_edge15, %entry.sw.bb1_crit_edge16, %entry.sw.bb1_crit_edge17, %entry.sw.bb1_crit_edge18, %entry.sw.bb1_crit_edge19, %entry.sw.bb1_crit_edge20, %entry.sw.bb1_crit_edge21
  tail call void @cx23885_irq_remove(ptr noundef %dev, i32 noundef 134217728) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %sd_ir2 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 35
  %3 = ptrtoint ptr %sd_ir2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %sd_ir2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_irq_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23888_ir_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_ir_pci_int_enable(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %board, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 18, label %entry.sw.bb_crit_edge
    i32 24, label %entry.sw.bb_crit_edge10
    i32 26, label %entry.sw.bb_crit_edge11
    i32 34, label %entry.sw.bb1_crit_edge
    i32 15, label %entry.sw.bb1_crit_edge12
    i32 3, label %entry.sw.bb1_crit_edge13
    i32 33, label %entry.sw.bb1_crit_edge14
    i32 41, label %entry.sw.bb1_crit_edge15
    i32 40, label %entry.sw.bb1_crit_edge16
    i32 45, label %entry.sw.bb1_crit_edge17
    i32 46, label %entry.sw.bb1_crit_edge18
    i32 47, label %entry.sw.bb1_crit_edge19
    i32 48, label %entry.sw.bb1_crit_edge20
    i32 49, label %entry.sw.bb1_crit_edge21
    i32 50, label %entry.sw.bb1_crit_edge22
    i32 51, label %entry.sw.bb1_crit_edge23
  ]

entry.sw.bb1_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge10, %entry.sw.bb_crit_edge11
  %sd_ir = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 35
  %3 = ptrtoint ptr %sd_ir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sd_ir, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge12, %entry.sw.bb1_crit_edge13, %entry.sw.bb1_crit_edge14, %entry.sw.bb1_crit_edge15, %entry.sw.bb1_crit_edge16, %entry.sw.bb1_crit_edge17, %entry.sw.bb1_crit_edge18, %entry.sw.bb1_crit_edge19, %entry.sw.bb1_crit_edge20, %entry.sw.bb1_crit_edge21, %entry.sw.bb1_crit_edge22, %entry.sw.bb1_crit_edge23
  %sd_ir2 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 35
  %5 = ptrtoint ptr %sd_ir2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd_ir2, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.sw.epilog.sink.split_crit_edge

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb1.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 268435456, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 134217728, %sw.bb1.sw.epilog.sink.split_crit_edge ]
  tail call void @cx23885_irq_add_enable(ptr noundef %dev, i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_irq_add_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_card_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %netup_config = alloca %struct.altera_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_rc = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 0, i32 4
  %0 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %i2c_client = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 0, i32 3
  %addr = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 80, ptr %addr, align 2
  %call = tail call i32 @tveeprom_read(ptr noundef %i2c_client, ptr noundef nonnull @cx23885_card_setup.eeprom, i32 noundef 256) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %board, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %4, label %if.end.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 6, label %if.end.sw.bb18_crit_edge
    i32 5, label %if.end.sw.bb18_crit_edge379
    i32 9, label %if.end.sw.bb18_crit_edge380
    i32 2, label %if.end.sw.bb26_crit_edge
    i32 1, label %if.end.sw.bb26_crit_edge381
    i32 7, label %if.end.sw.bb26_crit_edge382
    i32 8, label %if.end.sw.bb26_crit_edge383
    i32 18, label %if.end.sw.bb26_crit_edge384
    i32 19, label %if.end.sw.bb26_crit_edge385
    i32 20, label %if.end.sw.bb26_crit_edge386
    i32 36, label %if.end.sw.bb26_crit_edge387
    i32 21, label %if.end.sw.bb26_crit_edge388
    i32 24, label %if.end.sw.bb26_crit_edge389
    i32 26, label %if.end.sw.bb26_crit_edge390
    i32 38, label %if.end.sw.bb26_crit_edge391
    i32 53, label %if.end.sw.bb26_crit_edge392
    i32 43, label %if.end.sw.bb26_crit_edge393
    i32 52, label %if.end.sw.bb26_crit_edge394
    i32 58, label %if.end.sw.bb26_crit_edge395
    i32 59, label %if.end.sw.bb26_crit_edge396
    i32 56, label %if.end.sw.bb26_crit_edge397
    i32 60, label %if.end.sw.bb26_crit_edge398
    i32 57, label %if.end.sw.bb26_crit_edge399
    i32 61, label %if.end.sw.bb26_crit_edge400
    i32 54, label %if.end.sw.bb34_crit_edge
    i32 55, label %if.end.sw.bb34_crit_edge401
  ]

if.end.sw.bb34_crit_edge401:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb34

if.end.sw.bb34_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb34

if.end.sw.bb26_crit_edge400:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge399:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge398:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge397:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge396:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge395:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge394:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge393:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge392:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge391:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge390:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge389:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge388:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge387:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge386:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge385:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge384:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge383:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge382:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge381:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb26_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26

if.end.sw.bb18_crit_edge380:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18

if.end.sw.bb18_crit_edge379:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18

if.end.sw.bb18_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %6 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %if.then12, label %sw.bb.sw.default_crit_edge

sw.bb.sw.default_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

if.then12:                                        ; preds = %sw.bb
  %8 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @cx23885_card_setup.eeprom, i32 0, i32 128), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %8)
  %cmp13.not = icmp eq i8 %8, -124
  br i1 %cmp13.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @hauppauge_eeprom(ptr noundef %dev, ptr noundef getelementptr inbounds ([256 x i8], ptr @cx23885_card_setup.eeprom, i32 0, i32 192))
  br label %sw.epilogthread-pre-split

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @hauppauge_eeprom(ptr noundef %dev, ptr noundef getelementptr inbounds ([256 x i8], ptr @cx23885_card_setup.eeprom, i32 0, i32 128))
  br label %sw.epilogthread-pre-split

sw.bb18:                                          ; preds = %if.end.sw.bb18_crit_edge, %if.end.sw.bb18_crit_edge379, %if.end.sw.bb18_crit_edge380
  %9 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp22 = icmp eq i32 %10, 0
  br i1 %cmp22, label %if.then24, label %sw.bb18.sw.epilogthread-pre-split_crit_edge

sw.bb18.sw.epilogthread-pre-split_crit_edge:      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split

if.then24:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @hauppauge_eeprom(ptr noundef %dev, ptr noundef getelementptr inbounds ([256 x i8], ptr @cx23885_card_setup.eeprom, i32 0, i32 128))
  br label %sw.epilogthread-pre-split

sw.bb26:                                          ; preds = %if.end.sw.bb26_crit_edge, %if.end.sw.bb26_crit_edge381, %if.end.sw.bb26_crit_edge382, %if.end.sw.bb26_crit_edge383, %if.end.sw.bb26_crit_edge384, %if.end.sw.bb26_crit_edge385, %if.end.sw.bb26_crit_edge386, %if.end.sw.bb26_crit_edge387, %if.end.sw.bb26_crit_edge388, %if.end.sw.bb26_crit_edge389, %if.end.sw.bb26_crit_edge390, %if.end.sw.bb26_crit_edge391, %if.end.sw.bb26_crit_edge392, %if.end.sw.bb26_crit_edge393, %if.end.sw.bb26_crit_edge394, %if.end.sw.bb26_crit_edge395, %if.end.sw.bb26_crit_edge396, %if.end.sw.bb26_crit_edge397, %if.end.sw.bb26_crit_edge398, %if.end.sw.bb26_crit_edge399, %if.end.sw.bb26_crit_edge400
  %11 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp30 = icmp eq i32 %12, 0
  br i1 %cmp30, label %if.then32, label %sw.bb26.sw.epilogthread-pre-split_crit_edge

sw.bb26.sw.epilogthread-pre-split_crit_edge:      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split

if.then32:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @hauppauge_eeprom(ptr noundef %dev, ptr noundef getelementptr inbounds ([256 x i8], ptr @cx23885_card_setup.eeprom, i32 0, i32 192))
  br label %sw.epilogthread-pre-split

sw.bb34:                                          ; preds = %if.end.sw.bb34_crit_edge, %if.end.sw.bb34_crit_edge401
  %i2c_client37 = getelementptr %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 1, i32 3
  %addr38 = getelementptr %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 1, i32 3, i32 1
  %13 = ptrtoint ptr %addr38 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 80, ptr %addr38, align 2
  %call42 = tail call i32 @tveeprom_read(ptr noundef %i2c_client37, ptr noundef nonnull @cx23885_card_setup.eeprom, i32 noundef 256) #5
  %14 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp46 = icmp eq i32 %15, 0
  br i1 %cmp46, label %if.then48, label %sw.bb34.sw.epilogthread-pre-split_crit_edge

sw.bb34.sw.epilogthread-pre-split_crit_edge:      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split

if.then48:                                        ; preds = %sw.bb34
  %16 = load i8, ptr @cx23885_card_setup.eeprom, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 89, i8 %16)
  %cmp.not.i = icmp eq i8 %16, 89
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93) #8
  br label %sw.epilogthread-pre-split

if.end.i:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  %17 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @cx23885_card_setup.eeprom, i32 0, i32 6), align 1
  %conv3.i = zext i8 %17 to i32
  %shl.i = shl nuw i32 %conv3.i, 24
  %18 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @cx23885_card_setup.eeprom, i32 0, i32 5), align 1
  %conv5.i = zext i8 %18 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 16
  %or.i = or i32 %shl6.i, %shl.i
  %19 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @cx23885_card_setup.eeprom, i32 0, i32 4), align 1
  %conv8.i = zext i8 %19 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 8
  %or10.i = or i32 %or.i, %shl9.i
  %20 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @cx23885_card_setup.eeprom, i32 0, i32 3), align 1
  %conv12.i = zext i8 %20 to i32
  %or13.i = or i32 %or10.i, %conv12.i
  %name.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %21 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %board, align 4
  %arrayidx.i = getelementptr [63 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %name.i, ptr noundef %24, i32 noundef %or13.i) #8
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %if.end.i, %do.end.i, %sw.bb34.sw.epilogthread-pre-split_crit_edge, %if.then32, %sw.bb26.sw.epilogthread-pre-split_crit_edge, %if.then24, %sw.bb18.sw.epilogthread-pre-split_crit_edge, %if.else, %if.then15
  %25 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %board, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.end.sw.epilog_crit_edge
  %26 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %4, %if.end.sw.epilog_crit_edge ]
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %26, label %sw.epilog.sw.default_crit_edge [
    i32 39, label %sw.bb51
    i32 10, label %sw.epilog.sw.bb55_crit_edge
    i32 11, label %sw.epilog.sw.bb55_crit_edge402
    i32 44, label %sw.epilog.sw.bb55_crit_edge403
    i32 4, label %sw.epilog.sw.bb59_crit_edge
    i32 24, label %sw.epilog.sw.bb63_crit_edge
    i32 2, label %sw.epilog.sw.bb63_crit_edge404
    i32 14, label %sw.bb70
    i32 15, label %sw.epilog.sw.bb74_crit_edge
    i32 35, label %sw.epilog.sw.bb74_crit_edge405
    i32 16, label %sw.epilog.sw.bb74_crit_edge406
    i32 37, label %sw.epilog.sw.bb74_crit_edge407
    i32 46, label %sw.epilog.sw.bb74_crit_edge408
    i32 47, label %sw.epilog.sw.bb74_crit_edge409
    i32 48, label %sw.epilog.sw.bb74_crit_edge410
    i32 49, label %sw.epilog.sw.bb74_crit_edge411
    i32 17, label %sw.epilog.sw.bb78_crit_edge
    i32 30, label %sw.epilog.sw.bb78_crit_edge412
    i32 34, label %sw.epilog.sw.bb78_crit_edge413
    i32 41, label %sw.epilog.sw.bb85_crit_edge
    i32 40, label %sw.epilog.sw.bb85_crit_edge414
    i32 22, label %sw.epilog.sw.bb92_crit_edge
    i32 23, label %sw.epilog.sw.bb92_crit_edge415
    i32 33, label %sw.epilog.sw.bb92_crit_edge416
    i32 27, label %sw.bb96
    i32 38, label %sw.bb103
    i32 53, label %sw.bb110
    i32 45, label %sw.epilog.sw.bb114_crit_edge
    i32 51, label %sw.epilog.sw.bb114_crit_edge417
    i32 50, label %sw.bb121
    i32 52, label %sw.epilog.sw.bb128_crit_edge
    i32 59, label %sw.epilog.sw.bb128_crit_edge418
    i32 58, label %sw.epilog.sw.bb135_crit_edge
    i32 56, label %sw.epilog.sw.bb135_crit_edge419
    i32 60, label %sw.epilog.sw.bb135_crit_edge420
    i32 57, label %sw.epilog.sw.bb135_crit_edge421
    i32 61, label %sw.epilog.sw.bb135_crit_edge422
  ]

sw.epilog.sw.bb135_crit_edge422:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb135

sw.epilog.sw.bb135_crit_edge421:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb135

sw.epilog.sw.bb135_crit_edge420:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb135

sw.epilog.sw.bb135_crit_edge419:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb135

sw.epilog.sw.bb135_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb135

sw.epilog.sw.bb128_crit_edge418:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb128

sw.epilog.sw.bb128_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb128

sw.epilog.sw.bb114_crit_edge417:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb114

sw.epilog.sw.bb114_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb114

sw.epilog.sw.bb92_crit_edge416:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb92

sw.epilog.sw.bb92_crit_edge415:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb92

sw.epilog.sw.bb92_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb92

sw.epilog.sw.bb85_crit_edge414:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb85

sw.epilog.sw.bb85_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb85

sw.epilog.sw.bb78_crit_edge413:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb78

sw.epilog.sw.bb78_crit_edge412:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb78

sw.epilog.sw.bb78_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb78

sw.epilog.sw.bb74_crit_edge411:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb74

sw.epilog.sw.bb74_crit_edge410:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb74

sw.epilog.sw.bb74_crit_edge409:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb74

sw.epilog.sw.bb74_crit_edge408:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb74

sw.epilog.sw.bb74_crit_edge407:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb74

sw.epilog.sw.bb74_crit_edge406:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb74

sw.epilog.sw.bb74_crit_edge405:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb74

sw.epilog.sw.bb74_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb74

sw.epilog.sw.bb63_crit_edge404:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb63

sw.epilog.sw.bb63_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb63

sw.epilog.sw.bb59_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb59

sw.epilog.sw.bb55_crit_edge403:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb55

sw.epilog.sw.bb55_crit_edge402:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb55

sw.epilog.sw.bb55_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb55

sw.epilog.sw.default_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

sw.bb51:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %gen_ctrl_val = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %28 = ptrtoint ptr %gen_ctrl_val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %gen_ctrl_val, align 4
  %ts_clk_en_val = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %29 = ptrtoint ptr %ts_clk_en_val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %ts_clk_en_val, align 4
  %src_sel_val = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %30 = ptrtoint ptr %src_sel_val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %src_sel_val, align 4
  %gen_ctrl_val52 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 27
  %31 = ptrtoint ptr %gen_ctrl_val52 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 270, ptr %gen_ctrl_val52, align 4
  %ts_clk_en_val53 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 28
  %32 = ptrtoint ptr %ts_clk_en_val53 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %ts_clk_en_val53, align 4
  %src_sel_val54 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 29
  %33 = ptrtoint ptr %src_sel_val54 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %src_sel_val54, align 4
  br label %sw.epilog146

sw.bb55:                                          ; preds = %sw.epilog.sw.bb55_crit_edge, %sw.epilog.sw.bb55_crit_edge402, %sw.epilog.sw.bb55_crit_edge403
  %gen_ctrl_val56 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 27
  %34 = ptrtoint ptr %gen_ctrl_val56 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 12, ptr %gen_ctrl_val56, align 4
  %ts_clk_en_val57 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 28
  %35 = ptrtoint ptr %ts_clk_en_val57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %ts_clk_en_val57, align 4
  %src_sel_val58 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 29
  %36 = ptrtoint ptr %src_sel_val58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %src_sel_val58, align 4
  br label %sw.bb59

sw.bb59:                                          ; preds = %sw.bb55, %sw.epilog.sw.bb59_crit_edge
  %gen_ctrl_val60 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %37 = ptrtoint ptr %gen_ctrl_val60 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 12, ptr %gen_ctrl_val60, align 4
  %ts_clk_en_val61 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %38 = ptrtoint ptr %ts_clk_en_val61 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %ts_clk_en_val61, align 4
  %src_sel_val62 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %39 = ptrtoint ptr %src_sel_val62 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %src_sel_val62, align 4
  br label %sw.epilog146

sw.bb63:                                          ; preds = %sw.epilog.sw.bb63_crit_edge, %sw.epilog.sw.bb63_crit_edge404
  %gen_ctrl_val64 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %40 = ptrtoint ptr %gen_ctrl_val64 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 270, ptr %gen_ctrl_val64, align 4
  %ts_clk_en_val65 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %41 = ptrtoint ptr %ts_clk_en_val65 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %ts_clk_en_val65, align 4
  %src_sel_val66 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %42 = ptrtoint ptr %src_sel_val66 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %src_sel_val66, align 4
  %vld_misc_val = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 30
  %43 = ptrtoint ptr %vld_misc_val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8192, ptr %vld_misc_val, align 4
  %hw_sop_ctrl_val = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 31
  %44 = ptrtoint ptr %hw_sop_ctrl_val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4656076, ptr %hw_sop_ctrl_val, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !348
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %45 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %46, i32 311393
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 201326592) #5, !srcloc !232
  %gen_ctrl_val67 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 27
  %47 = ptrtoint ptr %gen_ctrl_val67 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 12, ptr %gen_ctrl_val67, align 4
  %ts_clk_en_val68 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 28
  %48 = ptrtoint ptr %ts_clk_en_val68 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %ts_clk_en_val68, align 4
  %src_sel_val69 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 29
  %49 = ptrtoint ptr %src_sel_val69 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %src_sel_val69, align 4
  br label %sw.epilog146

sw.bb70:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %gen_ctrl_val71 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %50 = ptrtoint ptr %gen_ctrl_val71 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %gen_ctrl_val71, align 4
  %ts_clk_en_val72 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %51 = ptrtoint ptr %ts_clk_en_val72 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %ts_clk_en_val72, align 4
  %src_sel_val73 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %52 = ptrtoint ptr %src_sel_val73 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %src_sel_val73, align 4
  br label %sw.epilog146

sw.bb74:                                          ; preds = %sw.epilog.sw.bb74_crit_edge, %sw.epilog.sw.bb74_crit_edge405, %sw.epilog.sw.bb74_crit_edge406, %sw.epilog.sw.bb74_crit_edge407, %sw.epilog.sw.bb74_crit_edge408, %sw.epilog.sw.bb74_crit_edge409, %sw.epilog.sw.bb74_crit_edge410, %sw.epilog.sw.bb74_crit_edge411
  %gen_ctrl_val75 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %53 = ptrtoint ptr %gen_ctrl_val75 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 5, ptr %gen_ctrl_val75, align 4
  %ts_clk_en_val76 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %54 = ptrtoint ptr %ts_clk_en_val76 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %ts_clk_en_val76, align 4
  %src_sel_val77 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %55 = ptrtoint ptr %src_sel_val77 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %src_sel_val77, align 4
  br label %sw.epilog146

sw.bb78:                                          ; preds = %sw.epilog.sw.bb78_crit_edge, %sw.epilog.sw.bb78_crit_edge412, %sw.epilog.sw.bb78_crit_edge413
  %gen_ctrl_val79 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %56 = ptrtoint ptr %gen_ctrl_val79 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 12, ptr %gen_ctrl_val79, align 4
  %ts_clk_en_val80 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %57 = ptrtoint ptr %ts_clk_en_val80 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %ts_clk_en_val80, align 4
  %src_sel_val81 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %58 = ptrtoint ptr %src_sel_val81 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %src_sel_val81, align 4
  %gen_ctrl_val82 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 27
  %59 = ptrtoint ptr %gen_ctrl_val82 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 12, ptr %gen_ctrl_val82, align 4
  %ts_clk_en_val83 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 28
  %60 = ptrtoint ptr %ts_clk_en_val83 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %ts_clk_en_val83, align 4
  %src_sel_val84 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 29
  %61 = ptrtoint ptr %src_sel_val84 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %src_sel_val84, align 4
  br label %sw.epilog146

sw.bb85:                                          ; preds = %sw.epilog.sw.bb85_crit_edge, %sw.epilog.sw.bb85_crit_edge414
  %gen_ctrl_val86 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %62 = ptrtoint ptr %gen_ctrl_val86 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 12, ptr %gen_ctrl_val86, align 4
  %ts_clk_en_val87 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %63 = ptrtoint ptr %ts_clk_en_val87 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %ts_clk_en_val87, align 4
  %src_sel_val88 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %64 = ptrtoint ptr %src_sel_val88 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %src_sel_val88, align 4
  %gen_ctrl_val89 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 27
  %65 = ptrtoint ptr %gen_ctrl_val89 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 12, ptr %gen_ctrl_val89, align 4
  %ts_clk_en_val90 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 28
  %66 = ptrtoint ptr %ts_clk_en_val90 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %ts_clk_en_val90, align 4
  %src_sel_val91 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 29
  %67 = ptrtoint ptr %src_sel_val91 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %src_sel_val91, align 4
  %68 = and i32 %26, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %68)
  %switch.i = icmp eq i32 %68, 40
  br i1 %switch.i, label %do.body.i, label %sw.bb85.sw.epilog146_crit_edge

sw.bb85.sw.epilog146_crit_edge:                   ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog146

do.body.i:                                        ; preds = %sw.bb85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !349
  tail call void @arm_heavy_mb() #5
  %lmmio.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %69 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %70, i32 278532
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !350
  %72 = or i32 %71, 117442304
  %73 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lmmio.i, align 4
  %add.ptr3.i = getelementptr i32, ptr %74, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %72) #5, !srcloc !232
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !351
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lmmio.i, align 4
  %add.ptr10.i = getelementptr i32, ptr %76, i32 278532
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !352
  %78 = and i32 %77, -33554433
  %79 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lmmio.i, align 4
  %add.ptr17.i = getelementptr i32, ptr %80, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %78) #5, !srcloc !232
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #5
  br label %do.body18.i

do.body18.i:                                      ; preds = %do.body18.i.do.body18.i_crit_edge, %do.body.i
  %i.098.i = phi i32 [ 0, %do.body.i ], [ %inc.i, %do.body18.i.do.body18.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !353
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lmmio.i, align 4
  %add.ptr24.i = getelementptr i32, ptr %82, i32 278532
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !354
  %84 = and i32 %83, -117440513
  %85 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lmmio.i, align 4
  %add.ptr31.i = getelementptr i32, ptr %86, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %84) #5, !srcloc !232
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !355
  tail call void @arm_heavy_mb() #5
  %87 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lmmio.i, align 4
  %add.ptr38.i = getelementptr i32, ptr %88, i32 278532
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !356
  %90 = lshr i32 %i.098.i, 3
  %arrayidx.i376 = getelementptr [9 x i8], ptr @tbs_card_init.buf, i32 0, i32 %90
  %91 = ptrtoint ptr %arrayidx.i376 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i376, align 1
  %conv.i = zext i8 %92 to i32
  %and42.i = and i32 %i.098.i, 7
  %sub.i = xor i32 %and42.i, 7
  %shr43.i = lshr i32 %conv.i, %sub.i
  %and44.i = and i32 %shr43.i, 1
  %93 = or i32 %89, 67108864
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #5
  %or64.i = or i32 %and44.i, %94
  %95 = tail call i32 @llvm.bswap.i32(i32 %or64.i) #5
  %96 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lmmio.i, align 4
  %add.ptr66.i = getelementptr i32, ptr %97, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 %95) #5, !srcloc !232
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #5
  %inc.i = add nuw nsw i32 %i.098.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 72
  br i1 %exitcond.not.i, label %do.body67.i, label %do.body18.i.do.body18.i_crit_edge

do.body18.i.do.body18.i_crit_edge:                ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18.i

do.body67.i:                                      ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !357
  tail call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %lmmio.i, align 4
  %add.ptr73.i = getelementptr i32, ptr %99, i32 278532
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.i) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !358
  %101 = or i32 %100, 117440512
  %102 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lmmio.i, align 4
  %add.ptr80.i = getelementptr i32, ptr %103, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80.i, i32 %101) #5, !srcloc !232
  br label %sw.epilog146

sw.bb92:                                          ; preds = %sw.epilog.sw.bb92_crit_edge, %sw.epilog.sw.bb92_crit_edge415, %sw.epilog.sw.bb92_crit_edge416
  %gen_ctrl_val93 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %104 = ptrtoint ptr %gen_ctrl_val93 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 5, ptr %gen_ctrl_val93, align 4
  %ts_clk_en_val94 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %105 = ptrtoint ptr %ts_clk_en_val94 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %ts_clk_en_val94, align 4
  %src_sel_val95 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %106 = ptrtoint ptr %src_sel_val95 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %src_sel_val95, align 4
  br label %sw.epilog146

sw.bb96:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %gen_ctrl_val97 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %107 = ptrtoint ptr %gen_ctrl_val97 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 5, ptr %gen_ctrl_val97, align 4
  %ts_clk_en_val98 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %108 = ptrtoint ptr %ts_clk_en_val98 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %ts_clk_en_val98, align 4
  %src_sel_val99 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %109 = ptrtoint ptr %src_sel_val99 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %src_sel_val99, align 4
  %gen_ctrl_val100 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 27
  %110 = ptrtoint ptr %gen_ctrl_val100 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 12, ptr %gen_ctrl_val100, align 4
  %ts_clk_en_val101 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 28
  %111 = ptrtoint ptr %ts_clk_en_val101 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %ts_clk_en_val101, align 4
  %src_sel_val102 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 29
  %112 = ptrtoint ptr %src_sel_val102 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %src_sel_val102, align 4
  br label %sw.epilog146

sw.bb103:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %gen_ctrl_val104 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %113 = ptrtoint ptr %gen_ctrl_val104 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 12, ptr %gen_ctrl_val104, align 4
  %ts_clk_en_val105 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %114 = ptrtoint ptr %ts_clk_en_val105 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %ts_clk_en_val105, align 4
  %src_sel_val106 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %115 = ptrtoint ptr %src_sel_val106 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %src_sel_val106, align 4
  %gen_ctrl_val107 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 27
  %116 = ptrtoint ptr %gen_ctrl_val107 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 12, ptr %gen_ctrl_val107, align 4
  %ts_clk_en_val108 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 28
  %117 = ptrtoint ptr %ts_clk_en_val108 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %ts_clk_en_val108, align 4
  %src_sel_val109 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 29
  %118 = ptrtoint ptr %src_sel_val109 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %src_sel_val109, align 4
  br label %sw.epilog146

sw.bb110:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %gen_ctrl_val111 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %119 = ptrtoint ptr %gen_ctrl_val111 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 12, ptr %gen_ctrl_val111, align 4
  %ts_clk_en_val112 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %120 = ptrtoint ptr %ts_clk_en_val112 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %ts_clk_en_val112, align 4
  %src_sel_val113 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %121 = ptrtoint ptr %src_sel_val113 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %src_sel_val113, align 4
  br label %sw.epilog146

sw.bb114:                                         ; preds = %sw.epilog.sw.bb114_crit_edge, %sw.epilog.sw.bb114_crit_edge417
  %gen_ctrl_val115 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %122 = ptrtoint ptr %gen_ctrl_val115 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 5, ptr %gen_ctrl_val115, align 4
  %ts_clk_en_val116 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %123 = ptrtoint ptr %ts_clk_en_val116 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1, ptr %ts_clk_en_val116, align 4
  %src_sel_val117 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %124 = ptrtoint ptr %src_sel_val117 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %src_sel_val117, align 4
  %gen_ctrl_val118 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 27
  %125 = ptrtoint ptr %gen_ctrl_val118 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 8, ptr %gen_ctrl_val118, align 4
  %ts_clk_en_val119 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 28
  %126 = ptrtoint ptr %ts_clk_en_val119 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %ts_clk_en_val119, align 4
  %src_sel_val120 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 29
  %127 = ptrtoint ptr %src_sel_val120 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %src_sel_val120, align 4
  br label %sw.epilog146

sw.bb121:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %gen_ctrl_val122 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %128 = ptrtoint ptr %gen_ctrl_val122 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 5, ptr %gen_ctrl_val122, align 4
  %ts_clk_en_val123 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %129 = ptrtoint ptr %ts_clk_en_val123 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %ts_clk_en_val123, align 4
  %src_sel_val124 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %130 = ptrtoint ptr %src_sel_val124 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %src_sel_val124, align 4
  %gen_ctrl_val125 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 27
  %131 = ptrtoint ptr %gen_ctrl_val125 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 14, ptr %gen_ctrl_val125, align 4
  %ts_clk_en_val126 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 28
  %132 = ptrtoint ptr %ts_clk_en_val126 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %ts_clk_en_val126, align 4
  %src_sel_val127 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 29
  %133 = ptrtoint ptr %src_sel_val127 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %src_sel_val127, align 4
  br label %sw.epilog146

sw.bb128:                                         ; preds = %sw.epilog.sw.bb128_crit_edge, %sw.epilog.sw.bb128_crit_edge418
  %gen_ctrl_val129 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %134 = ptrtoint ptr %gen_ctrl_val129 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 5, ptr %gen_ctrl_val129, align 4
  %ts_clk_en_val130 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %135 = ptrtoint ptr %ts_clk_en_val130 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 1, ptr %ts_clk_en_val130, align 4
  %src_sel_val131 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %136 = ptrtoint ptr %src_sel_val131 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1, ptr %src_sel_val131, align 4
  %gen_ctrl_val132 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 27
  %137 = ptrtoint ptr %gen_ctrl_val132 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 12, ptr %gen_ctrl_val132, align 4
  %ts_clk_en_val133 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 28
  %138 = ptrtoint ptr %ts_clk_en_val133 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %ts_clk_en_val133, align 4
  %src_sel_val134 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 29
  %139 = ptrtoint ptr %src_sel_val134 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1, ptr %src_sel_val134, align 4
  br label %sw.epilog146

sw.bb135:                                         ; preds = %sw.epilog.sw.bb135_crit_edge, %sw.epilog.sw.bb135_crit_edge419, %sw.epilog.sw.bb135_crit_edge420, %sw.epilog.sw.bb135_crit_edge421, %sw.epilog.sw.bb135_crit_edge422
  %gen_ctrl_val136 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 27
  %140 = ptrtoint ptr %gen_ctrl_val136 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 12, ptr %gen_ctrl_val136, align 4
  %ts_clk_en_val137 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 28
  %141 = ptrtoint ptr %ts_clk_en_val137 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %ts_clk_en_val137, align 4
  %src_sel_val138 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 29
  %142 = ptrtoint ptr %src_sel_val138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %src_sel_val138, align 4
  %gen_ctrl_val139 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 27
  %143 = ptrtoint ptr %gen_ctrl_val139 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 12, ptr %gen_ctrl_val139, align 4
  %ts_clk_en_val140 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 28
  %144 = ptrtoint ptr %ts_clk_en_val140 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %ts_clk_en_val140, align 4
  %src_sel_val141 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 29
  %145 = ptrtoint ptr %src_sel_val141 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %src_sel_val141, align 4
  br label %sw.epilog146

sw.default:                                       ; preds = %sw.epilog.sw.default_crit_edge, %sw.bb.sw.default_crit_edge
  %gen_ctrl_val143 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 27
  %146 = ptrtoint ptr %gen_ctrl_val143 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 12, ptr %gen_ctrl_val143, align 4
  %ts_clk_en_val144 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 28
  %147 = ptrtoint ptr %ts_clk_en_val144 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1, ptr %ts_clk_en_val144, align 4
  %src_sel_val145 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21, i32 29
  %148 = ptrtoint ptr %src_sel_val145 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 1, ptr %src_sel_val145, align 4
  br label %sw.epilog146

sw.epilog146:                                     ; preds = %sw.default, %sw.bb135, %sw.bb128, %sw.bb121, %sw.bb114, %sw.bb110, %sw.bb103, %sw.bb96, %sw.bb92, %do.body67.i, %sw.bb85.sw.epilog146_crit_edge, %sw.bb78, %sw.bb74, %sw.bb70, %sw.bb63, %sw.bb59, %sw.bb51
  %149 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %board, align 4
  %151 = zext i32 %150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %150, label %sw.epilog146.sw.epilog186_crit_edge [
    i32 15, label %sw.bb148
    i32 3, label %sw.epilog146.sw.bb151_crit_edge
    i32 2, label %sw.epilog146.sw.bb151_crit_edge423
    i32 43, label %sw.epilog146.sw.bb151_crit_edge424
    i32 1, label %sw.epilog146.sw.bb151_crit_edge425
    i32 8, label %sw.epilog146.sw.bb151_crit_edge426
    i32 12, label %sw.epilog146.sw.bb151_crit_edge427
    i32 42, label %sw.epilog146.sw.bb151_crit_edge428
    i32 31, label %sw.epilog146.sw.bb151_crit_edge429
    i32 13, label %sw.epilog146.sw.bb151_crit_edge430
    i32 17, label %sw.epilog146.sw.bb151_crit_edge431
    i32 30, label %sw.epilog146.sw.bb151_crit_edge432
    i32 25, label %sw.epilog146.sw.bb151_crit_edge433
    i32 20, label %sw.epilog146.sw.bb151_crit_edge434
    i32 36, label %sw.epilog146.sw.bb151_crit_edge435
    i32 58, label %sw.epilog146.sw.bb151_crit_edge436
    i32 56, label %sw.epilog146.sw.bb151_crit_edge437
    i32 57, label %sw.epilog146.sw.bb151_crit_edge438
    i32 18, label %sw.epilog146.sw.bb151_crit_edge439
    i32 24, label %sw.epilog146.sw.bb151_crit_edge440
    i32 52, label %sw.epilog146.sw.bb151_crit_edge441
    i32 22, label %sw.epilog146.sw.bb151_crit_edge442
    i32 23, label %sw.epilog146.sw.bb151_crit_edge443
    i32 26, label %sw.epilog146.sw.bb151_crit_edge444
    i32 28, label %sw.epilog146.sw.bb151_crit_edge445
    i32 29, label %sw.epilog146.sw.bb151_crit_edge446
    i32 6, label %sw.epilog146.sw.bb151_crit_edge447
    i32 32, label %sw.epilog146.sw.bb151_crit_edge448
    i32 33, label %sw.epilog146.sw.bb151_crit_edge449
    i32 34, label %sw.epilog146.sw.bb151_crit_edge450
    i32 39, label %sw.epilog146.sw.bb151_crit_edge451
    i32 41, label %sw.epilog146.sw.bb151_crit_edge452
    i32 40, label %sw.epilog146.sw.bb151_crit_edge453
    i32 45, label %sw.epilog146.sw.bb151_crit_edge454
    i32 46, label %sw.epilog146.sw.bb151_crit_edge455
    i32 47, label %sw.epilog146.sw.bb151_crit_edge456
    i32 48, label %sw.epilog146.sw.bb151_crit_edge457
    i32 49, label %sw.epilog146.sw.bb151_crit_edge458
    i32 50, label %sw.epilog146.sw.bb151_crit_edge459
    i32 51, label %sw.epilog146.sw.bb151_crit_edge460
    i32 54, label %sw.epilog146.sw.bb151_crit_edge461
    i32 55, label %sw.epilog146.sw.bb151_crit_edge462
    i32 62, label %sw.epilog146.sw.bb151_crit_edge463
  ]

sw.epilog146.sw.bb151_crit_edge463:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge462:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge461:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge460:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge459:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge458:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge457:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge456:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge455:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge454:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge453:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge452:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge451:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge450:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge449:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge448:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge447:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge446:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge445:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge444:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge443:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge442:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge441:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge440:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge439:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge438:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge437:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge436:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge435:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge434:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge433:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge432:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge431:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge430:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge429:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge428:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge427:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge426:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge425:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge424:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge423:               ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.bb151_crit_edge:                  ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.epilog146.sw.epilog186_crit_edge:              ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog186

sw.bb148:                                         ; preds = %sw.epilog146
  %152 = load i32, ptr @enable_885_ir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool.not = icmp eq i32 %152, 0
  br i1 %tobool.not, label %sw.bb148.sw.epilog241_crit_edge, label %sw.bb148.sw.bb151_crit_edge

sw.bb148.sw.bb151_crit_edge:                      ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb151

sw.bb148.sw.epilog241_crit_edge:                  ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog241

sw.bb151:                                         ; preds = %sw.bb148.sw.bb151_crit_edge, %sw.epilog146.sw.bb151_crit_edge, %sw.epilog146.sw.bb151_crit_edge423, %sw.epilog146.sw.bb151_crit_edge424, %sw.epilog146.sw.bb151_crit_edge425, %sw.epilog146.sw.bb151_crit_edge426, %sw.epilog146.sw.bb151_crit_edge427, %sw.epilog146.sw.bb151_crit_edge428, %sw.epilog146.sw.bb151_crit_edge429, %sw.epilog146.sw.bb151_crit_edge430, %sw.epilog146.sw.bb151_crit_edge431, %sw.epilog146.sw.bb151_crit_edge432, %sw.epilog146.sw.bb151_crit_edge433, %sw.epilog146.sw.bb151_crit_edge434, %sw.epilog146.sw.bb151_crit_edge435, %sw.epilog146.sw.bb151_crit_edge436, %sw.epilog146.sw.bb151_crit_edge437, %sw.epilog146.sw.bb151_crit_edge438, %sw.epilog146.sw.bb151_crit_edge439, %sw.epilog146.sw.bb151_crit_edge440, %sw.epilog146.sw.bb151_crit_edge441, %sw.epilog146.sw.bb151_crit_edge442, %sw.epilog146.sw.bb151_crit_edge443, %sw.epilog146.sw.bb151_crit_edge444, %sw.epilog146.sw.bb151_crit_edge445, %sw.epilog146.sw.bb151_crit_edge446, %sw.epilog146.sw.bb151_crit_edge447, %sw.epilog146.sw.bb151_crit_edge448, %sw.epilog146.sw.bb151_crit_edge449, %sw.epilog146.sw.bb151_crit_edge450, %sw.epilog146.sw.bb151_crit_edge451, %sw.epilog146.sw.bb151_crit_edge452, %sw.epilog146.sw.bb151_crit_edge453, %sw.epilog146.sw.bb151_crit_edge454, %sw.epilog146.sw.bb151_crit_edge455, %sw.epilog146.sw.bb151_crit_edge456, %sw.epilog146.sw.bb151_crit_edge457, %sw.epilog146.sw.bb151_crit_edge458, %sw.epilog146.sw.bb151_crit_edge459, %sw.epilog146.sw.bb151_crit_edge460, %sw.epilog146.sw.bb151_crit_edge461, %sw.epilog146.sw.bb151_crit_edge462, %sw.epilog146.sw.bb151_crit_edge463
  %v4l2_dev = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 1
  %i2c_adap = getelementptr %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 2, i32 2
  %call154 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adap, ptr noundef nonnull @.str.77, i8 noundef zeroext 68, ptr noundef null) #5
  %sd_cx25840 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 33
  %153 = ptrtoint ptr %sd_cx25840 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call154, ptr %sd_cx25840, align 4
  %tobool156.not = icmp eq ptr %call154, null
  br i1 %tobool156.not, label %sw.bb151.sw.epilog186thread-pre-split_crit_edge, label %if.then157

sw.bb151.sw.epilog186thread-pre-split_crit_edge:  ; preds = %sw.bb151
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog186thread-pre-split

if.then157:                                       ; preds = %sw.bb151
  %clk_freq = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 13
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call154, i32 0, i32 12
  %154 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %clk_freq, ptr %host_priv.i, align 4
  %155 = ptrtoint ptr %sd_cx25840 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %sd_cx25840, align 4
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %156, i32 0, i32 10
  %157 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 2, ptr %grp_id, align 4
  %158 = load ptr, ptr %sd_cx25840, align 4
  %tobool161.not = icmp eq ptr %158, null
  br i1 %tobool161.not, label %if.then157.sw.epilog186thread-pre-split_crit_edge, label %if.else163

if.then157.sw.epilog186thread-pre-split_crit_edge: ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog186thread-pre-split

if.else163:                                       ; preds = %if.then157
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %158, i32 0, i32 6
  %159 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ops, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %tobool164.not = icmp eq ptr %162, null
  br i1 %tobool164.not, label %if.else163.sw.epilog186thread-pre-split_crit_edge, label %land.lhs.true

if.else163.sw.epilog186thread-pre-split_crit_edge: ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog186thread-pre-split

land.lhs.true:                                    ; preds = %if.else163
  %load_fw = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %load_fw to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %load_fw, align 4
  %tobool167.not = icmp eq ptr %164, null
  br i1 %tobool167.not, label %land.lhs.true.sw.epilog186thread-pre-split_crit_edge, label %if.else169

land.lhs.true.sw.epilog186thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog186thread-pre-split

if.else169:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %165 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool170.not = icmp eq ptr %165, null
  br i1 %tobool170.not, label %if.else169.if.else177_crit_edge, label %land.lhs.true171

if.else169.if.else177_crit_edge:                  ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else177

land.lhs.true171:                                 ; preds = %if.else169
  %load_fw172 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %load_fw172 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %load_fw172, align 4
  %tobool173.not = icmp eq ptr %167, null
  br i1 %tobool173.not, label %land.lhs.true171.if.else177_crit_edge, label %land.lhs.true171.sw.epilog186thread-pre-split.sink.split_crit_edge

land.lhs.true171.sw.epilog186thread-pre-split.sink.split_crit_edge: ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog186thread-pre-split.sink.split

land.lhs.true171.if.else177_crit_edge:            ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else177

if.else177:                                       ; preds = %land.lhs.true171.if.else177_crit_edge, %if.else169.if.else177_crit_edge
  br label %sw.epilog186thread-pre-split.sink.split

sw.epilog186thread-pre-split.sink.split:          ; preds = %if.else177, %land.lhs.true171.sw.epilog186thread-pre-split.sink.split_crit_edge
  %.sink = phi ptr [ %164, %if.else177 ], [ %167, %land.lhs.true171.sw.epilog186thread-pre-split.sink.split_crit_edge ]
  %call181 = tail call i32 %.sink(ptr noundef nonnull %158) #5
  br label %sw.epilog186thread-pre-split

sw.epilog186thread-pre-split:                     ; preds = %sw.epilog186thread-pre-split.sink.split, %land.lhs.true.sw.epilog186thread-pre-split_crit_edge, %if.else163.sw.epilog186thread-pre-split_crit_edge, %if.then157.sw.epilog186thread-pre-split_crit_edge, %sw.bb151.sw.epilog186thread-pre-split_crit_edge
  %168 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %168)
  %.pr377 = load i32, ptr %board, align 4
  br label %sw.epilog186

sw.epilog186:                                     ; preds = %sw.epilog186thread-pre-split, %sw.epilog146.sw.epilog186_crit_edge
  %169 = phi i32 [ %.pr377, %sw.epilog186thread-pre-split ], [ %150, %sw.epilog146.sw.epilog186_crit_edge ]
  %170 = zext i32 %169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %169, label %sw.epilog186.sw.epilog205_crit_edge [
    i32 54, label %sw.bb188
    i32 55, label %sw.bb194
  ]

sw.epilog186.sw.epilog205_crit_edge:              ; preds = %sw.epilog186
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog205

sw.bb188:                                         ; preds = %sw.epilog186
  call void @__sanitizer_cov_trace_pc() #7
  %v4l2_dev189 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 1
  %i2c_adap192 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 0, i32 2
  %call193 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev189, ptr noundef %i2c_adap192, ptr noundef nonnull @.str.78, i8 noundef zeroext 65, ptr noundef null) #5
  br label %sw.epilog205

sw.bb194:                                         ; preds = %sw.epilog186
  call void @__sanitizer_cov_trace_pc() #7
  %v4l2_dev195 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 1
  %i2c_adap198 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 0, i32 2
  %call199 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev195, ptr noundef %i2c_adap198, ptr noundef nonnull @.str.78, i8 noundef zeroext 64, ptr noundef null) #5
  %call204 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev195, ptr noundef %i2c_adap198, ptr noundef nonnull @.str.78, i8 noundef zeroext 65, ptr noundef null) #5
  br label %sw.epilog205

sw.epilog205:                                     ; preds = %sw.bb194, %sw.bb188, %sw.epilog186.sw.epilog205_crit_edge
  %171 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %171)
  %.pr378 = load i32, ptr %board, align 4
  %172 = zext i32 %.pr378 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %.pr378, label %sw.epilog205.sw.epilog241_crit_edge [
    i32 17, label %sw.bb207
    i32 30, label %sw.bb208
  ]

sw.epilog205.sw.epilog241_crit_edge:              ; preds = %sw.epilog205
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog241

sw.bb207:                                         ; preds = %sw.epilog205
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @netup_initialize(ptr noundef %dev) #5
  br label %sw.epilog241

sw.bb208:                                         ; preds = %sw.epilog205
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #5
  %173 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !359
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %netup_config) #5
  %174 = getelementptr inbounds %struct.altera_config, ptr %netup_config, i32 0, i32 1
  %175 = getelementptr inbounds %struct.altera_config, ptr %netup_config, i32 0, i32 2
  %176 = ptrtoint ptr %netup_config to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %dev, ptr %netup_config, align 4
  %177 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @.str.80, ptr %174, align 4
  %178 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @netup_jtag_io, ptr %175, align 4
  tail call void @netup_initialize(ptr noundef %dev) #5
  %i2c_adap213 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 0, i32 2
  tail call void @netup_get_card_info(ptr noundef %i2c_adap213, ptr noundef nonnull @cx23885_card_setup.cinfo) #5
  %179 = load i32, ptr @netup_card_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool214.not = icmp eq i32 %179, 0
  br i1 %tobool214.not, label %sw.bb208.if.end217_crit_edge, label %if.then215

sw.bb208.if.end217_crit_edge:                     ; preds = %sw.bb208
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end217

if.then215:                                       ; preds = %sw.bb208
  call void @__sanitizer_cov_trace_pc() #7
  %conv216 = trunc i32 %179 to i8
  store i8 %conv216, ptr getelementptr inbounds (%struct.netup_card_info, ptr @cx23885_card_setup.cinfo, i32 0, i32 1), align 1
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %sw.bb208.if.end217_crit_edge
  %180 = load i8, ptr getelementptr inbounds (%struct.netup_card_info, ptr @cx23885_card_setup.cinfo, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %180)
  %cond = icmp eq i8 %180, 4
  %.str.81..str.79 = select i1 %cond, ptr @.str.81, ptr @.str.79
  %conv226 = zext i8 %180 to i32
  %call227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %conv226, ptr noundef nonnull %.str.81..str.79) #8
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 3
  %181 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %pci, align 4
  %dev228 = getelementptr inbounds %struct.pci_dev, ptr %182, i32 0, i32 44
  %call229 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %.str.81..str.79, ptr noundef %dev228) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %cmp230.not = icmp eq i32 %call229, 0
  br i1 %cmp230.not, label %if.else238, label %do.end235

do.end235:                                        ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #7
  %call237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull %.str.81..str.79) #8
  br label %if.end240

if.else238:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #7
  %183 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %fw, align 4
  %call239 = call i32 @altera_init(ptr noundef nonnull %netup_config, ptr noundef %184) #5
  br label %if.end240

if.end240:                                        ; preds = %if.else238, %do.end235
  %185 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %186) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %netup_config) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #5
  br label %sw.epilog241

sw.epilog241:                                     ; preds = %if.end240, %sw.bb207, %sw.epilog205.sw.epilog241_crit_edge, %sw.bb148.sw.epilog241_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tveeprom_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hauppauge_eeprom(ptr noundef %dev, ptr noundef %eeprom_data) unnamed_addr #0 align 64 {
entry:
  %tv = alloca %struct.tveeprom, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tv) #5
  %0 = call ptr @memset(ptr %tv, i32 255, i32 68)
  call void @tveeprom_hauppauge_analog(ptr noundef nonnull %tv, ptr noundef %eeprom_data) #5
  %model = getelementptr inbounds %struct.tveeprom, ptr %tv, i32 0, i32 11
  %1 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %model, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %2, label %do.end [
    i32 22001, label %entry.do.end9_crit_edge
    i32 22009, label %entry.do.end9_crit_edge16
    i32 22011, label %entry.do.end9_crit_edge17
    i32 22019, label %entry.do.end9_crit_edge18
    i32 22021, label %entry.do.end9_crit_edge19
    i32 22029, label %entry.do.end9_crit_edge20
    i32 22101, label %entry.do.end9_crit_edge21
    i32 22109, label %entry.do.end9_crit_edge22
    i32 22111, label %entry.do.end9_crit_edge23
    i32 22119, label %entry.do.end9_crit_edge24
    i32 22121, label %entry.do.end9_crit_edge25
    i32 22129, label %entry.do.end9_crit_edge26
    i32 71009, label %entry.do.end9_crit_edge27
    i32 71100, label %entry.do.end9_crit_edge28
    i32 71359, label %entry.do.end9_crit_edge29
    i32 71439, label %entry.do.end9_crit_edge30
    i32 71449, label %entry.do.end9_crit_edge31
    i32 71939, label %entry.do.end9_crit_edge32
    i32 71949, label %entry.do.end9_crit_edge33
    i32 71959, label %entry.do.end9_crit_edge34
    i32 71979, label %entry.do.end9_crit_edge35
    i32 71999, label %entry.do.end9_crit_edge36
    i32 76601, label %entry.do.end9_crit_edge37
    i32 77001, label %entry.do.end9_crit_edge38
    i32 77011, label %entry.do.end9_crit_edge39
    i32 77041, label %entry.do.end9_crit_edge40
    i32 77051, label %entry.do.end9_crit_edge41
    i32 78011, label %entry.do.end9_crit_edge42
    i32 78501, label %entry.do.end9_crit_edge43
    i32 78521, label %entry.do.end9_crit_edge44
    i32 78531, label %entry.do.end9_crit_edge45
    i32 78631, label %entry.do.end9_crit_edge46
    i32 79001, label %entry.do.end9_crit_edge47
    i32 79101, label %entry.do.end9_crit_edge48
    i32 79501, label %entry.do.end9_crit_edge49
    i32 79561, label %entry.do.end9_crit_edge50
    i32 79571, label %entry.do.end9_crit_edge51
    i32 79671, label %entry.do.end9_crit_edge52
    i32 80019, label %entry.do.end9_crit_edge53
    i32 81509, label %entry.do.end9_crit_edge54
    i32 81519, label %entry.do.end9_crit_edge55
    i32 85021, label %entry.do.end9_crit_edge56
    i32 85721, label %entry.do.end9_crit_edge57
    i32 121019, label %entry.do.end9_crit_edge58
    i32 121029, label %entry.do.end9_crit_edge59
    i32 150329, label %entry.do.end9_crit_edge60
    i32 161111, label %entry.do.end9_crit_edge61
    i32 166100, label %entry.do.end9_crit_edge62
    i32 166200, label %entry.do.end9_crit_edge63
    i32 166101, label %entry.do.end9_crit_edge64
    i32 166201, label %entry.do.end9_crit_edge65
    i32 165100, label %entry.do.end9_crit_edge66
    i32 165200, label %entry.do.end9_crit_edge67
    i32 165101, label %entry.do.end9_crit_edge68
    i32 165201, label %entry.do.end9_crit_edge69
  ]

entry.do.end9_crit_edge69:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge68:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge67:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge66:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge65:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge64:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge63:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge62:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge61:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge60:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge59:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge58:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge56:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge55:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge49:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge47:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge26:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge24:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge22:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge21:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge20:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name, i32 noundef %2) #8
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge, %entry.do.end9_crit_edge16, %entry.do.end9_crit_edge17, %entry.do.end9_crit_edge18, %entry.do.end9_crit_edge19, %entry.do.end9_crit_edge20, %entry.do.end9_crit_edge21, %entry.do.end9_crit_edge22, %entry.do.end9_crit_edge23, %entry.do.end9_crit_edge24, %entry.do.end9_crit_edge25, %entry.do.end9_crit_edge26, %entry.do.end9_crit_edge27, %entry.do.end9_crit_edge28, %entry.do.end9_crit_edge29, %entry.do.end9_crit_edge30, %entry.do.end9_crit_edge31, %entry.do.end9_crit_edge32, %entry.do.end9_crit_edge33, %entry.do.end9_crit_edge34, %entry.do.end9_crit_edge35, %entry.do.end9_crit_edge36, %entry.do.end9_crit_edge37, %entry.do.end9_crit_edge38, %entry.do.end9_crit_edge39, %entry.do.end9_crit_edge40, %entry.do.end9_crit_edge41, %entry.do.end9_crit_edge42, %entry.do.end9_crit_edge43, %entry.do.end9_crit_edge44, %entry.do.end9_crit_edge45, %entry.do.end9_crit_edge46, %entry.do.end9_crit_edge47, %entry.do.end9_crit_edge48, %entry.do.end9_crit_edge49, %entry.do.end9_crit_edge50, %entry.do.end9_crit_edge51, %entry.do.end9_crit_edge52, %entry.do.end9_crit_edge53, %entry.do.end9_crit_edge54, %entry.do.end9_crit_edge55, %entry.do.end9_crit_edge56, %entry.do.end9_crit_edge57, %entry.do.end9_crit_edge58, %entry.do.end9_crit_edge59, %entry.do.end9_crit_edge60, %entry.do.end9_crit_edge61, %entry.do.end9_crit_edge62, %entry.do.end9_crit_edge63, %entry.do.end9_crit_edge64, %entry.do.end9_crit_edge65, %entry.do.end9_crit_edge66, %entry.do.end9_crit_edge67, %entry.do.end9_crit_edge68, %entry.do.end9_crit_edge69
  %name11 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name11, i32 noundef %5) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netup_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_jtag_io(ptr nocapture noundef readonly %device, i32 noundef %tms, i32 noundef %tdi, i32 noundef %read_tdo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 278532
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !360
  %3 = and i32 %2, -33554433
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tms)
  %tobool.not = icmp eq i32 %tms, 0
  %cond = select i1 %tobool.not, i32 131072, i32 131074
  %or = or i32 %4, %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !361
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr3 = getelementptr i32, ptr %7, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #5, !srcloc !232
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr7 = getelementptr i32, ptr %9, i32 278536
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !362
  %11 = and i32 %10, -10485761
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tdi)
  %tobool12.not = icmp eq i32 %tdi, 0
  %cond13 = select i1 %tobool12.not, i32 0, i32 32768
  %or14 = or i32 %12, %cond13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !363
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %or14)
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr19 = getelementptr i32, ptr %15, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %13) #5, !srcloc !232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_tdo)
  %tobool20.not = icmp eq i32 %read_tdo, 0
  %and21 = lshr i32 %12, 14
  %and21.lobit = and i32 %and21, 1
  %tdo.0 = select i1 %tobool20.not, i32 0, i32 %and21.lobit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !364
  tail call void @arm_heavy_mb() #5
  %or27 = or i32 %or14, 8192
  %16 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr29 = getelementptr i32, ptr %18, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %16) #5, !srcloc !232
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !365
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %add.ptr34 = getelementptr i32, ptr %21, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %13) #5, !srcloc !232
  ret i32 %tdo.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netup_get_card_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tveeprom_hauppauge_analog(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !199, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218}
!llvm.module.flags = !{!220, !221, !222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = !{ptr @__param_netup_card_rev, !1, !"__param_netup_card_rev", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_netup_card_revtype385, !1, !"__UNIQUE_ID_netup_card_revtype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_netup_card_rev386, !4, !"__UNIQUE_ID_netup_card_rev386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 28, i32 1}
!5 = !{ptr @__param_enable_885_ir, !6, !"__param_enable_885_ir", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 31, i32 1}
!7 = !{ptr @__UNIQUE_ID_enable_885_irtype387, !6, !"__UNIQUE_ID_enable_885_irtype387", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_enable_885_ir388, !9, !"__UNIQUE_ID_enable_885_ir388", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 32, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 46, i32 12}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 64, i32 12}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 85, i32 12}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 117, i32 12}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 153, i32 12}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 157, i32 12}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 161, i32 12}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 188, i32 12}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 192, i32 12}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 196, i32 12}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 200, i32 12}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 205, i32 12}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 210, i32 12}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 275, i32 12}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 279, i32 12}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 293, i32 12}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 297, i32 12}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 302, i32 12}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 307, i32 12}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 311, i32 12}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 315, i32 12}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 367, i32 12}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 371, i32 12}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 401, i32 12}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 431, i32 12}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 461, i32 12}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 465, i32 12}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 469, i32 12}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 474, i32 21}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 500, i32 12}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 522, i32 12}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 247, i32 12}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 536, i32 12}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 561, i32 12}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 595, i32 12}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 600, i32 12}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 604, i32 12}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 608, i32 12}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 621, i32 12}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 288, i32 12}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 283, i32 12}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 214, i32 12}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 655, i32 12}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 650, i32 12}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 671, i32 12}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 676, i32 12}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 680, i32 12}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 684, i32 12}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 688, i32 12}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 692, i32 12}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 697, i32 12}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 702, i32 12}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 617, i32 12}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 728, i32 12}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 751, i32 12}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 778, i32 19}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 800, i32 19}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 821, i32 12}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 841, i32 12}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 794, i32 19}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 815, i32 19}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 845, i32 12}
!134 = !{ptr @cx23885_boards, !135, !"cx23885_boards", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 44, i32 22}
!136 = !{ptr @cx23885_bcount, !137, !"cx23885_bcount", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 864, i32 20}
!138 = !{ptr @cx23885_subids, !139, !"cx23885_subids", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 869, i32 22}
!140 = !{ptr @cx23885_idcount, !141, !"cx23885_idcount", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 1192, i32 20}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 1200, i32 3}
!144 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @cx23885_card_list._entry, !143, !"_entry", i1 false, i1 false}
!147 = !{ptr @cx23885_card_list._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 1207, i32 3}
!150 = !{ptr @cx23885_card_list._entry.65, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @cx23885_card_list._entry_ptr.67, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 1213, i32 2}
!154 = !{ptr @cx23885_card_list._entry.68, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @cx23885_card_list._entry_ptr.70, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 1216, i32 3}
!158 = !{ptr @cx23885_card_list._entry.71, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @cx23885_card_list._entry_ptr.73, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 1462, i32 3}
!162 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @cx23885_tuner_callback._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @cx23885_tuner_callback._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @cx23885_ir_init.ir_rxtx_pin_cfg, !166, !"ir_rxtx_pin_cfg", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 1935, i32 42}
!167 = !{ptr @cx23885_ir_init.ir_rx_pin_cfg, !168, !"ir_rx_pin_cfg", i1 false, i1 false}
!168 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 1952, i32 42}
!169 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 2042, i32 3}
!171 = !{ptr @cx23885_card_setup.eeprom, !172, !"eeprom", i1 false, i1 false}
!172 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 2137, i32 12}
!173 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 2418, i32 5}
!175 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 2434, i32 5}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 2456, i32 26}
!179 = !{ptr @.str.80, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 2457, i32 18}
!181 = !{ptr @cx23885_card_setup.cinfo, !182, !"cinfo", i1 false, i1 false}
!182 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 2458, i32 33}
!183 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 2473, i32 15}
!185 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 2479, i32 3}
!187 = !{ptr @.str.83, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @cx23885_card_setup._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @cx23885_card_setup._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 2484, i32 4}
!192 = !{ptr @cx23885_card_setup._entry.84, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @cx23885_card_setup._entry_ptr.86, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @enable_885_ir, !195, !"enable_885_ir", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 30, i32 21}
!196 = !{ptr @__param_str_netup_card_rev, !1, !"__param_str_netup_card_rev", i1 false, i1 false}
!197 = !{ptr @netup_card_rev, !198, !"netup_card_rev", i1 false, i1 false}
!198 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 26, i32 21}
!199 = !{ptr @__param_str_enable_885_ir, !6, !"__param_str_enable_885_ir", i1 false, i1 false}
!200 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 1414, i32 3}
!202 = !{ptr @.str.88, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @hauppauge_eeprom._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @hauppauge_eeprom._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.90, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 1419, i32 2}
!207 = !{ptr @hauppauge_eeprom._entry.89, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @hauppauge_eeprom._entry_ptr.91, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.92, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 1226, i32 3}
!211 = !{ptr @.str.93, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @viewcast_eeprom._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @viewcast_eeprom._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.95, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 1236, i32 2}
!216 = !{ptr @viewcast_eeprom._entry.94, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @viewcast_eeprom._entry_ptr.96, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @tbs_card_init.buf, !219, !"buf", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/cx23885/cx23885-cards.c", i32 1429, i32 18}
!220 = !{i32 1, !"wchar_size", i32 2}
!221 = !{i32 1, !"min_enum_size", i32 4}
!222 = !{i32 8, !"branch-target-enforcement", i32 0}
!223 = !{i32 8, !"sign-return-address", i32 0}
!224 = !{i32 8, !"sign-return-address-all", i32 0}
!225 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!226 = !{i32 7, !"uwtable", i32 1}
!227 = !{i32 7, !"frame-pointer", i32 2}
!228 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!229 = !{i64 2158710431}
!230 = !{i64 5071403}
!231 = !{i64 2158711502}
!232 = !{i64 5070985}
!233 = !{i64 2158714212}
!234 = !{i64 2158715303}
!235 = !{i64 2158716741}
!236 = !{i64 2158717850}
!237 = !{i64 2158719297}
!238 = !{i64 2158720406}
!239 = !{i64 2158721810}
!240 = !{i64 2158722893}
!241 = !{i64 2158724325}
!242 = !{i64 2158725434}
!243 = !{i64 2158726881}
!244 = !{i64 2158727990}
!245 = !{i64 2158729549}
!246 = !{i64 2158730658}
!247 = !{i64 2158732062}
!248 = !{i64 2158733145}
!249 = !{i64 2158734577}
!250 = !{i64 2158735686}
!251 = !{i64 2158737133}
!252 = !{i64 2158738242}
!253 = !{i64 2158739646}
!254 = !{i64 2158740729}
!255 = !{i64 2158742161}
!256 = !{i64 2158743270}
!257 = !{i64 2158744717}
!258 = !{i64 2158745826}
!259 = !{i64 2158747230}
!260 = !{i64 2158748313}
!261 = !{i64 2158749745}
!262 = !{i64 2158750854}
!263 = !{i64 2158752302}
!264 = !{i64 2158753411}
!265 = !{i64 2158754815}
!266 = !{i64 2158755898}
!267 = !{i64 2158757330}
!268 = !{i64 2158758439}
!269 = !{i64 2158759890}
!270 = !{i64 2158760999}
!271 = !{i64 2158762403}
!272 = !{i64 2158763486}
!273 = !{i64 2158764918}
!274 = !{i64 2158766027}
!275 = !{i64 2158767490}
!276 = !{i64 2158768599}
!277 = !{i64 2158770003}
!278 = !{i64 2158771086}
!279 = !{i64 2158772518}
!280 = !{i64 2158773627}
!281 = !{i64 2158774035}
!282 = !{i64 2158774572}
!283 = !{i64 2158776158}
!284 = !{i64 2158777267}
!285 = !{i64 2158778671}
!286 = !{i64 2158779754}
!287 = !{i64 2158781186}
!288 = !{i64 2158782295}
!289 = !{i64 2158783743}
!290 = !{i64 2158784852}
!291 = !{i64 2158786256}
!292 = !{i64 2158787339}
!293 = !{i64 2158788771}
!294 = !{i64 2158789880}
!295 = !{i64 2158790276}
!296 = !{i64 2158790813}
!297 = !{i64 2158791350}
!298 = !{i64 2158791887}
!299 = !{i64 2158793806}
!300 = !{i64 2158794915}
!301 = !{i64 2158796363}
!302 = !{i64 2158797472}
!303 = !{i64 2158798876}
!304 = !{i64 2158799959}
!305 = !{i64 2158801391}
!306 = !{i64 2158802500}
!307 = !{i64 2158802896}
!308 = !{i64 2158803433}
!309 = !{i64 2158803970}
!310 = !{i64 2158804507}
!311 = !{i64 2158806082}
!312 = !{i64 2158807129}
!313 = !{i64 2158808543}
!314 = !{i64 2158809652}
!315 = !{i64 2158811097}
!316 = !{i64 2158812206}
!317 = !{i64 2158813610}
!318 = !{i64 2158814693}
!319 = !{i64 2158816125}
!320 = !{i64 2158817234}
!321 = !{i64 2158818638}
!322 = !{i64 2158819721}
!323 = !{i64 2158821153}
!324 = !{i64 2158822262}
!325 = !{i64 2158823707}
!326 = !{i64 2158824816}
!327 = !{i64 2158826220}
!328 = !{i64 2158827303}
!329 = !{i64 2158828735}
!330 = !{i64 2158829844}
!331 = !{i64 2158831248}
!332 = !{i64 2158832331}
!333 = !{i64 2158833763}
!334 = !{i64 2158834872}
!335 = !{i64 2158835277}
!336 = !{i64 2158836938}
!337 = !{i64 2158838047}
!338 = !{i64 2158839451}
!339 = !{i64 2158840534}
!340 = !{i64 2158841966}
!341 = !{i64 2158843075}
!342 = !{i64 2158844479}
!343 = !{i64 2158845562}
!344 = !{i64 2158845945}
!345 = !{i64 2158846482}
!346 = !{i64 2158847019}
!347 = !{i64 2158847556}
!348 = !{i64 2158857894}
!349 = !{i64 2158695926}
!350 = !{i64 2158697035}
!351 = !{i64 2158698394}
!352 = !{i64 2158699441}
!353 = !{i64 2158700769}
!354 = !{i64 2158701816}
!355 = !{i64 2158703470}
!356 = !{i64 2158704759}
!357 = !{i64 2158706222}
!358 = !{i64 2158707277}
!359 = !{!"auto-init"}
!360 = !{i64 2158854189}
!361 = !{i64 2158854491}
!362 = !{i64 2158855295}
!363 = !{i64 2158855597}
!364 = !{i64 2158856130}
!365 = !{i64 2158857212}
